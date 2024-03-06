Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4FE8739AB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B7F113249;
	Wed,  6 Mar 2024 14:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvuz2lkP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EDEE113249
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709736438; x=1741272438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nKE5mUdVc8Rhl8Ku6LrgfVZryVnZAZqW7dDXFhnEXNY=;
 b=hvuz2lkPxtlHd4yLY29YEW9PumTNlHAPMq2jpYyh3EsNMZMkpGd3dGKB
 1m2GnO1Tm/S0U16WlLjGrMe2Z5XqKQAm6T4IQRJiingNgq6WUsQ5uOUp4
 CJbp4xfJ9nWJ5ErGiNWL/49kvw9pGoj0TKyqerW7NQTF7ScbUoz7PKOQP
 vUQlVkhm7YfgVsPdfPuVKwWlCYHtk1q3hLU8Dw1Iw/k+4q0Ke8ceXBM7l
 GWGx2P88o76fWOZrI+YL75VnxlVdlOxUcNjjfcb02EFd/s8HWcIVQ1zCA
 MSAvN3nyWyurWVPkxITF2rft8R2KgNwVi3OXroxZzMb4n8uHkKzKlRKoC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="29796558"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="29796558"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:47:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="10332106"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:47:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mateusz Jablonski <mateusz.jablonski@intel.com>,
 Michal Mrozek <michal.mrozek@intel.com>
Subject: [PATCH] drm/i915: Drop WA 16015675438
Date: Wed,  6 Mar 2024 06:43:39 -0800
Message-ID: <20240306144723.1826977-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
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

With dynamic load-balancing disabled on the compute side, there's no
reason left to enable WA 16015675438. Drop it from both PVC and DG2.
Note that this can be done because now the driver always set a fixed
partition of EUs during initialization via the ccs_mode configuration.

The flag to GuC is still needed because of 18020744125, so update
the comment accordingly.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Mateusz Jablonski <mateusz.jablonski@intel.com>
Acked-by: Michal Mrozek <michal.mrozek@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---

This is the i915 counter part. The xe version of this patch
(https://lore.kernel.org/intel-xe/20240304233103.1687412-1-lucas.demarchi@intel.com/)
was already merged in drm-xe-next. I'm keeping the acked-by as it also
applies the same logic in i915.

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +-----
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d67d44611c28..7f812409c30a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2928,14 +2928,10 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
-	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915)) {
+	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915))
 		/* Wa_14015227452:dg2,pvc */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
 
-		/* Wa_16015675438:dg2,pvc */
-		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
-	}
-
 	if (IS_DG2(i915)) {
 		/*
 		 * Wa_16011620976:dg2_g11
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index d2b7425bbdcc..c6603793af89 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -315,7 +315,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (IS_DG2_G11(gt->i915))
 		flags |= GUC_WA_CONTEXT_ISOLATION;
 
-	/* Wa_16015675438 */
+	/* Wa_18020744125 */
 	if (!RCS_MASK(gt))
 		flags |= GUC_WA_RCS_REGS_IN_CCS_REGS_LIST;
 
-- 
2.43.0

