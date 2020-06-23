Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2822056A6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922496E9D4;
	Tue, 23 Jun 2020 15:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E176EA0A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:42 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id j10so7169344qtq.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eADzGmxhfHXRAuARTdwvMADWw8/w2DRHMLtKftjmcpA=;
 b=bqeaDbaOIhIVRQo2XeVmn+CbQlpmqCWxhCenBNgTkf4PUKwTp9apst5Vdrm+gfYNeG
 UnwI4mCovCWgyTgX2FlLHejlGabH9kCwJxlkr8da2PCcIFRYWvQp7MRwcGKbx/vn4BZK
 iXIn4YRZHzDSn1ks/sKZgrZM96f9R5J8fnOPOcFK8BgBERvDJ3CZttJw4hPLHSFGUExe
 oJX4yJ4974zZzLeGHeOoyJR39QhKPxtlGYxOH7mOunm6GjyogKxldkoyv+IcYSVRAbd5
 r8zMJ+LN4RXtK31zjyq9ojzQAUdY59Wxxrlk0EMTV4FCw9fsSKtpwg3AL5XdQ8ME/PMz
 4tJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eADzGmxhfHXRAuARTdwvMADWw8/w2DRHMLtKftjmcpA=;
 b=atroiK+l1uxHdTd4W/Em1S1nzTUdD7IDLekVGYrSkcs0tJpE8Akl41LpYnHjBOLJXS
 Jn+6JsnFgJ4lcN1k8KAjjmMeq0C4nnW9eJxl49ciylsA/sKsnVoVmMc7DL58oGz/ujs9
 Il64abMyOVsFiER5G/u9sngU/6Qw33lMaVsaMlK19EpybOgt44N5UyUTuo7Z5v69a/o7
 QS6F/c5XxuuNt7hRMNmz1PxvjnrU2yxU5UPQ+Di8isrbJOuiH9ikLnshWMO6QyClD+vZ
 TiuUrN1fFJdhpfn5vwnngyOAbusy7rAADDHuFyE/pMrQNXBKFb3iMMZQQnUrq3NR80cd
 6+Vw==
X-Gm-Message-State: AOAM5321cX8TbI0wcPjY8oYgOM5MwDd/jBghp6yrdC+YqFiOYRf4kNZ7
 43HBkaKCoTDvkWzOVpAf+xNAhg==
X-Google-Smtp-Source: ABdhPJyRahskjvnTfRUheQ31ZZj6QiKqPg3uQWR0yeKBn3geoJJlhtrrtrDJDhZb4041beAfQTpzPQ==
X-Received: by 2002:aed:3b62:: with SMTP id q31mr22133606qte.293.1592927981166; 
 Tue, 23 Jun 2020 08:59:41 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id q24sm933397qkj.103.2020.06.23.08.59.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:40 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:59:05 -0400
Message-Id: <20200623155907.22961-16-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v7 15/17] drm/mst: Add support for
 QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Used to query whether an MST stream is encrypted or not.

Signed-off-by: Sean Paul <seanpaul@chromium.org>

Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-14-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-15-sean@poorly.run #v5
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-15-sean@poorly.run #v6

Changes in v4:
-Added to the set
Changes in v5:
-None
Changes in v6:
-Use FIELD_PREP to generate request buffer bitfields (Lyude)
-Add mst selftest and dump/decode_sideband_req for QSES (Lyude)
Changes in v7:
-None
---
 drivers/gpu/drm/drm_dp_mst_topology.c         | 142 ++++++++++++++++++
 .../drm/selftests/test-drm_dp_mst_helper.c    |  17 +++
 include/drm/drm_dp_helper.h                   |   3 +
 include/drm/drm_dp_mst_helper.h               |  44 ++++++
 4 files changed, 206 insertions(+)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index b2f5a84b4cfb..fc68478eaeb4 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -20,11 +20,13 @@
  * OF THIS SOFTWARE.
  */
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/i2c.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/random.h>
 #include <linux/sched.h>
 #include <linux/seq_file.h>
 #include <linux/iopoll.h>
@@ -419,6 +421,22 @@ drm_dp_encode_sideband_req(const struct drm_dp_sideband_msg_req_body *req,
 		memcpy(&buf[idx], req->u.i2c_write.bytes, req->u.i2c_write.num_bytes);
 		idx += req->u.i2c_write.num_bytes;
 		break;
+	case DP_QUERY_STREAM_ENC_STATUS: {
+		const struct drm_dp_query_stream_enc_status *msg;
+
+		msg = &req->u.enc_status;
+		buf[idx] = msg->stream_id;
+		idx++;
+		memcpy(&buf[idx], msg->client_id, sizeof(msg->client_id));
+		idx += sizeof(msg->client_id);
+		buf[idx] = 0;
+		buf[idx] |= FIELD_PREP(GENMASK(1, 0), msg->stream_event);
+		buf[idx] |= msg->valid_stream_event ? BIT(2) : 0;
+		buf[idx] |= FIELD_PREP(GENMASK(4, 3), msg->stream_behavior);
+		buf[idx] |= msg->valid_stream_behavior ? BIT(5) : 0;
+		idx++;
+		}
+		break;
 	}
 	raw->cur_len = idx;
 }
@@ -547,6 +565,20 @@ drm_dp_decode_sideband_req(const struct drm_dp_sideband_msg_tx *raw,
 				return -ENOMEM;
 		}
 		break;
+	case DP_QUERY_STREAM_ENC_STATUS:
+		req->u.enc_status.stream_id = buf[idx++];
+		for (i = 0; i < sizeof(req->u.enc_status.client_id); i++)
+			req->u.enc_status.client_id[i] = buf[idx++];
+
+		req->u.enc_status.stream_event = FIELD_GET(GENMASK(1, 0),
+							   buf[idx]);
+		req->u.enc_status.valid_stream_event = FIELD_GET(BIT(2),
+							 	 buf[idx]);
+		req->u.enc_status.stream_behavior = FIELD_GET(GENMASK(4, 3),
+							      buf[idx]);
+		req->u.enc_status.valid_stream_behavior = FIELD_GET(BIT(5),
+								    buf[idx]);
+		break;
 	}
 
 	return 0;
@@ -625,6 +657,16 @@ drm_dp_dump_sideband_msg_req_body(const struct drm_dp_sideband_msg_req_body *req
 		  req->u.i2c_write.num_bytes, req->u.i2c_write.num_bytes,
 		  req->u.i2c_write.bytes);
 		break;
+	case DP_QUERY_STREAM_ENC_STATUS:
+		P("stream_id=%u client_id=%*ph stream_event=%x "
+		  "valid_event=%d stream_behavior=%x valid_behavior=%d",
+		  req->u.enc_status.stream_id,
+		  (int)ARRAY_SIZE(req->u.enc_status.client_id),
+		  req->u.enc_status.client_id, req->u.enc_status.stream_event,
+		  req->u.enc_status.valid_stream_event,
+		  req->u.enc_status.stream_behavior,
+		  req->u.enc_status.valid_stream_behavior);
+		break;
 	default:
 		P("???\n");
 		break;
@@ -925,6 +967,34 @@ static bool drm_dp_sideband_parse_power_updown_phy_ack(struct drm_dp_sideband_ms
 	return true;
 }
 
+static bool
+drm_dp_sideband_parse_query_stream_enc_status(
+				struct drm_dp_sideband_msg_rx *raw,
+				struct drm_dp_sideband_msg_reply_body *repmsg)
+{
+	struct drm_dp_query_stream_enc_status_ack_reply *reply;
+
+	reply = &repmsg->u.enc_status;
+
+	reply->stream_id = raw->msg[3];
+
+	reply->reply_signed = raw->msg[2] & BIT(0);
+
+	reply->hdcp_1x_device_present = raw->msg[2] & BIT(3);
+	reply->hdcp_2x_device_present = raw->msg[2] & BIT(4);
+
+	reply->query_capable_device_present = raw->msg[2] & BIT(5);
+	reply->legacy_device_present = raw->msg[2] & BIT(6);
+	reply->unauthorizable_device_present = raw->msg[2] & BIT(7);
+
+	reply->auth_completed = !!(raw->msg[1] & BIT(3));
+	reply->encryption_enabled = !!(raw->msg[1] & BIT(4));
+	reply->repeater_present = !!(raw->msg[1] & BIT(5));
+	reply->state = (raw->msg[1] & GENMASK(7, 6)) >> 6;
+
+	return true;
+}
+
 static bool drm_dp_sideband_parse_reply(struct drm_dp_sideband_msg_rx *raw,
 					struct drm_dp_sideband_msg_reply_body *msg)
 {
@@ -959,6 +1029,8 @@ static bool drm_dp_sideband_parse_reply(struct drm_dp_sideband_msg_rx *raw,
 		return drm_dp_sideband_parse_power_updown_phy_ack(raw, msg);
 	case DP_CLEAR_PAYLOAD_ID_TABLE:
 		return true; /* since there's nothing to parse */
+	case DP_QUERY_STREAM_ENC_STATUS:
+		return drm_dp_sideband_parse_query_stream_enc_status(raw, msg);
 	default:
 		DRM_ERROR("Got unknown reply 0x%02x (%s)\n", msg->req_type,
 			  drm_dp_mst_req_type_str(msg->req_type));
@@ -1109,6 +1181,25 @@ static void build_power_updown_phy(struct drm_dp_sideband_msg_tx *msg,
 	msg->path_msg = true;
 }
 
+static int
+build_query_stream_enc_status(struct drm_dp_sideband_msg_tx *msg, u8 stream_id,
+			      u8 *q_id)
+{
+	struct drm_dp_sideband_msg_req_body req;
+
+	req.req_type = DP_QUERY_STREAM_ENC_STATUS;
+	req.u.enc_status.stream_id = stream_id;
+	memcpy(req.u.enc_status.client_id, q_id,
+	       sizeof(req.u.enc_status.client_id));
+	req.u.enc_status.stream_event = 0;
+	req.u.enc_status.valid_stream_event = false;
+	req.u.enc_status.stream_behavior = 0;
+	req.u.enc_status.valid_stream_behavior = false;
+
+	drm_dp_encode_sideband_req(&req, msg);
+	return 0;
+}
+
 static int drm_dp_mst_assign_payload_id(struct drm_dp_mst_topology_mgr *mgr,
 					struct drm_dp_vcpi *vcpi)
 {
@@ -3137,6 +3228,57 @@ int drm_dp_send_power_updown_phy(struct drm_dp_mst_topology_mgr *mgr,
 }
 EXPORT_SYMBOL(drm_dp_send_power_updown_phy);
 
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,
+		struct drm_dp_query_stream_enc_status_ack_reply *status)
+{
+	struct drm_dp_sideband_msg_tx *txmsg;
+	u8 nonce[7];
+	int len, ret;
+
+	txmsg = kzalloc(sizeof(*txmsg), GFP_KERNEL);
+	if (!txmsg)
+		return -ENOMEM;
+
+	port = drm_dp_mst_topology_get_port_validated(mgr, port);
+	if (!port) {
+		ret = -EINVAL;
+		goto out_get_port;
+	}
+
+	get_random_bytes(nonce, sizeof(nonce));
+
+	/*
+	 * "Source device targets the QUERY_STREAM_ENCRYPTION_STATUS message
+	 *  transaction at the MST Branch device directly connected to the
+	 *  Source"
+	 */
+	txmsg->dst = mgr->mst_primary;
+
+	len = build_query_stream_enc_status(txmsg, port->vcpi.vcpi, nonce);
+
+	drm_dp_queue_down_tx(mgr, txmsg);
+
+	ret = drm_dp_mst_wait_tx_reply(mgr->mst_primary, txmsg);
+	if (ret < 0) {
+		goto out;
+	} else if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK) {
+		DRM_DEBUG_KMS("query encryption status nak received\n");
+		ret = -ENXIO;
+		goto out;
+	}
+
+	ret = 0;
+	memcpy(status, &txmsg->reply.u.enc_status, sizeof(*status));
+
+out:
+	drm_dp_mst_topology_put_port(port);
+out_get_port:
+	kfree(txmsg);
+	return ret;
+}
+EXPORT_SYMBOL(drm_dp_send_query_stream_enc_status);
+
 static int drm_dp_create_payload_step1(struct drm_dp_mst_topology_mgr *mgr,
 				       int id,
 				       struct drm_dp_payload *payload)
diff --git a/drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c b/drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c
index bd990d178765..1d696ec001cf 100644
--- a/drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c
+++ b/drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c
@@ -5,6 +5,8 @@
 
 #define PREFIX_STR "[drm_dp_mst_helper]"
 
+#include <linux/random.h>
+
 #include <drm/drm_dp_mst_helper.h>
 #include <drm/drm_print.h>
 
@@ -237,6 +239,21 @@ int igt_dp_mst_sideband_msg_req_decode(void *unused)
 	in.u.i2c_write.bytes = data;
 	DO_TEST();
 
+	in.req_type = DP_QUERY_STREAM_ENC_STATUS;
+	in.u.enc_status.stream_id = 1;
+	DO_TEST();
+	get_random_bytes(in.u.enc_status.client_id,
+			 sizeof(in.u.enc_status.client_id));
+	DO_TEST();
+	in.u.enc_status.stream_event = 3;
+	DO_TEST();
+	in.u.enc_status.valid_stream_event = 0;
+	DO_TEST();
+	in.u.enc_status.stream_behavior = 3;
+	DO_TEST();
+	in.u.enc_status.valid_stream_behavior = 1;
+	DO_TEST();
+
 #undef DO_TEST
 	return 0;
 }
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index e47dc22ebf50..e2d2df5e869e 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1108,6 +1108,9 @@
 #define DP_POWER_DOWN_PHY		0x25
 #define DP_SINK_EVENT_NOTIFY		0x30
 #define DP_QUERY_STREAM_ENC_STATUS	0x38
+#define  DP_QUERY_STREAM_ENC_STATUS_STATE_NO_EXIST	0
+#define  DP_QUERY_STREAM_ENC_STATUS_STATE_INACTIVE	1
+#define  DP_QUERY_STREAM_ENC_STATUS_STATE_ACTIVE	2
 
 /* DP 1.2 MST sideband reply types */
 #define DP_SIDEBAND_REPLY_ACK		0x00
diff --git a/include/drm/drm_dp_mst_helper.h b/include/drm/drm_dp_mst_helper.h
index 8b9eb4db3381..371eef8798ad 100644
--- a/include/drm/drm_dp_mst_helper.h
+++ b/include/drm/drm_dp_mst_helper.h
@@ -313,6 +313,34 @@ struct drm_dp_remote_i2c_write_ack_reply {
 	u8 port_number;
 };
 
+struct drm_dp_query_stream_enc_status_ack_reply {
+	/* Bit[23:16]- Stream Id */
+	u8 stream_id;
+
+	/* Bit[15]- Signed */
+	bool reply_signed;
+
+	/* Bit[10:8]- Stream Output Sink Type */
+	bool unauthorizable_device_present;
+	bool legacy_device_present;
+	bool query_capable_device_present;
+
+	/* Bit[12:11]- Stream Output CP Type */
+	bool hdcp_1x_device_present;
+	bool hdcp_2x_device_present;
+
+	/* Bit[4]- Stream Authentication */
+	bool auth_completed;
+
+	/* Bit[3]- Stream Encryption */
+	bool encryption_enabled;
+
+	/* Bit[2]- Stream Repeater Function Present */
+	bool repeater_present;
+
+	/* Bit[1:0]- Stream State */
+	u8 state;
+};
 
 #define DRM_DP_MAX_SDP_STREAMS 16
 struct drm_dp_allocate_payload {
@@ -374,6 +402,15 @@ struct drm_dp_remote_i2c_write {
 	u8 *bytes;
 };
 
+struct drm_dp_query_stream_enc_status {
+	u8 stream_id;
+	u8 client_id[7];	/* 56-bit nonce */
+	u8 stream_event;
+	bool valid_stream_event;
+	u8 stream_behavior;
+	u8 valid_stream_behavior;
+};
+
 /* this covers ENUM_RESOURCES, POWER_DOWN_PHY, POWER_UP_PHY */
 struct drm_dp_port_number_req {
 	u8 port_number;
@@ -422,6 +459,8 @@ struct drm_dp_sideband_msg_req_body {
 
 		struct drm_dp_remote_i2c_read i2c_read;
 		struct drm_dp_remote_i2c_write i2c_write;
+
+		struct drm_dp_query_stream_enc_status enc_status;
 	} u;
 };
 
@@ -444,6 +483,8 @@ struct drm_dp_sideband_msg_reply_body {
 		struct drm_dp_remote_i2c_read_ack_reply remote_i2c_read_ack;
 		struct drm_dp_remote_i2c_read_nak_reply remote_i2c_read_nack;
 		struct drm_dp_remote_i2c_write_ack_reply remote_i2c_write_ack;
+
+		struct drm_dp_query_stream_enc_status_ack_reply enc_status;
 	} u;
 };
 
@@ -808,6 +849,9 @@ drm_dp_atomic_release_vcpi_slots(struct drm_atomic_state *state,
 				 struct drm_dp_mst_port *port);
 int drm_dp_send_power_updown_phy(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_dp_mst_port *port, bool power_up);
+int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
+		struct drm_dp_mst_port *port,
+		struct drm_dp_query_stream_enc_status_ack_reply *status);
 int __must_check drm_dp_mst_atomic_check(struct drm_atomic_state *state);
 
 void drm_dp_mst_get_port_malloc(struct drm_dp_mst_port *port);
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
