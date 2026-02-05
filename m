Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E3YHRyjhGmI3wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:03:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4CDF3B89
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D7E10E8C9;
	Thu,  5 Feb 2026 14:03:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcSufnZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96010E8C9;
 Thu,  5 Feb 2026 14:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770300183; x=1801836183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RSh4aL2ngBt7c1YHfuaPpVh/u5FnkEmM8bZb8IO/9Ok=;
 b=CcSufnZUTOy2FzRlXDOtnTOKSev8b7ej+ah2kctA08cJP9gZgjJyw5y6
 9EqilhHMoWBDQT0Uqc34kTPxuXoxRv9FOTuaauZWroxyveOJSWv8oW9Zk
 Dj9NHMxMgIar7CpG7SEgsN7AwVAfM1V9ziUjjUEuE4ZSBpisaLxc6BZmo
 J3euOOv+9QSgPNj39WZUEbC4fH21WleDyLWWp4qEmadPrYWOntofc9E8C
 tpujzvFJTXpYxT3IX8xxCMRGi7mysVEAOYZhHXOqAc76B38wmr7ECXP0f
 +y7sRGBlp8C4LDVugcml04MEaV93sRagZF+3yb7IdvPFl4YZdgBOd41Qu Q==;
X-CSE-ConnectionGUID: gUpNDSBYQZapcp4uEvbQ+g==
X-CSE-MsgGUID: 1a5bXIvxRRe7bdT8XOgI0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75350989"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75350989"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:03:03 -0800
X-CSE-ConnectionGUID: tg2Qh7wuSTigKaO8Yxfiuw==
X-CSE-MsgGUID: qe5aGkZqS6OCbvF3sW8gYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215508880"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.157])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:03:02 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH 4/6] drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Date: Thu,  5 Feb 2026 16:02:33 +0200
Message-ID: <20260205140235.338410-5-vinod.govindapillai@intel.com>
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
X-Rspamd-Queue-Id: CA4CDF3B89
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "should we keep the bios fb in stolen?" logic into
into a helper function, same as was done for i915. Gives us
a single place where to tweak the heuristics.

v2: changes related to rebase and consolidated other conditions
    for the stolen preference into this single function (Vinod)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 27 ++++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 11 ++------
 2 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 7ad76022cb14..b713d101953f 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -6,6 +6,7 @@
 #include <linux/fb.h>
 
 #include "intel_fbdev_fb.h"
+#include "intel_display_core.h"
 #include "xe_bo.h"
 #include "xe_ttm_stolen_mgr.h"
 #include "xe_wa.h"
@@ -23,6 +24,30 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 	return ALIGN(stride, XE_PAGE_SIZE);
 }
 
+bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
+				  unsigned int size)
+{
+	struct xe_device *xe = to_xe_device(display->drm);
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
@@ -30,7 +55,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe) && !XE_DEVICE_WA(xe, 22019338487_display)) {
+	if (intel_fbdev_fb_prefer_stolen(xe->display, size)) {
 		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
 						size,
 						ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 38ecc201ac4e..28b612bf21d2 100644
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
+		    !intel_fbdev_fb_prefer_stolen(xe->display, plane_config->size))
 			return NULL;
 	}
 
-- 
2.43.0

