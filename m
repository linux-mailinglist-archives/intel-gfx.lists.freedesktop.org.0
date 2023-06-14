Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E1724CDE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F327B10E39A;
	Tue,  6 Jun 2023 19:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FC610E39A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078960; x=1717614960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9HHUCrlQQ6xb52+hKh/juZ7t9j0YoPms+V37VE+rNHM=;
 b=b9vb9+J111JnL/IAgKMlKU4+zd1NOwvt1UEcHwmfIpfEvrhoGhRfMox4
 tSHBQLtFOA+QyaUc65SgJPt+of8Bln6gKaOc6jdR6qArpgBVPAgk8R4Y0
 JDaoR0h/Al7extfXkFIasW/GekQZh97EU9BcXwXIJOMQBTeEC3QnerwFq
 dYkhoaB3cW6H+QlqfXQ+zQpmh6jOK9plm9lAeQUoSSsNlc1oW9KzY5fzG
 CKrM99sZhmNzmd0lYFhHwbx/UgK0uDqtHThyoVcM/RK7OnPY+gpAl63Op
 Me9YFADusEAhVmhprXaRRXKwvGNl5q47aNHOuZjVXa0Cm/TdGTRcATG3T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146396"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146396"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187163"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187163"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:15:02 +0300
Message-Id: <20230606191504.18099-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/19] drm/i915/dsb: Use DEwake to combat
 PkgC latency
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Normally we could be in a deep PkgC state all the way up to the
point when DSB starts its execution at the transcoders undelayed
vblank. The DSB will then have to wait for the hardware to
wake up before it can execute anything. This will waste a huge
chunk of the vblank time just waiting, and risks the DSB execution
spilling into the vertical active period. That will be very bad,
especially when programming the LUTs as the anti-collision logic
will cause DSB to corrupt LUT writes during vertical active.

To avoid these problems we can instruct the DSB to pre-wake the
display engined on a specific scanline so that everything will
be 100% ready to go when we hit the transcoder's undelayed vblank.

One annoyance is that the scanline is specified as just that,
a single scanline. So if we happen to start the DSB execution
after passing said scanline no DEwake will happen and we may drop
back into some PkgC state before reaching the transcoder's undelayed
vblank. To prevent that we'll use the "force DEwake" bit to manually
force the display engined to stay awake. We'll then have to clear
the force bit again after the DSB is done (the force bit remains
effective even when the DSB is otherwise disabled).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 91 +++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dsb.h   |  3 +-
 3 files changed, 82 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index b3dd4013d058..c5a9ea53a718 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1824,7 +1824,7 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
+	crtc_state->dsb = intel_dsb_prepare(crtc_state, 1024);
 	if (!crtc_state->dsb)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 73d609507f24..3e32aa49b8eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -7,11 +7,16 @@
 #include "gem/i915_gem_internal.h"
 
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "i915_reg.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 #include "intel_dsb_regs.h"
+#include "intel_vblank.h"
+#include "intel_vrr.h"
+#include "skl_watermark.h"
 
 struct i915_vma;
 
@@ -47,6 +52,8 @@ struct intel_dsb {
 	 * register.
 	 */
 	unsigned int ins_start_offset;
+
+	int dewake_scanline;
 };
 
 /**
@@ -297,17 +304,40 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
+	struct intel_crtc *crtc = dsb->crtc;
+
+	/*
+	 * DSB_FORCE_DEWAKE remains active even after DSB is
+	 * disabled, so make sure to clear it (if set during
+	 * intel_dsb_commit()).
+	 */
+	intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(crtc->pipe, dsb->id),
+				   DSB_FORCE_DEWAKE, 0);
+
 	intel_dsb_align_tail(dsb);
 }
 
-/**
- * intel_dsb_commit() - Trigger workload execution of DSB.
- * @dsb: DSB context
- * @wait_for_vblank: wait for vblank before executing
- *
- * This function is used to do actual write to hardware using DSB.
- */
-void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
+static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	unsigned int latency = skl_watermark_max_latency(i915);
+	int vblank_start;
+
+	if (crtc_state->vrr.enable) {
+		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+	} else {
+		vblank_start = adjusted_mode->crtc_vblank_start;
+
+		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+			vblank_start = DIV_ROUND_UP(vblank_start, 2);
+	}
+
+	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
+}
+
+static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
+			      unsigned int dewake_scanline)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -325,14 +355,49 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
 	}
 
 	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
-			  (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
-			  DSB_ENABLE);
+			  ctrl | DSB_ENABLE);
+
 	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
 			  i915_ggtt_offset(dsb->vma));
+
+	if (dewake_scanline >= 0) {
+		int diff, hw_dewake_scanline;
+
+		hw_dewake_scanline = intel_crtc_scanline_to_hw(crtc, dewake_scanline);
+
+		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
+				  DSB_ENABLE_DEWAKE |
+				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
+
+		/*
+		 * Force DEwake immediately if we're already past
+		 * or close to racing past the target scanline.
+		 */
+		diff = dewake_scanline - intel_get_crtc_scanline(crtc);
+		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
+				  (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
+				  DSB_BLOCK_DEWAKE_EXTENSION);
+	}
+
 	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
 			  i915_ggtt_offset(dsb->vma) + tail);
 }
 
+/**
+ * intel_dsb_commit() - Trigger workload execution of DSB.
+ * @dsb: DSB context
+ * @wait_for_vblank: wait for vblank before executing
+ *
+ * This function is used to do actual write to hardware using DSB.
+ */
+void intel_dsb_commit(struct intel_dsb *dsb,
+		      bool wait_for_vblank)
+{
+	_intel_dsb_commit(dsb,
+			  wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0,
+			  wait_for_vblank ? dsb->dewake_scanline : -1);
+}
+
 void intel_dsb_wait(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
@@ -363,7 +428,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
- * @crtc: the CRTC
+ * @crtc_state: the CRTC state
  * @max_cmds: number of commands we need to fit into command buffer
  *
  * This function prepare the command buffer which is used to store dsb
@@ -372,9 +437,10 @@ void intel_dsb_wait(struct intel_dsb *dsb)
  * Returns:
  * DSB context, NULL on failure
  */
-struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
+struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 				    unsigned int max_cmds)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_i915_gem_object *obj;
 	intel_wakeref_t wakeref;
@@ -420,6 +486,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
+	dsb->dewake_scanline = intel_dsb_dewake_scanline(crtc_state);
 
 	return dsb;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 54e9e1dc31ee..16d80f434356 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -11,9 +11,10 @@
 #include "i915_reg_defs.h"
 
 struct intel_crtc;
+struct intel_crtc_state;
 struct intel_dsb;
 
-struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
+struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
-- 
2.39.3

