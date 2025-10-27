Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AC1C0E1C4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 14:40:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044FF10E4AC;
	Mon, 27 Oct 2025 13:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4P4TL9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0613B10E4AB;
 Mon, 27 Oct 2025 13:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761572441; x=1793108441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=moZoDAxqfjDiwtUBV4/bM5lg5T6yDi8T73pnmEgmjQU=;
 b=Q4P4TL9+kCCP+SfUhDLRh5oTUevidgqP6BPrpuqOMeyzHTzXz/bBOdkk
 /GUlauaaPOZMJeGlJ+IYZ/+HIJu3PX8RLgGVxBik3ziK3XPSgPyNieTHD
 IfZvouT4+7YBrbI/HhQC8r4JW8Z1sgS3GE9ynWc0JI/SF7tcT0LvJl6fr
 RITGOw+vcGoMDNVzUWsbSO4IYTuErISWlAXMe1uzIUGj1IN/0SyjACkn7
 UdNC76MTryIbpcT3KKZViK0n1jimSihU46ZjUp7IKxy/EEr63tS0xwL0b
 Ib+FfkflLk1soKGkSwn9cT7w/OhyQV4YsIiX82JopdFKRJj+Sx6xhWN0G g==;
X-CSE-ConnectionGUID: a0wb+nUkQ5+PlXCHePB/cg==
X-CSE-MsgGUID: M4kGEoZaSQuCYa3FTuCtig==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75096403"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="75096403"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:40 -0700
X-CSE-ConnectionGUID: /J41r7QXQmm6R03k0l1D7w==
X-CSE-MsgGUID: JDVmJIvzRpKENJtNX19sOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184271245"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, gustavo.sousa@intel.com,
 jani.nikula@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com
Subject: [PATCH v2 4/4] drm/i915/xe3p_lpd: use pixel normalizer for fp16
 formats for FBC
Date: Mon, 27 Oct 2025 15:40:01 +0200
Message-ID: <20251027134001.325064-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027134001.325064-1-vinod.govindapillai@intel.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There is a hw restriction that we could enable the FBC for FP16
formats only if the pixel normalization block is enabled. Hence
enable the pixel normalizer block with normalzation factor as
1.0 for the supported FP16 formats to get the FBC enabled. Two
existing helper function definitions are moved up to avoid the
forward declarations as part of this patch as well.

v2: sw/hw state differentiation on handling pixel normalizer (Jani)

Bspec: 69863, 68881
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  9 +++
 drivers/gpu/drm/i915/display/intel_fbc.h      |  2 +
 .../drm/i915/display/skl_universal_plane.c    | 65 ++++++++++++++-----
 .../i915/display/skl_universal_plane_regs.h   | 12 ++++
 4 files changed, 71 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6cab6e7cead3..d33009424863 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1119,6 +1119,15 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 	}
 }
 
+bool
+intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+
+	return DISPLAY_VER(display) >= 35 &&
+	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
+}
+
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index c86562404a00..91424563206a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -53,5 +53,7 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
 				       struct intel_plane *plane);
+bool
+intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state);
 
 #endif /* __INTEL_FBC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0319174adf95..07d9c10cb2ce 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -463,6 +463,23 @@ static int skl_plane_max_height(const struct drm_framebuffer *fb,
 	return 4096;
 }
 
+static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
+{
+	return pipe - PIPE_A + INTEL_FBC_A;
+}
+
+static bool skl_plane_has_fbc(struct intel_display *display,
+			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
+{
+	if ((DISPLAY_RUNTIME_INFO(display)->fbc_mask & BIT(fbc_id)) == 0)
+		return false;
+
+	if (DISPLAY_VER(display) >= 20)
+		return icl_is_hdr_plane(display, plane_id);
+	else
+		return plane_id == PLANE_1;
+}
+
 static int icl_plane_max_height(const struct drm_framebuffer *fb,
 				int color_plane,
 				unsigned int rotation)
@@ -898,6 +915,25 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
 }
 
+static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
+						  struct intel_plane *plane,
+						  bool enable)
+{
+	struct intel_display *display = to_intel_display(plane);
+	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
+	u32 val;
+
+	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
+	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
+		return;
+
+	val = enable ? PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
+		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
+
+	intel_de_write_dsb(display, dsb,
+			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), val);
+}
+
 static void
 icl_plane_disable_arm(struct intel_dsb *dsb,
 		      struct intel_plane *plane,
@@ -913,6 +949,10 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
 	skl_write_plane_wm(dsb, plane, crtc_state);
 
 	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
+
+	if (DISPLAY_VER(display) >= 35)
+		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
+
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
 }
@@ -1642,6 +1682,14 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 
 	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 
+	/*
+	 * In order to have FBC for fp16 formats pixel normalizer block must be
+	 * active. Check if pixel normalizer block need to be enabled for FBC.
+	 * If needed, use normalization factor as 1.0 and enable the block.
+	 */
+	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
+		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
+
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
@@ -2404,23 +2452,6 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
 	}
 }
 
-static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
-{
-	return pipe - PIPE_A + INTEL_FBC_A;
-}
-
-static bool skl_plane_has_fbc(struct intel_display *display,
-			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
-{
-	if ((DISPLAY_RUNTIME_INFO(display)->fbc_mask & BIT(fbc_id)) == 0)
-		return false;
-
-	if (DISPLAY_VER(display) >= 20)
-		return icl_is_hdr_plane(display, plane_id);
-	else
-		return plane_id == PLANE_1;
-}
-
 static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
 				       enum pipe pipe, enum plane_id plane_id)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index ca9fdfbbe57c..7c944d3ca855 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -455,4 +455,16 @@
 								_SEL_FETCH_PLANE_OFFSET_5_A, _SEL_FETCH_PLANE_OFFSET_5_B, \
 								_SEL_FETCH_PLANE_OFFSET_6_A, _SEL_FETCH_PLANE_OFFSET_6_B)
 
+#define _PLANE_PIXEL_NORMALIZE_1_A		0x701a8
+#define _PLANE_PIXEL_NORMALIZE_2_A		0x702a8
+#define _PLANE_PIXEL_NORMALIZE_1_B		0x711a8
+#define _PLANE_PIXEL_NORMALIZE_2_B		0x712a8
+#define PLANE_PIXEL_NORMALIZE(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+								_PLANE_PIXEL_NORMALIZE_1_A, _PLANE_PIXEL_NORMALIZE_1_B, \
+								_PLANE_PIXEL_NORMALIZE_2_A, _PLANE_PIXEL_NORMALIZE_2_B)
+#define   PLANE_PIXEL_NORMALIZE_ENABLE			REG_BIT(31)
+#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK	REG_GENMASK(15, 0)
+#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR(val)	REG_FIELD_PREP(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK, (val))
+#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0		0x3c00
+
 #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
-- 
2.43.0

