Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AE94A9E2D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 18:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0203710EF1C;
	Fri,  4 Feb 2022 17:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC8C610EDB5;
 Fri,  4 Feb 2022 17:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643996713; x=1675532713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i7wq9bFuz8dYxaqVVGhaf9Fu22ine9zJRABRb5BzJjQ=;
 b=IhcILEHusguydmaLlBaqvPBeKujHxV157wtIcjM2NgzB8bOJHdq7M5P2
 jptEdCeZkFLedvlr9i1HdLV70yoJlJyKcuh3SfIdLWHgYU37hweLPj+9d
 UpwYKfZmOBZFSzvz1hARNUE3JmIPPZjDSGIVN4DiBYnembbRFeca7XF6s
 iXxwFywwTV4pMPZtaUopgp6T3tFvAr7qOyEoNtxAi7DK7/DVjfeHQNIBl
 N8qjPgigDQKoLBogqUZnwEu4h0H0zCgjQsgsugB+Oe3V63DjRbibNf1zi
 3N7YA8cM/uaVFDp4kAjrEhdKEf6GhAiUChqsJe0dMl7+gI8Dd9u42pkjd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="229061091"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="229061091"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="539240829"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  4 Feb 2022 09:44:32 -0800
Message-Id: <20220204174436.830121-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220204174436.830121-1-lucas.demarchi@intel.com>
References: <20220204174436.830121-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/i915/guc: Prepare for error
 propagation
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently guc_mmio_reg_add() relies on having enough memory available in
the array to add a new slot. It uses
`GEM_BUG_ON(count >= regset->size);` to protect going above the
threshold.

In order to allow guc_mmio_reg_add() to handle the memory allocation by
itself, it must return an error in case of failures.  Adjust return code
so this error can be propagated to the callers of guc_mmio_reg_add() and
guc_mmio_regset_init().

No intended change in behavior.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 31 +++++++++++++---------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 245b703568ff..3a4558948c31 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -244,8 +244,8 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
 	return (int)ra->offset - (int)rb->offset;
 }
 
-static void guc_mmio_reg_add(struct temp_regset *regset,
-			     u32 offset, u32 flags)
+static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
+					  u32 offset, u32 flags)
 {
 	u32 count = regset->used;
 	struct guc_mmio_reg reg = {
@@ -264,7 +264,7 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
 	 */
 	if (bsearch(&reg, regset->registers, count,
 		    sizeof(reg), guc_mmio_reg_cmp))
-		return;
+		return 0;
 
 	slot = &regset->registers[count];
 	regset->used++;
@@ -277,6 +277,8 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
 
 		swap(slot[1], slot[0]);
 	}
+
+	return 0;
 }
 
 #define GUC_MMIO_REG_ADD(regset, reg, masked) \
@@ -284,32 +286,35 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
 			 i915_mmio_reg_offset((reg)), \
 			 (masked) ? GUC_REGSET_MASKED : 0)
 
-static void guc_mmio_regset_init(struct temp_regset *regset,
-				 struct intel_engine_cs *engine)
+static int guc_mmio_regset_init(struct temp_regset *regset,
+				struct intel_engine_cs *engine)
 {
 	const u32 base = engine->mmio_base;
 	struct i915_wa_list *wal = &engine->wa_list;
 	struct i915_wa *wa;
 	unsigned int i;
+	int ret = 0;
 
 	regset->used = 0;
 
-	GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
-	GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
-	GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
+	ret |= GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
+	ret |= GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
+	ret |= GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
+		ret |= GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
 
 	/* Be extra paranoid and include all whitelist registers. */
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
-		GUC_MMIO_REG_ADD(regset,
-				 RING_FORCE_TO_NONPRIV(base, i),
-				 false);
+		ret |= GUC_MMIO_REG_ADD(regset,
+					RING_FORCE_TO_NONPRIV(base, i),
+					false);
 
 	/* add in local MOCS registers */
 	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
-		GUC_MMIO_REG_ADD(regset, GEN9_LNCFCMOCS(i), false);
+		ret |= GUC_MMIO_REG_ADD(regset, GEN9_LNCFCMOCS(i), false);
+
+	return ret ? -1 : 0;
 }
 
 static int guc_mmio_reg_state_query(struct intel_guc *guc)
-- 
2.35.1

