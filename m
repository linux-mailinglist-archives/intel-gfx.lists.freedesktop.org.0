Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SiF7NRpNAmrIqgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F965166A5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E202C10E8ED;
	Mon, 11 May 2026 21:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NlSDWbes";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437C710E8EB;
 Mon, 11 May 2026 21:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535703; x=1810071703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/ynW/zA4zjIVdAvgKPNmjR6pnZ04Tco3daMciicnsj4=;
 b=NlSDWbes1qTA+U3h9Wxbd3pp5e/Q2FrMab8je7aPFR2A4GYqpNLSbcz9
 7IvlWt2bmrZsqTz4Ac2ZJGVyMplPjY3DJfOxXUdy8X2HRAD2axLRlFurc
 0UBBrZgC7Goi9fRSrvPxOq4PGsMXqkQ/BNCMExPGFduTR7hBCy4gEeQjh
 dhTSC9UBo+M3CPSbB2PdXDn3HmayV2nA7LSFmY8koCieMQSVEm5ZrzS5v
 INZul1aGxFWAlJqqZzpwYJbay1Wnpq0K65nUt1Lszs/ZWFRZfVIOSzrZE
 MotjpLnNYOtvn5E3tGk+AQ35nxQZC/Nx5/21krOaKm9NxOee0C0uvXbHY A==;
X-CSE-ConnectionGUID: CSG4v0BtQjK/pQE7F8+kSw==
X-CSE-MsgGUID: Ina/9x2nSLCe0Bd2nTiPOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618490"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618490"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:43 -0700
X-CSE-ConnectionGUID: 2qxy+dgQRryAqrddgT1xiA==
X-CSE-MsgGUID: tP6K73TaRTWgCEh+WT6Jeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097285"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/14] drm/i915: Introduce intel_bo_fbdev_bios_fb_ok()
Date: Tue, 12 May 2026 00:41:12 +0300
Message-ID: <20260511214122.8468-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 85F965166A5
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "do we want to use stolen for the BIOS FB?" checks into
a new intel_bo_fbdev_bios_fb_ok() helper, and defer that decision
until we're ready to reallocate the fbdev FB. This way even if
we don't want to ultimately use the BIOS FB we'll keep the plane
enabled until the replacement FB is ready. Should hopefully result
in fewer display blinks during boot.

Ideally I'd like to move all this stuff fully to the display side,
but to do that I'll need to figure out how to abstract more of the
stolen memory stuff. So keep the checks on the i915/xe side for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c       |  5 +++++
 drivers/gpu/drm/i915/display/intel_bo.h       |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  5 +++++
 drivers/gpu/drm/i915/i915_bo.c                | 13 ++++++++++++-
 drivers/gpu/drm/i915/i915_bo.h                |  6 ------
 drivers/gpu/drm/i915/i915_initial_plane.c     | 14 --------------
 drivers/gpu/drm/xe/display/xe_display_bo.c    | 14 +++++++++++++-
 drivers/gpu/drm/xe/display/xe_display_bo.h    |  6 ------
 drivers/gpu/drm/xe/display/xe_initial_plane.c |  8 --------
 include/drm/intel/display_parent_interface.h  |  1 +
 10 files changed, 37 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 8ecdbb7e39f3..370a3353193c 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -92,6 +92,11 @@ u32 intel_bo_fbdev_pitch_align(struct intel_display *display, u32 stride)
 	return display->parent->bo->fbdev_pitch_align(stride);
 }
 
+bool intel_bo_fbdev_bios_fb_ok(struct intel_display *display, int size)
+{
+	return display->parent->bo->fbdev_bios_fb_ok(display->drm, size);
+}
+
 struct drm_gem_object *intel_bo_fbdev_create(struct intel_display *display, int size)
 {
 	return display->parent->bo->fbdev_create(display->drm, size);
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 348f7fa66960..e962cd3c5105 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -34,6 +34,7 @@ struct drm_gem_object *intel_bo_framebuffer_lookup(struct intel_display *display
 						   const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
 u32 intel_bo_fbdev_pitch_align(struct intel_display *display, u32 stride);
+bool intel_bo_fbdev_bios_fb_ok(struct intel_display *display, int size);
 struct drm_gem_object *intel_bo_fbdev_create(struct intel_display *display, int size);
 void intel_bo_fbdev_destroy(struct drm_gem_object *obj);
 int intel_bo_fbdev_fill_info(struct drm_gem_object *obj, struct fb_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 3754810cc187..4207c89f7c1e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -271,6 +271,11 @@ static bool bios_fb_ok(const struct intel_framebuffer *fb,
 	int depth = fb->base.format->depth;
 	int bpp = fb->base.format->cpp[0] * 8;
 
+	if (!intel_bo_fbdev_bios_fb_ok(display, intel_fb_bo(&fb->base)->size)) {
+		drm_dbg_kms(display->drm, "BIOS fb unusable, releasing it\n");
+		return false;
+	}
+
 	if (sizes->fb_width > width || sizes->fb_height > height) {
 		drm_dbg_kms(display->drm,
 			    "BIOS fb too small (%dx%d), we require (%dx%d), releasing it\n",
diff --git a/drivers/gpu/drm/i915/i915_bo.c b/drivers/gpu/drm/i915/i915_bo.c
index 559341103ca7..662c519174cf 100644
--- a/drivers/gpu/drm/i915/i915_bo.c
+++ b/drivers/gpu/drm/i915/i915_bo.c
@@ -150,7 +150,7 @@ static u32 i915_bo_fbdev_pitch_align(u32 stride)
 	return ALIGN(stride, 64);
 }
 
-bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int size)
+static bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int size)
 {
 	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
 	if (IS_METEORLAKE(i915))
@@ -164,6 +164,16 @@ bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int siz
 	return i915->dsm.usable_size >= size * 2;
 }
 
+static bool i915_bo_fbdev_bios_fb_ok(struct drm_device *drm, int size)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	if (HAS_LMEM(i915))
+		return true;
+
+	return i915_bo_fbdev_prefer_stolen(i915, size);
+}
+
 static struct drm_gem_object *i915_bo_fbdev_create(struct drm_device *drm, int size)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
@@ -262,6 +272,7 @@ const struct intel_display_bo_interface i915_display_bo_interface = {
 	.framebuffer_fini = i915_bo_framebuffer_fini,
 	.framebuffer_lookup = i915_bo_framebuffer_lookup,
 #if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	.fbdev_bios_fb_ok = i915_bo_fbdev_bios_fb_ok,
 	.fbdev_create = i915_bo_fbdev_create,
 	.fbdev_destroy = i915_bo_fbdev_destroy,
 	.fbdev_fill_info = i915_bo_fbdev_fill_info,
diff --git a/drivers/gpu/drm/i915/i915_bo.h b/drivers/gpu/drm/i915/i915_bo.h
index 39ba62696550..57255d052dd9 100644
--- a/drivers/gpu/drm/i915/i915_bo.h
+++ b/drivers/gpu/drm/i915/i915_bo.h
@@ -4,12 +4,6 @@
 #ifndef __I915_BO_H__
 #define __I915_BO_H__
 
-#include <linux/types.h>
-
-struct drm_i915_private;
-
-bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int size);
-
 extern const struct intel_display_bo_interface i915_display_bo_interface;
 
 #endif /* __I915_BO_H__ */
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 4902c0748664..56d31f83707b 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -12,7 +12,6 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
-#include "i915_bo.h"
 #include "i915_drv.h"
 #include "i915_initial_plane.h"
 
@@ -102,19 +101,6 @@ initial_plane_vma(struct drm_i915_private *i915,
 			mem->min_page_size);
 	size -= base;
 
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
-	if (IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
-	    IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-	    mem == i915->mm.stolen_region &&
-	    !i915_bo_fbdev_prefer_stolen(i915, size)) {
-		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
-		return NULL;
-	}
-
 	obj = i915_gem_object_create_region_at(mem, phys_base, size,
 					       I915_BO_ALLOC_USER |
 					       I915_BO_PREALLOC);
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index 7fbac223b097..02a906efb818 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -119,7 +119,7 @@ static u32 xe_display_bo_fbdev_pitch_align(u32 stride)
 	return ALIGN(stride, XE_PAGE_SIZE);
 }
 
-bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
+static bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
 {
 	struct ttm_resource_manager *stolen;
 
@@ -130,6 +130,7 @@ bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
 	if (IS_DGFX(xe))
 		return false;
 
+	/* machine hang when doing lots of LMEMBAR accesses */
 	if (XE_DEVICE_WA(xe, 22019338487_display))
 		return false;
 
@@ -141,6 +142,16 @@ bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
 	return stolen->size >= (size * 2) >> PAGE_SHIFT;
 }
 
+static bool xe_display_bo_fbdev_bios_fb_ok(struct drm_device *drm, int size)
+{
+	struct xe_device *xe = to_xe_device(drm);
+
+	if (IS_DGFX(xe))
+		return true;
+
+	return xe_display_bo_fbdev_prefer_stolen(xe, size);
+}
+
 static struct drm_gem_object *xe_display_bo_fbdev_create(struct drm_device *drm, int size)
 {
 	struct xe_device *xe = to_xe_device(drm);
@@ -224,6 +235,7 @@ const struct intel_display_bo_interface xe_display_bo_interface = {
 	.framebuffer_fini = xe_display_bo_framebuffer_fini,
 	.framebuffer_lookup = xe_display_bo_framebuffer_lookup,
 #if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	.fbdev_bios_fb_ok = xe_display_bo_fbdev_bios_fb_ok,
 	.fbdev_create = xe_display_bo_fbdev_create,
 	.fbdev_destroy = xe_display_bo_fbdev_destroy,
 	.fbdev_fill_info = xe_display_bo_fbdev_fill_info,
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.h b/drivers/gpu/drm/xe/display/xe_display_bo.h
index c72056884ff4..6879c104b0b1 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.h
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.h
@@ -4,12 +4,6 @@
 #ifndef __XE_DISPLAY_BO_H__
 #define __XE_DISPLAY_BO_H__
 
-#include <linux/types.h>
-
-struct xe_device;
-
-bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size);
-
 extern const struct intel_display_bo_interface xe_display_bo_interface;
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 02b46cc3b6df..1f2919797f6f 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -14,7 +14,6 @@
 #include "intel_display_types.h"
 
 #include "xe_bo.h"
-#include "xe_display_bo.h"
 #include "xe_display_vma.h"
 #include "xe_fb_pin.h"
 #include "xe_ggtt.h"
@@ -70,13 +69,6 @@ initial_plane_bo(struct xe_device *xe,
 			return NULL;
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
-
-		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
-		    !xe_display_bo_fbdev_prefer_stolen(xe, plane_config->size)) {
-			drm_info(&xe->drm, "Initial FB size exceeds half of stolen, discarding\n");
-			return NULL;
-		}
 	}
 
 	size = round_up(plane_config->base + plane_config->size,
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 39991afeb173..7d7d848fd511 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -58,6 +58,7 @@ struct intel_display_bo_interface {
 						     struct drm_file *filp,
 						     const struct drm_mode_fb_cmd2 *user_mode_cmd);
 #if IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
+	bool (*fbdev_bios_fb_ok)(struct drm_device *drm, int size);
 	struct drm_gem_object *(*fbdev_create)(struct drm_device *drm, int size);
 	void (*fbdev_destroy)(struct drm_gem_object *obj);
 	int (*fbdev_fill_info)(struct drm_gem_object *obj, struct fb_info *info, struct i915_vma *vma);
-- 
2.52.0

