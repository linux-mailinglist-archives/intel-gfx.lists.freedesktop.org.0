Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D578741F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0980010E58F;
	Thu, 24 Aug 2023 15:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD36F10E595
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:26:53 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id
 af79cd13be357-76dbe786527so132342585a.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692890812; x=1693495612;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CuUwM+hPwWbjt9im8pQga5pBgkS++vVcl7OD94xP7cs=;
 b=ku9r2oKLBoj6Lp412B0q0mhnsTrEqlQ1quo1ElNmakqmGPuCWoJdsijBY7XUgeDSKl
 vy8ew93mg1Gg5zUsb+ZUDifQKAZpG3d/Oetd0snISRjmmBSlJdeOASVo7WZhCesTxZW3
 W/JNXx1hYYDo++kY/H2e5j4ABmIGhhsS2am1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692890812; x=1693495612;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CuUwM+hPwWbjt9im8pQga5pBgkS++vVcl7OD94xP7cs=;
 b=JMLveM7vlJcBQJOnRgxGjRZ431RDyFBVu/+mKMTV3CN2/v+nIdBC08Vmm4rvCLSN7F
 lX1Os6Zso0YOk+0M0IRK4MigqO5Eo3mtjAH69vrwJy5pTeyIGFYAsfaH39yOuTee1vIP
 +A+DziPV6CbD8FGgw2G0fTKe3JKv/zc9BVoxkNN5u1GSFaK4GrCsAVvBbSpikDbkJ/Ov
 rWV3uUN0zhsRZ+48dAB8NZnxfxE3Sk3yAeF8iJDC6rZF5VsVO5pvjLWe0jnLVOMnVGTa
 M24z0cuiiMJATMlpTKkRGHAFKCbsgrnHXaUAa5LpnT1osHc8A6YU3OqlFtwjFtVTnVJ4
 XdYg==
X-Gm-Message-State: AOJu0Yw60PI08vay9AH8FBBru2z8rqv3/O++E2pdBjfbfNNN7X4w1SMe
 a29V5+EXh3QYu8WBl5Plbs3OaeM+enpo8G72OWY=
X-Google-Smtp-Source: AGHT+IGTiebTdMQ1qIrNIaGdQ7pjNHAs2tSqg1V8V0hpdKYvM9xsx24WVgx+FUueo2G2TdV879Letw==
X-Received: by 2002:a05:620a:24c9:b0:76c:ad46:2683 with SMTP id
 m9-20020a05620a24c900b0076cad462683mr19383881qkn.16.1692890812333; 
 Thu, 24 Aug 2023 08:26:52 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 v10-20020ac83d8a000000b0041079ba4f6bsm4423014qtf.12.2023.08.24.08.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 08:26:51 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:25:19 -0400
Message-ID: <20230824152631.401621-4-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824152631.401621-1-gildekel@chromium.org>
References: <20230824152631.401621-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/dp_mst: Add
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

Change-Id: I42ca477f61e57d23b67e168b0f3065555c7c1f29
Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 38 +++++++++++++++++++
 include/drm/display/drm_dp_mst_helper.h       |  3 ++
 2 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 9ec189fb78a84..d8d92f4a84df1 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3562,6 +3562,44 @@ int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
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
+	list_for_each_entry_reverse (port, &mstb->ports, next) {
+		struct drm_connector *connector = port->connector;
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
index 41fd8352ab656..ff5d3d86bc2e9 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -829,6 +829,9 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
 int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 			     int link_rate, int link_lane_count);

+void drm_dp_set_mst_topology_link_status(struct drm_dp_mst_topology_mgr *mgr,
+					 enum drm_link_status status);
+
 int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);

 void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_t link_encoding_cap);
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
