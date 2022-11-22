Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ECA6343B0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374C510E436;
	Tue, 22 Nov 2022 18:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD4610E436
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669141989; x=1700677989;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1HQF81kGVj35c1dMk04Zy4XAoek9PtwZQeWV6kgWFF0=;
 b=K8eiAk3GTi8Nqyy6BIdyTgRsLRyHdgoKtT6iEhF224A8K2r8eAIGwBpD
 tJ4M6lL/Osb/reyMSsscvihCPEXuTHxvko0vG9F2QBtHboEYOAvjQfd3s
 ghSwe227z3wLxZ/GWF1u/Q8Pc6jDVG7TcG/8GVPHxczzPBmIL94yJv+Oa
 7lS4ViuavWjtiQuTTpacsB8m9kIzENsDMyFGzK57KDzwrm84g4Cd6oV0l
 KnTY6MW8PlwhtzPCU6uYofNwOT3haAVpIMXDiGE00kYjARqJQljQS0yKW
 0cvcloeNK5+jWMzAg6MSe67iC+ZGWLIknD3zNgrlfcB8n2mKDnQ/tjCd9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="378144167"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="378144167"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:33:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="592236067"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="592236067"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.71])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:33:08 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 10:33:06 -0800
Message-Id: <20221122183306.140921-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122183306.140921-1-matthew.s.atwood@intel.com>
References: <20221122183306.140921-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/dg2: Introduce Wa_18019271663
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
index 74379d3c5a4de..7841525484724 100644
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
index ce2be9470c36c..e5f551f614538 100644
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

