Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIUZJxmjhGmI3wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:03:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BEAF3B82
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AECD10E8C8;
	Thu,  5 Feb 2026 14:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TU3jdSn8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A3F10E8C9;
 Thu,  5 Feb 2026 14:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770300181; x=1801836181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GFUAwvwKvkCqHADdkcA1SzHHoRUmXQMjLfIU7avLVs4=;
 b=TU3jdSn8CGTYqtwHE7KsY4WAJrMb1E1rHXsGE06M9SMdmg7w11i2uqfj
 sX2q2gHok6RiHG2QZGNbESzDxsdPMkSL8Ll32SYTu/BydUe8tUf3w0NIf
 2iLWfmHTTs3eUzCxV/AggEZt3H1IHrkJKYdJBak17nhfnMyFKQGYHKD0Q
 QluxI/4OlJrb9QvKvU1BJEaklcUZspkn2NJxqiDwybWgPN7kEBgqVLLtC
 MHZaT3T1AWnHNLUywG9MU3ZZrRx/iZGjxBIUuBJqbttcgRDrBfV428jeh
 htLTBMgvQjW8puTdpBhNHiwnnWMj31quZCJtbl8JqswxjiOg1GCeAidQR g==;
X-CSE-ConnectionGUID: tQf9P71XQLGOjH1MLVkTMQ==
X-CSE-MsgGUID: D2800tuARGm9IlQf6moz6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75350980"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75350980"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:03:00 -0800
X-CSE-ConnectionGUID: Xr7Sstg+TPaylJVBvb2npQ==
X-CSE-MsgGUID: hTNNk+nyRjK3UunxRm1QeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215508858"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.157])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:02:59 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Thu,  5 Feb 2026 16:02:32 +0200
Message-ID: <20260205140235.338410-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260205140235.338410-1-vinod.govindapillai@intel.com>
References: <20260205140235.338410-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 51BEAF3B82
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Consolidate the "should we allocate fbdev fb in stolen?"
check into a helper function. Makes it easier to change the
heuristics without having to change so many places.

v2: rebase related changes and consolidate all the prefer
    stolen conditions into a single function (Vinod)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 27 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 ++
 drivers/gpu/drm/i915/i915_initial_plane.c     |  3 ++-
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index e5251ed15948..4f057dbd1279 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -10,6 +10,7 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_fbdev_fb.h"
 
 u32 intel_fbdev_fb_pitch_align(u32 stride)
@@ -17,6 +18,23 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, 64);
 }
 
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
+				  unsigned int size)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
+	if (IS_METEORLAKE(i915))
+		return false;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return i915->dsm.usable_size >= size * 2;
+}
+
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
@@ -28,14 +46,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 						  I915_BO_ALLOC_CONTIGUOUS |
 						  I915_BO_ALLOC_USER);
 	} else {
-		/*
-		 * If the FB is too big, just don't use it since fbdev is not very
-		 * important and we should probably use that space with FBC or other
-		 * features.
-		 *
-		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
-		 */
-		if (!IS_METEORLAKE(i915) && size * 2 < i915->dsm.usable_size)
+		if (intel_fbdev_fb_prefer_stolen(i915->display, size))
 			obj = i915_gem_object_create_stolen(i915, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(i915, size);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index fd0b3775dc1f..82da57601dc7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -13,11 +13,13 @@ struct drm_gem_object;
 struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
+struct intel_display;
 
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
 int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display, unsigned int size);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 7fb52d81f7b6..1263d7db2c44 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -9,6 +9,7 @@
 #include "display/intel_crtc.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
+#include "display/intel_fbdev_fb.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
@@ -116,7 +117,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    size * 2 > i915->dsm.usable_size) {
+	    !intel_fbdev_fb_prefer_stolen(i915->display, size)) {
 		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
-- 
2.43.0

