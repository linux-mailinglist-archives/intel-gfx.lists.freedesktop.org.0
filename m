Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A266573D75F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 07:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D1E10E073;
	Mon, 26 Jun 2023 05:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DAC10E073
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 05:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687758952; x=1719294952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E16cnP33LO/hc5VOLQ3JoqQ1quHjhKbZxIDx+V7TFKY=;
 b=EcVPCsBIAZQePZjwgc61PBtHy0ctImozshAKjHgsWnRJfKSkBWM+U0uo
 9VnfUFVxS61+KwOBOB3eDNtd60n2wkHrCHVIjMu+WMnNIn5sLRY6klnKa
 5cdGCq17IzMvBIFNRxV+7SIj3CHIOHOmBh+6rjAss1Jp1t4DXtCGQebZG
 na5mx4tn/x4AEMjdGfTvDhq46wMRHpJnBYf3B/ROLFBhMaEpUPH5bq8O2
 +RbdcqzNoQDtPEdqjgxCeytKmiIyp/wYDLHYcxRlwWhGvSuPzETDBXKaV
 4zYc96247K2EcPN4SfTW4KgB7Z32nDDBiHyzduXXrDqDD5+5zu412Z+6Q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="345934234"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="345934234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 22:55:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="781287490"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="781287490"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jun 2023 22:55:49 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:24:43 +0530
Message-Id: <20230626055444.1113796-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/color: Add function to load
 degamma LUT in MTL
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
16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
bit precision. Until a new uapi comes along to support higher bitdepth,
upscale the values sent from userland to 24 bit before writing into the
HW to continue supporting degamma on MTL.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 42 ++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8966e6560516..25c73e2e6fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1498,6 +1498,38 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
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
@@ -1635,11 +1667,17 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 
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

