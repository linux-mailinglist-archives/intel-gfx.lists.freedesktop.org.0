Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB2B636911
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 19:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5A710E5F5;
	Wed, 23 Nov 2022 18:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F2F10E5FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669228612; x=1700764612;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qN4Uy1hqdaVuR4VkfEMp2i7iu6AKqt0BEG/OC24g2A4=;
 b=X5vewGXuJZC4bLyoOTNn5lYQdhGIXmFuRnJKOxxtbTpM7XBPJ/efZ9kt
 4YGUEhfdUgT0l7hzonkcXAp6gFJRzl3sRJ4AybWrbFjst8YsB6W2R4kso
 v4aBUHuV5CnZ7xJSebnHafS9IIjZXV+j8QS9wqnHUbGjLiQUUnbjZSXeU
 j6Gjx11RPX4BXGxgojrxNoISUFr3AoI1zLk3//iJJQYtIAG+/vDetuuRe
 RBHiZrlg68Qi7/8W6fAi9p0n0b43apTy7oco5FqQrVKaNBJEV+Vi7ViU7
 nQMfSuIYcjKKAuAFfbvTCcY1yyiUBoZgH71kZI4EoOWqTKo4uCemZjzSQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400428237"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400428237"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 10:36:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636008375"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636008375"
Received: from cjuang-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.213.167.33])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 10:36:51 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 10:36:48 -0800
Message-Id: <20221123183648.407058-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123183648.407058-1-matthew.s.atwood@intel.com>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/dg2: Introduce Wa_18019271663
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

Wa_18019271663 applies to all DG2 steppings and skus.

Bspec: 66622

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 74379d3c5a4d..784152548472 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -429,9 +429,10 @@
 #define   RC_OP_FLUSH_ENABLE			(1 << 0)
 #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
 #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
-#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
-#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
-#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
+#define   MSAA_OPTIMIZATION_REDUC_DISABLE	REG_BIT(11)
+#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	REG_BIT(6)
+#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	REG_BIT(6)
+#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	REG_BIT(1)
 
 #define GEN7_GT_MODE				_MMIO(0x7008)
 #define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 870db5a202dd..1b0e40e68a9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -781,6 +781,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
+
+	/* Wa_18019271663:dg2 */
+	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.38.1

