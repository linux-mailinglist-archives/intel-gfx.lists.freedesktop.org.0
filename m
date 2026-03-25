Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKTsBw/Cw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:07:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CCC323862
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF54E10E84C;
	Wed, 25 Mar 2026 11:07:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G41wo1HH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D15710E84C;
 Wed, 25 Mar 2026 11:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436875; x=1805972875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7C0SqesRapyQbr7T6DpKuuu4og3tDOYxWF92rqkvU0=;
 b=G41wo1HHQX9Bn5DCScUQykS09MKTAXsAiq4UDs7Ij9qrZBMQo8RIJx8M
 ZPAYNBM1BNaMEffSnRyXUGXSJvX08Njgn47GPVIO7FiscPaHlql6h2Iy/
 hCPX272vyJHcR6Gk7anZ4TR6D7Hnxw5Bngt4QEv4hjqnI64Mi3v6Rioal
 KgsHRIKg7titShA5LNVnj1rcTQxdjyAN3DqpU+OZdDm7J1DuXuyKfPRsr
 s+J/ESeVxnVdUkx6gJskaxCrdNZ/zasODRE58V0BZa1GWPhWkr4q2Grjq
 +WKOI3GvuF6viPmDBpSLMUNMwSMdspZ2JuKqlX2RRwS1PakPhFUr8I2Ls A==;
X-CSE-ConnectionGUID: fGgL0TcxQhGxojymGbxVFA==
X-CSE-MsgGUID: yFBwbKT0S2CW85x7QOLYqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047492"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047492"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:07:55 -0700
X-CSE-ConnectionGUID: 8rh6jGCGRf623wm9jilM3w==
X-CSE-MsgGUID: PSx5xQidTQyyw+CE7lZeLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798271"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:07:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>
Subject: [PATCH v3 DO NOT REVIEW 02/26] drm: writeback: Refactor
 drm_writeback_connector structure
Date: Wed, 25 Mar 2026 16:37:20 +0530
Message-Id: <20260325110744.1096786-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,bootlin.com:email,arm.com:email,encoder.base:url,connector.base:url]
X-Rspamd-Queue-Id: 60CCC323862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some drivers cannot work with the current design where the connector
is embedded within the drm_writeback_connector such as Intel and
some drivers that can get it working end up adding a lot of checks
all around the code to check if it's a writeback conenctor or not,
this is due to the limitation of inheritance in C.
To solve this move the drm_writeback_connector within the
drm_connector and remove the drm_connector base which was in
drm_writeback_connector. Make this drm_writeback_connector
a union with hdmi connector to save memory and since a connector can
never be both writeback and hdmi it should serve us well.
Do all other required modifications that come with these changes
along with addition of new function which returns the drm_connector
when drm_writeback_connector is present.
Modify drivers using the drm_writeback_connector to
allow them to use this connector without breaking them.
The drivers modified here are amd, komeda, mali, vc4, vkms,
rcar_du, msm

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 +--
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  2 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  | 12 +--
 .../gpu/drm/arm/display/komeda/komeda_crtc.c  |  2 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.h   |  6 +-
 .../arm/display/komeda/komeda_wb_connector.c  | 11 +--
 drivers/gpu/drm/arm/malidp_crtc.c             |  2 +-
 drivers/gpu/drm/arm/malidp_drv.h              |  2 +-
 drivers/gpu/drm/arm/malidp_mw.c               |  7 +-
 drivers/gpu/drm/drm_atomic_uapi.c             |  4 +-
 drivers/gpu/drm/drm_writeback.c               | 51 ++++++++-----
 .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |  9 ++-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c | 10 +--
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h |  4 +-
 .../gpu/drm/renesas/rcar-du/rcar_du_crtc.h    |  4 +-
 .../drm/renesas/rcar-du/rcar_du_writeback.c   | 12 ++-
 drivers/gpu/drm/vc4/vc4_txp.c                 |  8 +-
 drivers/gpu/drm/vkms/vkms_drv.h               |  2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c         | 15 ++--
 include/drm/drm_connector.h                   | 69 ++++++++++++++++-
 include/drm/drm_modeset_helper_vtables.h      |  4 +-
 include/drm/drm_writeback.h                   | 76 ++-----------------
 22 files changed, 162 insertions(+), 160 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 02a260127e16..7900faee6f05 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -679,7 +679,7 @@ static void dm_crtc_high_irq(void *interrupt_params)
 					     100LL, (v_total * stream->timing.h_total));
 				mdelay(1000 / refresh_hz);
 
-				drm_writeback_signal_completion(acrtc->wb_conn, 0);
+				drm_writeback_signal_completion(acrtc->connector, 0);
 				dc_stream_fc_disable_writeback(adev->dm.dc,
 							       acrtc->dm_irq_params.stream, 0);
 			}
@@ -7282,11 +7282,9 @@ create_stream_for_sink(struct drm_connector *connector,
 		aconnector = to_amdgpu_dm_connector(connector);
 		link = aconnector->dc_link;
 	} else {
-		struct drm_writeback_connector *wbcon = NULL;
 		struct amdgpu_dm_wb_connector *dm_wbcon = NULL;
 
-		wbcon = drm_connector_to_writeback(connector);
-		dm_wbcon = to_amdgpu_dm_wb_connector(wbcon);
+		dm_wbcon = to_amdgpu_dm_wb_connector(connector);
 		link = dm_wbcon->link;
 	}
 
@@ -10619,7 +10617,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
 			      struct drm_connector *connector,
 			      struct drm_connector_state *new_con_state)
 {
-	struct drm_writeback_connector *wb_conn = drm_connector_to_writeback(connector);
+	struct drm_writeback_connector *wb_conn = &connector->writeback;
 	struct amdgpu_device *adev = dm->adev;
 	struct amdgpu_crtc *acrtc;
 	struct dc_writeback_info *wb_info;
@@ -10710,7 +10708,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
 
 	acrtc->wb_pending = true;
 	acrtc->wb_conn = wb_conn;
-	drm_writeback_queue_job(wb_conn, new_con_state);
+	drm_writeback_queue_job(connector, new_con_state);
 }
 
 static void amdgpu_dm_update_hdcp(struct drm_atomic_state *state)
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
index 83fefd902355..2e1cd7f7853e 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
@@ -882,7 +882,7 @@ static inline void amdgpu_dm_set_mst_status(uint8_t *status,
 #define to_amdgpu_dm_connector(x) container_of(x, struct amdgpu_dm_connector, base)
 
 struct amdgpu_dm_wb_connector {
-	struct drm_writeback_connector base;
+	struct drm_connector base;
 	struct dc_link *link;
 };
 
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index 80c37487ca77..bf1ecf5d3027 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -80,7 +80,7 @@ static int amdgpu_dm_wb_connector_get_modes(struct drm_connector *connector)
 	return drm_add_modes_noedid(connector, 3840, 2160);
 }
 
-static int amdgpu_dm_wb_prepare_job(struct drm_writeback_connector *wb_connector,
+static int amdgpu_dm_wb_prepare_job(struct drm_connector *connector,
 			       struct drm_writeback_job *job)
 {
 	struct amdgpu_framebuffer *afb;
@@ -144,8 +144,8 @@ static int amdgpu_dm_wb_prepare_job(struct drm_writeback_connector *wb_connector
 	return r;
 }
 
-static void amdgpu_dm_wb_cleanup_job(struct drm_writeback_connector *connector,
-				struct drm_writeback_job *job)
+static void amdgpu_dm_wb_cleanup_job(struct drm_connector *connector,
+				     struct drm_writeback_job *job)
 {
 	struct amdgpu_bo *rbo;
 	int r;
@@ -202,7 +202,7 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
 
 	wbcon->link = link;
 
-	drm_connector_helper_add(&wbcon->base.base, &amdgpu_dm_wb_conn_helper_funcs);
+	drm_connector_helper_add(&wbcon->base, &amdgpu_dm_wb_conn_helper_funcs);
 
 	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
 					    &amdgpu_dm_wb_connector_funcs,
@@ -216,8 +216,8 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
 	 * Some of the properties below require access to state, like bpc.
 	 * Allocate some default initial connector state with our reset helper.
 	 */
-	if (wbcon->base.base.funcs->reset)
-		wbcon->base.base.funcs->reset(&wbcon->base.base);
+	if (wbcon->base.funcs->reset)
+		wbcon->base.funcs->reset(&wbcon->base);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
index 714af5c889d7..b02ab0f4f500 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
@@ -269,7 +269,7 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
 	if (slave && has_bit(slave->id, kcrtc_st->affected_pipes))
 		komeda_pipeline_update(slave, old->state);
 
-	conn_st = wb_conn ? wb_conn->base.base.state : NULL;
+	conn_st = wb_conn ? wb_conn->base.state : NULL;
 	if (conn_st && conn_st->writeback_job)
 		drm_writeback_queue_job(&wb_conn->base, conn_st);
 
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
index 83e61c4080c2..9c34302782c0 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
@@ -53,8 +53,8 @@ struct komeda_plane_state {
  * struct komeda_wb_connector
  */
 struct komeda_wb_connector {
-	/** @base: &drm_writeback_connector */
-	struct drm_writeback_connector base;
+	/** @base: &drm_connector */
+	struct drm_connector base;
 
 	/** @wb_layer: represents associated writeback pipeline of komeda */
 	struct komeda_layer *wb_layer;
@@ -139,7 +139,7 @@ struct komeda_kms_dev {
 static inline bool is_writeback_only(struct drm_crtc_state *st)
 {
 	struct komeda_wb_connector *wb_conn = to_kcrtc(st->crtc)->wb_conn;
-	struct drm_connector *conn = wb_conn ? &wb_conn->base.base : NULL;
+	struct drm_connector *conn = wb_conn ? &wb_conn->base : NULL;
 
 	return conn && (st->connector_mask == BIT(drm_connector_index(conn)));
 }
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
index bcc53d4015f1..85b34375d275 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
@@ -53,7 +53,7 @@ komeda_wb_encoder_atomic_check(struct drm_encoder *encoder,
 		return -EINVAL;
 	}
 
-	wb_layer = to_kconn(to_wb_conn(conn_st->connector))->wb_layer;
+	wb_layer = to_kconn(conn_st->connector)->wb_layer;
 
 	/*
 	 * No need for a full modested when the only connector changed is the
@@ -135,7 +135,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 {
 	struct komeda_dev *mdev = kms->base.dev_private;
 	struct komeda_wb_connector *kwb_conn;
-	struct drm_writeback_connector *wb_conn;
 	struct drm_display_info *info;
 	struct drm_encoder *encoder;
 
@@ -151,8 +150,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 
 	kwb_conn->wb_layer = kcrtc->master->wb_layer;
 
-	wb_conn = &kwb_conn->base;
-
 	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
 					       kwb_conn->wb_layer->layer_type,
 					       &n_formats);
@@ -170,7 +167,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 
 	encoder->possible_crtcs = drm_crtc_mask(&kcrtc->base);
 
-	err = drmm_writeback_connector_init(&kms->base, wb_conn,
+	err = drmm_writeback_connector_init(&kms->base, &kwb_conn->base,
 					    &komeda_wb_connector_funcs,
 					    encoder,
 					    formats, n_formats);
@@ -180,9 +177,9 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 		return err;
 	}
 
-	drm_connector_helper_add(&wb_conn->base, &komeda_wb_conn_helper_funcs);
+	drm_connector_helper_add(&kwb_conn->base, &komeda_wb_conn_helper_funcs);
 
-	info = &kwb_conn->base.base.display_info;
+	info = &kwb_conn->base.display_info;
 	info->bpc = __fls(kcrtc->master->improc->supported_color_depths);
 	info->color_formats = kcrtc->master->improc->supported_color_formats;
 
diff --git a/drivers/gpu/drm/arm/malidp_crtc.c b/drivers/gpu/drm/arm/malidp_crtc.c
index 18e6157b1047..68fa6024be9b 100644
--- a/drivers/gpu/drm/arm/malidp_crtc.c
+++ b/drivers/gpu/drm/arm/malidp_crtc.c
@@ -421,7 +421,7 @@ static int malidp_crtc_atomic_check(struct drm_crtc *crtc,
 		u32 new_mask = crtc_state->connector_mask;
 
 		if ((old_mask ^ new_mask) ==
-		    (1 << drm_connector_index(&malidp->mw_connector.base)))
+		    (1 << drm_connector_index(&malidp->mw_connector)))
 			crtc_state->connectors_changed = false;
 	}
 
diff --git a/drivers/gpu/drm/arm/malidp_drv.h b/drivers/gpu/drm/arm/malidp_drv.h
index bc0387876dea..aa5599467d27 100644
--- a/drivers/gpu/drm/arm/malidp_drv.h
+++ b/drivers/gpu/drm/arm/malidp_drv.h
@@ -32,7 +32,7 @@ struct malidp_drm {
 	struct drm_device base;
 	struct malidp_hw_device *dev;
 	struct drm_crtc crtc;
-	struct drm_writeback_connector mw_connector;
+	struct drm_connector mw_connector;
 	wait_queue_head_t wq;
 	struct drm_pending_vblank_event *event;
 	atomic_t config_valid;
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index 6e0c78e998aa..af31d6570231 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -212,7 +212,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
 	if (!malidp->dev->hw->enable_memwrite)
 		return 0;
 
-	drm_connector_helper_add(&malidp->mw_connector.base,
+	drm_connector_helper_add(&malidp->mw_connector,
 				 &malidp_mw_connector_helper_funcs);
 
 	formats = get_writeback_formats(malidp, &n_formats);
@@ -243,8 +243,7 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
 			     struct drm_atomic_state *old_state)
 {
 	struct malidp_drm *malidp = drm_to_malidp(drm);
-	struct drm_writeback_connector *mw_conn = &malidp->mw_connector;
-	struct drm_connector_state *conn_state = mw_conn->base.state;
+	struct drm_connector_state *conn_state = malidp->mw_connector.state;
 	struct malidp_hw_device *hwdev = malidp->dev;
 	struct malidp_mw_connector_state *mw_state;
 
@@ -263,7 +262,7 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
 				     &mw_state->addrs[0],
 				     mw_state->format);
 
-		drm_writeback_queue_job(mw_conn, conn_state);
+		drm_writeback_queue_job(&malidp->mw_connector, conn_state);
 		hwdev->hw->enable_memwrite(hwdev, mw_state->addrs,
 					   mw_state->pitches, mw_state->n_planes,
 					   fb->width, fb->height, mw_state->format,
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 5bd5bf6661df..2a7b388bdc6f 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -1450,7 +1450,6 @@ static int prepare_signaling(struct drm_device *dev,
 	}
 
 	for_each_new_connector_in_state(state, conn, conn_state, i) {
-		struct drm_writeback_connector *wb_conn;
 		struct drm_out_fence_state *f;
 		struct dma_fence *fence;
 		s32 __user *fence_ptr;
@@ -1472,8 +1471,7 @@ static int prepare_signaling(struct drm_device *dev,
 		f[*num_fences].out_fence_ptr = fence_ptr;
 		*fence_state = f;
 
-		wb_conn = drm_connector_to_writeback(conn);
-		fence = drm_writeback_get_out_fence(wb_conn);
+		fence = drm_writeback_get_out_fence(conn);
 		if (!fence)
 			return -ENOMEM;
 
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 68fdac745f42..1134be412cde 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -89,8 +89,10 @@ static const char *drm_writeback_fence_get_driver_name(struct dma_fence *fence)
 {
 	struct drm_writeback_connector *wb_connector =
 		fence_to_wb_connector(fence);
+	struct drm_connector *connector =
+		drm_writeback_to_connector(wb_connector);
 
-	return wb_connector->base.dev->driver->name;
+	return connector->dev->driver->name;
 }
 
 static const char *
@@ -187,7 +189,8 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
 					  struct drm_encoder *enc, const u32 *formats,
 					  int n_formats)
 {
-	struct drm_connector *connector = &wb_connector->base;
+	struct drm_connector *connector =
+		drm_writeback_to_connector(wb_connector);
 	struct drm_mode_config *config = &dev->mode_config;
 	struct drm_property_blob *blob;
 	int ret = create_writeback_properties(dev);
@@ -239,7 +242,7 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: Drm connector which contains the writeback connector to initialize
  * @enc: handle to the already initialized drm encoder
  * @con_funcs: Connector funcs vtable
  * @formats: Array of supported pixel formats for the writeback engine
@@ -264,12 +267,12 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
+				 struct drm_connector *connector,
 				 const struct drm_connector_funcs *con_funcs,
 				 struct drm_encoder *enc,
 				 const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector = &wb_connector->base;
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drm_connector_init(dev, connector, con_funcs,
@@ -318,7 +321,7 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: Drm connector containing the writeback connector to initialize
  * @con_funcs: Connector funcs vtable
  * @enc: Encoder to connect this writeback connector
  * @formats: Array of supported pixel formats for the writeback engine
@@ -334,12 +337,12 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drmm_writeback_connector_init(struct drm_device *dev,
-				  struct drm_writeback_connector *wb_connector,
+				  struct drm_connector *connector,
 				  const struct drm_connector_funcs *con_funcs,
 				  struct drm_encoder *enc,
 				  const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector = &wb_connector->base;
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drmm_connector_init(dev, connector, con_funcs,
@@ -372,7 +375,7 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
 			return -ENOMEM;
 
 		conn_state->writeback_job->connector =
-			drm_connector_to_writeback(conn_state->connector);
+			&conn_state->connector->writeback;
 	}
 
 	drm_framebuffer_assign(&conn_state->writeback_job->fb, fb);
@@ -381,9 +384,11 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
 
 int drm_writeback_prepare_job(struct drm_writeback_job *job)
 {
-	struct drm_writeback_connector *connector = job->connector;
+	struct drm_writeback_connector *wb_connector = job->connector;
+	struct drm_connector *connector =
+		drm_writeback_to_connector(wb_connector);
 	const struct drm_connector_helper_funcs *funcs =
-		connector->base.helper_private;
+		connector->helper_private;
 	int ret;
 
 	if (funcs->prepare_writeback_job) {
@@ -399,7 +404,8 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
 
 /**
  * drm_writeback_queue_job - Queue a writeback job for later signalling
- * @wb_connector: The writeback connector to queue a job on
+ * @connector: The drm connector  which contains the writeback connector to
+ * queue a job on
  * @conn_state: The connector state containing the job to queue
  *
  * This function adds the job contained in @conn_state to the job_queue for a
@@ -416,9 +422,10 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
  *
  * See also: drm_writeback_signal_completion()
  */
-void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
+void drm_writeback_queue_job(struct drm_connector *connector,
 			     struct drm_connector_state *conn_state)
 {
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	struct drm_writeback_job *job;
 	unsigned long flags;
 
@@ -433,9 +440,11 @@ EXPORT_SYMBOL(drm_writeback_queue_job);
 
 void drm_writeback_cleanup_job(struct drm_writeback_job *job)
 {
-	struct drm_writeback_connector *connector = job->connector;
+	struct drm_writeback_connector *wb_connector = job->connector;
+	struct drm_connector *connector	=
+		drm_writeback_to_connector(wb_connector);
 	const struct drm_connector_helper_funcs *funcs =
-		connector->base.helper_private;
+		connector->helper_private;
 
 	if (job->prepared && funcs->cleanup_writeback_job)
 		funcs->cleanup_writeback_job(connector, job);
@@ -468,7 +477,8 @@ static void cleanup_work(struct work_struct *work)
 
 /**
  * drm_writeback_signal_completion - Signal the completion of a writeback job
- * @wb_connector: The writeback connector whose job is complete
+ * @connector: The drm connector whicha has the drm_writeback_connector whose
+ * job is complete
  * @status: Status code to set in the writeback out_fence (0 for success)
  *
  * Drivers should call this to signal the completion of a previously queued
@@ -483,10 +493,11 @@ static void cleanup_work(struct work_struct *work)
  * See also: drm_writeback_queue_job()
  */
 void
-drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
+drm_writeback_signal_completion(struct drm_connector *connector,
 				int status)
 {
 	unsigned long flags;
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	struct drm_writeback_job *job;
 	struct dma_fence *out_fence;
 
@@ -517,11 +528,13 @@ drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
 EXPORT_SYMBOL(drm_writeback_signal_completion);
 
 struct dma_fence *
-drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
+drm_writeback_get_out_fence(struct drm_connector *connector)
 {
 	struct dma_fence *fence;
+	struct drm_writeback_connector *wb_connector =
+		&connector->writeback;
 
-	if (WARN_ON(wb_connector->base.connector_type !=
+	if (WARN_ON(connector->connector_type !=
 		    DRM_MODE_CONNECTOR_WRITEBACK))
 		return NULL;
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
index 6d28f2281c76..0311aba2bc73 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
@@ -371,7 +371,7 @@ static void dpu_encoder_phys_wb_done_irq(void *arg)
 	spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);
 
 	if (wb_enc->wb_conn)
-		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
+		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
 
 	/* Signal any waiting atomic commit thread */
 	wake_up_all(&phys_enc->pending_kickoff_wq);
@@ -432,7 +432,7 @@ static void _dpu_encoder_phys_wb_handle_wbdone_timeout(
 	phys_enc->enable_state = DPU_ENC_ERR_NEEDS_HW_RESET;
 
 	if (wb_enc->wb_conn)
-		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
+		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
 
 	dpu_encoder_frame_done_callback(phys_enc->parent, phys_enc, frame_event);
 }
@@ -482,11 +482,12 @@ static void dpu_encoder_phys_wb_prepare_for_kickoff(
 		return;
 	}
 
-	drm_conn = &wb_enc->wb_conn->base;
+	drm_conn =
+		drm_writeback_to_connector(wb_enc->wb_conn);
 	state = drm_conn->state;
 
 	if (wb_enc->wb_conn && wb_enc->wb_job)
-		drm_writeback_queue_job(wb_enc->wb_conn, state);
+		drm_writeback_queue_job(drm_conn, state);
 
 	dpu_encoder_phys_wb_setup(phys_enc);
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index 6f2370c9dd98..8e10d71ad292 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -29,8 +29,7 @@ static int dpu_wb_conn_get_modes(struct drm_connector *connector)
 static int dpu_wb_conn_atomic_check(struct drm_connector *connector,
 				    struct drm_atomic_state *state)
 {
-	struct drm_writeback_connector *wb_conn = drm_connector_to_writeback(connector);
-	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(wb_conn);
+	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
 	struct drm_connector_state *conn_state =
 		drm_atomic_get_new_connector_state(state, connector);
 	struct drm_crtc *crtc;
@@ -88,10 +87,9 @@ static const struct drm_connector_funcs dpu_wb_conn_funcs = {
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };
 
-static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *connector,
+static int dpu_wb_conn_prepare_job(struct drm_connector *connector,
 		struct drm_writeback_job *job)
 {
-
 	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
 
 	if (!job->fb)
@@ -102,7 +100,7 @@ static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *connector,
 	return 0;
 }
 
-static void dpu_wb_conn_cleanup_job(struct drm_writeback_connector *connector,
+static void dpu_wb_conn_cleanup_job(struct drm_connector *connector,
 		struct drm_writeback_job *job)
 {
 	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
@@ -132,7 +130,7 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
 
 	dpu_wb_conn->maxlinewidth = maxlinewidth;
 
-	drm_connector_helper_add(&dpu_wb_conn->base.base, &dpu_wb_conn_helper_funcs);
+	drm_connector_helper_add(&dpu_wb_conn->base, &dpu_wb_conn_helper_funcs);
 
 	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base,
 					   &dpu_wb_conn_funcs, enc,
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
index 4b11cca8014c..9ebf15392b20 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
@@ -16,12 +16,12 @@
 #include "dpu_encoder_phys.h"
 
 struct dpu_wb_connector {
-	struct drm_writeback_connector base;
+	struct drm_connector base;
 	struct drm_encoder *wb_enc;
 	u32 maxlinewidth;
 };
 
-static inline struct dpu_wb_connector *to_dpu_wb_conn(struct drm_writeback_connector *conn)
+static inline struct dpu_wb_connector *to_dpu_wb_conn(struct drm_connector *conn)
 {
 	return container_of(conn, struct dpu_wb_connector, base);
 }
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h b/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
index d0f38a8b3561..11937e70e308 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
@@ -42,7 +42,7 @@ struct rcar_du_vsp;
  * @cmm: CMM associated with this CRTC
  * @vsp: VSP feeding video to this CRTC
  * @vsp_pipe: index of the VSP pipeline feeding video to this CRTC
- * @writeback: the writeback connector
+ * @writeback: the drm connector which contains the writeback connector
  */
 struct rcar_du_crtc {
 	struct drm_crtc crtc;
@@ -72,7 +72,7 @@ struct rcar_du_crtc {
 	const char *const *sources;
 	unsigned int sources_count;
 
-	struct drm_writeback_connector writeback;
+	struct drm_connector writeback;
 };
 
 #define to_rcar_crtc(c)		container_of(c, struct rcar_du_crtc, crtc)
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index aa37cf99754c..5553b7fcbd3a 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -47,7 +47,7 @@ static int rcar_du_wb_conn_get_modes(struct drm_connector *connector)
 				    dev->mode_config.max_height);
 }
 
-static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
+static int rcar_du_wb_prepare_job(struct drm_connector *connector,
 				  struct drm_writeback_job *job)
 {
 	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
@@ -72,7 +72,7 @@ static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
 	return 0;
 }
 
-static void rcar_du_wb_cleanup_job(struct drm_writeback_connector *connector,
+static void rcar_du_wb_cleanup_job(struct drm_connector *connector,
 				   struct drm_writeback_job *job)
 {
 	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
@@ -199,8 +199,6 @@ static const u32 writeback_formats[] = {
 int rcar_du_writeback_init(struct rcar_du_device *rcdu,
 			   struct rcar_du_crtc *rcrtc)
 {
-	struct drm_writeback_connector *wb_conn = &rcrtc->writeback;
-
 	struct drm_encoder *encoder;
 
 	encoder = drmm_plain_encoder_alloc(&rcdu->ddev, NULL,
@@ -212,10 +210,10 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
 
 	encoder->possible_crtcs = drm_crtc_mask(&rcrtc->crtc);
 
-	drm_connector_helper_add(&wb_conn->base,
+	drm_connector_helper_add(&rcrtc->writeback,
 				 &rcar_du_wb_conn_helper_funcs);
 
-	return drmm_writeback_connector_init(&rcdu->ddev, wb_conn,
+	return drmm_writeback_connector_init(&rcdu->ddev, &rcrtc->writeback,
 					     &rcar_du_wb_conn_funcs,
 					     encoder,
 					     writeback_formats,
@@ -231,7 +229,7 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
 	struct drm_framebuffer *fb;
 	unsigned int i;
 
-	state = rcrtc->writeback.base.state;
+	state = rcrtc->writeback.state;
 	if (!state || !state->writeback_job)
 		return;
 
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index befdb094c173..23c8783f9f3c 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -168,7 +168,7 @@ struct vc4_txp {
 	struct platform_device *pdev;
 
 	struct vc4_encoder encoder;
-	struct drm_writeback_connector connector;
+	struct drm_connector connector;
 
 	void __iomem *regs;
 };
@@ -177,7 +177,7 @@ struct vc4_txp {
 	container_of_const(_encoder, struct vc4_txp, encoder.base)
 
 #define connector_to_vc4_txp(_connector)				\
-	container_of_const(_connector, struct vc4_txp, connector.base)
+	container_of_const(_connector, struct vc4_txp, connector)
 
 static const struct debugfs_reg32 txp_regs[] = {
 	VC4_REG32(TXP_DST_PTR),
@@ -599,7 +599,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	drm_connector_helper_add(&txp->connector.base,
+	drm_connector_helper_add(&txp->connector,
 				 &vc4_txp_connector_helper_funcs);
 	ret = drmm_writeback_connector_init(drm, &txp->connector,
 					    &vc4_txp_connector_funcs,
@@ -623,7 +623,7 @@ static void vc4_txp_unbind(struct device *dev, struct device *master,
 {
 	struct vc4_txp *txp = dev_get_drvdata(dev);
 
-	drm_connector_cleanup(&txp->connector.base);
+	drm_connector_cleanup(&txp->connector);
 }
 
 static const struct component_ops vc4_txp_ops = {
diff --git a/drivers/gpu/drm/vkms/vkms_drv.h b/drivers/gpu/drm/vkms/vkms_drv.h
index 0933e4ce0ff0..145a7909388b 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.h
+++ b/drivers/gpu/drm/vkms/vkms_drv.h
@@ -217,7 +217,7 @@ struct vkms_crtc_state {
  */
 struct vkms_output {
 	struct drm_crtc crtc;
-	struct drm_writeback_connector wb_connector;
+	struct drm_connector wb_connector;
 	struct drm_encoder wb_encoder;
 	struct workqueue_struct *composer_workq;
 	spinlock_t lock;
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 908b7e602ffb..fffdee585e4a 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -72,7 +72,7 @@ static int vkms_wb_connector_get_modes(struct drm_connector *connector)
 				    dev->mode_config.max_height);
 }
 
-static int vkms_wb_prepare_job(struct drm_writeback_connector *wb_connector,
+static int vkms_wb_prepare_job(struct drm_connector *connector,
 			       struct drm_writeback_job *job)
 {
 	struct vkms_writeback_job *vkmsjob;
@@ -103,7 +103,7 @@ static int vkms_wb_prepare_job(struct drm_writeback_connector *wb_connector,
 	return ret;
 }
 
-static void vkms_wb_cleanup_job(struct drm_writeback_connector *connector,
+static void vkms_wb_cleanup_job(struct drm_connector *connector,
 				struct drm_writeback_job *job)
 {
 	struct vkms_writeback_job *vkmsjob = job->priv;
@@ -128,8 +128,7 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
 	struct drm_connector_state *connector_state = drm_atomic_get_new_connector_state(state,
 											 conn);
 	struct vkms_output *output = drm_crtc_to_vkms_output(connector_state->crtc);
-	struct drm_writeback_connector *wb_conn = &output->wb_connector;
-	struct drm_connector_state *conn_state = wb_conn->base.state;
+	struct drm_connector_state *conn_state = output->wb_connector.state;
 	struct vkms_crtc_state *crtc_state = output->composer_state;
 	struct drm_framebuffer *fb = connector_state->writeback_job->fb;
 	u16 crtc_height = crtc_state->base.mode.vdisplay;
@@ -150,7 +149,7 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
 	crtc_state->active_writeback = active_wb;
 	crtc_state->wb_pending = true;
 	spin_unlock_irq(&output->composer_lock);
-	drm_writeback_queue_job(wb_conn, connector_state);
+	drm_writeback_queue_job(&output->wb_connector, connector_state);
 	active_wb->pixel_write = get_pixel_write_function(wb_format);
 	drm_rect_init(&wb_frame_info->src, 0, 0, crtc_width, crtc_height);
 	drm_rect_init(&wb_frame_info->dst, 0, 0, crtc_width, crtc_height);
@@ -167,7 +166,6 @@ static const struct drm_connector_helper_funcs vkms_wb_conn_helper_funcs = {
 int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
 				    struct vkms_output *vkms_output)
 {
-	struct drm_writeback_connector *wb = &vkms_output->wb_connector;
 	int ret;
 
 	ret = drmm_encoder_init(&vkmsdev->drm, &vkms_output->wb_encoder,
@@ -178,9 +176,10 @@ int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
 	vkms_output->wb_encoder.possible_clones |=
 		drm_encoder_mask(&vkms_output->wb_encoder);
 
-	drm_connector_helper_add(&wb->base, &vkms_wb_conn_helper_funcs);
+	drm_connector_helper_add(&vkms_output->wb_connector, &vkms_wb_conn_helper_funcs);
 
-	return drmm_writeback_connector_init(&vkmsdev->drm, wb,
+	return drmm_writeback_connector_init(&vkmsdev->drm,
+					     &vkms_output->wb_connector,
 					     &vkms_wb_connector_funcs,
 					     &vkms_output->wb_encoder,
 					     vkms_wb_formats,
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index af8b92d2d5b7..41e19fc1c086 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1949,6 +1949,61 @@ struct drm_connector_cec {
 	void *data;
 };
 
+/**
+ * struct drm_writeback_connector - DRM writeback connector
+ */
+struct drm_writeback_connector {
+	/**
+	 * @pixel_formats_blob_ptr:
+	 *
+	 * DRM blob property data for the pixel formats list on writeback
+	 * connectors
+	 * See also drm_writeback_connector_init()
+	 */
+	struct drm_property_blob *pixel_formats_blob_ptr;
+
+	/** @job_lock: Protects job_queue */
+	spinlock_t job_lock;
+
+	/**
+	 * @job_queue:
+	 *
+	 * Holds a list of a connector's writeback jobs; the last item is the
+	 * most recent. The first item may be either waiting for the hardware
+	 * to begin writing, or currently being written.
+	 *
+	 * See also: drm_writeback_queue_job() and
+	 * drm_writeback_signal_completion()
+	 */
+	struct list_head job_queue;
+
+	/**
+	 * @fence_context:
+	 *
+	 * timeline context used for fence operations.
+	 */
+	unsigned int fence_context;
+	/**
+	 * @fence_lock:
+	 *
+	 * spinlock to protect the fences in the fence_context.
+	 */
+	spinlock_t fence_lock;
+	/**
+	 * @fence_seqno:
+	 *
+	 * Seqno variable used as monotonic counter for the fences
+	 * created on the connector's timeline.
+	 */
+	unsigned long fence_seqno;
+	/**
+	 * @timeline_name:
+	 *
+	 * The name of the connector's fence timeline.
+	 */
+	char timeline_name[32];
+};
+
 /**
  * struct drm_connector - central DRM connector control structure
  *
@@ -2358,10 +2413,16 @@ struct drm_connector {
 	 */
 	struct llist_node free_node;
 
-	/**
-	 * @hdmi: HDMI-related variable and properties.
-	 */
-	struct drm_connector_hdmi hdmi;
+	union {
+		/**
+		 * @hdmi: HDMI-related variable and properties.
+		 */
+		struct drm_connector_hdmi hdmi;
+		/**
+		 * @writeback: Writeback related valriables.
+		 */
+		struct drm_writeback_connector writeback;
+	};
 
 	/**
 	 * @hdmi_audio: HDMI codec properties and non-DRM state.
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index 3e68213958dd..4a0e7c19dd4e 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1119,7 +1119,7 @@ struct drm_connector_helper_funcs {
 	 *
 	 * This callback is used by the atomic modeset helpers.
 	 */
-	int (*prepare_writeback_job)(struct drm_writeback_connector *connector,
+	int (*prepare_writeback_job)(struct drm_connector *connector,
 				     struct drm_writeback_job *job);
 	/**
 	 * @cleanup_writeback_job:
@@ -1134,7 +1134,7 @@ struct drm_connector_helper_funcs {
 	 *
 	 * This callback is used by the atomic modeset helpers.
 	 */
-	void (*cleanup_writeback_job)(struct drm_writeback_connector *connector,
+	void (*cleanup_writeback_job)(struct drm_connector *connector,
 				      struct drm_writeback_job *job);
 
 	/**
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index 958466a05e60..2afa48ea7c00 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -15,66 +15,6 @@
 #include <drm/drm_encoder.h>
 #include <linux/workqueue.h>
 
-/**
- * struct drm_writeback_connector - DRM writeback connector
- */
-struct drm_writeback_connector {
-	/**
-	 * @base: base drm_connector object
-	 */
-	struct drm_connector base;
-
-	/**
-	 * @pixel_formats_blob_ptr:
-	 *
-	 * DRM blob property data for the pixel formats list on writeback
-	 * connectors
-	 * See also drm_writeback_connector_init()
-	 */
-	struct drm_property_blob *pixel_formats_blob_ptr;
-
-	/** @job_lock: Protects job_queue */
-	spinlock_t job_lock;
-
-	/**
-	 * @job_queue:
-	 *
-	 * Holds a list of a connector's writeback jobs; the last item is the
-	 * most recent. The first item may be either waiting for the hardware
-	 * to begin writing, or currently being written.
-	 *
-	 * See also: drm_writeback_queue_job() and
-	 * drm_writeback_signal_completion()
-	 */
-	struct list_head job_queue;
-
-	/**
-	 * @fence_context:
-	 *
-	 * timeline context used for fence operations.
-	 */
-	unsigned int fence_context;
-	/**
-	 * @fence_lock:
-	 *
-	 * spinlock to protect the fences in the fence_context.
-	 */
-	spinlock_t fence_lock;
-	/**
-	 * @fence_seqno:
-	 *
-	 * Seqno variable used as monotonic counter for the fences
-	 * created on the connector's timeline.
-	 */
-	unsigned long fence_seqno;
-	/**
-	 * @timeline_name:
-	 *
-	 * The name of the connector's fence timeline.
-	 */
-	char timeline_name[32];
-};
-
 /**
  * struct drm_writeback_job - DRM writeback job
  */
@@ -131,20 +71,20 @@ struct drm_writeback_job {
 	void *priv;
 };
 
-static inline struct drm_writeback_connector *
-drm_connector_to_writeback(struct drm_connector *connector)
+static inline struct drm_connector *
+drm_writeback_to_connector(struct drm_writeback_connector *wb_connector)
 {
-	return container_of(connector, struct drm_writeback_connector, base);
+	return container_of(wb_connector, struct drm_connector, writeback);
 }
 
 int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
+				 struct drm_connector *connector,
 				 const struct drm_connector_funcs *con_funcs,
 				 struct drm_encoder *enc,
 				 const u32 *formats, int n_formats);
 
 int drmm_writeback_connector_init(struct drm_device *dev,
-				  struct drm_writeback_connector *wb_connector,
+				  struct drm_connector *connector,
 				  const struct drm_connector_funcs *con_funcs,
 				  struct drm_encoder *enc,
 				  const u32 *formats, int n_formats);
@@ -154,15 +94,15 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
 
 int drm_writeback_prepare_job(struct drm_writeback_job *job);
 
-void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
+void drm_writeback_queue_job(struct drm_connector *wb_connector,
 			     struct drm_connector_state *conn_state);
 
 void drm_writeback_cleanup_job(struct drm_writeback_job *job);
 
 void
-drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
+drm_writeback_signal_completion(struct drm_connector *connector,
 				int status);
 
 struct dma_fence *
-drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector);
+drm_writeback_get_out_fence(struct drm_connector *connector);
 #endif
-- 
2.34.1

