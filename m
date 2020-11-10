Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 770D22AD640
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 13:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91A089A56;
	Tue, 10 Nov 2020 12:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A935189A56
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 12:31:21 +0000 (UTC)
IronPort-SDR: 38ahbutL2BfopYnIlm9saJAtGvbH2U1Ugyb7cVxQDg1iJcrLMdW2TX/2zz/d2QMTW79lWZSkBm
 iUWgiOpQ+DUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="157743964"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="157743964"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 04:31:20 -0800
IronPort-SDR: VsAiIdxwE4TJRW59bkIsvrPfpbYBP7rl47pi0I5mKw8R5ToiJ5l3Dv2l3hNPWrMYJ+ivFVZIeD
 odaUdXXUJX4Q==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541306670"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 04:31:16 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Nov 2020 17:47:00 +0530
Message-Id: <20201110121700.4338-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Tweaked Wa_14010685332 for PCHs
 used on gen11 platforms
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

From: Bob Paauwe <bob.j.paauwe@intel.com>

The WA specifies that we need to toggle a SDE chicken bit on and then
off as the final step in preparation for s0ix entry.

    Bspec: 33450
    Bspec: 8402

However, something is happening after we toggle the bit that causes
the WA to be invalidated. This makes dispcnlunit1_cp_xosc_clkreq
active being already in s0ix state i.e SLP_S0 counter incremented.
Tweaking the Wa_14010685332 by setting the bit on suspend and clearing
it on resume turns down the dispcnlunit1_cp_xosc_clkreq.
B.Spec has Documented this tweaked sequence of WA as an alternative.
Let keep this tweaked WA for Gen11 platforms and keep untweaked WA for
other platforms which never observed this issue.

v2 (MattR):
 - Change the comment on the workaround to give PCH names rather than
   platform names.  Although the bspec is setup to list workarounds by
   platform, the hardware team has confirmed that the actual issue being
   worked around here is something that was introduced back in the
   Cannon Lake PCH and carried forward to subsequent PCH's.
 - Extend the untweaked version of the workaround to include  PCH_CNP as
   well.  Note that since PCH_CNP is used to represent CMP, this will
   apply on CML and some variants of RKL too.
 - Cap the untweaked version of the workaround so that it won't apply to
   "fake" PCH's (i.e., DG1).  The issue we're working around really is
   an issue in the PCH itself, not the South Display, so it shouldn't
   apply when there isn't a real PCH.

v3:
 - use intel_de_rmw(). [Rodrigo]

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Bob Paauwe <bob.j.paauwe@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 13 +++++++++++--
 drivers/gpu/drm/i915/i915_irq.c                    |  6 ++++--
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 689922480661..c1f6102a8859 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5858,10 +5858,15 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 void intel_display_power_suspend_late(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915))
+	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
 		bxt_enable_dc9(i915);
-	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+		/* Tweaked Wa_14010685332:icp,jsp,mcc */
+		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
+			intel_de_rmw(i915, SOUTH_CHICKEN1,
+				     SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
+	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_enable_pc8(i915);
+	}
 }
 
 void intel_display_power_resume_early(struct drm_i915_private *i915)
@@ -5869,6 +5874,10 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
 		gen9_sanitize_dc_state(i915);
 		bxt_disable_dc9(i915);
+		/* Tweaked Wa_14010685332:icp,jsp,mcc */
+		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
+			intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
 	}
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e0eb32bd9607..d7f81e1f62df 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3058,8 +3058,10 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
 
-	/* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
+	/* Wa_14010685332:cnp/cmp,tgp,adp */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
+	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
+	     INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
 				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
