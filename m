Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EBA95CD37
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 15:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9651210E6B7;
	Fri, 23 Aug 2024 13:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dBnyJ6m2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D5110E6AE;
 Fri, 23 Aug 2024 13:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724418569; x=1755954569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SLL7iGK002dHV93S+9oR22+Ok3ozAZn/+5plhjwrlfU=;
 b=dBnyJ6m2dLZuSgcPd2zmWX0wXla19wb89nhgn0Jh6Q326pVDpWc7A+85
 ko+Kg9VG1Jk+JiIxO1Bw7FXaiW5m0ai1qK3dL800uO6scxAqH13/dVI5e
 q3oAjXMwzPJv3DynSk/0++aAGqK0PeFf3NP1BHVcGzy91ZvZgytGejwHB
 PWwzXuFEm4PGCH3SGAbUtgoWCQz+AJYSaeJ0XJcQzxvDrgv4y2395GskG
 9SnwEnn1HNxsfJyU/pFRcwzeu3TWQAtgzk7LgLZG1iALgV/+JSODN9h2b
 WadIil38d88YuN+5x7JXNGqJsuWBVpI1Fs4KelxOec8Z6P/yCU8jnF64o g==;
X-CSE-ConnectionGUID: upezrAs7Qhi5JAgxk87k9Q==
X-CSE-MsgGUID: h1QNr7P2TuWFz1vTx+e3YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22406890"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="22406890"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 06:09:28 -0700
X-CSE-ConnectionGUID: 1VbDkcnTRsiO40b8pnIeLg==
X-CSE-MsgGUID: 8SXAmgB2RXiUw5RNDOFyBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="66714895"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.236])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 06:09:25 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v3 03/15] drm/i915/gt: Allow the creation of multi-mode CCS
 masks
Date: Fri, 23 Aug 2024 15:08:43 +0200
Message-ID: <20240823130855.72436-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240823130855.72436-1-andi.shyti@linux.intel.com>
References: <20240823130855.72436-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Until now, we have only set CCS mode balancing to 1, which means
that only one compute engine is exposed to the user. The stream
of compute commands submitted to that engine is then shared among
all the dedicated execution units.

This is done by calling the 'intel_gt_apply_ccs_mode(); function.

With this change, the aforementioned function takes an additional
parameter called 'mode' that specifies the desired mode to be set
for the CCS engines balancing. The mode parameter can have the
following values:

 - mode = 0: CCS load balancing mode 1 (1 CCS engine exposed)
 - mode = 1: CCS load balancing mode 2 (2 CCS engines exposed)
 - mode = 3: CCS load balancing mode 4 (4 CCS engines exposed)

This allows us to generate the appropriate register value to be
written to CCS_MODE, configuring how the exposed engine streams
will be submitted to the execution units.

No functional changes are intended yet, as no mode higher than
'0' is currently being set.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 85 +++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h |  2 +-
 2 files changed, 72 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index fcd07eb4728b..a6c33b471567 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -4,35 +4,92 @@
  */
 
 #include "i915_drv.h"
-#include "intel_gt.h"
 #include "intel_gt_ccs_mode.h"
 #include "intel_gt_regs.h"
 
 static void intel_gt_apply_ccs_mode(struct intel_gt *gt)
 {
+	unsigned long cslices_mask = gt->ccs.cslices;
+	u32 mode_val = 0;
+	/* CCS engine id, i.e. the engines position in the engine's bitmask */
+	int engine;
 	int cslice;
-	u32 mode = 0;
-	int first_ccs = __ffs(CCS_MASK(gt));
 
-	/* Build the value for the fixed CCS load balancing */
+	/*
+	 * The mode has two bit dedicated for each engine
+	 * that will be used for the CCS balancing algorithm:
+	 *
+	 *    BIT | CCS slice
+	 *   ------------------
+	 *     0  | CCS slice
+	 *     1  |     0
+	 *   ------------------
+	 *     2  | CCS slice
+	 *     3  |     1
+	 *   ------------------
+	 *     4  | CCS slice
+	 *     5  |     2
+	 *   ------------------
+	 *     6  | CCS slice
+	 *     7  |     3
+	 *   ------------------
+	 *
+	 * When a CCS slice is not available, then we will write 0x7,
+	 * oterwise we will write the user engine id which load will
+	 * be forwarded to that slice.
+	 *
+	 * The possible configurations are:
+	 *
+	 * 1 engine (ccs0):
+	 *   slice 0, 1, 2, 3: ccs0
+	 *
+	 * 2 engines (ccs0, ccs1):
+	 *   slice 0, 2: ccs0
+	 *   slice 1, 3: ccs1
+	 *
+	 * 4 engines (ccs0, ccs1, ccs2, ccs3):
+	 *   slice 0: ccs0
+	 *   slice 1: ccs1
+	 *   slice 2: ccs2
+	 *   slice 3: ccs3
+	 */
+	engine = __ffs(cslices_mask);
+
 	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
-		if (gt->ccs.cslices & BIT(cslice))
+		if (!(cslices_mask & BIT(cslice))) {
 			/*
-			 * If available, assign the cslice
-			 * to the first available engine...
+			 * If not available, mark the slice as unavailable
+			 * and no task will be dispatched here.
 			 */
-			mode |= XEHP_CCS_MODE_CSLICE(cslice, first_ccs);
+			mode_val |= XEHP_CCS_MODE_CSLICE(cslice,
+						     XEHP_CCS_MODE_CSLICE_MASK);
+			continue;
+		}
 
-		else
+		mode_val |= XEHP_CCS_MODE_CSLICE(cslice, engine);
+
+		engine = find_next_bit(&cslices_mask, I915_MAX_CCS, engine + 1);
+		/*
+		 * If "engine" has reached the I915_MAX_CCS value it means that
+		 * we have gone through all the unfused engines and now we need
+		 * to reset its value to the first engine.
+		 *
+		 * From the find_next_bit() description:
+		 *
+		 * "Returns the bit number for the next set bit
+		 * If no bits are set, returns @size."
+		 */
+		if (engine == I915_MAX_CCS) {
 			/*
-			 * ... otherwise, mark the cslice as
-			 * unavailable if no CCS dispatches here
+			 * CCS mode, will be used later to
+			 * reset to a flexible value
 			 */
-			mode |= XEHP_CCS_MODE_CSLICE(cslice,
-						     XEHP_CCS_MODE_CSLICE_MASK);
+			engine = __ffs(cslices_mask);
+			continue;
+		}
 	}
 
-	gt->ccs.mode_reg_val = mode;
+	gt->ccs.mode_reg_val = mode_val;
 }
 
 void intel_gt_ccs_mode_init(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
index 0f2506586a41..4a6763b95a78 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_GT_CCS_MODE_H__
 #define __INTEL_GT_CCS_MODE_H__
 
-struct intel_gt;
+#include "intel_gt.h"
 
 void intel_gt_ccs_mode_init(struct intel_gt *gt);
 
-- 
2.45.2

