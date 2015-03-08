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

public class UpdateMessageReceived extends Update {

    public static final int HEADER = 0x36;
    public static UpdateMessageReceived fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateMessageReceived(), data);
    }

    private Peer peer;
    private long startDate;
    private long receivedDate;

    public UpdateMessageReceived(Peer peer, long startDate, long receivedDate) {
        this.peer = peer;
        this.startDate = startDate;
        this.receivedDate = receivedDate;
    }

    public UpdateMessageReceived() {

    }

    public Peer getPeer() {
        return this.peer;
    }

    public long getStartDate() {
        return this.startDate;
    }

    public long getReceivedDate() {
        return this.receivedDate;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.peer = values.getObj(1, new Peer());
        this.startDate = values.getLong(2);
        this.receivedDate = values.getLong(3);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.peer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.peer);
        writer.writeLong(2, this.startDate);
        writer.writeLong(3, this.receivedDate);
    }

    @Override
    public String toString() {
        String res = "update MessageReceived{";
        res += "peer=" + this.peer;
        res += ", startDate=" + this.startDate;
        res += ", receivedDate=" + this.receivedDate;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
