Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A1E357928
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7006E9C4;
	Thu,  8 Apr 2021 00:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBEEC6E9B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:10 +0000 (UTC)
IronPort-SDR: 86F8WTyr3T6X9gOFbC9LnCnfP2FWLwTvp9Ga30oAsRPfGJLfVuECnp5SB5B20EKsl2TZCLIK5O
 AUXJ9RGYx5Fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900156"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900156"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
IronPort-SDR: D34Y5m1Y6yeAPZPP38rZNuB05Q2zwb18FYlvPjVYMxrNiWavMnspFVW8b8mwPLGrCJPCk3LvS4
 UQ8U1p5NWlkA==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634225"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:53 -0700
Message-Id: <20210408004200.984176-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/selftests: eliminate use of
 gen_mask
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

Remove the remaining uses of INTEL_GEN_MASK() and the correspondent
gen_mask in struct intel_device_info. This will allow the removal of
gen_mask later since it's incompatible with the new per-IP versioning
scheme.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c           | 8 +++++---
 drivers/gpu/drm/i915/selftests/intel_uncore.c | 8 +++++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 661b50191f2b..493699738c7a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2008,12 +2008,14 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
 static const struct reg_whitelist {
 	i915_reg_t offset_ldw;
 	i915_reg_t offset_udw;
-	u16 gen_mask;
+	u8 min_graphics_ver;
+	u8 max_graphics_ver;
 	u8 size;
 } reg_read_whitelist[] = { {
 	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
 	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
-	.gen_mask = INTEL_GEN_MASK(4, 12),
+	.min_graphics_ver = 4,
+	.max_graphics_ver = 12,
 	.size = 8
 } };
 
@@ -2038,7 +2040,7 @@ int i915_reg_read_ioctl(struct drm_device *dev,
 		GEM_BUG_ON(entry->size > 8);
 		GEM_BUG_ON(entry_offset & (entry->size - 1));
 
-		if (INTEL_INFO(i915)->gen_mask & entry->gen_mask &&
+		if (IS_GRAPHICS_RANGE(i915, entry->min_graphics_ver, entry->max_graphics_ver) &&
 		    entry_offset == (reg->offset & -entry->size))
 			break;
 		entry++;
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 0e4e6be0101d..ae65ec7b9bf1 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -125,17 +125,19 @@ static int live_forcewake_ops(void *arg)
 {
 	static const struct reg {
 		const char *name;
+		u8 min_graphics_ver;
+		u8 max_graphics_ver;
 		unsigned long platforms;
 		unsigned int offset;
 	} registers[] = {
 		{
 			"RING_START",
-			INTEL_GEN_MASK(6, 7),
+			6, 7,
 			0x38,
 		},
 		{
 			"RING_MI_MODE",
-			INTEL_GEN_MASK(8, BITS_PER_LONG),
+			8, U8_MAX,
 			0x9c,
 		}
 	};
@@ -170,7 +172,7 @@ static int live_forcewake_ops(void *arg)
 
 	/* We have to pick carefully to get the exact behaviour we need */
 	for (r = registers; r->name; r++)
-		if (r->platforms & INTEL_INFO(gt->i915)->gen_mask)
+		if (IS_GRAPHICS_RANGE(gt->i915, r->min_graphics_ver, r->max_graphics_ver))
 			break;
 	if (!r->name) {
 		pr_debug("Forcewaked register not known for %s; skipping\n",
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
