Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F264AD1D7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 08:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBC510E6EE;
	Tue,  8 Feb 2022 07:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680CA10E6EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 07:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644303651; x=1675839651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/6gve78ko1QgzVInPO7hg/s5zM8U9lZcRQ/XnyyauBc=;
 b=E92G4UUQDcE5+ep4FDd3wqkkQFRBwAm+R8HKOv7cyLZTiH5lNRsvc3sN
 HUpK5fNUDz61FJ3tANw4ZH/7CuH0lUc72/zGxcj5OMRGCGZYNY2dP2XwG
 waRlO4wIhPPEHtN9kYQAsz10roSUWXeIYdBkuQK7vRTxa5YdnV7ql/s15
 5+OFS1B/TeCo2J35Of0zf9R1YRlv3DeTI8uf1hM+Ic5Ah7jxfitmLXz1I
 3HHCqqknbpq/VAkrYGjOPlHuH0WWR2pDdqw+RpthxJiGK5bCaR7ygAw/B
 G7NjH5NSnTYkXtqDq66JKQpqqifGs39CnS9kJ8R5iZhl4wUISOIzL9ZVW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="229536069"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="229536069"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 23:00:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="628793963"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 23:00:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Feb 2022 23:01:40 -0800
Message-Id: <20220208070141.2095177-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220208070141.2095177-1-lucas.demarchi@intel.com>
References: <20220208070141.2095177-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Prepare for error propagation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 31 +++++++++++++---------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index e61150adcbe9..5290253b9132 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -226,8 +226,8 @@ static int guc_mmio_reg_cmp(const void *a, const void *b)
 	return (int)ra->offset - (int)rb->offset;
 }
 
-static void guc_mmio_reg_add(struct temp_regset *regset,
-			     u32 offset, u32 flags)
+static long __must_check guc_mmio_reg_add(struct temp_regset *regset,
+					  u32 offset, u32 flags)
 {
 	u32 count = regset->used;
 	struct guc_mmio_reg reg = {
@@ -246,7 +246,7 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
 	 */
 	if (bsearch(&reg, regset->registers, count,
 		    sizeof(reg), guc_mmio_reg_cmp))
-		return;
+		return 0;
 
 	slot = &regset->registers[count];
 	regset->used++;
@@ -259,6 +259,8 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
 
 		swap(slot[1], slot[0]);
 	}
+
+	return 0;
 }
 
 #define GUC_MMIO_REG_ADD(regset, reg, masked) \
@@ -266,32 +268,35 @@ static void guc_mmio_reg_add(struct temp_regset *regset,
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

