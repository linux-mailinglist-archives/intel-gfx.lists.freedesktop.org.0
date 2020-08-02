Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20371235838
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 17:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE9D6E0AF;
	Sun,  2 Aug 2020 15:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F51A6E12D
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 15:34:36 +0000 (UTC)
IronPort-SDR: eU0IV1v3BsQUpa3bbkrP+7ZnyjhgW0Q/AO8JdQdcWp/UXDhTRj+3jVW1mgLZljEYZGl9ZmvpH+
 ZvcE5Df6GaQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9700"; a="151973364"
X-IronPort-AV: E=Sophos;i="5.75,426,1589266800"; d="scan'208";a="151973364"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2020 08:34:35 -0700
IronPort-SDR: ypZ/Tn7xml6UnGSPlZyU3jwbs6fozhFU94soXq8kZqOkgt7ZwffoV6Fery0BombbmHgEuicP0I
 Bkw6X1QM/aIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,426,1589266800"; d="scan'208";a="274971233"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 02 Aug 2020 08:34:34 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-mobl.ger.corp.intel.com [10.249.133.5])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 072FYT3t017247; Sun, 2 Aug 2020 16:34:33 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:34:10 +0200
Message-Id: <20200802153410.2298-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200802153410.2298-1-michal.wajdeczko@intel.com>
References: <20200802153410.2298-1-michal.wajdeczko@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
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
index 111306f2f8d6..72780543c9c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -336,6 +336,7 @@ struct i915_ggtt {
 	struct mutex error_mutex;
 	struct drm_mm_node error_capture;
 	struct drm_mm_node uc_fw;
+	struct drm_mm_node balloon[4];
 };
 
 struct i915_ppgtt {
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index f505142d6dfc..6eb7657fb2ca 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -134,17 +134,6 @@ bool intel_vgpu_has_huge_gtt(struct drm_i915_private *dev_priv)
 	return dev_priv->vgpu.caps & VGT_CAPS_HUGE_GTT;
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
@@ -163,7 +152,7 @@ void intel_vgt_deballoon(struct i915_ggtt *ggtt)
 	drm_dbg(&dev_priv->drm, "VGT deballoon.\n");
 
 	for (i = 0; i < 4; i++)
-		i915_ggtt_deballoon(ggtt, &bl_info.space[i]);
+		i915_ggtt_deballoon(ggtt, &ggtt->balloon[i]);
 }
 
 /**
@@ -253,7 +242,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	/* Unmappable graphic memory ballooning */
 	if (unmappable_base > ggtt->mappable_end) {
 		ret = i915_ggtt_balloon(ggtt, ggtt->mappable_end,
-					unmappable_base, &bl_info.space[2]);
+					unmappable_base, &ggtt->balloon[2]);
 
 		if (ret)
 			goto err;
@@ -261,7 +250,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
 	if (unmappable_end < ggtt_end) {
 		ret = i915_ggtt_balloon(ggtt, unmappable_end, ggtt_end,
-					&bl_info.space[3]);
+					&ggtt->balloon[3]);
 		if (ret)
 			goto err_upon_mappable;
 	}
@@ -269,7 +258,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 	/* Mappable graphic memory ballooning */
 	if (mappable_base) {
 		ret = i915_ggtt_balloon(ggtt, 0, mappable_base,
-					&bl_info.space[0]);
+					&ggtt->balloon[0]);
 
 		if (ret)
 			goto err_upon_unmappable;
@@ -277,7 +266,7 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
 
 	if (mappable_end < ggtt->mappable_end) {
 		ret = i915_ggtt_balloon(ggtt, mappable_end, ggtt->mappable_end,
-					&bl_info.space[1]);
+					&ggtt->balloon[1]);
 
 		if (ret)
 			goto err_below_mappable;
@@ -287,11 +276,11 @@ int intel_vgt_balloon(struct i915_ggtt *ggtt)
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
 	drm_err(&dev_priv->drm, "VGT balloon fail\n");
 	return ret;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
