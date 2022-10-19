Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6AA60396B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 07:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822A410E0DD;
	Wed, 19 Oct 2022 05:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE11310E1AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 05:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666159115; x=1697695115;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WidTrEy/pgqpxbttkhsVY7yzmjeLMQEZjf9rxdy5ch8=;
 b=PYqgz9WynNJsMT6Ztz6++1o1TLWKrVYyhRGMtlI72sU/lLsPir+vKlqk
 NqxffVMO1oXX4qjamUC8EzuNobN+iQuUiB/ji591cxhjYGCzthqM6yHnC
 dxg9sH+PvIPewRwnPRDkj4qBnRyXrXY6OO5NFoo6KZ00KJCV5rY3he8Es
 4SI84jKYs1QwCDTRRyh/R5yR5icAN4KwPf+Ec3GDXt9JuNMYlSBsJCgru
 8hco0rAQbzIQ2NMz/RbXd0C+rD6IcrjZPYP/PQ2MQIDS7Ns1ApnO2xG2F
 JNa1bCRQ0iwGqgSNoCGMMFm0h8pqrtTUW+IGEMzVpy2Ih9eOVaBCtCzBX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="305049394"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="305049394"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 22:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="629082879"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="629082879"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 18 Oct 2022 22:58:35 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 23:00:42 -0700
Message-Id: <20221019060043.3749258-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019060043.3749258-1-alan.previn.teres.alexis@intel.com>
References: <20221019060043.3749258-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/guc: Add error-capture init
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

NOTE: if a future platform were to introduce new registers
in place of what was an empty list on existing / legacy hardware
engines no warning is provided as the empty list is meant
to be used intentionally. As an example, if a future hardware
were to add blitter engine-class-registers (new) on top
of the legacy blitter engine-instance-register (HEAD, TAIL, etc.),
no warning is generated.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 76 ++++++++++++++++---
 1 file changed, 67 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index d5c03e7a7843..47f74aa16ab5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -419,6 +419,42 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
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
+	}
+
+	return "unknown";
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
+	}
+
+	return "unknown";
+}
+
 static int
 guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		      struct guc_mmio_reg *ptr, u16 num_entries)
@@ -482,23 +518,38 @@ guc_cap_list_num_regs(struct intel_guc_state_capture *gc, u32 owner, u32 type, u
 	return num_regs;
 }
 
-int
-intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
-			      size_t *size)
+static int
+guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+			size_t *size, bool is_purpose_est)
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
 
+	if (!is_purpose_est && owner == GUC_CAPTURE_LIST_INDEX_PF &&
+	    !guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
+		if (type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
+			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist Global!\n");
+		else
+			drm_warn(&i915->drm, "Missing GuC-Err-Cap reglist %s(%u):%s(%u)!\n",
+				 __stringify_type(type), type,
+				 __stringify_engclass(classid), classid);
+		return -ENODATA;
+	}
+
 	num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
+	/* intentional empty lists can exist depending on hw config */
 	if (!num_regs)
 		return -ENODATA;
 
@@ -508,6 +559,13 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 	return 0;
 }
 
+int
+intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
+			      size_t *size)
+{
+	return guc_capture_getlistsize(guc, owner, type, classid, size, false);
+}
+
 static void guc_capture_create_prealloc_nodes(struct intel_guc *guc);
 
 int
@@ -627,15 +685,15 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 		worst_min_size += sizeof(struct guc_state_capture_group_header_t) +
 					 (3 * sizeof(struct guc_state_capture_header_t));
 
-		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
+		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp, true))
 			num_regs += tmp;
 
-		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
-						   engine->class, &tmp)) {
+		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
+					     engine->class, &tmp, true)) {
 			num_regs += tmp;
 		}
-		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
-						   engine->class, &tmp)) {
+		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
+					     engine->class, &tmp, true)) {
 			num_regs += tmp;
 		}
 	}
-- 
2.34.1

