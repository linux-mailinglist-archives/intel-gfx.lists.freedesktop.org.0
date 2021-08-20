Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346E03F3716
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 00:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F9C6EB2A;
	Fri, 20 Aug 2021 22:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D4D6EB2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Aug 2021 22:57:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="197109119"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="197109119"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:57:14 -0700
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="490819158"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:57:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Date: Fri, 20 Aug 2021 15:57:10 -0700
Message-Id: <20210820225710.401136-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Memory latency values from pcode
 must be doubled
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

The memory latency values returned by pcode on DG2 are in units of "2
usec" rather than 1 usec on all other platforms.  I.e., we need to
double the value returned by pcode to obtain the true latency value.

The bspec wording here was a bit ambiguous as to whether it wanted us to
multiply or divide the pcode value by two, but we confirmed offline with
the hardware team that we need to double the value the pcode gives us;
this change is intended to support a larger range of potential latency
values.

Bspec: 49326
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 65bc3709f54c..cfc41f8fa74a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2859,6 +2859,7 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 		u32 val;
 		int ret, i;
 		int level, max_level = ilk_wm_max_level(dev_priv);
+		int mult = IS_DG2(dev_priv) ? 2 : 1;
 
 		/* read the first set of memory latencies[0:3] */
 		val = 0; /* data0 to be programmed to 0 for first set */
@@ -2872,13 +2873,13 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 			return;
 		}
 
-		wm[0] = val & GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[1] = (val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[2] = (val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[3] = (val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
+		wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
 
 		/* read the second set of memory latencies[4:7] */
 		val = 1; /* data0 to be programmed to 1 for second set */
@@ -2891,13 +2892,13 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 			return;
 		}
 
-		wm[4] = val & GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[5] = (val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[6] = (val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
-		wm[7] = (val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK;
+		wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+		wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
+				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
 
 		/*
 		 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
-- 
2.25.4

