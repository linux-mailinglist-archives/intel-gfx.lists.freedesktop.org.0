Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4FC62E85C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 23:25:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781F010E1C0;
	Thu, 17 Nov 2022 22:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152FF10E6A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 22:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668723892; x=1700259892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B2v3OVhFgy99CPvt2CgwvCIjytudt065GKrNdphxoig=;
 b=OX8VmrEscQTsPWtnsnlnw7arwwLY//Zqbsud87qGMmNfXjlQn1Ohkoc7
 ePA0XBtaqjAJoPjWsq9GOcoR2CwFvdKq0ex6sb+wYZVsfMmSp+tT6357e
 AVmERVJh/puLoMuL+CXvIRi1nR3twee17NDfsnReY/vBuasMNbtf0rklN
 4AYffzagU+zR//IGG7743f03MQagouuq5MSlMmNbs9ZGYoMvhfVvHTDIU
 gCrJb4YT/iH6YpdMMuHcLjf9jIk6hgL/6A6gr+7wdgsaADxRM0Tnn0cXz
 JN9XudHXL/rENjgrhxGDETi3rnxNiAqqhZQkwfg2k2EdjNFeykI2XvqPH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="377257333"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="377257333"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 14:24:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="639979412"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="639979412"
Received: from pasafier-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.212.77.208])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 14:24:51 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 14:24:47 -0800
Message-Id: <20221117222447.193245-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117222447.193245-1-matthew.s.atwood@intel.com>
References: <20221117222447.193245-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dg2: Introduce Wa_18019271663
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
index 1711dbf9dd462..62a17baacf03e 100644
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
index 483fd2a83ca19..452e423233207 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -781,6 +781,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
+
+	/*Wa_18019271663:dg2 */
+	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.38.1

