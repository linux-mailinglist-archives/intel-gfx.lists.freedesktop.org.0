Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B6F45ACA2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 20:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0F86E24E;
	Tue, 23 Nov 2021 19:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4E06E221
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 19:37:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="234936112"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="234936112"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 11:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="591333642"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Nov 2021 11:37:11 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 01:06:48 +0530
Message-Id: <20211123193649.3153258-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123193649.3153258-1-uma.shankar@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/xelpd: Enable Pipe Degamma
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
Cc: =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
to incorparate the extended lut size for XE_LPD.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e529dbeee525..81046d5ab509 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -815,6 +815,12 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	int i, lut_size = INTEL_INFO(dev_priv)->color.degamma_lut_size;
 	const struct drm_color_lut *lut = crtc_state->hw.degamma_lut->data;
+	u32 extended_lut_size;
+
+	if (DISPLAY_VER(dev_priv) >= 13)
+		extended_lut_size = 131;
+	else
+		extended_lut_size = 35;
 
 	/*
 	 * When setting the auto-increment bit, the hardware seems to
@@ -827,8 +833,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 
 	for (i = 0; i < lut_size; i++) {
 		/*
-		 * First 33 entries represent range from 0 to 1.0
-		 * 34th and 35th entry will represent extended range
+		 * First lut_size entries represent range from 0 to 1.0
+		 * 3 additional lut entries will represent extended range
 		 * inputs 3.0 and 7.0 respectively, currently clamped
 		 * at 1.0. Since the precision is 16bit, the user
 		 * value can be directly filled to register.
@@ -844,7 +850,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	}
 
 	/* Clamp values > 1.0. */
-	while (i++ < 35)
+	while (i++ < extended_lut_size)
 		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 
 	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
-- 
2.25.1

