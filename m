Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDlEJN2rHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB5262C338
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD20C10EE59;
	Tue,  2 Jun 2026 10:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mHnj1F4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8EB10EE56;
 Tue,  2 Jun 2026 10:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394971; x=1811930971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s1ePZhk2r3gtae5A0o6jcoOQzHdFdUr1xA/txRnKc0M=;
 b=mHnj1F4UXUXeFGLVyLQugAXuC7gWJ/ARExh77DZg0MqVZluacs0Vo1ZE
 RWwCyUePa3Dl6ckOjk+tNrG8INXDXA17VSyZPMek5Y2i5G4tC4z5BqFS1
 C3Ut1pmdIKHY4Sp4UCHzQy0EbAwh8De+Rvqw7kjqMQ50faP7o6MIs9ly0
 gJnSEaFvq31r/GukkBF6aubHoqzSteWMj9aJcCLWpftHgjU/RmSu/xcjI
 l82h1O1ka2GI36rdnnJTx/nVMt+Ea/RVsZSvLFAR4srTwzbp9jjoVz4HQ
 22iGo8TLMUW15md8HiZlPWruBrxw5O6dMdcwoFtMh9GM17o2cg3vM9klE w==;
X-CSE-ConnectionGUID: GBLiRWrKQva47Jbf+OUX1w==
X-CSE-MsgGUID: A91k7ZSfQESXENpuQKH4bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="103836872"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="103836872"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:30 -0700
X-CSE-ConnectionGUID: 5i9OsHw+QK2xhMdw1MJVgw==
X-CSE-MsgGUID: rTvhprnRSpKmTBfqw31vqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="248149169"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 4/6] drm/{i915,xe}/panic: pass obj to panic setup
Date: Tue,  2 Jun 2026 13:09:07 +0300
Message-ID: <840c4ccaced5f1c82277285938287776c8cdf513.1780394867.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 3BB5262C338
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Action: no action

Start reducing i915 and xe core dependency on struct intel_framebuffer
by passing the fb obj from display.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c  | 5 +++--
 drivers/gpu/drm/i915/display/intel_parent.h  | 3 ++-
 drivers/gpu/drm/i915/display/intel_plane.c   | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_panic.c    | 5 ++---
 drivers/gpu/drm/xe/display/xe_panic.c        | 6 +++---
 include/drm/intel/display_parent_interface.h | 3 ++-
 6 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index a5816561be40..0b2bc2d38442 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -251,9 +251,10 @@ struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
 	return display->parent->panic->alloc();
 }
 
-int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
+int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
+			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj)
 {
-	return display->parent->panic->setup(panic, sb);
+	return display->parent->panic->setup(panic, sb, obj);
 }
 
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 27e35f891a6b..4197d1b1af61 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -105,7 +105,8 @@ void intel_parent_overlay_cleanup(struct intel_display *display);
 
 /* panic */
 struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
-int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
+int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
+			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj);
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
 
 /* pc8 */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f55a6a2f7dd1..75eae994433d 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1590,7 +1590,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
 				return -EOPNOTSUPP;
 		}
 		sb->private = fb;
-		ret = intel_parent_panic_setup(display, fb->panic, sb);
+		ret = intel_parent_panic_setup(display, fb->panic, sb, obj);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
index bb26a0ece176..001ccfbf7ab7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
@@ -5,7 +5,6 @@
 #include <drm/drm_panic.h>
 #include <drm/intel/display_parent_interface.h>
 
-#include "display/intel_fb.h"
 #include "display/intel_display_types.h"
 #include "i915_gem_object.h"
 #include "i915_gem_panic.h"
@@ -98,10 +97,10 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
  * Use current vaddr if it exists, or setup a list of pages.
  * pfn is not supported yet.
  */
-static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
+static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				       struct drm_gem_object *_obj)
 {
 	struct intel_framebuffer *fb = sb->private;
-	struct drm_gem_object *_obj = intel_fb_bo(&fb->base);
 	bool panic_tiling = fb->panic_tiling;
 	enum i915_map_type has_type;
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index bebb21d617f0..d7f456eec597 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -84,10 +84,10 @@ static struct intel_panic *xe_panic_alloc(void)
 	return panic;
 }
 
-static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
+static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+			  struct drm_gem_object *obj)
 {
-	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
-	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
+	struct xe_bo *bo = gem_to_xe_bo(obj);
 
 	if (xe_bo_is_vram(bo) && !xe_bo_is_visible_vram(bo))
 		return -ENODEV;
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 39991afeb173..b0362e231d84 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -167,7 +167,8 @@ struct intel_display_overlay_interface {
 
 struct intel_display_panic_interface {
 	struct intel_panic *(*alloc)(void);
-	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb);
+	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+		     struct drm_gem_object *obj);
 	void (*finish)(struct intel_panic *panic);
 };
 
-- 
2.47.3

