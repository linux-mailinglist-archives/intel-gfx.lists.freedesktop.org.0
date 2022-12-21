Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00214653140
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 14:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383AE10E004;
	Wed, 21 Dec 2022 13:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6410310E004
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 13:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671627826; x=1703163826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yvAfFtcls2Y51axSubUD59zJpJLmWUvvQPil97fOcP8=;
 b=IQczu0kEzcLzOyGL4fZAI6YZGP4w9/autebCuFxyF2W2kcVGBekMz65R
 Kurf0k2z/eEIpAbdehg9IkCN1SVjwysIenkb950sy3miCUfoVKCn7NR6F
 EN6UROcvAnIdEN8o3Wt7LZJWEMarIbCZlCxZtWuOM9coVhmdhDVRWrxkg
 DW1B71psuVoiH6tx+ZnDKpvqomUhtKEaf2on9yNjadWedBOgCm4F9DnYu
 /8tyLexIhfhKk4xwYwW3dO0kGgMleRCUJSkOWOiFtIvFLE5xULlMhpySL
 btuewGu4ec1NqZmUHKVXxeTjjlzOYqqY9PlWV/6E/3QHKeyNT9y7DYj6o g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="384212272"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="384212272"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 05:03:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="793689364"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="793689364"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2022 05:03:43 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 18:34:39 +0530
Message-Id: <20221221130439.153107-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/color: Add function to load degamma
 LUT in MTL
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

MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
16 bit to 24 bits. Currently, drm framework only supports LUTs upto 16
bit precision. There is a new uapi in discussion which would support
32.32 bit precision. Until theni, upscale the values sent from userland
to 24 bit before writing into the HW to continue supporting degamma on
MTL.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 42 ++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index d57631b0bb9a..04b941cbc083 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1104,6 +1104,38 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);
 }
 
+static void mtl_load_degamma_lut(const struct intel_crtc_state *crtc_state,
+				 const struct drm_property_blob *blob)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_color_lut *degamma_lut = blob->data;
+	enum pipe pipe = crtc->pipe;
+	int i, lut_size = drm_color_lut_size(blob);
+
+	/*
+	 * When setting the auto-increment bit, the hardware seems to
+	 * ignore the index bits, so we need to reset it to index 0
+	 * separately.
+	 */
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT);
+
+	for (i = 0; i < lut_size; i++) {
+		u64 word = mul_u32_u32(degamma_lut[i].green, (1 << 24)) / (1 << 16);
+		u32 lut_val = (word & 0xffffff);
+
+		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
+				  lut_val);
+	}
+	/* Clamp values > 1.0. */
+	while (i++ < glk_degamma_lut_size(i915))
+		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 << 24);
+
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
+}
+
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
@@ -1241,11 +1273,17 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 
 static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
-	if (pre_csc_lut)
-		glk_load_degamma_lut(crtc_state, pre_csc_lut);
+	if (pre_csc_lut) {
+		if (DISPLAY_VER(i915) >= 14)
+			mtl_load_degamma_lut(crtc_state, pre_csc_lut);
+		else
+			glk_load_degamma_lut(crtc_state, pre_csc_lut);
+	}
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
-- 
2.25.1

