Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE4947DAF
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B40110E22B;
	Mon,  5 Aug 2024 15:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOXX6k+m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F6010E227
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 15:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722870470; x=1754406470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OvfRSNgJqc1wY+pjg4LHP8Vq2jM8amMsYpngNTAv1PY=;
 b=MOXX6k+mTulAeto7GR638msSNe03qEzM7EsGhOPMgq50D1oqVNUOD3gX
 B/kXqCdch9I4HZEd5+2FiM9/11/w4Fei/8Opb5skj0P/9I6GnNhSUzKV2
 oKiRWJ1JPEaCnyhRUIZvjNweKis4ZHGHPUPXiGwjKp1hc3ANMOvxJR43a
 DaoZ4iX3ZyMxSkHjq1oFU0FmUVj3p+Tpa0TLARkp4MwN8H03/Ip1v10dk
 cXVoOIMXrr8wehM7q4+l1bN32CaTL4rJ3dCSX4pASp0njCSiknYsb9KFF
 ften9I6Fd56/z1auTpaeKLE0rfNREdzxMctohVfeFjGJdoMHCnJswG/Fo g==;
X-CSE-ConnectionGUID: PO2X6RcqRmS13HU8Pwbu3Q==
X-CSE-MsgGUID: OcnRPkvOQ6GymH7ogdXQpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20694426"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20694426"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:50 -0700
X-CSE-ConnectionGUID: rXe7n6XeS3KKWKPuwy81oA==
X-CSE-MsgGUID: SwaT1b4mRHKMNJ2+1CG3lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60558884"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 08:07:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [CI 4/7] drm/i915: Replace to_bpp_frac() with fxp_q4_to_frac()
Date: Mon,  5 Aug 2024 18:07:53 +0300
Message-ID: <20240805150802.3568970-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240805150802.3568970-1-imre.deak@intel.com>
References: <20240805150802.3568970-1-imre.deak@intel.com>
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

Replace the to_bpp_frac() helper defined by the driver with the
equivalent fxp_q4_to_frac() helper defined by DRM core.

v2: Rebase on the s/drm_x16/fxp_q4 change.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +------
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 2 +-
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0f57065ea226e..423e7ce187f65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2200,13 +2200,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
-static inline int to_bpp_frac(int bpp_x16)
-{
-	return bpp_x16 & 0xf;
-}
-
 #define BPP_X16_FMT		"%d.%04d"
-#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
+#define BPP_X16_ARGS(bpp_x16)	fxp_q4_to_int(bpp_x16), (fxp_q4_to_frac(bpp_x16) * 625)
 
 /*
  * Conversion functions/macros from various pointer types to struct
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d132b8d5aaa99..3ed2b74d5eb56 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2066,7 +2066,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	     compressed_bppx16 >= dsc_min_bpp;
 	     compressed_bppx16 -= bppx16_step) {
 		if (intel_dp->force_dsc_fractional_bpp_en &&
-		    !to_bpp_frac(compressed_bppx16))
+		    !fxp_q4_to_frac(compressed_bppx16))
 			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
@@ -2076,7 +2076,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
 			if (intel_dp->force_dsc_fractional_bpp_en &&
-			    to_bpp_frac(compressed_bppx16))
+			    fxp_q4_to_frac(compressed_bppx16))
 				drm_dbg_kms(&i915->drm, "Forcing DSC fractional bpp\n");
 
 			return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 99902fbfeec47..ff717dc1a2ce5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -185,7 +185,7 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 		}
 	} else {
 		/* fractional bpp part * 10000 (for precision up to 4 decimal places) */
-		int fractional_bits = to_bpp_frac(vdsc_cfg->bits_per_pixel);
+		int fractional_bits = fxp_q4_to_frac(vdsc_cfg->bits_per_pixel);
 
 		static const s8 ofs_und6[] = {
 			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
-- 
2.44.2

