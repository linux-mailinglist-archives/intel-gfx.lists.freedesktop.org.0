Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56409A50008
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 14:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D809310E7C5;
	Wed,  5 Mar 2025 13:15:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lb4jVhcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC00710E7D6;
 Wed,  5 Mar 2025 13:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741180537; x=1772716537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rxhsbquncfTmgkIUeYm4hCBcaNdIqR6zxd2LNgU56eI=;
 b=Lb4jVhcO2Q5lLpx1DEzvI354sH+Ewlxck6WT4jBzrP0Y/gHzHhHiOy6D
 mTj9RWNav1HSA7F19XnUtTNbUccMr8UhH6xpACSGd0tAnuWr05iw0ljZ3
 NpxyrUXuYefXpioT2NyYsEx7ArDEpWbKyBfhSbUkupRXGuROFXm7LNjJ5
 94JpZQhJvQkTji6RjKzryoWyzrC0eutK7ggQBArDTJufleblVTWFu4Bwf
 L5dv/IGDLTy0uzAaHCHo3+33NT/MAtjAH9Z1pgwq91kWJKtXuh7AiRHv4
 jrrNWCSCLb7dwSiiXMb6T3MNMoJIe2Uzd40Ve6S4Ma4Xc7SoWEROFbksh Q==;
X-CSE-ConnectionGUID: r7T3q2aSTMWRc60s55V+dQ==
X-CSE-MsgGUID: YUw5+nw6RwKWD+xMeecV+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59685640"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="59685640"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:15:37 -0800
X-CSE-ConnectionGUID: mN4e3HX6S5ain2OTApahmQ==
X-CSE-MsgGUID: VpHP/31FRlmrrEvg6iamfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118701255"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa006.jf.intel.com with ESMTP; 05 Mar 2025 05:15:32 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, harry.wentland@amd.com,
 pekka.paalanen@haloniitty.fi, sebastian.wick@redhat.com, jadahl@redhat.com,
 mwen@igalia.com, contact@emersion.fr, naveen1.kumar@intel.com,
 dmitry.baryshkov@linaro.org, Uma Shankar <uma.shankar@intel.com>
Subject: [v3 21/23] drm/i915/xelpd: Program Plane Post CSC Registers
Date: Wed,  5 Mar 2025 18:56:06 +0530
Message-ID: <20250305132608.2379253-22-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250305132608.2379253-1-uma.shankar@intel.com>
References: <20250305132608.2379253-1-uma.shankar@intel.com>
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

Extract the LUT and program plane post csc registers.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 109 +++++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 9bec9159bb78..c1c3dfb81bbc 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3991,6 +3991,113 @@ static void xelpd_program_plane_pre_csc_lut(const struct drm_plane_state *state,
 	}
 }
 
+static void xelpd_program_plane_post_csc_lut(const struct drm_plane_state *state,
+					     const struct drm_color_lut_32 *post_csc_lut,
+					     u32 offset)
+{
+	struct intel_display *display = to_intel_display(state->plane->dev);
+	enum pipe pipe = to_intel_plane(state->plane)->pipe;
+	enum plane_id plane = to_intel_plane(state->plane)->id;
+	u32 i, lut_size, j;
+
+	if (icl_is_hdr_plane(display, plane)) {
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
+				  offset | PLANE_PAL_PREC_AUTO_INCREMENT);
+		/* TODO: Add macro */
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0),
+				  PLANE_PAL_PREC_AUTO_INCREMENT);
+		if (post_csc_lut) {
+			/* Segment 0 */
+			for (i = 0, j = 0; i < 9; i++, j++) {
+				u32 lut_val = (post_csc_lut[j].green & 0xffffff);
+
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_SEG0_DATA_ENH(pipe, plane, 0),
+						  lut_val);
+			}
+
+			/* Segment 1 */
+			lut_size = 32;
+			for (i = 0; i < lut_size; i++) {
+				u32 lut_val;
+
+				if (i == 0)
+					lut_val = post_csc_lut[0].green & 0xffffff;
+				else if (i == 1)
+					lut_val = (post_csc_lut[8].green & 0xffffff);
+				else
+					lut_val = (post_csc_lut[j++].green & 0xffffff);
+
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+						  lut_val);
+			}
+
+			/* Segment 2 */
+			do {
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+						  post_csc_lut[j++].green);
+			} while (j < 42);
+		} else {
+			/*TODO: Add for segment 0 */
+			lut_size = 32;
+			for (i = 0; i < lut_size; i++) {
+				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
+
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);
+			}
+
+			do {
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+						  1 << 24);
+			} while (i++ < 34);
+		}
+
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0), 0);
+	} else {
+		lut_size = 32;
+		/*
+		 * First 3 planes are HDR, so reduce by 3 to get to the right
+		 * SDR plane offset
+		 */
+		plane = plane - 3;
+
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_INDEX(pipe, plane, 0),
+				  offset | PLANE_PAL_PREC_AUTO_INCREMENT);
+
+		if (post_csc_lut) {
+			for (i = 0; i < lut_size; i++)
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+						  post_csc_lut[i].green & 0xffff);
+			/* Program the max register to clamp values > 1.0. */
+			while (i < 35)
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+						  post_csc_lut[i++].green & 0x3ffff);
+		} else {
+			for (i = 0; i < lut_size; i++) {
+				u32 v = (i * ((1 << 16) - 1)) / (lut_size - 1);
+
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0), v);
+			}
+
+			do {
+				intel_de_write_fw(display,
+						  PLANE_POST_CSC_GAMC_DATA(pipe, plane, 0),
+						  (1 << 16));
+			} while (i++ < 34);
+		}
+
+		intel_de_write_fw(display, PLANE_POST_CSC_GAMC_INDEX(pipe, plane, 0), 0);
+	}
+}
+
 static void xelpd_plane_load_luts(const struct drm_plane_state *plane_state,
 				  const struct drm_property_blob *blob, bool is_pre_csc)
 {
@@ -3998,6 +4105,8 @@ static void xelpd_plane_load_luts(const struct drm_plane_state *plane_state,
 
 	if (is_pre_csc)
 		xelpd_program_plane_pre_csc_lut(plane_state, lut, 0);
+	else
+		xelpd_program_plane_post_csc_lut(plane_state, lut, 0);
 }
 
 void intel_color_load_plane_luts(const struct drm_plane_state *plane_state,
-- 
2.42.0

