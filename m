Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41767FE176
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 21:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B944F10E681;
	Wed, 29 Nov 2023 20:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 29 Nov 2023 20:58:32 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84FF510E679
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 20:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701291513; x=1732827513;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wkmD7GcDAROUsHC8+hpvcDmE3/z7lzxLPUX0fJ4dM/w=;
 b=aB+afcvPYzltYGJ8aNJgwHPHfuIJDKHpTyfJF1UWShA1iOyhPG+X9y/D
 Xp09RVJ24ZezwWTanb00GPaGtzisOdQ8FfeJOE/z2Lu7X1p1+B2rZ3j1l
 eXbn2MdYaEphUXuOK/KFInsw/Wnl6nLJx51N2mOeT5O2CHBwsHivr6/XK
 S6ztGzWi8K8EMXVmNSlYdjIU1uc84PaWwMwmDstZoNoRK+GFYqUg9ztKZ
 YNwtVRSfnysL7ByTK4DCAnPrDu9+fK3EnSaW3sL789HgD6v4X8YSwgBoe
 xlcGMETh4471ojOrY3sKDyOp1eW3sLy0Tk2wOjzyNuqoP68a/RMxe6Q21 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="211738"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="211738"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:51:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="892575230"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="892575230"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.122])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:51:25 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 12:51:21 -0800
Message-Id: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Patch v3 1/2] drm/i915: Move reg_in_range_table
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

Function reg_in_range_table is useful in more places, move function to
intel_uncore.h to make available to more places.

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c    | 13 +------------
 drivers/gpu/drm/i915/intel_uncore.h | 12 ++++++++++++
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7b1c8de2f9cb3..5e5dc73621379 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -219,6 +219,7 @@
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
 #include "i915_reg.h"
+#include "intel_uncore.h"
 
 /* HW requires this to be a power of two, between 128k and 16M, though driver
  * is currently generally designed assuming the largest 16M size is used such
@@ -4324,18 +4325,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
 	return false;
 }
 
-static bool reg_in_range_table(u32 addr, const struct i915_range *table)
-{
-	while (table->start || table->end) {
-		if (addr >= table->start && addr <= table->end)
-			return true;
-
-		table++;
-	}
-
-	return false;
-}
-
 #define REG_EQUAL(addr, mmio) \
 	((addr) == i915_mmio_reg_offset(mmio))
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index f419c311a0dea..1e85eaec1fc5a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -496,6 +496,18 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 	return (reg_val & mask) != expected_val ? -EINVAL : 0;
 }
 
+static inline bool reg_in_range_table(u32 addr, const struct i915_range *table)
+{
+	while (table->start || table->end) {
+		if (addr >= table->start && addr <= table->end)
+			return true;
+
+		table++;
+	}
+
+	return false;
+}
+
 static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
 {
 	return uncore->regs;
-- 
2.40.1

