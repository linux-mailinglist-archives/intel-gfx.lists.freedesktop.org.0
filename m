Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAB812816A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDDA36EC77;
	Fri, 20 Dec 2019 17:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3C36E11C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875752"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:53 -0800
Message-Id: <20191220172754.3773-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: prefer 3-letter acronym for
 ivybridge
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts ivybridge to ivb where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_irq.c                    |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c14f1e5a871..9569187979fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5292,7 +5292,7 @@ static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool e
 	POSTING_READ(SOUTH_CHICKEN1);
 }
 
-static void ivybridge_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
+static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -5365,7 +5365,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 	assert_pch_transcoder_disabled(dev_priv, pipe);
 
 	if (IS_IVYBRIDGE(dev_priv))
-		ivybridge_update_fdi_bc_bifurcation(crtc_state);
+		ivb_update_fdi_bc_bifurcation(crtc_state);
 
 	/* Write the TU size bits before fdi link training, so that error
 	 * detection works. */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 1f80f275f3f2..6c83b350525d 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -139,7 +139,7 @@ static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
 		ilk_disable_display_irq(dev_priv, bit);
 }
 
-static void ivybridge_check_fifo_underruns(struct intel_crtc *crtc)
+static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -157,9 +157,9 @@ static void ivybridge_check_fifo_underruns(struct intel_crtc *crtc)
 	DRM_ERROR("fifo underrun on pipe %c\n", pipe_name(pipe));
 }
 
-static void ivybridge_set_fifo_underrun_reporting(struct drm_device *dev,
-						  enum pipe pipe,
-						  bool enable, bool old)
+static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
+					    enum pipe pipe, bool enable,
+					    bool old)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	if (enable) {
@@ -266,7 +266,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 	else if (IS_GEN_RANGE(dev_priv, 5, 6))
 		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
 	else if (IS_GEN(dev_priv, 7))
-		ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
+		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
 	else if (INTEL_GEN(dev_priv) >= 8)
 		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
 
@@ -427,7 +427,7 @@ void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv)
 		if (HAS_GMCH(dev_priv))
 			i9xx_check_fifo_underruns(crtc);
 		else if (IS_GEN(dev_priv, 7))
-			ivybridge_check_fifo_underruns(crtc);
+			ivb_check_fifo_underruns(crtc);
 	}
 
 	spin_unlock_irq(&dev_priv->irq_lock);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2d6324d2922a..afc6aad9bf8c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -893,7 +893,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 }
 
 /**
- * ivybridge_parity_work - Workqueue called when a parity error interrupt
+ * ivb_parity_work - Workqueue called when a parity error interrupt
  * occurred.
  * @work: workqueue struct
  *
@@ -901,7 +901,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
  * this event, userspace should try to remap the bad rows since statistically
  * it is likely the same row is more likely to go bad again.
  */
-static void ivybridge_parity_work(struct work_struct *work)
+static void ivb_parity_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), l3_parity.error_work);
@@ -3899,7 +3899,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	intel_hpd_init_work(dev_priv);
 
-	INIT_WORK(&dev_priv->l3_parity.error_work, ivybridge_parity_work);
+	INIT_WORK(&dev_priv->l3_parity.error_work, ivb_parity_work);
 	for (i = 0; i < MAX_L3_SLICES; ++i)
 		dev_priv->l3_parity.remap_info[i] = NULL;
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
