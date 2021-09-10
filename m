Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21303407248
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 22:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6C56EAAF;
	Fri, 10 Sep 2021 20:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0929E6EAAA;
 Fri, 10 Sep 2021 20:10:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="221205110"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="221205110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 13:10:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="480346575"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 13:10:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 10 Sep 2021 13:10:27 -0700
Message-Id: <20210910201030.3436066-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210910201030.3436066-1-matthew.d.roper@intel.com>
References: <20210910201030.3436066-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/uncore: Replace gen8 write
 functions with general fwtable
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

Now that we have both a standard forcewake table (albeit a single-entry
table) and the shadow table stored in the uncore, we can drop the
gen8-specific write handlers in favor of the general fwtable version.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5fa2bf26a948..4c6898746d10 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1046,16 +1046,6 @@ gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
 	return FORCEWAKE_RENDER;
 }
 
-#define __gen8_reg_write_fw_domains(uncore, offset) \
-({ \
-	enum forcewake_domains __fwd; \
-	if (NEEDS_FORCE_WAKE(offset) && !is_shadowed(uncore, offset)) \
-		__fwd = FORCEWAKE_RENDER; \
-	else \
-		__fwd = 0; \
-	__fwd; \
-})
-
 static const struct intel_forcewake_range __gen6_fw_ranges[] = {
 	GEN_FW_RANGE(0x0, 0x3ffff, FORCEWAKE_RENDER),
 };
@@ -1711,7 +1701,6 @@ __gen_write(func, 32)
 __gen_reg_write_funcs(gen12_fwtable);
 __gen_reg_write_funcs(gen11_fwtable);
 __gen_reg_write_funcs(fwtable);
-__gen_reg_write_funcs(gen8);
 
 #undef __gen_reg_write_funcs
 #undef GEN6_WRITE_FOOTER
@@ -2121,7 +2110,7 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 	} else if (GRAPHICS_VER(i915) == 8) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen6_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, gen8_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 	} else if (IS_VALLEYVIEW(i915)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
-- 
2.25.4

