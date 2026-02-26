Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOHUKLYboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F3D1A4052
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21C910E8C6;
	Thu, 26 Feb 2026 10:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXXhMSoB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348DA10E8C6;
 Thu, 26 Feb 2026 10:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100531; x=1803636531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kvod6PQyrLV+UtLeJZe/mtjW9Er/0xIC5YGaxSzJT8g=;
 b=EXXhMSoBLVVdvPahxSPGx1XJaSrFkazmR1adRVaLIURZew1NY+QD+hl4
 gF3nviBREqerBb9Fsq4hZy07bwskhuYqcOApT57pPo4+kwkSgBi/0AOfC
 iRV+UU5pYsQUWeTZZ1KHOAt/NY5QG60xlBIhaavtO+4LYbRuFrxwAF/L4
 5psLPtSsfDG4Oh38I0NBOa1gMvFA1yeNwMXyKeiF1FXZCW/DsQ0s51Tp5
 zswuhKPfIIGn1/LBr0cB2rPwv9r2mNxIow9t/tfnS/0X8daQAB3gET/jK
 zOCmfNhybV5LeqJqjF4V1R1DtB60GDhHs/hdIvWlKesvoaj0nr9E2CmL/ Q==;
X-CSE-ConnectionGUID: y6imQzcvQUmD0ed6oeMHng==
X-CSE-MsgGUID: XbVFitmWTFmfKI3Ul7VDxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866937"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866937"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:51 -0800
X-CSE-ConnectionGUID: nXqgWrhyTyu2PrvLW2M9aA==
X-CSE-MsgGUID: kcxljroNQ4WyXvHfii7iQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221513114"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:49 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 16/19] drm/i915/overlay: Split 'struct intel_overlay'
Date: Thu, 26 Feb 2026 12:07:35 +0200
Message-ID: <20260226100738.29997-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 56F3D1A4052
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split the i915 driver specific bits from 'struct intel_overlay'
into a seaarate 'struct i915_overlay'. The latter will move to
the i915 side of the parent vs. display driver split.

The display side will also need to know the virtual address of
the register map. That now gets passed as the return value
from i915_overlay_setup(), so that the display side doesn't
need to know how the mapping was achieved.

v2: Use kzalloc_obj()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 130 +++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h              |   3 +
 2 files changed, 81 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 300f6d48180b..10a235ce608e 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -187,27 +187,32 @@ struct overlay_registers {
 	u16 RESERVEDG[0x100 / 2 - N_HORIZ_UV_TAPS * N_PHASES];
 };
 
-struct intel_overlay {
-	struct intel_display *display;
+struct i915_overlay {
+	struct drm_i915_private *i915;
 	struct intel_context *context;
-	struct intel_crtc *crtc;
 	struct i915_vma *vma;
 	struct i915_vma *old_vma;
 	struct intel_frontbuffer *frontbuffer;
+	/* register access */
+	struct drm_i915_gem_object *reg_bo;
+	void __iomem *regs;
+	u32 flip_addr;
+	u32 frontbuffer_bits;
+	/* flip handling */
+	struct i915_active last_flip;
+	void (*flip_complete)(struct i915_overlay *overlay);
+};
+
+struct intel_overlay {
+	struct intel_display *display;
+	struct intel_crtc *crtc;
 	bool pfit_active;
 	u32 pfit_vscale_ratio; /* shifted-point number, (1<<12) == 1.0 */
 	u32 color_key:24;
 	u32 color_key_enabled:1;
 	u32 brightness, contrast, saturation;
 	u32 old_xscale, old_yscale;
-	/* register access */
-	struct drm_i915_gem_object *reg_bo;
 	struct overlay_registers __iomem *regs;
-	u32 flip_addr;
-	u32 frontbuffer_bits;
-	/* flip handling */
-	struct i915_active last_flip;
-	void (*flip_complete)(struct intel_overlay *ovl);
 };
 
 static void i830_overlay_clock_gating(struct drm_i915_private *i915,
@@ -238,7 +243,7 @@ static void i830_overlay_clock_gating(struct drm_i915_private *i915,
 }
 
 static struct i915_request *
-alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
+alloc_request(struct i915_overlay *overlay, void (*fn)(struct i915_overlay *))
 {
 	struct i915_request *rq;
 	int err;
@@ -260,8 +265,8 @@ alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
 
 static bool i915_overlay_is_active(struct drm_device *drm)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 
 	return overlay->frontbuffer_bits;
 }
@@ -271,8 +276,7 @@ static int i915_overlay_on(struct drm_device *drm,
 			   u32 frontbuffer_bits)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct i915_overlay *overlay = i915->overlay;
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -304,13 +308,13 @@ static int i915_overlay_on(struct drm_device *drm,
 	return i915_active_wait(&overlay->last_flip);
 }
 
-static void i915_overlay_flip_prepare(struct intel_overlay *overlay,
+static void i915_overlay_flip_prepare(struct i915_overlay *overlay,
 				      struct i915_vma *vma)
 {
-	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = overlay->i915;
 	struct intel_frontbuffer *frontbuffer = NULL;
 
-	drm_WARN_ON(display->drm, overlay->old_vma);
+	drm_WARN_ON(&i915->drm, overlay->old_vma);
 
 	if (vma)
 		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
@@ -334,8 +338,8 @@ static int i915_overlay_continue(struct drm_device *drm,
 				 struct i915_vma *vma,
 				 bool load_polyphase_filter)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 	struct i915_request *rq;
 	u32 flip_addr = overlay->flip_addr;
 	u32 *cs;
@@ -365,13 +369,14 @@ static int i915_overlay_continue(struct drm_device *drm,
 	return 0;
 }
 
-static void i915_overlay_release_old_vma(struct intel_overlay *overlay)
+static void i915_overlay_release_old_vma(struct i915_overlay *overlay)
 {
-	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = overlay->i915;
+	struct intel_display *display = i915->display;
 	struct i915_vma *vma;
 
 	vma = fetch_and_zero(&overlay->old_vma);
-	if (drm_WARN_ON(display->drm, !vma))
+	if (drm_WARN_ON(&i915->drm, !vma))
 		return;
 
 	intel_frontbuffer_flip(display, overlay->frontbuffer_bits);
@@ -380,15 +385,14 @@ static void i915_overlay_release_old_vma(struct intel_overlay *overlay)
 	i915_vma_put(vma);
 }
 
-static void i915_overlay_release_old_vid_tail(struct intel_overlay *overlay)
+static void i915_overlay_release_old_vid_tail(struct i915_overlay *overlay)
 {
 	i915_overlay_release_old_vma(overlay);
 }
 
-static void i915_overlay_off_tail(struct intel_overlay *overlay)
+static void i915_overlay_off_tail(struct i915_overlay *overlay)
 {
-	struct intel_display *display = overlay->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = overlay->i915;
 
 	i915_overlay_release_old_vma(overlay);
 
@@ -400,7 +404,7 @@ static void i915_overlay_off_tail(struct intel_overlay *overlay)
 
 static void i915_overlay_last_flip_retire(struct i915_active *active)
 {
-	struct intel_overlay *overlay =
+	struct i915_overlay *overlay =
 		container_of(active, typeof(*overlay), last_flip);
 
 	if (overlay->flip_complete)
@@ -410,8 +414,8 @@ static void i915_overlay_last_flip_retire(struct i915_active *active)
 /* overlay needs to be disabled in OCMD reg */
 static int i915_overlay_off(struct drm_device *drm)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 	struct i915_request *rq;
 	u32 *cs, flip_addr = overlay->flip_addr;
 
@@ -459,8 +463,8 @@ static int i915_overlay_off(struct drm_device *drm)
  */
 static int i915_overlay_recover_from_interrupt(struct drm_device *drm)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 
 	return i915_active_wait(&overlay->last_flip);
 }
@@ -472,8 +476,8 @@ static int i915_overlay_recover_from_interrupt(struct drm_device *drm)
  */
 static int i915_overlay_release_old_vid(struct drm_device *drm)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -484,7 +488,7 @@ static int i915_overlay_release_old_vid(struct drm_device *drm)
 	if (!overlay->old_vma)
 		return 0;
 
-	if (!(intel_de_read(display, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
+	if (!(intel_uncore_read(&i915->uncore, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
 		i915_overlay_release_old_vid_tail(overlay);
 		return 0;
 	}
@@ -510,8 +514,8 @@ static int i915_overlay_release_old_vid(struct drm_device *drm)
 
 static void i915_overlay_reset(struct drm_device *drm)
 {
-	struct intel_display *display = to_intel_display(drm);
-	struct intel_overlay *overlay = display->overlay;
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
 
 	if (!overlay)
 		return;
@@ -1412,10 +1416,9 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
-static int get_registers(struct intel_overlay *overlay, bool use_phys)
+static int get_registers(struct i915_overlay *overlay, bool use_phys)
 {
-	struct intel_display *display = overlay->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_i915_private *i915 = overlay->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	int err;
@@ -1452,29 +1455,43 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 	return err;
 }
 
-static int i915_overlay_setup(struct drm_device *drm,
-			      struct intel_overlay *overlay,
-			      bool needs_physical)
+static void __iomem *i915_overlay_setup(struct drm_device *drm,
+					bool needs_physical)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_engine_cs *engine;
+	struct i915_overlay *overlay;
+	int ret;
 
 	engine = to_gt(i915)->engine[RCS0];
 	if (!engine || !engine->kernel_context)
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 
+	overlay = kzalloc_obj(*overlay);
+	if (!overlay)
+		return ERR_PTR(-ENOMEM);
+
+	overlay->i915 = i915;
 	overlay->context = engine->kernel_context;
 
 	i915_active_init(&overlay->last_flip,
 			 NULL, i915_overlay_last_flip_retire, 0);
 
-	return get_registers(overlay, needs_physical);
+	ret = get_registers(overlay, needs_physical);
+	if (ret) {
+		kfree(overlay);
+		return ERR_PTR(ret);
+	}
+
+	i915->overlay = overlay;
+
+	return overlay->regs;
 }
 
 void intel_overlay_setup(struct intel_display *display)
 {
 	struct intel_overlay *overlay;
-	int ret;
+	void __iomem *regs;
 
 	if (!HAS_OVERLAY(display))
 		return;
@@ -1483,12 +1500,13 @@ void intel_overlay_setup(struct intel_display *display)
 	if (!overlay)
 		return;
 
-	ret = i915_overlay_setup(display->drm, overlay,
-				 OVERLAY_NEEDS_PHYSICAL(display));
-	if (ret)
+	regs = i915_overlay_setup(display->drm,
+				  OVERLAY_NEEDS_PHYSICAL(display));
+	if (IS_ERR(regs))
 		goto out_free;
 
 	overlay->display = display;
+	overlay->regs = regs;
 	overlay->color_key = 0x0101fe;
 	overlay->color_key_enabled = true;
 	overlay->brightness = -19;
@@ -1512,9 +1530,15 @@ bool intel_overlay_available(struct intel_display *display)
 	return display->overlay;
 }
 
-static void i915_overlay_cleanup(struct drm_device *drm,
-				 struct intel_overlay *overlay)
+static void i915_overlay_cleanup(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay;
+
+	overlay = fetch_and_zero(&i915->overlay);
+	if (!overlay)
+		return;
+
 	/*
 	 * The bo's should be free'd by the generic code already.
 	 * Furthermore modesetting teardown happens beforehand so the
@@ -1524,6 +1548,8 @@ static void i915_overlay_cleanup(struct drm_device *drm,
 
 	i915_gem_object_put(overlay->reg_bo);
 	i915_active_fini(&overlay->last_flip);
+
+	kfree(overlay);
 }
 
 void intel_overlay_cleanup(struct intel_display *display)
@@ -1534,7 +1560,7 @@ void intel_overlay_cleanup(struct intel_display *display)
 	if (!overlay)
 		return;
 
-	i915_overlay_cleanup(display->drm, overlay);
+	i915_overlay_cleanup(display->drm);
 
 	kfree(overlay);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 44ba620325bc..dd380382c00e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -61,6 +61,7 @@
 #include "intel_uncore.h"
 
 struct drm_i915_clock_gating_funcs;
+struct i915_overlay;
 struct intel_display;
 struct intel_pxp;
 struct vlv_s0ix_state;
@@ -307,6 +308,8 @@ struct drm_i915_private {
 
 	struct intel_pxp *pxp;
 
+	struct i915_overlay *overlay;
+
 	struct i915_pmu pmu;
 
 	/* The TTM device structure. */
-- 
2.52.0

