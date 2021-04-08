Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13ED357922
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457256E9B8;
	Thu,  8 Apr 2021 00:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83E16E107
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:10 +0000 (UTC)
IronPort-SDR: UN0khzpPCnxytjOx272mcNaA0gghyF1BIdb1VGPz0zy4gnqpn3VlM1/VVxu+SpBA9xWODgr07j
 7BgLz01y4NFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900155"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900155"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
IronPort-SDR: E3gwY08q6M9JB0rAUIggXxVn4mIBZB4OeSDdXfus/8hrfbFH4jLj1zCQ5ucEirbzG2PgoxyklL
 sS+l9U/s/Qzw==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634219"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:52 -0700
Message-Id: <20210408004200.984176-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/selftests: replace unused mask
 with simple version
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
