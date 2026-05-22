Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDQLDMPjD2r+RAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:04:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0DC5AEE93
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD6310F4AE;
	Fri, 22 May 2026 05:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j+Dq09IL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91D310F4AE;
 Fri, 22 May 2026 05:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779426241; x=1810962241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0RKQI497izkyUpuLirWz7toRkqW7MaZEh3L84pVGeSg=;
 b=j+Dq09IL9On7h2QzD90lYOrkoao2077fC6Lmo31XveeNd5CN8jgdJmTX
 DjzrFmDLkyb80v0gklqIw3wM5fNU+CkHiYNOvAvdIasEifrg+d3LokhOv
 n9q8R6DZ5OPyNUJdEwys2RRwxlPDtRbl6/I972xZpxd/PZf8k9QGRIg9r
 6M46zagnUGRpMrTH1CmGjOgcPAWzgOgoorjaA0iuHJZ+/7hswV6MUGXf1
 BxVNtZgYCl3OdBmIz+7l8+wNvjbEgV/f8hBADqXwgj+0HZJ8fscjwNwPn
 ipQA2rGigvgjNWJERp1rYKMll/kijUrpWAY9h4sWS+YyF0v8j+tXQ80Rm A==;
X-CSE-ConnectionGUID: WNUJmpl+QYKyjsJZvJb3KQ==
X-CSE-MsgGUID: 6SJOhv/NSGm/iv3A7xexuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="90651749"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="90651749"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 22:04:00 -0700
X-CSE-ConnectionGUID: MQ2LoF5qQ4GtOxcGz9Vguw==
X-CSE-MsgGUID: Armi9w3jQh6IzunHbdpahQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="239946340"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 21 May 2026 22:03:54 -0700
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
Subject: [PATCH v5 4/7] drm: writeback: Modify drm_writeback_signal_completion
 helper
Date: Fri, 22 May 2026 10:33:10 +0530
Message-Id: <20260522050313.1800378-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260522050313.1800378-1-suraj.kandpal@intel.com>
References: <20260522050313.1800378-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
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
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim,igalia.com:email]
X-Rspamd-Queue-Id: BC0DC5AEE93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm_writeback_signal_completion() needs access to the parent
drm_connector object as well as the drm_writeback_connector object
itself. So, pass in the top level drm_connector and traverse down
to drm_writeback_connector rather than passing in the lower level
object and traversing back up. Update to use the top level object
for consistency across the writeback interface.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: John Harrison <John.Harrison@Igalia.com>
---
v4 -> v5:
- Make @connector kerneldoc wording consistent across the series (John)

v3 -> v4:
- Update subject line for consitency (John)
- Update commit message across commits for consitency (John)

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
 drivers/gpu/drm/arm/malidp_hw.c                     | 6 +++---
 drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 4 ++--
 drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
 drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
 drivers/gpu/drm/vkms/vkms_composer.c                | 2 +-
 include/drm/drm_writeback.h                         | 2 +-
 9 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 0772e3b01fa5..c2ec7f4883d4 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -681,7 +681,7 @@ static void dm_crtc_high_irq(void *interrupt_params)
 					     100LL, (v_total * stream->timing.h_total));
 				mdelay(1000 / refresh_hz);
 
-				drm_writeback_signal_completion(acrtc->wb_conn, 0);
+				drm_writeback_signal_completion(acrtc->connector, 0);
 				dc_stream_fc_disable_writeback(adev->dm.dc,
 							       acrtc->dm_irq_params.stream, 0);
 			}
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
index c64cf5d97e62..da6bfe2797aa 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
@@ -213,7 +213,7 @@ void komeda_crtc_handle_event(struct komeda_crtc   *kcrtc,
 		struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;
 
 		if (wb_conn)
-			drm_writeback_signal_completion(&wb_conn->base.writeback, 0);
+			drm_writeback_signal_completion(&wb_conn->base, 0);
 		else
 			drm_warn(drm, "CRTC[%d]: EOW happen but no wb_connector.\n",
 				 drm_crtc_index(&kcrtc->base));
diff --git a/drivers/gpu/drm/arm/malidp_hw.c b/drivers/gpu/drm/arm/malidp_hw.c
index 5a7bd27d3718..9b845d3f34e1 100644
--- a/drivers/gpu/drm/arm/malidp_hw.c
+++ b/drivers/gpu/drm/arm/malidp_hw.c
@@ -1315,15 +1315,15 @@ static irqreturn_t malidp_se_irq(int irq, void *arg)
 	if (status & se->vsync_irq) {
 		switch (hwdev->mw_state) {
 		case MW_ONESHOT:
-			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
+			drm_writeback_signal_completion(&malidp->mw_connector, 0);
 			break;
 		case MW_STOP:
-			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
+			drm_writeback_signal_completion(&malidp->mw_connector, 0);
 			/* disable writeback after stop */
 			hwdev->mw_state = MW_NOT_ENABLED;
 			break;
 		case MW_RESTART:
-			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
+			drm_writeback_signal_completion(&malidp->mw_connector, 0);
 			fallthrough;	/* to a new start */
 		case MW_START:
 			/* writeback started, need to emulate one-shot mode */
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 56871bf5e44d..5423abc825ee 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -473,7 +473,8 @@ static void cleanup_work(struct work_struct *work)
 
 /**
  * drm_writeback_signal_completion - Signal the completion of a writeback job
- * @wb_connector: The writeback connector whose job is complete
+ * @connector: DRM connector which contains the writeback connector whose
+ * job is complete
  * @status: Status code to set in the writeback out_fence (0 for success)
  *
  * Drivers should call this to signal the completion of a previously queued
@@ -488,10 +489,11 @@ static void cleanup_work(struct work_struct *work)
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
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
index 0a4026f22274..977fc0337fbd 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
@@ -370,7 +370,7 @@ static void dpu_encoder_phys_wb_done_irq(void *arg)
 	spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);
 
 	if (wb_enc->wb_conn)
-		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
+		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
 
 	/* Signal any waiting atomic commit thread */
 	wake_up_all(&phys_enc->pending_kickoff_wq);
@@ -431,7 +431,7 @@ static void _dpu_encoder_phys_wb_handle_wbdone_timeout(
 	phys_enc->enable_state = DPU_ENC_ERR_NEEDS_HW_RESET;
 
 	if (wb_enc->wb_conn)
-		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
+		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
 
 	dpu_encoder_frame_done_callback(phys_enc->parent, phys_enc, frame_event);
 }
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index 5cd6c81a9710..4b0f6cd46acb 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -251,5 +251,5 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
 
 void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
 {
-	drm_writeback_signal_completion(&rcrtc->wb_connector.writeback, 0);
+	drm_writeback_signal_completion(&rcrtc->wb_connector, 0);
 }
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 46330b6f9a12..0d8579683c57 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -505,7 +505,7 @@ static irqreturn_t vc4_txp_interrupt(int irq, void *data)
 	 */
 	TXP_WRITE(TXP_DST_CTRL, TXP_READ(TXP_DST_CTRL) & ~TXP_EI);
 	vc4_crtc_handle_vblank(vc4_crtc);
-	drm_writeback_signal_completion(&txp->connector.writeback, 0);
+	drm_writeback_signal_completion(&txp->connector, 0);
 
 	return IRQ_HANDLED;
 }
diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
index 27fb6a7b55bb..83d217085ad0 100644
--- a/drivers/gpu/drm/vkms/vkms_composer.c
+++ b/drivers/gpu/drm/vkms/vkms_composer.c
@@ -652,7 +652,7 @@ void vkms_composer_worker(struct work_struct *work)
 		return;
 
 	if (wb_pending) {
-		drm_writeback_signal_completion(&out->wb_connector.writeback, 0);
+		drm_writeback_signal_completion(&out->wb_connector, 0);
 		spin_lock_irq(&out->composer_lock);
 		crtc_state->wb_pending = false;
 		spin_unlock_irq(&out->composer_lock);
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index b4c11d380df0..5e8ab51c2da4 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -100,7 +100,7 @@ void drm_writeback_queue_job(struct drm_connector *wb_connector,
 void drm_writeback_cleanup_job(struct drm_writeback_job *job);
 
 void
-drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
+drm_writeback_signal_completion(struct drm_connector *connector,
 				int status);
 
 struct dma_fence *
-- 
2.34.1

