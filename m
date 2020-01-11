Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5101382A7
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 18:36:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6678889FCE;
	Sat, 11 Jan 2020 17:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200DE89FCA
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 17:36:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 09:36:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,421,1571727600"; d="scan'208";a="255382053"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2020 09:36:25 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.122])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00BHaNGP010236; Sat, 11 Jan 2020 17:36:24 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jan 2020 17:36:18 +0000
Message-Id: <20200111173618.29808-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200111173618.29808-1-michal.wajdeczko@intel.com>
References: <20200111173618.29808-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/vgt: Move VGT GGTT ballooning
 nodes to i915_ggtt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since VGT ballooning nodes are GGTT specific, we can move them
to i915_ggtt struct close to some other similar nodes. This way
we drop another place in driver that uses static data.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Xiong Zhang <xiong.y.zhang@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.h |  1 +
 drivers/gpu/drm/i915/i915_vgpu.c    | 27 ++++++++-------------------
 2 files changed, 9 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index ac852d1a3302..bc5670617b39 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -348,6 +348,7 @@ struct i915_ggtt {
 	struct mutex error_mutex;
 	struct drm_mm_node error_capture;
 	struct drm_mm_node uc_fw;
+	struct drm_mm_node balloon[4];
 };
 
 struct i915_ppgtt {
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index 4e1889a7aa5c..428a4a7560ed 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -106,17 +106,6 @@ bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *dev_priv)
 	return dev_priv->vgpu.caps & VGT_CAPS_FULL_PPGTT;
 }
 
-struct _balloon_info_ {
-	/*
-	 * There are up to 2 regions per mappable/unmappable graphic
-	 * memory that might be ballooned. Here, index 0/1 is for mappable
-	 * graphic memory, 2/3 for unmappable graphic memory.
-	 */
-	struct drm_mm_node space[4];
-};
-
-static struct _balloon_info_ bl_info;
-
 /**
  * intel_vgt_deballoon - deballoon reserved graphics address trunks
  * @ggtt: the global GGTT from which we reserved earlier
@@ -134,7 +123,7 @@ void intel_vgt_deballoon(struct i915_ggtt *ggtt)
 	DRM_DEBUG("VGT deballoon.\n");
 
 	for (i = 0; i < 4; i++)
-		i915_ggtt_deballoon(ggtt, &bl_info.space[i]);
+		i915_ggtt_deballoon(ggtt, &ggtt->balloon[i]);
 }
 
 /**
@@ -221,7 +210,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	/* Unmappable graphic memory ballooning */
 	if (unmappable_base > ggtt->mappable_end) {
 		ret = i915_ggtt_balloon(ggtt, ggtt->mappable_end,
-					unmappable_base, &bl_info.space[2]);
+					unmappable_base, &ggtt->balloon[2]);
 
 		if (ret)
 			goto err;
@@ -229,7 +218,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
 	if (unmappable_end < ggtt_end) {
 		ret = i915_ggtt_balloon(ggtt, unmappable_end, ggtt_end,
-					&bl_info.space[3]);
+					&ggtt->balloon[3]);
 		if (ret)
 			goto err_upon_mappable;
 	}
@@ -237,7 +226,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	/* Mappable graphic memory ballooning */
 	if (mappable_base) {
 		ret = i915_ggtt_balloon(ggtt, 0, mappable_base,
-					&bl_info.space[0]);
+					&ggtt->balloon[0]);
 
 		if (ret)
 			goto err_upon_unmappable;
@@ -245,7 +234,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
 	if (mappable_end < ggtt->mappable_end) {
 		ret = i915_ggtt_balloon(ggtt, mappable_end, ggtt->mappable_end,
-					&bl_info.space[1]);
+					&ggtt->balloon[1]);
 
 		if (ret)
 			goto err_below_mappable;
@@ -255,11 +244,11 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	return 0;
 
 err_below_mappable:
-	i915_ggtt_deballoon(ggtt, &bl_info.space[0]);
+	i915_ggtt_deballoon(ggtt, &ggtt->balloon[0]);
 err_upon_unmappable:
-	i915_ggtt_deballoon(ggtt, &bl_info.space[3]);
+	i915_ggtt_deballoon(ggtt, &ggtt->balloon[3]);
 err_upon_mappable:
-	i915_ggtt_deballoon(ggtt, &bl_info.space[2]);
+	i915_ggtt_deballoon(ggtt, &ggtt->balloon[2]);
 err:
 	DRM_ERROR("VGT balloon fail\n");
 	return ret;
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
