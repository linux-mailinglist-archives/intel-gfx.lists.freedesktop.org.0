Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA0ZE1OVmGlaJwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D720316999A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E08F10E823;
	Fri, 20 Feb 2026 17:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VpDBwIrw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2DF10E823;
 Fri, 20 Feb 2026 17:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771607375; x=1803143375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YtSjzE0S+xUBzQwPvPr1WP2o9DJh72WrXSFPmNTaVik=;
 b=VpDBwIrwD1lN8/JXErrAtMuH6mo6gv3qwlcaZb5MpCLEpGVwj7pM/vXj
 IgnuX5zVOZp1g5OZci8kdX4FPoO6uAJQsr5EUfhQR9gPJopZ1JQTqBoov
 JhKuGfmaTsQUce275t0fsPsaXVdHkAB3LEoReaXy8q1wD8juNExQK7w5d
 b/jVdMxNMUuNxvWhSiTnPIMMAWUnfhWM/vRJPht5+lMF8j95QLq9pK2xr
 kWRX9SiCUcPl/K6FkIuDvupAfXKRwFMvalZGuKSv0lV6Y3KAGysybTt/u
 oO19NA/yR9L+B4UaXxBWGdMXK931zkd7EWPxgBWb7wgo5sE/9rllk7sZB w==;
X-CSE-ConnectionGUID: OtaVuI/TTOSnZUiem1y9UA==
X-CSE-MsgGUID: 5lZNg/sFSLa46cnOdCtmmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="98164383"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="98164383"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:35 -0800
X-CSE-ConnectionGUID: fwEiydQJRdqpcjchC+3Q4Q==
X-CSE-MsgGUID: a/PyvYlsSm6DEoRVFDmIEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="237864003"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:33 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v2 4/6] drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Fri, 20 Feb 2026 19:09:06 +0200
Message-ID: <20260220170908.201422-5-vinod.govindapillai@intel.com>
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
X-Rspamd-Queue-Id: D720316999A
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "should we keep the bios fb in stolen?" logic into
into a helper function, same as was done for i915. Gives us
a single place where to tweak the heuristics.

v2: changes related to rebase and consolidated other conditions
    for the stolen preference into this single function (Vinod)

v3: avoid including intel_display_core.h (Jani Nikula)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 25 ++++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 11 ++------
 2 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 7ad76022cb14..4673614cd224 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -23,6 +23,29 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, XE_PAGE_SIZE);
 }
 
+bool intel_fbdev_fb_prefer_stolen(struct drm_device *drm, unsigned int size)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct ttm_resource_manager *stolen;
+
+	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+	if (!stolen)
+		return false;
+
+	if (IS_DGFX(xe))
+		return false;
+
+	if (XE_DEVICE_WA(xe, 22019338487_display))
+		return false;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	return stolen->size >= size * 2;
+}
+
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
 	struct xe_device *xe = to_xe_device(drm);
@@ -30,7 +53,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe) && !XE_DEVICE_WA(xe, 22019338487_display)) {
+	if (intel_fbdev_fb_prefer_stolen(drm, size)) {
 		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
 						size,
 						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 38ecc201ac4e..13fdc51f8f50 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -17,6 +17,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fbdev_fb.h"
 #include "intel_fb_pin.h"
 #include "xe_bo.h"
 #include "xe_vram_types.h"
@@ -90,16 +91,8 @@ initial_plane_bo(struct xe_device *xe,
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 
-		if (XE_DEVICE_WA(xe, 22019338487_display))
-			return NULL;
-
-		/*
-		 * If the FB is too big, just don't use it since fbdev is not very
-		 * important and we should probably use that space with FBC or other
-		 * features.
-		 */
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    plane_config->size * 2 > stolen->size)
+		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size))
 			return NULL;
 	}
 
-- 
2.43.0

