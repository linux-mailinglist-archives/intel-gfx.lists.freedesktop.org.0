Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC9E5FF858
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 05:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856D910E35D;
	Sat, 15 Oct 2022 03:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B52F10E35B
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Oct 2022 03:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665806264; x=1697342264;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AfultzwJU1iCG5ZabJ4C5hyoWh+wpJDvXCAw2HNqGjg=;
 b=REFwEU5xDuoRiFHgF1K4EFdy1TGpw0ASyRezhq6Q9ob9917l7D7sKl9p
 P3CvYdwFBFFXvU5QviLcC0Ctorhp7+cbYD8fmbylQRfFNottNYXF1T1vk
 aX9LlBQTs7eEAyUdImSZ7dghN2qXxgbIGtndJDAy3QSyf0CwLCAFGJD21
 rJkahh/iRg/+gtdEbGvVYPEBmFIiWz/uSdCFlfmyvQrP4ZsHj4FrX5CaY
 sxC3wdZ+Ke3sEou0Tv82mr2kFWT8lZnqam9AGigsY+Kbh3jt5Q8svpUnn
 IXs5rfjN4W1E6xPTOqjo1unIFnfP3APDdnvAF7H5z3Tam6fJ6Sbr8K3JN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="332036828"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="332036828"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 20:57:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716962775"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="716962775"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 20:57:43 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 20:59:51 -0700
Message-Id: <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

If GuC is being used and we initialized GuC-error-capture,
we need to be warning if we don't provide an error-capture
register list in the firmware ADS, for valid GT engines.
A warning makes sense as this would impact debugability
without realizing why a reglist wasn't retrieved and reported
by GuC.

However, depending on the platform, we might have certain
engines that have a register list for engine instance error state
but not for engine class. Thus, add a check only to warn if the
register list was non existent vs an empty list (use the
empty lists to skip the warning).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 55 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 8f1165146013..290c1e1343dd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -419,6 +419,44 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
 	return default_lists;
 }
 
+static const char *
+__stringify_type(u32 type)
+{
+	switch (type) {
+	case GUC_CAPTURE_LIST_TYPE_GLOBAL:
+		return "Global";
+	case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
+		return "Class";
+	case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
+		return "Instance";
+	default:
+		return "unknown";
+	}
+
+	return "";
+}
+
+static const char *
+__stringify_engclass(u32 class)
+{
+	switch (class) {
+	case GUC_RENDER_CLASS:
+		return "Render";
+	case GUC_VIDEO_CLASS:
+		return "Video";
+	case GUC_VIDEOENHANCE_CLASS:
+		return "VideoEnhance";
+	case GUC_BLITTER_CLASS:
+		return "Blitter";
+	case GUC_COMPUTE_CLASS:
+		return "Compute";
+	default:
+		return "unknown";
+	}
+
+	return "";
+}
+
 static int
 guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		      struct guc_mmio_reg *ptr, u16 num_entries)
@@ -487,19 +525,32 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 			      size_t *size)
 {
 	struct intel_guc_state_capture *gc = guc->capture;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
 	int num_regs;
 
-	if (!gc->reglists)
+	if (!gc->reglists) {
+		drm_warn(&i915->drm, "GuC-capture: No reglist on this device\n");
 		return -ENODEV;
+	}
 
 	if (cache->is_valid) {
 		*size = cache->size;
 		return cache->status;
 	}
 
+	if (!guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
+		if (owner == GUC_CAPTURE_LIST_INDEX_PF && type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+			drm_warn(&i915->drm, "GuC-capture: missing reglist type-Global\n");
+		if (owner == GUC_CAPTURE_LIST_INDEX_PF)
+			drm_warn(&i915->drm, "GuC-capture: missing regiist type(%d)-%s : "
+				 "%s(%d)-Engine\n", type, __stringify_type(type),
+				 __stringify_engclass(classid), classid);
+		return -ENODATA;
+	}
+
 	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
-	if (!num_regs)
+	if (!num_regs) /* intentional empty lists can exist depending on hw config */
 		return -ENODATA;
 
 	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
-- 
2.34.1

