Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08E241DB7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 18:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0B089A1F;
	Tue, 11 Aug 2020 16:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC1F897C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 16:00:41 +0000 (UTC)
IronPort-SDR: 8gG73K7+f6jNraMBJpI/J+mFsUAOqR1DxS3rI0yeHqKHBsedKkHX3qy2yyAPatZKcKMtFWhIS4
 hCW1ov3YSNdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="151427844"
X-IronPort-AV: E=Sophos;i="5.76,300,1592895600"; d="scan'208";a="151427844"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:00:40 -0700
IronPort-SDR: tExfcHUygiCjURJCIXDqpGQZJGRpyeryhBLF+FF4po0fj6loTuO26KvRz3aMoxZbQ7hI/j+z0s
 TQ0ZrLa/zJXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,300,1592895600"; d="scan'208";a="308441547"
Received: from orsmsx604-2.jf.intel.com (HELO ORSMSX604.amr.corp.intel.com)
 ([10.22.229.84])
 by orsmga002.jf.intel.com with ESMTP; 11 Aug 2020 09:00:39 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Aug 2020 09:00:39 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Aug 2020 09:00:39 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.57]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.201]) with mapi id 14.03.0439.000;
 Tue, 11 Aug 2020 09:00:38 -0700
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/kbl: Fix revision ID checks
Thread-Index: AQHWb459BYcsOjvi4UOlw2pTQGB/r6kzEfFQ
Date: Tue, 11 Aug 2020 16:00:38 +0000
Message-ID: <09614FAEEEACB8419B519675A649C8BF89B0A52E@ORSMSX115.amr.corp.intel.com>
References: <20200808184511.2594286-1-matthew.d.roper@intel.com>
 <20200811032105.2819370-1-matthew.d.roper@intel.com>
In-Reply-To: <20200811032105.2819370-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/kbl: Fix revision ID checks
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

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt Roper
Sent: Monday, August 10, 2020 8:21 PM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH v2] drm/i915/kbl: Fix revision ID checks

We usually assume that increasing PCI device revision ID's translates to newer steppings; macros like IS_KBL_REVID() that we use rely on this behavior.  Unfortunately this turns out to not be true on KBL; the newer device 2 revision ID's sometimes go backward to older steppings.
The situation is further complicated by different GT and display steppings associated with each revision ID.

Lets work around this by providing a table to map the revision ID to specific GT and display steppings, and then perform our comparisons on the mapped values.

v2:
 - Move the kbl_revids[] array to intel_workarounds.c to avoid compiler
   warnings about an unused variable in files that don't call the
   macros (kernel test robot).

Bspec: 18329
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 24 ++++++++++++--
 drivers/gpu/drm/i915/i915_drv.c             |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 36 ++++++++++++++++-----
 drivers/gpu/drm/i915/intel_pm.c             |  4 +--
 5 files changed, 53 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 417f6b0c6c61..82742c6f423c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4549,7 +4549,7 @@ static int gen8_emit_flush_render(struct i915_request *request,
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_REVID(request->engine->i915, 0, KBL_REVID_B0))
+		if (IS_KBL_GT_REVID(request->engine->i915, 0, KBL_REVID_B0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cef1c122696f..be5a4685c991 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -52,6 +52,24 @@
  * - Public functions to init or apply the given workaround type.
  */
 
+/*
+ * KBL revision ID ordering is bizarre; higher revision ID's map to 
+lower
+ * steppings in some cases.  So rather than test against the revision 
+ID
+ * directly, let's map that into our own range of increasing ID's that 
+we
+ * can test against in a regular manner.
+ */
+
+const struct i915_rev_steppings kbl_revids[] = {
+	[0] = { .gt_stepping = KBL_REVID_A0, .disp_stepping = KBL_REVID_A0 },
+	[1] = { .gt_stepping = KBL_REVID_B0, .disp_stepping = KBL_REVID_B0 },
+	[2] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B0 },
+	[3] = { .gt_stepping = KBL_REVID_D0, .disp_stepping = KBL_REVID_B0 },
+	[4] = { .gt_stepping = KBL_REVID_F0, .disp_stepping = KBL_REVID_C0 },
+	[5] = { .gt_stepping = KBL_REVID_C0, .disp_stepping = KBL_REVID_B1 },
+	[6] = { .gt_stepping = KBL_REVID_D1, .disp_stepping = KBL_REVID_B1 },
+	[7] = { .gt_stepping = KBL_REVID_G0, .disp_stepping = KBL_REVID_C0 }, 
+};
+
 static void wa_init_start(struct i915_wa_list *wal, const char *name, const char *engine_name)  {
 	wal->name = name;
@@ -470,7 +488,7 @@ static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen9_ctx_workarounds_init(engine, wal);
 
 	/* WaToEnableHwFixForPushConstHWBug:kbl */
-	if (IS_KBL_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
+	if (IS_KBL_GT_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
 		WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
 				  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
 
@@ -1008,7 +1026,7 @@ kbl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	gen9_gt_workarounds_init(i915, wal);
 
 	/* WaDisableDynamicCreditSharing:kbl */
-	if (IS_KBL_REVID(i915, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(i915, 0, KBL_REVID_B0))
 		wa_write_or(wal,
 			    GAMT_CHKN_BIT_REG,
 			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
@@ -1923,7 +1941,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	/* WaKBLVECSSemaphoreWaitPoll:kbl */
-	if (IS_KBL_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
+	if (IS_KBL_GT_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
 		wa_write(wal,
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c index 068447f565a9..00292a849c34 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -392,7 +392,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
 	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
 	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
-	pre |= IS_KBL_REVID(dev_priv, 0, KBL_REVID_A0);
+	pre |= IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_A0);
 	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
 
 	if (pre) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index bacb4c762f5b..e8153e4846e2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1513,14 +1513,34 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,  #define IS_BXT_REVID(dev_priv, since, until) \
 	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
 
-#define KBL_REVID_A0		0x0
-#define KBL_REVID_B0		0x1
-#define KBL_REVID_C0		0x2
-#define KBL_REVID_D0		0x3
-#define KBL_REVID_E0		0x4
-
-#define IS_KBL_REVID(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && IS_REVID(dev_priv, since, until))
+enum {
+	KBL_REVID_A0,
+	KBL_REVID_B0,
+	KBL_REVID_B1,
+	KBL_REVID_C0,
+	KBL_REVID_D0,
+	KBL_REVID_D1,
+	KBL_REVID_E0,
+	KBL_REVID_F0,
+	KBL_REVID_G0,
+};
+
+struct i915_rev_steppings {
+	u8 gt_stepping;
+	u8 disp_stepping;
+};
+
+/* Defined in intel_workarounds.c */
+extern const struct i915_rev_steppings kbl_revids[];
+
+#define IS_KBL_GT_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until) #define 
+IS_KBL_DISP_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)
 
 #define GLK_REVID_A0		0x0
 #define GLK_REVID_A1		0x1
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c index 0a1a95060f38..b4bd19266b8c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7217,12 +7217,12 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
 		I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
 			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
+	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
 		I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
 			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
--
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
