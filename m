Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A331D3ECDCF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 06:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48BC89BD4;
	Mon, 16 Aug 2021 04:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CAD789BD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 04:55:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215824002"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215824002"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 21:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="422739353"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2021 21:55:45 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Apoorva Singh <apoorva1.singh@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Mon, 16 Aug 2021 10:22:27 +0530
Message-Id: <20210816045229.423234-4-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2 3/5] drm/i915/gt: Set BLIT_CCTL reg to
 un-cached
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

From: Apoorva Singh <apoorva1.singh@intel.com>

Blitter commands which does not have MOCS fields rely on
cacheability of BlitterCacheControlRegister which was mapped
to index 0 by default.Once we changed the MOCS value of
index 0 to L3 WB, tests like gem_linear_blits started failing
due to change in cacheability from UC to WB.

Program and place the BlitterCacheControlRegister in
build_aux_regs().

Signed-off-by: Apoorva Singh <apoorva1.singh@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_reg.h      |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 92141cf6f9a79..df3c5d550c46a 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -372,6 +372,17 @@ add_aux_reg(struct drm_i915_aux_table *aux,
 	return x;
 }
 
+static struct drm_i915_aux_table *
+add_blit_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
+{
+	return add_aux_reg(aux,
+			   "BLIT_CCTL",
+			   BLIT_CCTL(0),
+			   BLIT_CCTL_MOCS(idx, idx),
+			   BLIT_CCTL_DST_MOCS_MASK | BLIT_CCTL_SRC_MOCS_MASK,
+			   true);
+}
+
 static struct drm_i915_aux_table *
 add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
 {
@@ -398,6 +409,8 @@ build_aux_regs(const struct intel_engine_cs *engine,
 		 * uncached index.
 		 */
 		aux = add_cmd_cctl_override(aux, mocs->uc_index);
+		if (engine->class == COPY_ENGINE_CLASS && mocs->uc_index)
+			aux = add_blit_cctl_override(aux, mocs->uc_index);
 	}
 
 	return aux;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c8e2ca1b20796..de3cc9d66ffaa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2567,6 +2567,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 		      REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
 		      REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
 
+#define BLIT_CCTL(base)	_MMIO((base) + 0x204)
+#define   BLIT_CCTL_DST_MOCS_MASK	REG_GENMASK(14, 8)
+#define   BLIT_CCTL_SRC_MOCS_MASK	REG_GENMASK(6, 0)
+#define   BLIT_CCTL_DST_MOCS_SHIFT	8
+#define   BLIT_CCTL_MOCS(dst, src)							\
+	((((dst) << 1) << BLIT_CCTL_DST_MOCS_SHIFT) | ((src) << 1))
+
 #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
 #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
-- 
2.26.2

