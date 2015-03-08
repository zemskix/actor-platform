package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateMessageDelete extends Update {

    public static final int HEADER = 0x2e;
    public static UpdateMessageDelete fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateMessageDelete(), data);
    }

    private Peer peer;
    private List<Long> rids;

    public UpdateMessageDelete(Peer peer, List<Long> rids) {
        this.peer = peer;
        this.rids = rids;
    }

    public UpdateMessageDelete() {

    }

    public Peer getPeer() {
        return this.peer;
    }

    public List<Long> getRids() {
        return this.rids;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.peer = values.getObj(1, new Peer());
        this.rids = values.getRepeatedLong(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.peer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.peer);
        writer.writeRepeatedLong(2, this.rids);
    }

    @Override
    public String toString() {
        String res = "update MessageDelete{";
        res += "peer=" + this.peer;
        res += ", rids=" + this.rids;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
