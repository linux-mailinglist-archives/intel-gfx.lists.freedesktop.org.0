Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF84644173
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DAE10E313;
	Tue,  6 Dec 2022 10:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FFB10E31D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323534; x=1701859534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jhkIswVapvaD6PpaWVoeVF7oP+mMaAGZ9eSI9uln4NI=;
 b=QmYC/gKPD1oYp+8SQK+Iw6vCDW7YHC5UuGQMbSHzkmE1G4ipnCVPwTHD
 MwFl/q/T0br0pB1EREqwIJuRi5Z6L6VuI0LV4v9q9n7NMIUY32YzpcXJG
 Zp+IT836avV17Lr0mw5JQiA+avbpUb+IeJJyg6il0MBgnz8SvmBVW1DoL
 83sFEHCzkveVRf5PyKQiSKw1M6JICf+Z87ahfmkctfagZM9YKa394GW0H
 pGDELJ28ekMoySDve5QgeEToMZGK/GUq1o2BS4u45EfRekGQQZUkIoQl+
 HAeqFD03vGRGlzW7PpAed9Jj6UpEcpn1kgXd6fPwtOBkC/ovkiB1ci+HN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735331"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735331"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714757915"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714757915"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:19 +0530
Message-Id: <20221206104630.1263525-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 01/12] drm/i915/dp: Check if force dsc bpc <=
 max requested bpc
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

Add a check to use force DSC bpc only if its less that the connector max
requested bpc.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1607c86af025..52081eb7bd40 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1474,7 +1474,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	int pipe_bpp;
+	int pipe_bpp, pipe_bpp_max;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
@@ -1483,9 +1483,21 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	/*
+	 * If Force DSC BPC is set, try to use that to compute the pipe bpp,
+	 * otherwise set pipe_bpp to the max bpp.
+	 */
+	pipe_bpp_max = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
-	if (intel_dp->force_dsc_bpc) {
+	if (!intel_dp->force_dsc_bpc) {
+		pipe_bpp = pipe_bpp_max;
+	} else if (intel_dp->force_dsc_bpc &&
+		   intel_dp->force_dsc_bpc > conn_state->max_requested_bpc) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Ignoring force dsc bpc:%d, conflict with max requested bpc:%d",
+			    intel_dp->force_dsc_bpc, conn_state->max_requested_bpc);
+		pipe_bpp = pipe_bpp_max;
+	} else {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
 	}
@@ -1497,12 +1509,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 	}
 
+	pipe_config->pipe_bpp = pipe_bpp;
+
 	/*
-	 * For now enable DSC for max bpp, max link rate, max lane count.
+	 * For now enable DSC for max link rate, max lane count.
 	 * Optimize this later for the minimum possible link rate/lane count
 	 * with DSC enabled for the requested mode.
 	 */
-	pipe_config->pipe_bpp = pipe_bpp;
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-- 
2.25.1

