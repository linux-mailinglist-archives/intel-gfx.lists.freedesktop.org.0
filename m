Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B83C33A4445
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 16:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA5F6E463;
	Fri, 11 Jun 2021 14:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2386E463
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 14:43:19 +0000 (UTC)
IronPort-SDR: 2QUgqhlQ4TFx2R9regdRvCq0JqGKtxdF0p2OqQsT8J8AemqryKqcRVdfa3/+fNOh7X4Qoa1C8x
 QvG3NXIvwd/w==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="205563562"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="205563562"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 07:43:18 -0700
IronPort-SDR: 34Zhn4Qaay4V41s1gJ1yd8ly96K+nLHqVYWPGroOAXtQMnX5R88USE7a+72LPRBZobtlFaBl/H
 +ljAQj84UZmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="470654256"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jun 2021 07:43:16 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Jun 2021 20:04:09 +0530
Message-Id: <20210611143409.827727-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
 slice/subslice
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

w/a on gen11 platforms not working as expected and causing
more harm on the RC6 flow. Because of subslice steering
disturbance w/a read is failing. By using ffs we can default
steering of slice/sublice to minconfig hence w/a will pass
and any warns will go away.

Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround")
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 +++++++++++---
 drivers/gpu/drm/i915/intel_pm.c             | 10 +++++++---
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b62d1e31a645..68b14141088a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -991,13 +991,21 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		l3_en = ~0;
 	}
 
-	slice = fls(sseu->slice_mask) - 1;
-	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
+	if (GRAPHICS_VER(i915) == 11) {
+		slice = ffs(sseu->slice_mask) - 1;
+		subslice = ffs(l3_en & intel_sseu_get_subslices(sseu, slice));
+	} else {
+		slice = fls(sseu->slice_mask) - 1;
+		subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
+	}
 	if (!subslice) {
 		drm_warn(&i915->drm,
 			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
 			 intel_sseu_get_subslices(sseu, slice), l3_en);
-		subslice = fls(l3_en);
+		if (GRAPHICS_VER(i915) == 11)
+			subslice = ffs(l3_en);
+		else
+			subslice = fls(l3_en);
 		drm_WARN_ON(&i915->drm, !subslice);
 	}
 	subslice--;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 45fefa0ed160..d1352ec3546a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4049,9 +4049,13 @@ skl_ddb_entry_for_slices(struct drm_i915_private *dev_priv, u8 slice_mask,
 		ddb->end = 0;
 		return;
 	}
-
-	ddb->start = (ffs(slice_mask) - 1) * slice_size;
-	ddb->end = fls(slice_mask) * slice_size;
+	if (GRAPHICS_VER(dev_priv) == 11) {
+		ddb->start = (fls(slice_mask) - 1) * slice_size;
+		ddb->end = ffs(slice_mask) * slice_size;
+	} else {
+		ddb->start = (ffs(slice_mask) - 1) * slice_size;
+		ddb->end = fls(slice_mask) * slice_size;
+	}
 
 	WARN_ON(ddb->start >= ddb->end);
 	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
