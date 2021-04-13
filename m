Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8685B35D6EA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 07:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206756E314;
	Tue, 13 Apr 2021 05:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089626E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 05:10:48 +0000 (UTC)
IronPort-SDR: IFhcj4Gn8OKD5CRULGDxTPohwWrLpaK8nrVvKO/zA2a+kxPbpu5l7+/rkZA6R1ospor0BOjGlw
 11n0l6uemZ+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194371988"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="194371988"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:46 -0700
IronPort-SDR: YH1ro37fJuBNTGUqgenG+pBnU0olBaX/XBkrBndwNkd3c+V2As98HlvTqNYPROmTGmYkwvKoDm
 cNFKu5ym3deg==
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="460450760"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 22:09:57 -0700
Message-Id: <20210413051002.92589-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/12] drm/i915/selftests: eliminate use of
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
index 661b50191f2b..ed5abe7be498 100644
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
+		if (IS_GRAPHICS_VER(i915, entry->min_graphics_ver, entry->max_graphics_ver) &&
 		    entry_offset == (reg->offset & -entry->size))
 			break;
 		entry++;
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 0e4e6be0101d..f76c9bcec735 100644
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
+		if (IS_GRAPHICS_VER(gt->i915, r->min_graphics_ver, r->max_graphics_ver))
 			break;
 	if (!r->name) {
 		pr_debug("Forcewaked register not known for %s; skipping\n",
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
