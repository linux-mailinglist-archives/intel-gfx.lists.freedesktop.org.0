Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066844A6D32
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 09:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072EE10FAD1;
	Wed,  2 Feb 2022 08:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DA010FAD1;
 Wed,  2 Feb 2022 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643791593; x=1675327593;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=SfRemAym7QZpOzjfvQoZ2VzDjXns70gzkqH86CgpSqY=;
 b=Jpnp24/Y6Yj8ppZNL1ltFibzigap+aamSbk7MOqmPRESwSvtT6lPKQTu
 /1VOPZrNlREwuhUTr3yzxLNmVJrQHfvJUI4ziU5MiaUWimK/7o1fwEnyK
 Sl5WyUvMZvoXFC4j9IJQ8Va2F4fvBscptM/j9f6Cg42rUINMyfXOjs6Bt
 S2FrbNz4ZOCQZdwqdPITZheVyUFHTMsICuWbMxEbWTwXaVCV2S4X2KKGr
 SFxbWmzoO/wlm51I0WvaqW8Aj+GebBZGR5T92nNKCEbVI8Ee6rMQHuX4U
 gYdXpqGgZsSE9+If51GhirPvtdeteu/biW1ukwwv3r/5JX1rxuivph+xj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="245469304"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="245469304"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 00:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="497675048"
Received: from srr4-3-linux-116-skandpal.iind.intel.com ([10.190.238.57])
 by orsmga002.jf.intel.com with ESMTP; 02 Feb 2022 00:46:29 -0800
From: Kandpal Suraj <suraj.kandpal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 14:24:29 +0530
Message-Id: <20220202085429.22261-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220202085429.22261-1-suraj.kandpal@intel.com>
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] [PATCH 6/6] drm/arm: changes to malidp driver resulting
 from drm_writeback_connector structure changes
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
Cc: carsten.haitzler@arm.com, jani.nikula@intel.com, quic_abhinavk@quicinc.com,
 laurent.pinchart@ideasonboard.com, dmitry.baryshkov@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Changing malidp driver to accomadate the change of
drm_writeback_connector.base and drm_writeback_connector.encoder
to a pointer the reason for which is explained in the
Patch(drm: add writeback pointers to drm_connector).

Signed-off-by: Kandpal Suraj <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/arm/malidp_crtc.c |  2 +-
 drivers/gpu/drm/arm/malidp_drv.h  |  2 ++
 drivers/gpu/drm/arm/malidp_mw.c   | 12 ++++++++----
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/arm/malidp_crtc.c b/drivers/gpu/drm/arm/malidp_crtc.c
index 494075ddbef6..294aacd4beef 100644
--- a/drivers/gpu/drm/arm/malidp_crtc.c
+++ b/drivers/gpu/drm/arm/malidp_crtc.c
@@ -424,7 +424,7 @@ static int malidp_crtc_atomic_check(struct drm_crtc *crtc,
 		u32 new_mask = crtc_state->connector_mask;
 
 		if ((old_mask ^ new_mask) ==
-		    (1 << drm_connector_index(&malidp->mw_connector.base)))
+		    (1 << drm_connector_index(malidp->mw_connector.base)))
 			crtc_state->connectors_changed = false;
 	}
 
diff --git a/drivers/gpu/drm/arm/malidp_drv.h b/drivers/gpu/drm/arm/malidp_drv.h
index cdfddfabf2d1..971810a685f1 100644
--- a/drivers/gpu/drm/arm/malidp_drv.h
+++ b/drivers/gpu/drm/arm/malidp_drv.h
@@ -31,6 +31,8 @@ struct malidp_error_stats {
 struct malidp_drm {
 	struct malidp_hw_device *dev;
 	struct drm_crtc crtc;
+	struct drm_connector connector;
+	struct drm_encoder encoder;
 	struct drm_writeback_connector mw_connector;
 	wait_queue_head_t wq;
 	struct drm_pending_vblank_event *event;
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index f5847a79dd7e..9bd2e400cd3d 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -206,21 +206,25 @@ static u32 *get_writeback_formats(struct malidp_drm *malidp, int *n_formats)
 int malidp_mw_connector_init(struct drm_device *drm)
 {
 	struct malidp_drm *malidp = drm->dev_private;
+	struct drm_writeback_connector *wb_conn;
 	u32 *formats;
 	int ret, n_formats;
 
 	if (!malidp->dev->hw->enable_memwrite)
 		return 0;
 
-	malidp->mw_connector.encoder.possible_crtcs = 1 << drm_crtc_index(&malidp->crtc);
-	drm_connector_helper_add(&malidp->mw_connector.base,
+	wb_conn = &malidp->mw_connector;
+	wb_conn->base = &malidp->connector;
+	wb_conn->encoder = &malidp->encoder;
+	malidp->mw_connector.encoder->possible_crtcs = 1 << drm_crtc_index(&malidp->crtc);
+	drm_connector_helper_add(wb_conn->base,
 				 &malidp_mw_connector_helper_funcs);
 
 	formats = get_writeback_formats(malidp, &n_formats);
 	if (!formats)
 		return -ENOMEM;
 
-	ret = drm_writeback_connector_init(drm, &malidp->mw_connector,
+	ret = drm_writeback_connector_init(drm, wb_conn,
 					   &malidp_mw_connector_funcs,
 					   &malidp_mw_encoder_helper_funcs,
 					   formats, n_formats);
@@ -236,7 +240,7 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
 {
 	struct malidp_drm *malidp = drm->dev_private;
 	struct drm_writeback_connector *mw_conn = &malidp->mw_connector;
-	struct drm_connector_state *conn_state = mw_conn->base.state;
+	struct drm_connector_state *conn_state = mw_conn->base->state;
 	struct malidp_hw_device *hwdev = malidp->dev;
 	struct malidp_mw_connector_state *mw_state;
 
-- 
2.17.1

