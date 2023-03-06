Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB94A6AB7EA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 09:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A56E10E080;
	Mon,  6 Mar 2023 08:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96AF10E080
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 08:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678089957; x=1709625957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rAwDDUdOrlS9aljLPIuq4FOaJk+DyNlEoUqW+jvLVZE=;
 b=TGFd5XjDRnEJKkmqUCIJRAgWehHGR/Hcev24eUa1um0y1fheTr9eFN3J
 7k5/vjwefQ850gc0a5LbTmHwjnWOa5IS2uEpn4ER64caYsltIcsTGe3M5
 tX5qNTbqJAFb2N6XVNhSnvUizLjql1nzsvi3f2/eWa2Z8J5lsQz4r7pSU
 IzA/+cCB6J0kK+Ww8G39/HK9q0t0hxEXuwqJfCnf+40dnU9zFW16eOnOt
 9QZiK79wufPxiLjg7AT16SAcxzz1gT5pVzxj8GlXxX8++YatTsM/tIZFD
 SMQ6icwh5yLPk0dEy67mRg/xygj8/kYAdIBcPHbH3AhHTzGfSmYVEUbLf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="319320587"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="319320587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 00:04:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="786113657"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="786113657"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 00:04:02 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 10:04:01 +0200
Message-Id: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Ensure DSC has enough BW and stays
 within HW limits
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have currently the issue with some BPPs when using DSC.
According the HW team the reason is that single VDSC engine instance,
has some BW limitations which have to be accounted, so whenever
we approach around 90% of the CDCLK, second VDSC engine have to be
used. Also that always means using 2 slices, however in our current code
amount of slices is calculated for some reason independently of
whether we need to enable 2nd VDSC engine or not, thus leading to
some logical issues, when according to pixel clock needs we need to enable
2nd VDSC engine, however as we calculated previously that we can use
only single slice, we can't do that and fail.
So we need to fix that, so that amount of VDSC engines enabled should depend
on amount of slices and amount of slices should also depend on BW requirements.
Lastly we didn't have BPP limitation for ADLP/MTL/DG2 implemented which says
that DSC output BPP's can only be chosen within range of 8 to 27(BSpec 49259).
This all applied together allows to fix existing FIFO underruns, which we
have in many DSC tests.

BSpec: 49259
HSDES: 18027167222

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aee93b0d810e..e3680ae95b83 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -687,6 +687,12 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
 	if (DISPLAY_VER(i915) >= 13) {
 		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
+
+		/* According to BSpec, 27 is the max DSC output bpp */
+		bits_per_pixel = min(bits_per_pixel, (u32)27);
+
+		/* According to BSpec, 8 is the min DSC output bpp */
+		bits_per_pixel = max(bits_per_pixel, (u32)8);
 	} else {
 		/* Find the nearest match in the array of known BPPs from VESA */
 		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
@@ -771,6 +777,9 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 		min_slice_count = DIV_ROUND_UP(mode_clock,
 					       DP_DSC_MAX_ENC_THROUGHPUT_1);
 
+	if (mode_clock >= ((i915->display.cdclk.max_cdclk_freq * 85) / 100))
+		min_slice_count = max(min_slice_count, (u8)2);
+
 	max_slice_width = drm_dp_dsc_sink_max_slice_width(intel_dp->dsc_dpcd);
 	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
 		drm_dbg_kms(&i915->drm,
@@ -1597,16 +1606,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
 	 */
-	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_cdclk_freq ||
-	    pipe_config->bigjoiner_pipes) {
-		if (pipe_config->dsc.slice_count > 1) {
-			pipe_config->dsc.dsc_split = true;
-		} else {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Cannot split stream to use 2 VDSC instances\n");
-			return -EINVAL;
-		}
-	}
+	if (pipe_config->bigjoiner_pipes || pipe_config->dsc.slice_count > 1)
+		pipe_config->dsc.dsc_split = true;
 
 	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
 	if (ret < 0) {
-- 
2.37.3

