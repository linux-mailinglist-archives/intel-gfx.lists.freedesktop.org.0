Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6153377DB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A3C6EE04;
	Thu, 11 Mar 2021 15:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8306EDF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:32 +0000 (UTC)
IronPort-SDR: Dak5etE6XjWsW7Zdsl1r+T8AIaFPxt+IDOajREwFPUwUVOLYZ/i+6MGbXHOEc5oAe6JN4oVb4H
 UR0QCOVUQ1ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797252"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797252"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:31 -0800
IronPort-SDR: 7yPUYdbPFtdonYp13JI2tHV5hXG8PDArgKEM9mJJaqSRVaX/wsMwyF7whXfLoXHSAR/Mmzv44h
 DvKOmoVpp+FQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251692"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:34:10 -0800
Message-Id: <20210311153415.3024607-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/23] drm/i915/display/dsc: Refactor
 intel_dp_dsc_compute_bpp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Move the platform specific max bpc calculation into
intel_dp_dsc_compute_bpp function

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 95c1f25e1bf3..f64098cd1273 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1213,10 +1213,18 @@ intel_dp_compute_link_config_fast(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc)
+static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {0};
+	u8 dsc_max_bpc;
+
+	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
+	if (DISPLAY_VER(i915) >= 12)
+		dsc_max_bpc = min_t(u8, 12, max_req_bpc);
+	else
+		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
@@ -1304,7 +1312,6 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	u8 dsc_max_bpc;
 	int pipe_bpp;
 	int ret;
 
@@ -1314,14 +1321,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(dev_priv) >= 12)
-		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10,
-				    conn_state->max_requested_bpc);
-
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, dsc_max_bpc);
+	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
 	/* Min Input BPC for ICL+ is 8 */
 	if (pipe_bpp < 8 * 3) {
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
