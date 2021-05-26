Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B763914E5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 12:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FF46EC68;
	Wed, 26 May 2021 10:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CC56EC66
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 10:28:29 +0000 (UTC)
IronPort-SDR: KbXwDYY+cHDJA+Cdu9kxVy2ieuvp2B2R4orz2i4NDJmeaZqFJOleRKecH41GXutLnMvIOcxJ4b
 Mut1zs1BojBw==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223616125"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223616125"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:28:29 -0700
IronPort-SDR: 2dFMBYOpuYx1pRQ9imQLSGA/pUVzcGnPeDhGd+vxzT+n//lg72sOUUTBhH1Ti98HnUR7NZILaE
 9A7FIFcw0bBg==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476868091"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:28:27 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com
Date: Wed, 26 May 2021 23:47:27 +0530
Message-Id: <20210526181728.14817-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering after
 the CC1
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

From: Nischal Varide <nischal.varide@intel.com>

If the panel is 12bpc then Dithering is not enabled in the Legacy
dithering block , instead its Enabled after the C1 CC1 pipe post
color space conversion.For a 6bpc pannel Dithering is enabled in
Legacy block.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  7 ++++++-
 drivers/gpu/drm/i915/i915_reg.h              |  3 ++-
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index dab892d2251b..4ad5bd849695 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1605,6 +1605,20 @@ static u32 icl_csc_mode(const struct intel_crtc_state *crtc_state)
 	return csc_mode;
 }
 
+static u32 dither_after_cc1_12bpc(const struct intel_crtc_state *crtc_state)
+{
+	u32 gamma_mode = crtc_state->gamma_mode;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (DISPLAY_VER(i915) >= 13) {
+		if (!crtc_state->dither_force_disable &&
+		    (crtc_state->pipe_bpp == 36))
+			gamma_mode |= GAMMA_MODE_DITHER_AFTER_CC1;
+	}
+
+	return gamma_mode;
+}
+
 static int icl_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
@@ -1615,6 +1629,7 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->gamma_mode = icl_gamma_mode(crtc_state);
 
+	crtc_state->gamma_mode = dither_after_cc1_12bpc(crtc_state);
 	crtc_state->csc_mode = icl_csc_mode(crtc_state);
 
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0bb2e582c87f..1a658bdaeab6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5741,7 +5741,12 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	if (crtc_state->dither)
+	/*
+	 * If 12bpc panel then, Enables dithering after the CC1 pipe
+	 * post color space conversion and not here
+	 */
+
+	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
 		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4dbe79009c0e..5700097475c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6155,7 +6155,7 @@ enum {
 #define   PIPEMISC_DITHER_8_BPC		(0 << 5)
 #define   PIPEMISC_DITHER_10_BPC	(1 << 5)
 #define   PIPEMISC_DITHER_6_BPC		(2 << 5)
-#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
+#define   PIPEMISC_DITHER_12_BPC	(4 << 5)
 #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
 #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
 #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
@@ -7726,6 +7726,7 @@ enum {
 #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
 #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
 #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
+#define  GAMMA_MODE_DITHER_AFTER_CC1 (1 << 26)
 
 /* DMC */
 #define DMC_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
