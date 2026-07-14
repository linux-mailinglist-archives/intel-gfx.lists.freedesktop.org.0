Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y7z9IwG7VWpbsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:28:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F173B750D3D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:28:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LM2TRxcv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED0A10EBD7;
	Tue, 14 Jul 2026 04:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E910C10EBD7;
 Tue, 14 Jul 2026 04:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784003326; x=1815539326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+66I+QgKyjSNY1as0eKlRs7GuT6fWuvxdBIil9oyeX8=;
 b=LM2TRxcvR1sqfeXe0CCNnl6v2Cph7rrnO0v2WuMx7y820DsjKIYzRDql
 QiBz5i7UakNju9FVLw0M/VpPMRPKituDBR+oTt/aDAuFqrKzQK5d2cqHH
 K8vi96uFBwapmlWAwb0EtdPlAJ/+PXDUqsx89giw+1D54rmgk/CEe9IO3
 WgoDR2yJdfgmuwd2HjVo5cEHqkyjTglucG+sEAxZSVuZ12Dzc8+8BNW/C
 9E9JAPYP3GcBFlOQrg2NE9m2Lg9DqzqkCopJn8G78FfWl3oKR3EJtPwgN
 6eojZGQIeWFIJWwz/sVVxhVhXokYNyB0iqGZxwL78sz7h7SpLWqpxCXhm w==;
X-CSE-ConnectionGUID: Qdy+GMoeQNO9Ty3mEbEYqw==
X-CSE-MsgGUID: MzIlR7sKRnO1ckgQJZS+Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88297082"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88297082"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 21:28:45 -0700
X-CSE-ConnectionGUID: +fywegqFQ5ynISSehlih/Q==
X-CSE-MsgGUID: lL3ZGegKQSaukVkSb2SCxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="255243173"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 13 Jul 2026 21:28:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, arun.r.murthy@intel.com, abhinav.kumar@linux.dev,
 tzimmermann@suse.de, sean@poorly.ru, marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, dave.stevenson@raspberrypi.com,
 tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, louis.chauvet@bootlin.com,
 kernel-dev@igalia.com, John.Harrison@Igalia.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 3/7] drm: writeback: Modify drm_writeback_queue_job helper
Date: Tue, 14 Jul 2026 09:58:01 +0530
Message-Id: <20260714042805.77934-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714042805.77934-1-suraj.kandpal@intel.com>
References: <20260714042805.77934-1-suraj.kandpal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F173B750D3D

drm_writeback_queue_job() needs access to the parent drm_connector
object as well as the drm_writeback_connector object itself. So,
pass in the top level drm_connector and traverse down to
drm_writeback_connector rather than passing in the lower level
object and traversing back up. This is also consistent with the
rest of the writeback interface which is being updated to use
drm_connector as the top level handle.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: John Harrison <John.Harrison@Igalia.com>
---
v5 -> v6:
- Rebase over latest kernel

v4 -> v5:
- Make @connector kerneldoc wording consistent across the series (John)

v3 -> v4:
- Update subject line for consitency (John)
- Update commit message across commits for consitency (John)

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
 drivers/gpu/drm/arm/malidp_mw.c                     | 3 +--
 drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 2 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
 drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c               | 3 +--
 include/drm/drm_writeback.h                         | 2 +-
 9 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 427a8a52d256..9504f6b5571e 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -4975,7 +4975,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
 	dc_stream_add_writeback(dm->dc, crtc_state->stream, wb_info);
 
 	acrtc->wb_conn = wb_conn;
-	drm_writeback_queue_job(wb_conn, new_con_state);
+	drm_writeback_queue_job(connector, new_con_state);
 
 	/*
 	 * Writeback completion is detected in the CRTC vblank IRQ
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
index 6611920c45fb..c64cf5d97e62 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
@@ -271,7 +271,7 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
 
 	conn_st = wb_conn ? wb_conn->base.state : NULL;
 	if (conn_st && conn_st->writeback_job)
-		drm_writeback_queue_job(&wb_conn->base.writeback, conn_st);
+		drm_writeback_queue_job(&wb_conn->base, conn_st);
 
 	/* step 2: notify the HW to kickoff the update */
 	mdev->funcs->flush(mdev, master->id, kcrtc_st->active_pipes);
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index 271ec83c7e48..159d7bb3a189 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -244,7 +244,6 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
 			     struct drm_atomic_commit *old_state)
 {
 	struct malidp_drm *malidp = drm_to_malidp(drm);
-	struct drm_writeback_connector *mw_conn = &malidp->mw_connector.writeback;
 	struct drm_connector_state *conn_state = malidp->mw_connector.state;
 	struct malidp_hw_device *hwdev = malidp->dev;
 	struct malidp_mw_connector_state *mw_state;
@@ -264,7 +263,7 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
 				     &mw_state->addrs[0],
 				     mw_state->format);
 
-		drm_writeback_queue_job(mw_conn, conn_state);
+		drm_writeback_queue_job(&malidp->mw_connector, conn_state);
 		hwdev->hw->enable_memwrite(hwdev, mw_state->addrs,
 					   mw_state->pitches, mw_state->n_planes,
 					   fb->width, fb->height, mw_state->format,
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 79c4be2acbbe..e999eca5b649 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -408,7 +408,8 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
 
 /**
  * drm_writeback_queue_job - Queue a writeback job for later signalling
- * @wb_connector: The writeback connector to queue a job on
+ * @connector: DRM connector which contains the writeback connector to
+ * queue a job on
  * @conn_state: The connector state containing the job to queue
  *
  * This function adds the job contained in @conn_state to the job_queue for a
@@ -425,9 +426,10 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
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
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
index e2a328225c9e..0a4026f22274 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
@@ -486,7 +486,7 @@ static void dpu_encoder_phys_wb_prepare_for_kickoff(
 	state = drm_conn->state;
 
 	if (wb_enc->wb_conn && wb_enc->wb_job)
-		drm_writeback_queue_job(wb_enc->wb_conn, state);
+		drm_writeback_queue_job(drm_conn, state);
 
 	dpu_encoder_phys_wb_setup(phys_enc);
 
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index 6b27307941a4..5cd6c81a9710 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -246,7 +246,7 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
 		cfg->mem[i] = sg_dma_address(rjob->sg_tables[i].sgl)
 			    + fb->offsets[i];
 
-	drm_writeback_queue_job(&rcrtc->wb_connector.writeback, state);
+	drm_writeback_queue_job(&rcrtc->wb_connector, state);
 }
 
 void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index f11ad54d067a..9cf2ec99bdfb 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -356,7 +356,7 @@ static void vc4_txp_connector_atomic_commit(struct drm_connector *conn,
 
 	TXP_WRITE(TXP_DST_CTRL, ctrl);
 
-	drm_writeback_queue_job(&txp->connector.writeback, conn_state);
+	drm_writeback_queue_job(&txp->connector, conn_state);
 
 	drm_dev_exit(idx);
 }
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 9341533b0325..2e3df9388dd2 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -131,7 +131,6 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
 	struct drm_connector_state *connector_state = drm_atomic_get_new_connector_state(state,
 											 conn);
 	struct vkms_output *output = drm_crtc_to_vkms_output(connector_state->crtc);
-	struct drm_writeback_connector *wb_conn = &output->wb_connector.writeback;
 	struct drm_connector_state *conn_state = output->wb_connector.state;
 	struct vkms_crtc_state *crtc_state = output->composer_state;
 	struct drm_framebuffer *fb = connector_state->writeback_job->fb;
@@ -153,7 +152,7 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
 	crtc_state->active_writeback = active_wb;
 	crtc_state->wb_pending = true;
 	spin_unlock_irq(&output->composer_lock);
-	drm_writeback_queue_job(wb_conn, connector_state);
+	drm_writeback_queue_job(&output->wb_connector, connector_state);
 	active_wb->pixel_write = get_pixel_write_function(wb_format);
 	drm_rect_init(&wb_frame_info->src, 0, 0, crtc_width, crtc_height);
 	drm_rect_init(&wb_frame_info->dst, 0, 0, crtc_width, crtc_height);
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index c6960c7e634e..b4c11d380df0 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -94,7 +94,7 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
 
 int drm_writeback_prepare_job(struct drm_writeback_job *job);
 
-void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
+void drm_writeback_queue_job(struct drm_connector *wb_connector,
 			     struct drm_connector_state *conn_state);
 
 void drm_writeback_cleanup_job(struct drm_writeback_job *job);
-- 
2.34.1

