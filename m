Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4087879AC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A51010E5BD;
	Thu, 24 Aug 2023 20:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C979410E5BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:54:03 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id
 6a1803df08f44-649c6ea6e72so1543546d6.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 13:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692910442; x=1693515242;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2s3PmwMB370ELZCGQEod9fD7zrXkoA5TurpQEYD1gXM=;
 b=RlE2kTMMsrTVEdPTqH9OzuMpUZKj58slCzwMeeIvX9giz+okI7SO8OrkKObxW+9EOk
 JvAEWRDfWP5/mzwVbxTgKtUZk5v63GSFE51xpUyqK2kCfu9rYIHDMQ4epnJ7NIvQtBTf
 QRkN4u9yF0OfauOg7mHo/2E/DwwCuXDUalrT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692910442; x=1693515242;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2s3PmwMB370ELZCGQEod9fD7zrXkoA5TurpQEYD1gXM=;
 b=Ao2Woy1W6I7kakcBAfGqewrUjNwvCKtZFmcSeHGc1P85WauV2FzuPHAMgoeTnvUVPE
 QWf9Th3aX2utHZC77XpIT0Kjf1yErXSl20vxL9qGxs1cnl+1yecfzswViNIYLGHtMTZs
 B9q8uDoINRRlWZuFHYMEqPJ3q9xtl6D6Hmzi3/XoBS19OpufaQdbecptuRTBoD5tkN9D
 dxs3ViewemYSrgdyziEFdazrTi/Pp1zzK+RarOZK6uRkG6vq2KvcBjhWc67E+08y3MJ4
 NCZFPOTWe6phOE/yMIdIL71+nqdmLogB6rZjYP1a3SzsS6Irv77M2QfflGBH6FARi5YI
 24JQ==
X-Gm-Message-State: AOJu0Yx0Q9ABfLTkEBDt95N7QUrnkDy83bbggAju1VFOB/Ioxrlbbfj8
 iAOu2eEtjhdBVVrNY9V1y/FOMrrGTvxzDXgLo1c=
X-Google-Smtp-Source: AGHT+IFLRQF3ykM6ne4+L37O4VIrHVknvCJsKzzsyoVFO+Vm2rAwb65ZwWJiqT4LsDE9GAMptlgerg==
X-Received: by 2002:a0c:8c45:0:b0:647:2bd2:a3b with SMTP id
 o5-20020a0c8c45000000b006472bd20a3bmr16894875qvb.31.1692910442499; 
 Thu, 24 Aug 2023 13:54:02 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a0ce442000000b0064f5020df91sm62038qvm.28.2023.08.24.13.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 13:54:01 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:50:18 -0400
Message-ID: <20230824205335.500163-4-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824205335.500163-1-gildekel@chromium.org>
References: <20230824205335.500163-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/6] drm/dp_mst: Add
 drm_dp_set_mst_topology_link_status()
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unlike SST, MST can support multiple displays connected to a single
connector. However, this also means that if the DisplayPort link to the
top-level MST branch device becomes unstable, then every single branch
device has an unstable link.

Since there are multiple downstream ports per connector, setting the
link status of the parent mstb's port to BAD is not enough. All of the
downstream mstb ports must also have their link status set to BAD.

This aligns to how the DP link status logic in DRM works. We notify
userspace that all of the mstb ports need retraining and apply new lower
bandwidth constraints to all future atomic commits on the topology that
follow.

Since any driver supporting MST needs to figure out which connectors
live downstream on an MST topology and update their link status in order
to retrain MST links properly, we add the
drm_dp_set_mst_topology_link_status() helper. This helper simply marks
the link status of all connectors living in that topology as bad. We
will make use of this helper in i915 later in this series.

Credit: this patch is a refactor of Lyude Pual's original patch:
https://patchwork.kernel.org/project/dri-devel/patch/20180308232421.14049-5-lyude@redhat.com/

Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 39 +++++++++++++++++++
 include/drm/display/drm_dp_mst_helper.h       |  3 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index ed96cfcfa304..17cbadfb6ccb 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3566,6 +3566,45 @@ int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 }
 EXPORT_SYMBOL(drm_dp_get_vc_payload_bw);

+/**
+ * drm_dp_set_mst_topology_link_status() - set all downstream MST ports' link status
+ * @mgr: MST topology manager to set state for
+ * @status: The new status to set the MST topology to
+ *
+ * Set all downstream ports' link-status within the topology to the given status.
+ */
+void drm_dp_set_mst_topology_link_status(struct drm_dp_mst_topology_mgr *mgr,
+					 enum drm_link_status status)
+{
+	struct drm_dp_mst_port *port;
+	struct drm_dp_mst_branch *rmstb;
+	struct drm_dp_mst_branch *mstb =
+		drm_dp_mst_topology_get_mstb_validated(mgr, mgr->mst_primary);
+
+	list_for_each_entry_reverse(port, &mstb->ports, next) {
+		struct drm_connector *connector = port->connector;
+
+		if (connector) {
+			mutex_lock(&connector->dev->mode_config.mutex);
+			drm_dbg_kms(
+				connector->dev,
+				"[MST-CONNECTOR:%d:%s] link status %d -> %d\n",
+				connector->base.id, connector->name,
+				connector->state->link_status, status);
+			connector->state->link_status = status;
+			mutex_unlock(&connector->dev->mode_config.mutex);
+		}
+
+		rmstb = drm_dp_mst_topology_get_mstb_validated(mstb->mgr,
+							       port->mstb);
+		if (rmstb) {
+			drm_dp_set_mst_topology_link_status(rmstb->mgr, status);
+			drm_dp_mst_topology_put_mstb(rmstb);
+		}
+	}
+}
+EXPORT_SYMBOL(drm_dp_set_mst_topology_link_status);
+
 /**
  * drm_dp_read_mst_cap() - check whether or not a sink supports MST
  * @aux: The DP AUX channel to use
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index ed5c9660563c..855d488bf364 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -832,6 +832,9 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
 int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 			     int link_rate, int link_lane_count);

+void drm_dp_set_mst_topology_link_status(struct drm_dp_mst_topology_mgr *mgr,
+					 enum drm_link_status status);
+
 int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);

 void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_t link_encoding_cap);
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
