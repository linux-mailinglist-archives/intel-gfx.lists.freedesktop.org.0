Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICpqGfMB5mkvqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F384B429652
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8485F10E4E3;
	Mon, 20 Apr 2026 10:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFfcbXfH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E573F10E4E4;
 Mon, 20 Apr 2026 10:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776681456; x=1808217456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tKN1pkB/fPfc0rIVvY5trRFlayuWTa449W7TKxytYqw=;
 b=SFfcbXfHm2pxc4nWtX+bYI9n9W/viBy7WTbPYvLQpZNhhk7/1lT6+2Ih
 tmLTpC/ogaCC/AZE5MdTqAvdbmxySe1q4+06Cmo3+Pf0ZHnVee2RNrw4D
 xB5GH3lz6cZloqyqDT17qBnfxkgW7dXHLujz4KrFhN+PawD8eCjYFOOQo
 7SaVxy5vi+WzdqT0IXb+UCHMfzZRXS41Iks9F0QnYgJmVfLgLfftwB7fx
 HJsJibsktxXQe2Dc8kYOPHMOKUGtypS5HduXxdi3YpttHGu1AVGW9o0Eq
 2zFHUCiNaUcL+LH6dtgfojCe8IIFdS1uEstorOGVsLsmsxF+zkfj1nEfd g==;
X-CSE-ConnectionGUID: sdWYjAGSSI6/8WYGQxLYAA==
X-CSE-MsgGUID: orBoM1tJTN6lna1MQT4UPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81464757"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81464757"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:36 -0700
X-CSE-ConnectionGUID: 7ofdGsOaQMSi+R4DOdnngw==
X-CSE-MsgGUID: 0KMIp7u+SOGjidwi6WXS5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231554584"
Received: from vpanait-mobl.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.99])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:33 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 6/8] drm/i915/display: move HSW and BDW clock gating init
 to display
Date: Mon, 20 Apr 2026 13:30:48 +0300
Message-ID: <20260420103705.3453499-7-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420103705.3453499-1-luciano.coelho@intel.com>
References: <20260420103705.3453499-1-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F384B429652
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the HSW and BDW display clock gating programming into the display
code.  In this case we need two different helpers, because the common
code between these two is split in the middle.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c | 44 +++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  4 ++
 .../gpu/drm/i915/display/intel_display_regs.h |  3 ++
 drivers/gpu/drm/i915/i915_reg.h               |  3 --
 drivers/gpu/drm/i915/intel_clock_gating.c     | 34 ++------------
 5 files changed, 55 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index b2cb18478577..6ba65f6cbeae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -117,3 +117,47 @@ void intel_display_glk_init_clock_gating(struct intel_display *display)
 		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
 		       PWM1_GATING_DIS | PWM2_GATING_DIS);
 }
+
+void intel_display_bdw_clock_gating_disable_fbcq(struct intel_display *display)
+{
+	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
+	intel_de_rmw(display, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
+}
+
+void intel_display_bdw_clock_gating_vblank_in_srd(struct intel_display *display)
+{
+	enum pipe pipe;
+
+	/* WaPsrDPAMaskVBlankInSRD:hsw */
+	intel_de_rmw(display, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
+
+	for_each_pipe(display, pipe) {
+		/* WaPsrDPRSUnmaskVBlankInSRD:hsw,bdw */
+		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe), 0,
+			     BDW_UNMASK_VBL_TO_REGS_IN_SRD);
+	}
+}
+
+void intel_display_bdw_clock_gating_kvm_notif(struct intel_display *display)
+{
+	/* WaKVMNotificationOnConfigChange:bdw */
+	intel_de_rmw(display, CHICKEN_PAR2_1, 0,
+		     KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
+}
+
+void intel_display_hsw_init_clock_gating(struct intel_display *display)
+{
+	enum pipe pipe;
+
+	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
+	intel_de_rmw(display, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
+
+	/* WaPsrDPAMaskVBlankInSRD:hsw */
+	intel_de_rmw(display, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
+
+	for_each_pipe(display, pipe) {
+		/* WaPsrDPRSUnmaskVBlankInSRD:hsw,bdw */
+		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe), 0,
+			     HSW_UNMASK_VBL_TO_REGS_IN_SRD);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
index a7784db9d97a..e0300dc8b041 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -13,5 +13,9 @@ void intel_display_kbl_init_clock_gating(struct intel_display *display);
 void intel_display_cfl_init_clock_gating(struct intel_display *display);
 void intel_display_bxt_init_clock_gating(struct intel_display *display);
 void intel_display_glk_init_clock_gating(struct intel_display *display);
+void intel_display_bdw_clock_gating_disable_fbcq(struct intel_display *display);
+void intel_display_bdw_clock_gating_vblank_in_srd(struct intel_display *display);
+void intel_display_bdw_clock_gating_kvm_notif(struct intel_display *display);
+void intel_display_hsw_init_clock_gating(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4746e9ebd920..fc9d3bbb921c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -405,6 +405,9 @@
 #define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
 #define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
 
+#define CHICKEN_PAR2_1		_MMIO(0x42090)
+#define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
+
 /*
  * GEN9 clock gating regs
  */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5d99b99b0c57..e9d7f1c3a288 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -717,9 +717,6 @@
 #define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
 #define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
 
-#define CHICKEN_PAR2_1		_MMIO(0x42090)
-#define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 777314e0c75d..47b437a82f4e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -284,23 +284,12 @@ static void skl_init_clock_gating(struct drm_i915_private *i915)
 
 static void bdw_init_clock_gating(struct drm_i915_private *i915)
 {
-	struct intel_display *display = i915->display;
-	enum pipe pipe;
-
-	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
+	intel_display_bdw_clock_gating_disable_fbcq(i915->display);
 
 	/* WaSwitchSolVfFArbitrationPriority:bdw */
 	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
-	/* WaPsrDPAMaskVBlankInSRD:bdw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
-
-	for_each_pipe(display, pipe) {
-		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
-		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
-				 0, BDW_UNMASK_VBL_TO_REGS_IN_SRD);
-	}
+	intel_display_bdw_clock_gating_vblank_in_srd(i915->display);
 
 	/* WaVSRefCountFullforceMissDisable:bdw */
 	/* WaDSRefCountFullforceMissDisable:bdw */
@@ -316,9 +305,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 	/* WaProgramL3SqcReg1Default:bdw */
 	gen8_set_l3sqc_credits(i915, 30, 2);
 
-	/* WaKVMNotificationOnConfigChange:bdw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR2_1,
-			 0, KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
+	intel_display_bdw_clock_gating_kvm_notif(i915->display);
 
 	intel_pch_init_clock_gating(i915->display);
 
@@ -332,20 +319,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 
 static void hsw_init_clock_gating(struct drm_i915_private *i915)
 {
-	struct intel_display *display = i915->display;
-	enum pipe pipe;
-
-	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
-
-	/* WaPsrDPAMaskVBlankInSRD:hsw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
-
-	for_each_pipe(display, pipe) {
-		/* WaPsrDPRSUnmaskVBlankInSRD:hsw */
-		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
-				 0, HSW_UNMASK_VBL_TO_REGS_IN_SRD);
-	}
+	intel_display_hsw_init_clock_gating(i915->display);
 
 	/* This is required by WaCatErrorRejectionIssue:hsw */
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
-- 
2.53.0

