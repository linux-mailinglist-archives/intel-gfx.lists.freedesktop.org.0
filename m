Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHPbJasR2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B173D8EAF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F4610E983;
	Fri, 10 Apr 2026 15:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLh1h3RM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E3210E983;
 Fri, 10 Apr 2026 15:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833512; x=1807369512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XbzVEnCJf/i01FN2tWiuI1D1Skv6AEWp8I5oXQejhHA=;
 b=XLh1h3RMkb6gqNmRk6AEkp/9jiBRuM5p74cF5MzhaDE3zGdpBpf1ET0H
 FhtFCy0bR/X6aw2SL1vvTd1Tyrcm8GovtvylIry2Rk4Zs9CNWzQMYXDhs
 c8Q/Yqi5GnnbfI9+4IBAsPx8dowuC2+FZi20yr90XH8EzTTp5VUp9KBTq
 wBA/3TD79LIjr8Zk0/TPnVLydIFhIsGYnj7kmVltKpVSvhEX4wm9CWBTI
 cfekLm0+SzIypbnaVjLMAE067cxVhCdv6Cxb9jM53/gv9aFQnmV7Pc3zC
 mO3pxcNnJ8vtcORNJvvEiWBXp6lAciM344g0X0J0X+QBxmHiapfLdWmwk Q==;
X-CSE-ConnectionGUID: D3Y8S9cbStW3Xl/Dzk55XA==
X-CSE-MsgGUID: QeWbiuoiTtSHIZdcU+3qeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76815331"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76815331"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:12 -0700
X-CSE-ConnectionGUID: jP0v4Yj4SxedT8JOSJIB7g==
X-CSE-MsgGUID: oOwKMSJLSCaFZ/nyj7nyew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230827816"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/10] drm/i915: Move initial plane vblank wait into display
 code
Date: Fri, 10 Apr 2026 18:04:44 +0300
Message-ID: <20260410150449.9699-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 46B173D8EAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The initial plane vblank wait operates on display registers,
so it really belongs in the display code proper. Move it there.

We can use intel_parent_irq_enabled() to determine if we can
rely on interrupts or not.

On average we should end up waiting half a frame here, so the
polling interval can be fairly long. 1 ms (which actually
makes poll_timeout_us() use ~250-1000 usec) seems good enough
to me.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 22 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_initial_plane.c     |  6 -----
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 19 ----------------
 include/drm/intel/display_parent_interface.h  |  2 --
 4 files changed, 21 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 911d67dceba9..74e10d34c63c 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -1,14 +1,20 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
+#include "intel_crtc.h"
+#include "intel_de.h"
 #include "intel_display_core.h"
+#include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_initial_plane.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 
 struct intel_initial_plane_configs {
@@ -18,8 +24,22 @@ struct intel_initial_plane_configs {
 void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	u32 start_ts, end_ts;
+	int ret;
 
-	display->parent->initial_plane->vblank_wait(&crtc->base);
+	/* xe doesn't have interrupts enabled this early */
+	if (intel_parent_irq_enabled(display)) {
+		intel_crtc_wait_for_next_vblank(crtc);
+		return;
+	}
+
+	start_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
+
+	ret = poll_timeout_us(end_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe)),
+			      end_ts != start_ts, 1000, 40 * 1000, false);
+	if (ret)
+		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait timed out\n",
+			 crtc->base.base.id, crtc->base.name);
 }
 
 static const struct intel_plane_state *
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 5cb1adde67b6..7775e657271b 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -16,11 +16,6 @@
 #include "i915_drv.h"
 #include "i915_initial_plane.h"
 
-static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
-{
-	intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
-}
-
 static enum intel_memory_type
 initial_plane_memory_type(struct drm_i915_private *i915)
 {
@@ -282,7 +277,6 @@ static void i915_plane_config_fini(struct intel_initial_plane_config *plane_conf
 }
 
 const struct intel_display_initial_plane_interface i915_display_initial_plane_interface = {
-	.vblank_wait = i915_initial_plane_vblank_wait,
 	.alloc_obj = i915_alloc_initial_plane_obj,
 	.setup = i915_initial_plane_setup,
 	.config_fini = i915_plane_config_fini,
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 8f2d0244c03f..37bd15d12169 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -7,8 +7,6 @@
 
 #include "regs/xe_gtt_defs.h"
 
-#include "intel_crtc.h"
-#include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
@@ -19,22 +17,6 @@
 #include "xe_mmio.h"
 #include "xe_vram_types.h"
 
-/* Early xe has no irq */
-static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
-{
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct xe_device *xe = to_xe_device(crtc->base.dev);
-	struct xe_reg pipe_frmtmstmp = XE_REG(i915_mmio_reg_offset(PIPE_FRMTMSTMP(crtc->pipe)));
-	u32 timestamp;
-	int ret;
-
-	timestamp = xe_mmio_read32(xe_root_tile_mmio(xe), pipe_frmtmstmp);
-
-	ret = xe_mmio_wait32_not(xe_root_tile_mmio(xe), pipe_frmtmstmp, ~0U, timestamp, 40000U, &timestamp, false);
-	if (ret < 0)
-		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
-}
-
 static struct xe_bo *
 initial_plane_bo(struct xe_device *xe,
 		 struct intel_initial_plane_config *plane_config)
@@ -172,7 +154,6 @@ static void xe_plane_config_fini(struct intel_initial_plane_config *plane_config
 }
 
 const struct intel_display_initial_plane_interface xe_display_initial_plane_interface = {
-	.vblank_wait = xe_initial_plane_vblank_wait,
 	.alloc_obj = xe_alloc_initial_plane_obj,
 	.setup = xe_initial_plane_setup,
 	.config_fini = xe_plane_config_fini,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 9041897c772e..b513e3f9924d 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -8,7 +8,6 @@
 
 enum vlv_iosf_sb_unit;
 struct dma_fence;
-struct drm_crtc;
 struct drm_device;
 struct drm_file;
 struct drm_framebuffer;
@@ -87,7 +86,6 @@ struct intel_display_hdcp_interface {
 };
 
 struct intel_display_initial_plane_interface {
-	void (*vblank_wait)(struct drm_crtc *crtc);
 	struct drm_gem_object *(*alloc_obj)(struct drm_device *drm, struct intel_initial_plane_config *plane_config);
 	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_plane_config *plane_config,
 		     struct drm_framebuffer *fb, struct i915_vma *vma);
-- 
2.52.0

