Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B6E35D6DE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 07:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5965C6E140;
	Tue, 13 Apr 2021 05:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5B16E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 05:10:47 +0000 (UTC)
IronPort-SDR: XKAMzfHpaWdEP5hYVWq2xmo7VY+BMfUVX+qme5l05/Zzq4+SWlSlRbOttGGCuu/7SyCAu2xrwr
 upSYxEnkRRyg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194371987"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="194371987"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:46 -0700
IronPort-SDR: vC3nBup6mnjEzdSeUV3E5P7X9Xf7R0lSfTKwawJ1ri1vm6fiPYP5T7ujLXRVbdwsvhxhKLeezN
 D2hZgEfD0qsA==
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="460450757"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 22:09:56 -0700
Message-Id: <20210413051002.92589-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/12] drm/i915/selftests: replace unused
 mask with simple version
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

Since its introduction 2 years ago, we never used the mask to span more
than one gen. Replace gen_mask a single number and start using the new
GRAPHICS_VER().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 19850489a3fc..64937ec3f2dc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -927,7 +927,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
 
 struct regmask {
 	i915_reg_t reg;
-	unsigned long gen_mask;
+	u8 graphics_ver;
 };
 
 static bool find_reg(struct drm_i915_private *i915,
@@ -938,7 +938,7 @@ static bool find_reg(struct drm_i915_private *i915,
 	u32 offset = i915_mmio_reg_offset(reg);
 
 	while (count--) {
-		if (INTEL_INFO(i915)->gen_mask & tbl->gen_mask &&
+		if (GRAPHICS_VER(i915) == tbl->graphics_ver &&
 		    i915_mmio_reg_offset(tbl->reg) == offset)
 			return true;
 		tbl++;
@@ -951,8 +951,8 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
 {
 	/* Alas, we must pardon some whitelists. Mistakes already made */
 	static const struct regmask pardon[] = {
-		{ GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
-		{ GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
+		{ GEN9_CTX_PREEMPT_REG, 9 },
+		{ GEN8_L3SQCREG4, 9 },
 	};
 
 	return find_reg(i915, reg, pardon, ARRAY_SIZE(pardon));
@@ -974,7 +974,7 @@ static bool writeonly_reg(struct drm_i915_private *i915, i915_reg_t reg)
 {
 	/* Some registers do not seem to behave and our writes unreadable */
 	static const struct regmask wo[] = {
-		{ GEN9_SLICE_COMMON_ECO_CHICKEN1, INTEL_GEN_MASK(9, 9) },
+		{ GEN9_SLICE_COMMON_ECO_CHICKEN1, 9 },
 	};
 
 	return find_reg(i915, reg, wo, ARRAY_SIZE(wo));
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
