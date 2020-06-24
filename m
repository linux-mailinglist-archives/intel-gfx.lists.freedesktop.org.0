Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD08A207EFE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 23:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CA06E083;
	Wed, 24 Jun 2020 21:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD426E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 21:57:25 +0000 (UTC)
IronPort-SDR: PcExz4TKs/H8o7qsHHJ/umFJI9vW+rl5Kh18jpOp2krvHMdJs2B8DdiUrtFBtpCDr+rW9oarif
 sz2eKaE41GCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="142133036"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="142133036"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 14:57:24 -0700
IronPort-SDR: pvqe2NUh1Rxb4Upa++q+epEEYVDTDfBOqHFTLSqay2mYbb9qcH+1nQudzDBHPg8vs0jMslL1Jg
 5Do5UvXXttQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="279614101"
Received: from vashok-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.252.132.244])
 by orsmga006.jf.intel.com with ESMTP; 24 Jun 2020 14:57:24 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 14:57:23 -0700
Message-Id: <20200624215723.2316-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: implement Wa_14011508470;gen12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update code to reflect recent bspec changes

Bspec: 52890
Bspec: 53508

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index c3eeebadc0b8..22395be35364 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -6007,6 +6007,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 {
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
 	struct i915_power_well *well;
+	u32 val;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 
@@ -6043,6 +6044,13 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 
 	if (resume && dev_priv->csr.dmc_payload)
 		intel_csr_load_program(dev_priv);
+
+	/* Wa_14011508470 */
+	if (IS_GEN(dev_priv, 12)) {
+		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
+		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
+		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
+	}
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 450564e28332..5344d20c9070 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8105,6 +8105,12 @@ enum hardware_error {
 #define   MASK_WAKEMEM			(1 << 13)
 #define   CNL_DDI_CLOCK_REG_ACCESS_ON	(1 << 7)
 
+#define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
+#define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
+#define   DCPR_MASK_LPMODE			REG_BIT(26)
+#define   DCPR_SEND_RESP_IMM			REG_BIT(25)
+#define   DCPR_CLEAR_MEMSTAT_DIS		REG_BIT(24)
+
 #define SKL_DFSM			_MMIO(0x51000)
 #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
 #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
-- 
2.21.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
