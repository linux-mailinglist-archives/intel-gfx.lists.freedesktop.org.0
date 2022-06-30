Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5A15623FC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 22:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9704E10F70E;
	Thu, 30 Jun 2022 20:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E7510F31E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 20:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656620095; x=1688156095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hscz6kerkh7IWgTNfOsOKbVUAs0a9X7XoIl4MHg0p6E=;
 b=aPbCmvSSb7Bn6mjLqa88CHtdzhBPBd3cSyGM8nq/tdbVQFi8WPaBQ5vl
 GTVyyWm3qnQ6d8jRgzcSFVDgqfE01jWlxqrYLodEnWZI6Uc4PutqmAkIu
 NaWW0gVAqFFRAV0BCGvMBLnB6a64xF8KbvVRjfmdAr0niwD3AQZy870uX
 jNbT8qWdWjZkwo9Z1Kh5+mdQUxY/PwDtDYOB0oJPUA4ZNc2t9VIA91xGS
 +IB5q3xjJbes0gftLT4wtKI64Oyu+mjl/FYS4lBnHtPmCqACpUy4yTFaB
 cli6OQBZfC4/i7TLFwxidrhwJdKtpHnTQO6dYLIwcVRWdkMH302KymiuQ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="280001971"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="280001971"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 13:14:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="648042456"
Received: from emartin-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.6.53])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 13:14:53 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 17:14:07 -0300
Message-Id: <20220630201407.16770-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pvc: Implement w/a 16016694945
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new PVC-specific workaround has just been added to the BSpec.

BSpec: 64027

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 37c1095d8603b..e6bb24dc7b998 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -918,6 +918,10 @@
 #define GEN7_L3CNTLREG1				_MMIO(0xb01c)
 #define   GEN7_WA_FOR_GEN7_L3_CONTROL		0x3C47FF8C
 #define   GEN7_L3AGDIS				(1 << 19)
+
+#define XEHPC_LNCFMISCCFGREG0			_MMIO(0xb01c)
+#define   XEHPC_OVRLSCCC			REG_BIT(0)
+
 #define GEN7_L3CNTLREG2				_MMIO(0xb020)
 
 /* MOCS (Memory Object Control State) registers */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3213c593a55f4..dcc1ee392c0d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2687,6 +2687,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * performance guide section.
 		 */
 		wa_write(wal, XEHPC_L3SCRUB, SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
+
+		/* Wa_16016694945 */
+		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
 	}
 
 	if (IS_XEHPSDV(i915)) {
-- 
2.36.1

