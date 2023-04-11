Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A560A6DE48B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2219910E629;
	Tue, 11 Apr 2023 19:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BADF10E629
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240487; x=1712776487;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qOscC/yIyyN9H2pVnXdGfWLzPKczXcFOs83Je3lvlts=;
 b=KOLxxigiak5THW1Ui2wGt8mEm5Vn2B1W3v3f1CPuqkgaPc5LL7shULm1
 GdW6lOyHcEJ2iZOSquUcUn7I0w9rerLGNlGF2mlNVmSUXrN09VvpSYD8x
 QiaKB7ySfP3udHjrCJYYjbbScwNKJx3mKO1lQprzHJLxG1A0d/OhfMwHY
 U8ZRs5b4/Yvu28dI5tvgKbxIFDBY5i0YDczctQriMoSTzF0MmPPsJdUoe
 HBQvSOj5M7uZObOMJkVHkzPYB1aSDFO/utZU7P2U3gg4fY/6LdD6oSs9i
 8OG5B7tem9ie8/pzQQQROcwk6kOcUuBx9k8AgRgqGcC8dYJSW26XWl0u/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202046"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202046"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446536"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446536"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:26 +0300
Message-Id: <20230411191429.29895-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915/psr: Define more PSR mask bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define more of the PSR mask bits, and describe in detail
what some of them do. Even if we don't set them all from
the driver they can be very useful during PSR debugging.
Having to trawl through bspec every time to find them is
not fun, and re-reverse engineering the behaviour every
time is time consuming (even if a bit more fun than spec
trawling).

v2: Moar bits
    Put the description into a comment to be easily available
v2: Fix the BDW_UNMASK_VBL_TO_REGS_IN_SRD/HSW_UNMASK_VBL_TO_REGS_IN_SRD
    description
    Rebase due to intel_psr_regs.h

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 85 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 14 ++-
 drivers/gpu/drm/i915/i915_reg.h               | 13 ++-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
 4 files changed, 109 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b2e4cb91aa8..28817f7bd8c3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -85,6 +85,91 @@
  * use page flips.
  */
 
+/*
+ * Description of PSR mask bits:
+ *
+ * EDP_PSR_DEBUG[16]/EDP_PSR_DEBUG_MASK_DISP_REG_WRITE (hsw-skl):
+ *
+ *  When unmasked (nearly) all display register writes (eg. even
+ *  SWF) trigger a PSR exit. Some registers are excluded from this
+ *  and they have a more specific mask (described below). On icl+
+ *  this bit no longer exists and is effectively always set.
+ *
+ * PIPE_MISC[21]/PIPE_MISC_PSR_MASK_PIPE_REG_WRITE (skl+):
+ *
+ *  When unmasked (nearly) all pipe/plane register writes
+ *  trigger a PSR exit. Some plane registers are excluded from this
+ *  and they have a more specific mask (described below).
+ *
+ * CHICKEN_PIPESL_1[11]/SKL_PSR_MASK_PLANE_FLIP (skl+):
+ * PIPE_MISC[23]/PIPE_MISC_PSR_MASK_PRIMARY_FLIP (bdw):
+ * EDP_PSR_DEBUG[23]/EDP_PSR_DEBUG_MASK_PRIMARY_FLIP (hsw):
+ *
+ *  When unmasked PRI_SURF/PLANE_SURF writes trigger a PSR exit.
+ *  SPR_SURF/CURBASE are not included in this and instead are
+ *  controlled by PIPE_MISC_PSR_MASK_PIPE_REG_WRITE (skl+) or
+ *  EDP_PSR_DEBUG_MASK_DISP_REG_WRITE (hsw/bdw).
+ *
+ * PIPE_MISC[22]/PIPE_MISC_PSR_MASK_SPRITE_ENABLE (bdw):
+ * EDP_PSR_DEBUG[21]/EDP_PSR_DEBUG_MASK_SPRITE_ENABLE (hsw):
+ *
+ *  When unmasked PSR is blocked as long as the sprite
+ *  plane is enabled. skl+ with their universal planes no
+ *  longer have a mask bit like this, and no plane being
+ *  enabledb blocks PSR.
+ *
+ * PIPE_MISC[21]/PIPE_MISC_PSR_MASK_CURSOR_MOVE (bdw):
+ * EDP_PSR_DEBUG[20]/EDP_PSR_DEBUG_MASK_CURSOR_MOVE (hsw):
+ *
+ *  When umasked CURPOS writes trigger a PSR exit. On skl+
+ *  this doesn't exit but CURPOS is included in the
+ *  PIPE_MISC_PSR_MASK_PIPE_REG_WRITE mask.
+ *
+ * PIPE_MISC[20]/PIPE_MISC_PSR_MASK_VBLANK_VSYNC_INT (bdw+):
+ * EDP_PSR_DEBUG[19]/EDP_PSR_DEBUG_MASK_VBLANK_VSYNC_INT (hsw):
+ *
+ *  When unmasked PSR is blocked as long as vblank and/or vsync
+ *  interrupt is unmasked in IMR *and* enabled in IER.
+ *
+ * CHICKEN_TRANS[30]/SKL_UNMASK_VBL_TO_PIPE_IN_SRD (skl+):
+ * CHICKEN_PAR1_1[15]/HSW_MASK_VBL_TO_PIPE_IN_SRD (hsw/bdw):
+ *
+ *  Selectcs whether PSR exit generates an extra vblank before
+ *  the first frame is transmitted. Also note the opposite polarity
+ *  if the bit on hsw/bdw vs. skl+ (masked==generate the extra vblank,
+ *  unmasked==do not generate the extra vblank).
+ *
+ *  With DC states enabled the extra vblank happens after link training,
+ *  with DC states disabled it happens immediately upuon PSR exit trigger.
+ *  No idea as of now why there is a difference. HSW/BDW (which don't
+ *  even have DMC) always generate it after link training. Go figure.
+ *
+ *  Unfortunately CHICKEN_TRANS itself seems to be double buffered
+ *  and thus won't latch until the first vblank. So with DC states
+ *  enabled the register effctively uses the reset value during DC5
+ *  exit+PSR exit sequence, and thus the bit does nothing until
+ *  latched by the vblank that it was trying to prevent from being
+ *  generated in the first place. So we should probably call this
+ *  one a chicken/egg bit instead on skl+.
+ *
+ *  In standby mode (as opposed to link-off) this makes no difference
+ *  as the timing generator keeps running the whole time generating
+ *  normal periodic vblanks.
+ *
+ *  WaPsrDPAMaskVBlankInSRD asks us to set the bit on hsw/bdw,
+ *  and doing so makes the behaviour match the skl+ reset value.
+ *
+ * CHICKEN_PIPESL_1[0]/BDW_UNMASK_VBL_TO_REGS_IN_SRD (bdw):
+ * CHICKEN_PIPESL_1[15]/HSW_UNMASK_VBL_TO_REGS_IN_SRD (hsw):
+ *
+ *  On BDW without this bit is no vblanks whatsoever are
+ *  generated after PSR exit. On HSW this has no apparant effect.
+ *  WaPsrDPRSUnmaskVBlankInSRD says to set this.
+ *
+ * The rest of the bits are more self-explanatory and/or
+ * irrelevant for normal operation.
+ */
+
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 4cef32f47402..0f7db617425a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -120,8 +120,18 @@
 #define   EDP_PSR_DEBUG_MASK_LPSP		REG_BIT(27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP		REG_BIT(26)
 #define   EDP_PSR_DEBUG_MASK_HPD		REG_BIT(25)
-#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE	REG_BIT(16) /* Reserved in ICL+ */
-#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN	REG_BIT(15) /* SKL+ */
+#define   EDP_PSR_DEBUG_MASK_FBC_MODIFY		REG_BIT(24)
+#define   EDP_PSR_DEBUG_MASK_PRIMARY_FLIP	REG_BIT(23)  /* hsw */
+#define   EDP_PSR_DEBUG_MASK_HDCP_ENABLE	REG_BIT(22)  /* hsw/bdw */
+#define   EDP_PSR_DEBUG_MASK_SPRITE_ENABLE	REG_BIT(21)  /* hsw */
+#define   EDP_PSR_DEBUG_MASK_CURSOR_MOVE	REG_BIT(20)  /* hsw */
+#define   EDP_PSR_DEBUG_MASK_VBLANK_VSYNC_INT	REG_BIT(19)  /* hsw */
+#define   EDP_PSR_DEBUG_MASK_DPST_PHASE_IN	REG_BIT(18)  /* hsw */
+#define   EDP_PSR_DEBUG_MASK_KVMR_SESSION_EN	REG_BIT(17)
+#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE	REG_BIT(16)  /* hsw-skl */
+#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN	REG_BIT(15)  /* skl+ */
+#define   EDP_PSR_DEBUG_RFB_UPDATE_SENT		REG_BIT(2)  /* bdw */
+#define   EDP_PSR_DEBUG_ENTRY_COMPLETION	REG_BIT(1)  /* hsw/bdw */
 
 #define _PSR2_CTL_A				0x60900
 #define _PSR2_CTL_EDP				0x6f900
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index afedfb38e985..28a07b6d0610 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2655,6 +2655,11 @@
 #define   PIPE_MISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
 #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
 #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
+#define   PIPE_MISC_PSR_MASK_PRIMARY_FLIP	REG_BIT(23) /* bdw */
+#define   PIPE_MISC_PSR_MASK_SPRITE_ENABLE	REG_BIT(22) /* bdw */
+#define   PIPE_MISC_PSR_MASK_PIPE_REG_WRITE	REG_BIT(21) /* skl+ */
+#define   PIPE_MISC_PSR_MASK_CURSOR_MOVE	REG_BIT(21) /* bdw */
+#define   PIPE_MISC_PSR_MASK_VBLANK_VSYNC_INT	REG_BIT(20)
 #define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
 #define   PIPE_MISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
 /*
@@ -4518,7 +4523,7 @@
 #define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
 #define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
 #define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
-#define   DPA_MASK_VBLANK_SRD		REG_BIT(15)
+#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
 #define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
 #define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
 #define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
@@ -4553,12 +4558,14 @@
 #define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
 #define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
 #define   HSW_FBCQ_DIS			REG_BIT(22)
+#define   HSW_UNMASK_VBL_TO_REGS_IN_SRD REG_BIT(15) /* hsw */
+#define   SKL_PSR_MASK_PLANE_FLIP	REG_BIT(11) /* skl+ */
 #define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
 #define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
 #define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
 #define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
 #define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
-#define   BDW_DPRS_MASK_VBLANK_SRD	REG_BIT(0)
+#define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
 
 #define _CHICKEN_TRANS_A	0x420c0
 #define _CHICKEN_TRANS_B	0x420c4
@@ -4577,7 +4584,7 @@
 #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
-
+#define   SKL_UNMASK_VBL_TO_PIPE_IN_SRD	REG_BIT(30) /* skl+ */
 #define   HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
 #define   HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
 #define   VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 2c5302bcba19..180d77c5f17e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -520,12 +520,12 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
 	/* WaPsrDPAMaskVBlankInSRD:bdw */
-	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
 
 	for_each_pipe(i915, pipe) {
 		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
 		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
-				 0, BDW_DPRS_MASK_VBLANK_SRD);
+				 0, BDW_UNMASK_VBL_TO_REGS_IN_SRD);
 	}
 
 	/* WaVSRefCountFullforceMissDisable:bdw */
-- 
2.39.2

