Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A502979A7B4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 13:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168DA10E2D1;
	Mon, 11 Sep 2023 11:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C3410E2D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 11:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694432980; x=1725968980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LXLyjK5JDydDiKRZIjqyn+mvDljOFtdIPXs+3+CJGkE=;
 b=eR9lcEHEsDF+HCnSu9oeDIGPCZ8kMmk7BgTe1bnAyrU1pEd3WZ+I4rzM
 rtj6TnV0U0vUk/ZAVx9bML9M3XOHxcK/CyZLsRDI60fh1dKCPhOu4QPKo
 2FWW9PSfFrxwkxZPK0llb4rprBqQnPehRIPWgU3XY38TOujShli0/jAHf
 J6TGozGNwIpmxSIwJtPzuFIgiO1xIVjl0rrs9QthofgMP2hQBtATJKMZh
 EoJn75o+AgVOZpb0hDS7hl3IdStxLcBmEPl5P0Z5aWEx8NNGjmHvruphR
 1X8xtBDCiZoQZ04bGGnrWakI4+EPO/2dzx84M6Ax65uF40CkzloTnqy/l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444475800"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444475800"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 04:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="886493797"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="886493797"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2023 04:49:14 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 17:19:33 +0530
Message-Id: <20230911114933.149353-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915: Added Wa_18022495364
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround has two different implementations,
one for gen 12 to DG2 and another for DG2 and later.
In this patch only GEN12 changes are implemented.
BSpec: 11354

v2:
- Removed extra parentheses from the condition (Lucas)
- Fixed spacing and new line (Lucas)

v3:
- Fixed commit message.

v4:
- Only GEN12 changes are kept(Matt Ropper)
- Renamed the register bit in define

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..38f02ef8ed01 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -164,6 +164,8 @@
 #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
 #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
 #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
+#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
 
 #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
 #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..30aca8d03f6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
+	/* Wa_18022495364 */
+	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
+		     INSTRUCTION_STATE_CACHE_INVALIDATE);
+
 	/*
 	 * Wa_16011163337 - GS_TIMER
 	 *
-- 
2.34.1
