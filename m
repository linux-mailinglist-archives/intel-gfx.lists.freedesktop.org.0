Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9758345E18D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 21:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A086F6E239;
	Thu, 25 Nov 2021 20:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399906E239
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 20:27:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235505166"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="235505166"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 12:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="598247075"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2021 12:27:53 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Nov 2021 01:57:49 +0530
Message-Id: <20211125202750.3263848-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125202750.3263848-1-uma.shankar@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
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

