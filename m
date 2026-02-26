Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ1/CMEboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:09:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917471A4071
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256BA10E8CA;
	Thu, 26 Feb 2026 10:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZvcS+A3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B84C10E8CA;
 Thu, 26 Feb 2026 10:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100543; x=1803636543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IId4NNkwvK0urzrRCcDgJ9NDGiXE+ffmMtsT2vsT3vQ=;
 b=mZvcS+A3uSFhu+faBlpcKoLiT39ELGVDeEZyPQQmPw0hHQy4dXSP/3UT
 ZemP6hNd02O/fc8uU/kzIeNxSwqc4WbJUkYIL7TE1aRJU0VGelhNHhuE/
 FCRRQZmYVbKKaoJ2QrxsyEXezhywWitc6Fr5prZU8fGN9dT/1ATNKI76b
 eWWny64lASDPFcwN1GXPwcfSjyH4437Ak1DNaonBc6x99LwzJ37HXEYza
 juRMoI1trNNZvSSpUzZYoF6usGk9SsoeKHlP1jPHx7ZK2782C+uwYz2Lf
 zCemGPFWvZcYXfPTlUqz5HlUPsmFG30x4w4gaiodgDkPDIBMYsacRvSfx g==;
X-CSE-ConnectionGUID: c0/X7+W2QxipMswZXunsBg==
X-CSE-MsgGUID: EvvAA3MNRKqH04oxI/XjtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866946"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866946"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:09:02 -0800
X-CSE-ConnectionGUID: CS99SGm9QomjU4RxmlR9aw==
X-CSE-MsgGUID: LHbEBGi8RFSoocvRn9hEow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221513151"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:58 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 18/19] drm/i915/overlay: Move i915 specific code into
 i915_overlay.c
Date: Thu, 26 Feb 2026 12:07:37 +0200
Message-ID: <20260226100738.29997-19-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 917471A4071
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Relocate the i915 driver specific parts of the overlay code
into i915_overlay.c. This leaves intel_overlay.c with just
the display specific code.

The one annoyance here is the DSPCLK_GATE_D register access
being done from i830_overlay_clock_gating(). The register
definition lives on the display side as we do need to access
it on other platforms there. Since it's just one register
and bit, I decided to just duplicate that part in i915_reg.h.

v2: Use kzalloc_obj()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |   2 -
 drivers/gpu/drm/i915/display/intel_overlay.c  | 490 +----------------
 drivers/gpu/drm/i915/i915_overlay.c           | 500 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_overlay.h           |  43 ++
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 6 files changed, 550 insertions(+), 490 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.c
 create mode 100644 drivers/gpu/drm/i915/i915_overlay.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 4d6c528d9881..45171de63ef9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -80,6 +80,7 @@ i915-y += \
 	i915_dsb_buffer.o \
 	i915_hdcp_gsc.o \
 	i915_initial_plane.o \
+	i915_overlay.o \
 	i915_panic.o
 
 # "Graphics Technology" (aka we talk to the gpu)
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 49e2a9e3ee0e..4746e9ebd920 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -117,8 +117,6 @@
 #define   VLV_ERROR_PAGE_TABLE				(1 << 4)
 #define   VLV_ERROR_CLAIM				(1 << 0)
 
-#define GEN2_ISR	_MMIO(0x20ac)
-
 #define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
 
 #define _MBUS_ABOX0_CTL			0x45038
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 26ea7e9f4283..c2d1d8c87a1f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -27,24 +27,16 @@
  */
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
 #include <drm/drm_print.h>
-#include <drm/intel/intel_gmd_interrupt_regs.h>
 
-#include "gem/i915_gem_internal.h"
-#include "gem/i915_gem_object_frontbuffer.h"
-#include "gem/i915_gem_pm.h"
-
-#include "gt/intel_gpu_commands.h"
-#include "gt/intel_ring.h"
-
-#include "i915_drv.h"
+#include "i915_overlay.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
 #include "intel_overlay.h"
-#include "intel_pci_config.h"
 #include "intel_pfit_regs.h"
 
 /* Limits for overlay size. According to intel doc, the real limits are:
@@ -121,9 +113,6 @@
 #define RGB8I_TO_COLORKEY(c) \
 	((((c) & 0xff) << 16) | (((c) & 0xff) << 8) | (((c) & 0xff) << 0))
 
-/* overlay flip addr flag */
-#define OFC_UPDATE		0x1
-
 /* polyphase filter coefficients */
 #define N_HORIZ_Y_TAPS          5
 #define N_VERT_Y_TAPS           3
@@ -187,22 +176,6 @@ struct overlay_registers {
 	u16 RESERVEDG[0x100 / 2 - N_HORIZ_UV_TAPS * N_PHASES];
 };
 
-struct i915_overlay {
-	struct drm_i915_private *i915;
-	struct intel_context *context;
-	struct i915_vma *vma;
-	struct i915_vma *old_vma;
-	struct intel_frontbuffer *frontbuffer;
-	/* register access */
-	struct drm_i915_gem_object *reg_bo;
-	void __iomem *regs;
-	u32 flip_addr;
-	u32 frontbuffer_bits;
-	/* flip handling */
-	struct i915_active last_flip;
-	void (*flip_complete)(struct i915_overlay *overlay);
-};
-
 struct intel_overlay {
 	struct intel_display *display;
 	struct intel_crtc *crtc;
@@ -215,314 +188,6 @@ struct intel_overlay {
 	struct overlay_registers __iomem *regs;
 };
 
-static void i830_overlay_clock_gating(struct drm_i915_private *i915,
-				      bool enable)
-{
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
-	u8 val;
-
-	/*
-	 * WA_OVERLAY_CLKGATE:alm
-	 *
-	 * FIXME should perhaps be done on the display side?
-	 */
-	if (enable)
-		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, 0);
-	else
-		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
-
-	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
-	pci_bus_read_config_byte(pdev->bus,
-				 PCI_DEVFN(0, 0), I830_CLOCK_GATE, &val);
-	if (enable)
-		val &= ~I830_L2_CACHE_CLOCK_GATE_DISABLE;
-	else
-		val |= I830_L2_CACHE_CLOCK_GATE_DISABLE;
-	pci_bus_write_config_byte(pdev->bus,
-				  PCI_DEVFN(0, 0), I830_CLOCK_GATE, val);
-}
-
-static struct i915_request *
-alloc_request(struct i915_overlay *overlay, void (*fn)(struct i915_overlay *))
-{
-	struct i915_request *rq;
-	int err;
-
-	overlay->flip_complete = fn;
-
-	rq = i915_request_create(overlay->context);
-	if (IS_ERR(rq))
-		return rq;
-
-	err = i915_active_add_request(&overlay->last_flip, rq);
-	if (err) {
-		i915_request_add(rq);
-		return ERR_PTR(err);
-	}
-
-	return rq;
-}
-
-static bool i915_overlay_is_active(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-
-	return overlay->frontbuffer_bits;
-}
-
-/* overlay needs to be disable in OCMD reg */
-static int i915_overlay_on(struct drm_device *drm,
-			   u32 frontbuffer_bits)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-	struct i915_request *rq;
-	u32 *cs;
-
-	drm_WARN_ON(drm, i915_overlay_is_active(drm));
-
-	rq = alloc_request(overlay, NULL);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	cs = intel_ring_begin(rq, 4);
-	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		return PTR_ERR(cs);
-	}
-
-	overlay->frontbuffer_bits = frontbuffer_bits;
-
-	if (IS_I830(i915))
-		i830_overlay_clock_gating(i915, false);
-
-	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_ON;
-	*cs++ = overlay->flip_addr | OFC_UPDATE;
-	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
-	*cs++ = MI_NOOP;
-	intel_ring_advance(rq, cs);
-
-	i915_request_add(rq);
-
-	return i915_active_wait(&overlay->last_flip);
-}
-
-static void i915_overlay_flip_prepare(struct i915_overlay *overlay,
-				      struct i915_vma *vma)
-{
-	struct drm_i915_private *i915 = overlay->i915;
-	struct intel_frontbuffer *frontbuffer = NULL;
-
-	drm_WARN_ON(&i915->drm, overlay->old_vma);
-
-	if (vma)
-		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
-
-	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
-				overlay->frontbuffer_bits);
-
-	if (overlay->frontbuffer)
-		intel_frontbuffer_put(overlay->frontbuffer);
-	overlay->frontbuffer = frontbuffer;
-
-	overlay->old_vma = overlay->vma;
-	if (vma)
-		overlay->vma = i915_vma_get(vma);
-	else
-		overlay->vma = NULL;
-}
-
-/* overlay needs to be enabled in OCMD reg */
-static int i915_overlay_continue(struct drm_device *drm,
-				 struct i915_vma *vma,
-				 bool load_polyphase_filter)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-	struct i915_request *rq;
-	u32 flip_addr = overlay->flip_addr;
-	u32 *cs;
-
-	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
-
-	if (load_polyphase_filter)
-		flip_addr |= OFC_UPDATE;
-
-	rq = alloc_request(overlay, NULL);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	cs = intel_ring_begin(rq, 2);
-	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		return PTR_ERR(cs);
-	}
-
-	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
-	*cs++ = flip_addr;
-	intel_ring_advance(rq, cs);
-
-	i915_overlay_flip_prepare(overlay, vma);
-	i915_request_add(rq);
-
-	return 0;
-}
-
-static void i915_overlay_release_old_vma(struct i915_overlay *overlay)
-{
-	struct drm_i915_private *i915 = overlay->i915;
-	struct intel_display *display = i915->display;
-	struct i915_vma *vma;
-
-	vma = fetch_and_zero(&overlay->old_vma);
-	if (drm_WARN_ON(&i915->drm, !vma))
-		return;
-
-	intel_frontbuffer_flip(display, overlay->frontbuffer_bits);
-
-	i915_vma_unpin(vma);
-	i915_vma_put(vma);
-}
-
-static void i915_overlay_release_old_vid_tail(struct i915_overlay *overlay)
-{
-	i915_overlay_release_old_vma(overlay);
-}
-
-static void i915_overlay_off_tail(struct i915_overlay *overlay)
-{
-	struct drm_i915_private *i915 = overlay->i915;
-
-	i915_overlay_release_old_vma(overlay);
-
-	overlay->frontbuffer_bits = 0;
-
-	if (IS_I830(i915))
-		i830_overlay_clock_gating(i915, true);
-}
-
-static void i915_overlay_last_flip_retire(struct i915_active *active)
-{
-	struct i915_overlay *overlay =
-		container_of(active, typeof(*overlay), last_flip);
-
-	if (overlay->flip_complete)
-		overlay->flip_complete(overlay);
-}
-
-/* overlay needs to be disabled in OCMD reg */
-static int i915_overlay_off(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-	struct i915_request *rq;
-	u32 *cs, flip_addr = overlay->flip_addr;
-
-	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
-
-	/*
-	 * According to intel docs the overlay hw may hang (when switching
-	 * off) without loading the filter coeffs. It is however unclear whether
-	 * this applies to the disabling of the overlay or to the switching off
-	 * of the hw. Do it in both cases.
-	 */
-	flip_addr |= OFC_UPDATE;
-
-	rq = alloc_request(overlay, i915_overlay_off_tail);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	cs = intel_ring_begin(rq, 6);
-	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		return PTR_ERR(cs);
-	}
-
-	/* wait for overlay to go idle */
-	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
-	*cs++ = flip_addr;
-	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
-
-	/* turn overlay off */
-	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_OFF;
-	*cs++ = flip_addr;
-	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
-
-	intel_ring_advance(rq, cs);
-
-	i915_overlay_flip_prepare(overlay, NULL);
-	i915_request_add(rq);
-
-	return i915_active_wait(&overlay->last_flip);
-}
-
-/*
- * Recover from an interruption due to a signal.
- * We have to be careful not to repeat work forever an make forward progress.
- */
-static int i915_overlay_recover_from_interrupt(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-
-	return i915_active_wait(&overlay->last_flip);
-}
-
-/*
- * Wait for pending overlay flip and release old frame.
- * Needs to be called before the overlay register are changed
- * via intel_overlay_(un)map_regs.
- */
-static int i915_overlay_release_old_vid(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-	struct i915_request *rq;
-	u32 *cs;
-
-	/*
-	 * Only wait if there is actually an old frame to release to
-	 * guarantee forward progress.
-	 */
-	if (!overlay->old_vma)
-		return 0;
-
-	if (!(intel_uncore_read(&i915->uncore, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
-		i915_overlay_release_old_vid_tail(overlay);
-		return 0;
-	}
-
-	rq = alloc_request(overlay, i915_overlay_release_old_vid_tail);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	cs = intel_ring_begin(rq, 2);
-	if (IS_ERR(cs)) {
-		i915_request_add(rq);
-		return PTR_ERR(cs);
-	}
-
-	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
-	*cs++ = MI_NOOP;
-	intel_ring_advance(rq, cs);
-
-	i915_request_add(rq);
-
-	return i915_active_wait(&overlay->last_flip);
-}
-
-static void i915_overlay_reset(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay = i915->overlay;
-
-	if (!overlay)
-		return;
-
-	overlay->frontbuffer_bits = 0;
-}
-
 void intel_overlay_reset(struct intel_display *display)
 {
 	struct intel_overlay *overlay = display->overlay;
@@ -796,43 +461,6 @@ static u32 overlay_cmd_reg(struct drm_intel_overlay_put_image *params)
 	return cmd;
 }
 
-static struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
-					    struct drm_gem_object *obj,
-					    u32 *offset)
-{
-	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
-	struct i915_gem_ww_ctx ww;
-	struct i915_vma *vma;
-	int ret;
-
-	i915_gem_ww_ctx_init(&ww, true);
-retry:
-	ret = i915_gem_object_lock(new_bo, &ww);
-	if (!ret) {
-		vma = i915_gem_object_pin_to_display_plane(new_bo, &ww, 0, 0,
-							   NULL, PIN_MAPPABLE);
-		ret = PTR_ERR_OR_ZERO(vma);
-	}
-	if (ret == -EDEADLK) {
-		ret = i915_gem_ww_ctx_backoff(&ww);
-		if (!ret)
-			goto retry;
-	}
-	i915_gem_ww_ctx_fini(&ww);
-	if (ret)
-		return ERR_PTR(ret);
-
-	*offset = i915_ggtt_offset(vma);
-
-	return vma;
-}
-
-static void i915_overlay_unpin_fb(struct drm_device *drm,
-				  struct i915_vma *vma)
-{
-	i915_vma_unpin(vma);
-}
-
 static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      struct drm_gem_object *obj,
 				      struct drm_intel_overlay_put_image *params)
@@ -1164,26 +792,6 @@ static int check_overlay_src(struct intel_display *display,
 	return 0;
 }
 
-static struct drm_gem_object *
-i915_overlay_obj_lookup(struct drm_device *drm,
-			struct drm_file *file_priv,
-			u32 handle)
-{
-	struct drm_i915_gem_object *bo;
-
-	bo = i915_gem_object_lookup(file_priv, handle);
-	if (!bo)
-		return ERR_PTR(-ENOENT);
-
-	if (i915_gem_object_is_tiled(bo)) {
-		drm_dbg(drm, "buffer used for overlay image can not be tiled\n");
-		i915_gem_object_put(bo);
-		return ERR_PTR(-EINVAL);
-	}
-
-	return intel_bo_to_drm_bo(bo);
-}
-
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 				  struct drm_file *file_priv)
 {
@@ -1416,78 +1024,6 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
-static int get_registers(struct i915_overlay *overlay, bool use_phys)
-{
-	struct drm_i915_private *i915 = overlay->i915;
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	int err;
-
-	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_put_bo;
-	}
-
-	if (use_phys)
-		overlay->flip_addr = sg_dma_address(obj->mm.pages->sgl);
-	else
-		overlay->flip_addr = i915_ggtt_offset(vma);
-	overlay->regs = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
-
-	if (IS_ERR(overlay->regs)) {
-		err = PTR_ERR(overlay->regs);
-		goto err_put_bo;
-	}
-
-	overlay->reg_bo = obj;
-	return 0;
-
-err_put_bo:
-	i915_gem_object_put(obj);
-	return err;
-}
-
-static void __iomem *i915_overlay_setup(struct drm_device *drm,
-					bool needs_physical)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct intel_engine_cs *engine;
-	struct i915_overlay *overlay;
-	int ret;
-
-	engine = to_gt(i915)->engine[RCS0];
-	if (!engine || !engine->kernel_context)
-		return ERR_PTR(-ENOENT);
-
-	overlay = kzalloc_obj(*overlay);
-	if (!overlay)
-		return ERR_PTR(-ENOMEM);
-
-	overlay->i915 = i915;
-	overlay->context = engine->kernel_context;
-
-	i915_active_init(&overlay->last_flip,
-			 NULL, i915_overlay_last_flip_retire, 0);
-
-	ret = get_registers(overlay, needs_physical);
-	if (ret) {
-		kfree(overlay);
-		return ERR_PTR(ret);
-	}
-
-	i915->overlay = overlay;
-
-	return overlay->regs;
-}
-
 void intel_overlay_setup(struct intel_display *display)
 {
 	struct intel_overlay *overlay;
@@ -1530,28 +1066,6 @@ bool intel_overlay_available(struct intel_display *display)
 	return display->overlay;
 }
 
-static void i915_overlay_cleanup(struct drm_device *drm)
-{
-	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay;
-
-	overlay = fetch_and_zero(&i915->overlay);
-	if (!overlay)
-		return;
-
-	/*
-	 * The bo's should be free'd by the generic code already.
-	 * Furthermore modesetting teardown happens beforehand so the
-	 * hardware should be off already.
-	 */
-	drm_WARN_ON(drm, i915_overlay_is_active(drm));
-
-	i915_gem_object_put(overlay->reg_bo);
-	i915_active_fini(&overlay->last_flip);
-
-	kfree(overlay);
-}
-
 void intel_overlay_cleanup(struct intel_display *display)
 {
 	i915_overlay_cleanup(display->drm);
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
new file mode 100644
index 000000000000..61869747c6bb
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -0,0 +1,500 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2026, Intel Corporation.
+ */
+
+#include <drm/drm_print.h>
+
+#include <drm/intel/intel_gmd_interrupt_regs.h>
+
+#include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_object_frontbuffer.h"
+#include "gem/i915_gem_pm.h"
+
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_ring.h"
+
+#include "i915_drv.h"
+#include "i915_overlay.h"
+#include "i915_reg.h"
+#include "intel_pci_config.h"
+
+#include "display/intel_frontbuffer.h"
+
+/* overlay flip addr flag */
+#define OFC_UPDATE		0x1
+
+struct i915_overlay {
+	struct drm_i915_private *i915;
+	struct intel_context *context;
+	struct i915_vma *vma;
+	struct i915_vma *old_vma;
+	struct intel_frontbuffer *frontbuffer;
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
+static void i830_overlay_clock_gating(struct drm_i915_private *i915,
+				      bool enable)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u8 val;
+
+	/*
+	 * WA_OVERLAY_CLKGATE:alm
+	 *
+	 * FIXME should perhaps be done on the display side?
+	 */
+	if (enable)
+		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, 0);
+	else
+		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
+
+	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
+	pci_bus_read_config_byte(pdev->bus,
+				 PCI_DEVFN(0, 0), I830_CLOCK_GATE, &val);
+	if (enable)
+		val &= ~I830_L2_CACHE_CLOCK_GATE_DISABLE;
+	else
+		val |= I830_L2_CACHE_CLOCK_GATE_DISABLE;
+	pci_bus_write_config_byte(pdev->bus,
+				  PCI_DEVFN(0, 0), I830_CLOCK_GATE, val);
+}
+
+static struct i915_request *
+alloc_request(struct i915_overlay *overlay, void (*fn)(struct i915_overlay *))
+{
+	struct i915_request *rq;
+	int err;
+
+	overlay->flip_complete = fn;
+
+	rq = i915_request_create(overlay->context);
+	if (IS_ERR(rq))
+		return rq;
+
+	err = i915_active_add_request(&overlay->last_flip, rq);
+	if (err) {
+		i915_request_add(rq);
+		return ERR_PTR(err);
+	}
+
+	return rq;
+}
+
+bool i915_overlay_is_active(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+
+	return overlay->frontbuffer_bits;
+}
+
+/* overlay needs to be disable in OCMD reg */
+int i915_overlay_on(struct drm_device *drm,
+		    u32 frontbuffer_bits)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+	struct i915_request *rq;
+	u32 *cs;
+
+	drm_WARN_ON(drm, i915_overlay_is_active(drm));
+
+	rq = alloc_request(overlay, NULL);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	overlay->frontbuffer_bits = frontbuffer_bits;
+
+	if (IS_I830(i915))
+		i830_overlay_clock_gating(i915, false);
+
+	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_ON;
+	*cs++ = overlay->flip_addr | OFC_UPDATE;
+	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
+	*cs++ = MI_NOOP;
+	intel_ring_advance(rq, cs);
+
+	i915_request_add(rq);
+
+	return i915_active_wait(&overlay->last_flip);
+}
+
+static void i915_overlay_flip_prepare(struct i915_overlay *overlay,
+				      struct i915_vma *vma)
+{
+	struct drm_i915_private *i915 = overlay->i915;
+	struct intel_frontbuffer *frontbuffer = NULL;
+
+	drm_WARN_ON(&i915->drm, overlay->old_vma);
+
+	if (vma)
+		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
+
+	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
+				overlay->frontbuffer_bits);
+
+	if (overlay->frontbuffer)
+		intel_frontbuffer_put(overlay->frontbuffer);
+	overlay->frontbuffer = frontbuffer;
+
+	overlay->old_vma = overlay->vma;
+	if (vma)
+		overlay->vma = i915_vma_get(vma);
+	else
+		overlay->vma = NULL;
+}
+
+/* overlay needs to be enabled in OCMD reg */
+int i915_overlay_continue(struct drm_device *drm,
+			  struct i915_vma *vma,
+			  bool load_polyphase_filter)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+	struct i915_request *rq;
+	u32 flip_addr = overlay->flip_addr;
+	u32 *cs;
+
+	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
+
+	if (load_polyphase_filter)
+		flip_addr |= OFC_UPDATE;
+
+	rq = alloc_request(overlay, NULL);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 2);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
+	*cs++ = flip_addr;
+	intel_ring_advance(rq, cs);
+
+	i915_overlay_flip_prepare(overlay, vma);
+	i915_request_add(rq);
+
+	return 0;
+}
+
+static void i915_overlay_release_old_vma(struct i915_overlay *overlay)
+{
+	struct drm_i915_private *i915 = overlay->i915;
+	struct intel_display *display = i915->display;
+	struct i915_vma *vma;
+
+	vma = fetch_and_zero(&overlay->old_vma);
+	if (drm_WARN_ON(&i915->drm, !vma))
+		return;
+
+	intel_frontbuffer_flip(display, overlay->frontbuffer_bits);
+
+	i915_vma_unpin(vma);
+	i915_vma_put(vma);
+}
+
+static void i915_overlay_release_old_vid_tail(struct i915_overlay *overlay)
+{
+	i915_overlay_release_old_vma(overlay);
+}
+
+static void i915_overlay_off_tail(struct i915_overlay *overlay)
+{
+	struct drm_i915_private *i915 = overlay->i915;
+
+	i915_overlay_release_old_vma(overlay);
+
+	overlay->frontbuffer_bits = 0;
+
+	if (IS_I830(i915))
+		i830_overlay_clock_gating(i915, true);
+}
+
+static void i915_overlay_last_flip_retire(struct i915_active *active)
+{
+	struct i915_overlay *overlay =
+		container_of(active, typeof(*overlay), last_flip);
+
+	if (overlay->flip_complete)
+		overlay->flip_complete(overlay);
+}
+
+/* overlay needs to be disabled in OCMD reg */
+int i915_overlay_off(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+	struct i915_request *rq;
+	u32 *cs, flip_addr = overlay->flip_addr;
+
+	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
+
+	/*
+	 * According to intel docs the overlay hw may hang (when switching
+	 * off) without loading the filter coeffs. It is however unclear whether
+	 * this applies to the disabling of the overlay or to the switching off
+	 * of the hw. Do it in both cases.
+	 */
+	flip_addr |= OFC_UPDATE;
+
+	rq = alloc_request(overlay, i915_overlay_off_tail);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 6);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	/* wait for overlay to go idle */
+	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
+	*cs++ = flip_addr;
+	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
+
+	/* turn overlay off */
+	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_OFF;
+	*cs++ = flip_addr;
+	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
+
+	intel_ring_advance(rq, cs);
+
+	i915_overlay_flip_prepare(overlay, NULL);
+	i915_request_add(rq);
+
+	return i915_active_wait(&overlay->last_flip);
+}
+
+/*
+ * Recover from an interruption due to a signal.
+ * We have to be careful not to repeat work forever an make forward progress.
+ */
+int i915_overlay_recover_from_interrupt(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+
+	return i915_active_wait(&overlay->last_flip);
+}
+
+/*
+ * Wait for pending overlay flip and release old frame.
+ * Needs to be called before the overlay register are changed
+ * via intel_overlay_(un)map_regs.
+ */
+int i915_overlay_release_old_vid(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+	struct i915_request *rq;
+	u32 *cs;
+
+	/*
+	 * Only wait if there is actually an old frame to release to
+	 * guarantee forward progress.
+	 */
+	if (!overlay->old_vma)
+		return 0;
+
+	if (!(intel_uncore_read(&i915->uncore, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
+		i915_overlay_release_old_vid_tail(overlay);
+		return 0;
+	}
+
+	rq = alloc_request(overlay, i915_overlay_release_old_vid_tail);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 2);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	*cs++ = MI_WAIT_FOR_EVENT | MI_WAIT_FOR_OVERLAY_FLIP;
+	*cs++ = MI_NOOP;
+	intel_ring_advance(rq, cs);
+
+	i915_request_add(rq);
+
+	return i915_active_wait(&overlay->last_flip);
+}
+
+void i915_overlay_reset(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay = i915->overlay;
+
+	if (!overlay)
+		return;
+
+	overlay->frontbuffer_bits = 0;
+}
+
+struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
+				     struct drm_gem_object *obj,
+				     u32 *offset)
+{
+	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
+	struct i915_gem_ww_ctx ww;
+	struct i915_vma *vma;
+	int ret;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(new_bo, &ww);
+	if (!ret) {
+		vma = i915_gem_object_pin_to_display_plane(new_bo, &ww, 0, 0,
+							   NULL, PIN_MAPPABLE);
+		ret = PTR_ERR_OR_ZERO(vma);
+	}
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	if (ret)
+		return ERR_PTR(ret);
+
+	*offset = i915_ggtt_offset(vma);
+
+	return vma;
+}
+
+void i915_overlay_unpin_fb(struct drm_device *drm,
+			   struct i915_vma *vma)
+{
+	i915_vma_unpin(vma);
+}
+
+struct drm_gem_object *
+i915_overlay_obj_lookup(struct drm_device *drm,
+			struct drm_file *file_priv,
+			u32 handle)
+{
+	struct drm_i915_gem_object *bo;
+
+	bo = i915_gem_object_lookup(file_priv, handle);
+	if (!bo)
+		return ERR_PTR(-ENOENT);
+
+	if (i915_gem_object_is_tiled(bo)) {
+		drm_dbg(drm, "buffer used for overlay image can not be tiled\n");
+		i915_gem_object_put(bo);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return intel_bo_to_drm_bo(bo);
+}
+
+static int get_registers(struct i915_overlay *overlay, bool use_phys)
+{
+	struct drm_i915_private *i915 = overlay->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int err;
+
+	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_put_bo;
+	}
+
+	if (use_phys)
+		overlay->flip_addr = sg_dma_address(obj->mm.pages->sgl);
+	else
+		overlay->flip_addr = i915_ggtt_offset(vma);
+	overlay->regs = i915_vma_pin_iomap(vma);
+	i915_vma_unpin(vma);
+
+	if (IS_ERR(overlay->regs)) {
+		err = PTR_ERR(overlay->regs);
+		goto err_put_bo;
+	}
+
+	overlay->reg_bo = obj;
+	return 0;
+
+err_put_bo:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+void __iomem *i915_overlay_setup(struct drm_device *drm,
+				 bool needs_physical)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_engine_cs *engine;
+	struct i915_overlay *overlay;
+	int ret;
+
+	engine = to_gt(i915)->engine[RCS0];
+	if (!engine || !engine->kernel_context)
+		return ERR_PTR(-ENOENT);
+
+	overlay = kzalloc_obj(*overlay);
+	if (!overlay)
+		return ERR_PTR(-ENOMEM);
+
+	overlay->i915 = i915;
+	overlay->context = engine->kernel_context;
+
+	i915_active_init(&overlay->last_flip,
+			 NULL, i915_overlay_last_flip_retire, 0);
+
+	ret = get_registers(overlay, needs_physical);
+	if (ret) {
+		kfree(overlay);
+		return ERR_PTR(ret);
+	}
+
+	i915->overlay = overlay;
+
+	return overlay->regs;
+}
+
+void i915_overlay_cleanup(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+	struct i915_overlay *overlay;
+
+	overlay = fetch_and_zero(&i915->overlay);
+	if (!overlay)
+		return;
+
+	/*
+	 * The bo's should be free'd by the generic code already.
+	 * Furthermore modesetting teardown happens beforehand so the
+	 * hardware should be off already.
+	 */
+	drm_WARN_ON(drm, i915_overlay_is_active(drm));
+
+	i915_gem_object_put(overlay->reg_bo);
+	i915_active_fini(&overlay->last_flip);
+
+	kfree(overlay);
+}
diff --git a/drivers/gpu/drm/i915/i915_overlay.h b/drivers/gpu/drm/i915/i915_overlay.h
new file mode 100644
index 000000000000..f553de2abeaa
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_overlay.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#ifndef __I915_OVERLAY_H__
+#define __I915_OVERLAY_H__
+
+#include <linux/types.h>
+
+struct drm_device;
+struct drm_file;
+struct drm_gem_object;
+struct i915_vma;
+
+bool i915_overlay_is_active(struct drm_device *drm);
+int i915_overlay_on(struct drm_device *drm,
+		    u32 frontbuffer_bits);
+int i915_overlay_continue(struct drm_device *drm,
+			  struct i915_vma *vma,
+			  bool load_polyphase_filter);
+int i915_overlay_off(struct drm_device *drm);
+int i915_overlay_recover_from_interrupt(struct drm_device *drm);
+int i915_overlay_release_old_vid(struct drm_device *drm);
+
+void i915_overlay_reset(struct drm_device *drm);
+
+struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
+				     struct drm_gem_object *obj,
+				     u32 *offset);
+void i915_overlay_unpin_fb(struct drm_device *drm,
+			   struct i915_vma *vma);
+
+struct drm_gem_object *
+i915_overlay_obj_lookup(struct drm_device *drm,
+			struct drm_file *file_priv,
+			u32 handle);
+
+void __iomem *i915_overlay_setup(struct drm_device *drm,
+				 bool needs_physical);
+void i915_overlay_cleanup(struct drm_device *drm);
+
+#endif /* __I915_OVERLAY_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 784d99afde64..5d99b99b0c57 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -338,6 +338,7 @@
 #define GEN2_IER	_MMIO(0x20a0)
 #define GEN2_IIR	_MMIO(0x20a4)
 #define GEN2_IMR	_MMIO(0x20a8)
+#define GEN2_ISR	_MMIO(0x20ac)
 
 #define GEN2_IRQ_REGS		I915_IRQ_REGS(GEN2_IMR, \
 					      GEN2_IER, \
@@ -777,4 +778,7 @@
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define DSPCLK_GATE_D			_MMIO(0x6200)
+# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
+
 #endif /* _I915_REG_H_ */
-- 
2.52.0

