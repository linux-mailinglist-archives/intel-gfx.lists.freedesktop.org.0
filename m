Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DA0C42186
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575D010EBBB;
	Sat,  8 Nov 2025 00:06:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0NZ0xoN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A2E10EBBB;
 Sat,  8 Nov 2025 00:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560410; x=1794096410;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Ux1LnU8D65mX2QDp7191fvr2Srfn9ihGv1dO45iG5nc=;
 b=k0NZ0xoNQHib8jYtfhHu+z/UH3WL+pNMHmwM4bpOzJvt5090/SK3Ko3M
 QSPfrdTKqVznBjmMnTh1eFhV8aVTzud73busZNW0oM36e2N0OzbCXopDk
 0EQoDSfJwGpjyT0w2uZ4X0m//A4sQB/qquZLN2Yh1KMUpiM/Gy9D7pDU8
 Swm2NpHHOKnZ44GOd0w9ifI7eUQGIxITab1J7mtiisif2MA3CK5IUcEm2
 wtGll0N81VcvX2tho2DtfxfmOfEsVBXWIsd4GOnNY4+++AAsCaZG0lTL+
 Edv4plesBGCVauOyohFYCOm5Uz4S5C4EKThrTZhd+L0Q+WPT7y/YzmfaT w==;
X-CSE-ConnectionGUID: KcFqJ4M0SLSPFSGGaxbKUg==
X-CSE-MsgGUID: dZHbStuSRrS0rfmUuXGDiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621266"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621266"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:50 -0800
X-CSE-ConnectionGUID: WwJDSZ4eSr2RHZpchpL/6w==
X-CSE-MsgGUID: bC99RH8PTmGFcLPDOsHMxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822612"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:47 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:38 -0300
Subject: [PATCH v4 05/11] drm/i915/fbc: Add intel_fbc_id_for_pipe()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-5-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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

We will need to know the FBC id respective to the pipe in other parts of
the driver. Let's promote the static function skl_fbc_id_for_pipe() to a
public one named intel_fbc_id_for_pipe().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c           | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbc.h           | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++-------
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a1e3083022ee..435bfd05109c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -129,6 +129,11 @@ struct intel_fbc {
 	const char *no_fbc_reason;
 };
 
+enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe)
+{
+	return pipe - PIPE_A + INTEL_FBC_A;
+}
+
 /* plane stride in pixels */
 static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 91424563206a..3d02f3fe5630 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum fb_op_origin;
+enum pipe;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -27,6 +28,7 @@ enum intel_fbc_id {
 	I915_MAX_FBCS,
 };
 
+enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe);
 int intel_fbc_atomic_check(struct intel_atomic_state *state);
 int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state);
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bc55fafe9ce3..275ee2903219 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -439,11 +439,6 @@ static int skl_plane_max_height(const struct drm_framebuffer *fb,
 	return 4096;
 }
 
-static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
-{
-	return pipe - PIPE_A + INTEL_FBC_A;
-}
-
 static bool skl_plane_has_fbc(struct intel_display *display,
 			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
@@ -896,7 +891,7 @@ static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
 						  bool enable)
 {
 	struct intel_display *display = to_intel_display(plane);
-	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
+	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(plane->pipe);
 	u32 val;
 
 	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
@@ -2442,7 +2437,7 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
 static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
 				       enum pipe pipe, enum plane_id plane_id)
 {
-	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
+	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(pipe);
 
 	if (skl_plane_has_fbc(display, fbc_id, plane_id))
 		return display->fbc[fbc_id];

-- 
2.51.0

