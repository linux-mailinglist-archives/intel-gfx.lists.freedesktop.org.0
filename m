Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C540346B373
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 08:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B2B8B83F;
	Tue,  7 Dec 2021 07:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DA68B83F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 07:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261579652"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261579652"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 23:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="679331757"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2021 23:11:40 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 12:41:34 +0530
Message-Id: <20211207071135.3660332-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207071135.3660332-1-uma.shankar@intel.com>
References: <20211207071135.3660332-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 2/3] drm/i915/xelpd: Enable Pipe Degamma
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

Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
to incorparate the extended lut size for XE_LPD.

v2: Added a helper for degamma lut size (Ville)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 42fe549ef6fe..de3ded1e327a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -808,6 +808,14 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static int glk_degamma_lut_size(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 13)
+		return 131;
+	else
+		return 35;
+}
+
 static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -827,8 +835,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 
 	for (i = 0; i < lut_size; i++) {
 		/*
-		 * First 33 entries represent range from 0 to 1.0
-		 * 34th and 35th entry will represent extended range
+		 * First lut_size entries represent range from 0 to 1.0
+		 * 3 additional lut entries will represent extended range
 		 * inputs 3.0 and 7.0 respectively, currently clamped
 		 * at 1.0. Since the precision is 16bit, the user
 		 * value can be directly filled to register.
@@ -844,7 +852,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	}
 
 	/* Clamp values > 1.0. */
-	while (i++ < 35)
+	while (i++ < glk_degamma_lut_size(dev_priv))
 		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
 	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-- 
2.25.1

