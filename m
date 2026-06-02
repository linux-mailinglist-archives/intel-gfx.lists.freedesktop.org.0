Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMrgL+WrHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA662C34E
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF82F10EE5C;
	Tue,  2 Jun 2026 10:09:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMFt/OXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D2910EE5A;
 Tue,  2 Jun 2026 10:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394978; x=1811930978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ke1+vBSRQHUoFO6TuWOdMK3ekxcoH/S5b/MuL2kl/OA=;
 b=cMFt/OXRNVUHGCCAj4P2A/SuHE6Mxq0HOU3BeLMMxZK1Gs16TvzxZtLS
 vpEggUlJrOOIKBrsM82mpt0d0zRX7+WTTlESRkis+ahsztesw7L8VFV2k
 DHwTbQ20kEsnvY2WwnpNpfjQAmI2H8AZdAhh/EhC2w9krY7YB+fXpmoWT
 DxJqJX2x/2kz7tmq4D19qHpOGshyqPnMPfQx3nq+uALw0/+y3QnKYen89
 H7r9UxwrHnUXjFjVButPcPbWogHpBFPOF+BpIqPngUNLjHqA1HPkWYuBc
 zhQGDt9PzWXzA5icE58CeiHLl5LY1FUguhjmP02Z3LvtOG/cd0RqN4XJZ Q==;
X-CSE-ConnectionGUID: w5kYCbPtTtyX+x3xQXQhGw==
X-CSE-MsgGUID: a6DzaIbjQNOYRPZo+YLXpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81038255"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81038255"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:38 -0700
X-CSE-ConnectionGUID: rFvamaUqS5meWO07l00cPg==
X-CSE-MsgGUID: KMyIchV3QcOrZ90PV7p3vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="245670057"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 6/6] drm/{i915,
 xe}/panic: drop dependency on struct intel_framebuffer
Date: Tue,  2 Jun 2026 13:09:09 +0300
Message-ID: <d97abae79db3437c617cd4cb6193ba017b3a8d78.1780394867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780394867.git.jani.nikula@intel.com>
References: <cover.1780394867.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 54CA662C34E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Store tiling function pointer in struct intel_panic instead of struct
intel_framebuffer, and store struct intel_panic pointer instead of
struct intel_framebuffer pointer in struct drm_scanout_buffer private
member.

To make this happen, pass the tiling function pointer to panic setup
hook, and initialize sb->private in the hook for clarity.

This allows us to drop the dependency on struct intel_framebuffer from
i915 and xe panic code.

Note: It would be less verbose to have a typedef for the tiling function
pointer. However, there isn't a nice location for it that wouldn't also
increase header interdependencies.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 -
 drivers/gpu/drm/i915/display/intel_parent.c   |  5 ++--
 drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++-
 drivers/gpu/drm/i915/display/intel_plane.c    |  8 +++---
 drivers/gpu/drm/i915/gem/i915_gem_panic.c     | 26 +++++++++++--------
 drivers/gpu/drm/xe/display/xe_panic.c         | 15 ++++++-----
 include/drm/intel/display_parent_interface.h  |  3 ++-
 7 files changed, 35 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c21e0c0ef0b1..234fae44fb16 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -150,7 +150,6 @@ struct intel_framebuffer {
 	unsigned int min_alignment;
 	unsigned int vtd_guard;
 
-	unsigned int (*panic_tiling)(unsigned int x, unsigned int y, unsigned int width);
 	struct intel_panic *panic;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 0b2bc2d38442..a5e41ea66921 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -252,9 +252,10 @@ struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
 }
 
 int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
-			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj)
+			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj,
+			     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
 {
-	return display->parent->panic->setup(panic, sb, obj);
+	return display->parent->panic->setup(panic, sb, obj, tiling);
 }
 
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 4197d1b1af61..595d4148b8eb 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -106,7 +106,8 @@ void intel_parent_overlay_cleanup(struct intel_display *display);
 /* panic */
 struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
 int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
-			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj);
+			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj,
+			     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width));
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
 
 /* pc8 */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 75eae994433d..e2745b3be105 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1580,17 +1580,17 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
 		intel_fbdev_get_map(display, &sb->map[0]);
 	} else {
+		unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width) = NULL;
 		int ret;
 		/* Can't disable tiling if DPT is in use */
 		if (intel_fb_uses_dpt(&fb->base)) {
 			if (fb->base.format->cpp[0] != 4)
 				return -EOPNOTSUPP;
-			fb->panic_tiling = intel_get_tiling_func(fb->base.modifier);
-			if (!fb->panic_tiling)
+			tiling = intel_get_tiling_func(fb->base.modifier);
+			if (!tiling)
 				return -EOPNOTSUPP;
 		}
-		sb->private = fb;
-		ret = intel_parent_panic_setup(display, fb->panic, sb, obj);
+		ret = intel_parent_panic_setup(display, fb->panic, sb, obj, tiling);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
index 001ccfbf7ab7..91389d36f101 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
@@ -5,7 +5,6 @@
 #include <drm/drm_panic.h>
 #include <drm/intel/display_parent_interface.h>
 
-#include "display/intel_display_types.h"
 #include "i915_gem_object.h"
 #include "i915_gem_panic.h"
 
@@ -13,6 +12,8 @@ struct intel_panic {
 	struct page **pages;
 	int page;
 	void *vaddr;
+
+	unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width);
 };
 
 static void i915_panic_kunmap(struct intel_panic *panic)
@@ -45,8 +46,8 @@ static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj
 static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
 						unsigned int y, u32 color)
 {
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	unsigned int offset = fb->panic_tiling(sb->width, x, y);
+	struct intel_panic *panic = sb->private;
+	unsigned int offset = panic->tiling(sb->width, x, y);
 
 	iosys_map_wr(&sb->map[0], offset, u32, color);
 }
@@ -59,13 +60,12 @@ static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, u
 static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
 						 unsigned int y, u32 color)
 {
+	struct intel_panic *panic = sb->private;
 	unsigned int new_page;
 	unsigned int offset;
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct intel_panic *panic = fb->panic;
 
-	if (fb->panic_tiling)
-		offset = fb->panic_tiling(sb->width, x, y);
+	if (panic->tiling)
+		offset = panic->tiling(sb->width, x, y);
 	else
 		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
 
@@ -98,14 +98,15 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
  * pfn is not supported yet.
  */
 static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				       struct drm_gem_object *_obj)
+				       struct drm_gem_object *_obj,
+				       unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
 {
-	struct intel_framebuffer *fb = sb->private;
-	bool panic_tiling = fb->panic_tiling;
 	enum i915_map_type has_type;
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	void *ptr;
 
+	sb->private = panic;
+
 	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
 	if (ptr) {
 		if (i915_gem_object_has_iomem(obj))
@@ -113,8 +114,10 @@ static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_sca
 		else
 			iosys_map_set_vaddr(&sb->map[0], ptr);
 
-		if (panic_tiling)
+		if (tiling) {
+			panic->tiling = tiling;
 			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
+		}
 		return 0;
 	}
 	if (i915_gem_object_has_struct_page(obj)) {
@@ -122,6 +125,7 @@ static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_sca
 		if (!panic->pages)
 			return -ENOMEM;
 		panic->page = -1;
+		panic->tiling = tiling;
 		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index 4b86760ec00a..12c6fb99015d 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -5,7 +5,6 @@
 #include <drm/drm_panic.h>
 #include <drm/intel/display_parent_interface.h>
 
-#include "intel_display_types.h"
 #include "xe_bo.h"
 #include "xe_panic.h"
 #include "xe_res_cursor.h"
@@ -17,6 +16,7 @@ struct intel_panic {
 	int page;
 
 	struct xe_bo *bo;
+	unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width);
 };
 
 static void xe_panic_kunmap(struct intel_panic *panic)
@@ -37,14 +37,13 @@ static void xe_panic_kunmap(struct intel_panic *panic)
 static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
 				    unsigned int y, u32 color)
 {
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct intel_panic *panic = fb->panic;
+	struct intel_panic *panic = sb->private;
 	struct xe_bo *bo = panic->bo;
 	unsigned int new_page;
 	unsigned int offset;
 
-	if (fb->panic_tiling)
-		offset = fb->panic_tiling(sb->width, x, y);
+	if (panic->tiling)
+		offset = panic->tiling(sb->width, x, y);
 	else
 		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
 
@@ -86,7 +85,8 @@ static struct intel_panic *xe_panic_alloc(void)
 }
 
 static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-			  struct drm_gem_object *obj)
+			  struct drm_gem_object *obj,
+			  unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
 {
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 
@@ -95,8 +95,11 @@ static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *
 
 	panic->page = -1;
 	panic->bo = bo;
+	panic->tiling = tiling;
 
+	sb->private = panic;
 	sb->set_pixel = xe_panic_page_set_pixel;
+
 	return 0;
 }
 
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index b0362e231d84..de395df9ca30 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -168,7 +168,8 @@ struct intel_display_overlay_interface {
 struct intel_display_panic_interface {
 	struct intel_panic *(*alloc)(void);
 	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-		     struct drm_gem_object *obj);
+		     struct drm_gem_object *obj,
+		     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width));
 	void (*finish)(struct intel_panic *panic);
 };
 
-- 
2.47.3

