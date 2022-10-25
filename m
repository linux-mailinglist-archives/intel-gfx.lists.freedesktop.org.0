Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE3760D2ED
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 20:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC2A88284;
	Tue, 25 Oct 2022 18:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA8610E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 18:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666721020; x=1698257020;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6yGUdxIxny2p0Mni/3FG8D/N/MTMd7EpeETRu9S/IGU=;
 b=GNTwQVaHOuWjIHzlg9w12w97707ELeO+1VWy+qziQwrvcA1ULhQ8oDtn
 5zlTO2Z/LnNu7EgXHWNMvcNcNOYY5p7AW1SeZFPWkr9TJWMCqWNClfquA
 zq8TE1BB34oeNY2ioHaboupEadgZJTsODFn+C/bj7u2B/Ki6c3P/dctCF
 eMTt95z6s9f7ZxTRALn0bU12Xz42Ax0JgCeCEJRUS4L3an43SBKHfcSJN
 1UarlDSWVlstfCL2TRRuo0qzztUFMT7mjx94mVhIyrrRDzQJjdvppgTIS
 msLRKkaJqdRwh2w469eFBsrC+VP8VpDMbAtntQKI+G4ET0jzgBku04dFq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394065055"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="394065055"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:03:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="720957944"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="720957944"
Received: from kdmorgan-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.212.35.13])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:03:38 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 11:03:35 -0700
Message-Id: <20221025180335.1723742-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
References: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Introduce Wa_18019271663
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

Bspec:45809

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e8372d4cd548..46035503068c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -421,9 +421,10 @@
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
index ced3a26cf7e7..9f39b7758ff3 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -750,6 +750,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_15010599737:dg2 */
 	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
+
+	/* Wa_18019271663:dg2 */
+	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.37.3

