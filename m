Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0F2RHU+VmGlaJwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C7C169993
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F22210E81D;
	Fri, 20 Feb 2026 17:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Odxu0UzS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440BB10E823;
 Fri, 20 Feb 2026 17:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771607372; x=1803143372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mB0EzZjQXxkko5bs5mQ34y1bzyl9gKD9nDUIPpO1FJQ=;
 b=Odxu0UzSeY+jNNKGyIaPA4eXokeP/D/NN80EAmVT45k+K2jVxoWnWkiX
 3+uQjkkm8ysnPztH8KkcL1pYzNNpXTPWB2CNVK6NEYRWdtxiEbpt19KUT
 pFEpHbmfqP9HEbeAq1YfuARzJq44a6P2lqM9eM/qB+96UEmtQYsgUoYie
 mR3qBZdejg10zJBocJ60FRUNHs5EY+C4P/ETAsptCCViAl88aydnqotd8
 22l5ETyPnS4KR0fxC6qt3OOScbXSKuhaIijqNv5um6vC3VWX//yrtwcMD
 RM4yCgKDhIShqA6ZWOQnpzc9EAEykZZgs6UjNa/wZScR7Sg80H2pdKxgQ g==;
X-CSE-ConnectionGUID: cI31PlPKRUCbNkJYsmPjZA==
X-CSE-MsgGUID: 5fBKPRIsSH6PZQ3EagvxzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="98164381"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="98164381"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:32 -0800
X-CSE-ConnectionGUID: dcHsAnlqSI+fCi8c8VPzWQ==
X-CSE-MsgGUID: ZszPIoTpQri0x4lExRFX6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="237863965"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:30 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v2 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Fri, 20 Feb 2026 19:09:05 +0200
Message-ID: <20260220170908.201422-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220170908.201422-1-vinod.govindapillai@intel.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 24C7C169993
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Consolidate the "should we allocate fbdev fb in stolen?"
check into a helper function. Makes it easier to change the
heuristics without having to change so many places.

v2: rebase related changes and consolidate all the prefer
    stolen conditions into a single function (Vinod)

v3: avoid including intel_display_core.h (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 25 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  1 +
 drivers/gpu/drm/i915/i915_initial_plane.c     |  3 ++-
 3 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index e5251ed15948..90993d09a73f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -17,6 +17,22 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, 64);
 }
 
+bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
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
@@ -28,14 +44,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
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
+		if (intel_fbdev_fb_prefer_stolen(drm, size))
 			obj = i915_gem_object_create_stolen(i915, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(i915, size);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index fd0b3775dc1f..34ed2b9c2b4f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -19,5 +19,6 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
 int intel_fbdev_fb_fill_info(struct drm_device *drm, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
+bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 7fb52d81f7b6..5594548f51d8 100644
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
+	    !intel_fbdev_fb_prefer_stolen(&i915->drm, size)) {
 		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
-- 
2.43.0

