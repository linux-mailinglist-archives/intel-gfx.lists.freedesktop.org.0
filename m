Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 607072AF318
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 15:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA4A6E037;
	Wed, 11 Nov 2020 14:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA846E037
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 14:08:32 +0000 (UTC)
IronPort-SDR: 9MjZsxvlC3zzY+i9PcnlXrPuUxoD80aL0WVJt+RrixFXQ9YeGARCAAiGDmuSrQ5jsvm8XVd1L+
 MX+EvxV0z8yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="157928666"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="157928666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 06:08:29 -0800
IronPort-SDR: NOsikWXlsXL/3nnKb826JOvJxWEYKCcQORAP81soGt+o7JvBs3rpdDXMkJya+RqKMxWMDvZ+Tl
 zHbXnR5JwSSw==
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; d="scan'208";a="308839410"
Received: from rdvivi-losangeles.jf.intel.com ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 06:08:28 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Nov 2020 09:09:36 -0500
Message-Id: <20201111140936.1215523-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <160508932315.29434.8937453271377416537@build.alporthouse.com>
References: <160508932315.29434.8937453271377416537@build.alporthouse.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Fix Media power gate sequence.
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

Some media power gates are disabled by default. commit 5d86923060fc
("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
tried to enable it, but it duplicated an existent register.
So, the main PG setup sequences ended up overwriting it.

So, let's now merge this to the main PG setup sequence.

v2: (Chris): s/REG_BIT/BIT, remove useless comment,
    	     remove useless =0, use the right gt,
	     remove rc6 sequence doubt from commit message.

Fixes: 5d86923060fc ("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: stable@vger.kernel.org#v5.5+
Cc: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 19 +++++++++++++++----
 drivers/gpu/drm/i915/i915_reg.h     | 12 +++++-------
 drivers/gpu/drm/i915/intel_pm.c     | 16 ----------------
 3 files changed, 20 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index ab675d35030d..c01fa86e0d07 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -56,9 +56,12 @@ static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 
 static void gen11_rc6_enable(struct intel_rc6 *rc6)
 {
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	u32 pg_enable;
+	int i;
 
 	/* 2b: Program RC6 thresholds.*/
 	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
@@ -102,10 +105,18 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 		GEN6_RC_CTL_RC6_ENABLE |
 		GEN6_RC_CTL_EI_MODE(1);
 
-	set(uncore, GEN9_PG_ENABLE,
-	    GEN9_RENDER_PG_ENABLE |
-	    GEN9_MEDIA_PG_ENABLE |
-	    GEN11_MEDIA_SAMPLER_PG_ENABLE);
+	pg_enable = GEN9_RENDER_PG_ENABLE |
+		GEN9_MEDIA_PG_ENABLE |
+		GEN11_MEDIA_SAMPLER_PG_ENABLE;
+
+	if (INTEL_GEN(i915) >= 12) {
+		for (i = 0; i < I915_MAX_VCS; i++)
+			if (HAS_ENGINE(rc6_to_gt(rc6), _VCS(i)))
+				pg_enable |= VDN_HCP_POWERGATE_ENABLE(i) |
+					VDN_MFX_POWERGATE_ENABLE(i);
+	}
+
+	set(uncore, GEN9_PG_ENABLE, pg_enable);
 }
 
 static void gen9_rc6_enable(struct intel_rc6 *rc6)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 39664ba553ec..b4c4a8216444 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8996,10 +8996,6 @@ enum {
 #define   GEN9_PWRGT_MEDIA_STATUS_MASK		(1 << 0)
 #define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
 
-#define POWERGATE_ENABLE			_MMIO(0xa210)
-#define    VDN_HCP_POWERGATE_ENABLE(n)		BIT(((n) * 2) + 3)
-#define    VDN_MFX_POWERGATE_ENABLE(n)		BIT(((n) * 2) + 4)
-
 #define  GTFIFODBG				_MMIO(0x120000)
 #define    GT_FIFO_SBDEDICATE_FREE_ENTRY_CHV	(0x1f << 20)
 #define    GT_FIFO_FREE_ENTRIES_CHV		(0x7f << 13)
@@ -9139,9 +9135,11 @@ enum {
 #define GEN9_MEDIA_PG_IDLE_HYSTERESIS		_MMIO(0xA0C4)
 #define GEN9_RENDER_PG_IDLE_HYSTERESIS		_MMIO(0xA0C8)
 #define GEN9_PG_ENABLE				_MMIO(0xA210)
-#define GEN9_RENDER_PG_ENABLE			REG_BIT(0)
-#define GEN9_MEDIA_PG_ENABLE			REG_BIT(1)
-#define GEN11_MEDIA_SAMPLER_PG_ENABLE		REG_BIT(2)
+#define   GEN9_RENDER_PG_ENABLE			BIT(0)
+#define   GEN9_MEDIA_PG_ENABLE			BIT(1)
+#define   GEN11_MEDIA_SAMPLER_PG_ENABLE		BIT(2)
+#define   VDN_HCP_POWERGATE_ENABLE(n)		BIT(((n) * 2) + 3)
+#define   VDN_MFX_POWERGATE_ENABLE(n)		BIT(((n) * 2) + 4)
 #define GEN8_PUSHBUS_CONTROL			_MMIO(0xA248)
 #define GEN8_PUSHBUS_ENABLE			_MMIO(0xA250)
 #define GEN8_PUSHBUS_SHIFT			_MMIO(0xA25C)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f54375b11964..bbec56f97832 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7111,22 +7111,8 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 			 0, CNL_DELAY_PMRSP);
 }
 
-static void gen12_init_clock_gating(struct drm_i915_private *i915)
-{
-	unsigned int i;
-
-	/* This is not a WA. Enable VD HCP & MFX_ENC powergate */
-	for (i = 0; i < I915_MAX_VCS; i++)
-		if (HAS_ENGINE(&i915->gt, _VCS(i)))
-			intel_uncore_rmw(&i915->uncore, POWERGATE_ENABLE, 0,
-					 VDN_HCP_POWERGATE_ENABLE(i) |
-					 VDN_MFX_POWERGATE_ENABLE(i));
-}
-
 static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	gen12_init_clock_gating(dev_priv);
-
 	/* Wa_1409120013:tgl */
 	I915_WRITE(ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
@@ -7143,8 +7129,6 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	gen12_init_clock_gating(dev_priv);
-
 	/* Wa_1409836686:dg1[a0] */
 	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0))
 		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
