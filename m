Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFC5BDC502
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFACE10E712;
	Wed, 15 Oct 2025 03:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Skb2l6pL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D42C10E715;
 Wed, 15 Oct 2025 03:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498307; x=1792034307;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=sFeO/w+eitEuXmKXuDpkSfh3MCfoSLS7YhvMBdxLj/0=;
 b=Skb2l6pLFB1I2B4zDOJKsztUpnFGN+EvjLBhbL4C0qyITkTGvmO+lbHo
 lO50G/R2Ag0oU46/JMZQnE84qYSswq6vmsxjptMjXlJK80dzKE5iYjzND
 EE899Aj3Yhs5D16e0hE0ERZUWPABSv6hJflwvb/NagQiiyzRZjPQfauR1
 FpdoGs41qmd5YMi17bZXRWiWZ/1u7p2pK+S+580YE237DDmy8lEPa2zkp
 sH1BXr4BJtUtIeQgw9qd8YKmDSsooCMdT5Q38TWuVS0vU29nsyNIFv9CN
 QaBhFjScA6P5HkCjmXZikYtL0Lp7ps9AcJ0hMdp/grSsXKZZ6IpJCeKaA Q==;
X-CSE-ConnectionGUID: Gsm8sNnwRZyNke3FSVy3tQ==
X-CSE-MsgGUID: YIJb4VcWTjGGxHpSbw0sUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702580"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702580"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:26 -0700
X-CSE-ConnectionGUID: 8StZp1u5TyOGTX11TtcTUw==
X-CSE-MsgGUID: fyJGV60CQ4GObdF643aXLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303078"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:22 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:26 -0300
Subject: [PATCH 26/32] drm/i915/xe3p_lpd: Enable pixel normalizer for fp16
 formats for FBC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-26-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Vinod Govindapillai <vinod.govindapillai@intel.com>

There is a hw restriction that we could enable the FBC for FP16
formats only if the pixel normalization block is enabled. Hence
enable the pixel normalizer block with normalzation factor as
1.0 for the supported FP16 formats to get the FBC enabled. Two
existing helper function definitions are moved up to avoid the
forward declarations as part of this patch as well.

Bspec: 69863, 68881
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 50 ++++++++++++++--------
 .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
 2 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 16a9c141281b..ae1bf6beac95 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -486,6 +486,23 @@ static int skl_plane_max_height(const struct drm_framebuffer *fb,
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
@@ -896,7 +913,21 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 static void
 xe3p_lpd_plane_check_pixel_normalizer(struct intel_plane_state *plane_state)
 {
-	plane_state->pixel_normalizer = 0;
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
+	u32 reg = 0;
+
+	/*
+	 * To enable FBC for FP16 formats, enable pixel normalizer with
+	 * normalization factor as 1.0
+	 */
+	if (skl_plane_has_fbc(display, fbc_id, plane->id) &&
+	    intel_fbc_is_fp16_format_supported(plane_state))
+		reg = PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
+		      PLANE_PIXEL_NORMALIZE_ENABLE;
+
+	plane_state->pixel_normalizer = reg;
 }
 
 static void
@@ -2449,23 +2480,6 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
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
index 11c713f9b237..eb25de5d1778 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -466,5 +466,6 @@
 #define   PLANE_PIXEL_NORMALIZE_ENABLE			REG_BIT(31)
 #define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK	REG_GENMASK(15, 0)
 #define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR(val)	REG_FIELD_PREP(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK, (val))
+#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0		0x3c00
 
 #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */

-- 
2.51.0

