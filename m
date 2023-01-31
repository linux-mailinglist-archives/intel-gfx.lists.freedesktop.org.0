Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DE7682098
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 01:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07AF10E2FE;
	Tue, 31 Jan 2023 00:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15E010E297
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 00:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675124512; x=1706660512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1qzo3aScuPne1/T6Rw+LsVpSMwDXy2LtMmHWyhfd36k=;
 b=Y/Xz4OldNSAm+SyVbVpyFDJpH5LYzTcq/bUQYPv+ShglFvZnyfouCLC/
 qpYx8GR/ZOlMFFv9XnYf2fWjz4Mad7+UkxjZG+SnexMU4eMx9fSi6N20G
 GCcD67lMs2gl9AeS7vaVv8+z32SURebB/An2pvhOy1VfwWMNDDGsq4Duu
 0MnSujBMMqWBoEZx0f5hXxMzbBgwAoDiUMPbI8PrSaD/qukYoXNCDR1p+
 VZoxgkJvYqRHfgMlpXT3CFUgPN4W/E2Zcg8gj89cBkxNWz7ckQo2ePl3u
 4rfmqXFRLY0GxwhMyj2AzhimPPGtUVVlHxCVvNv79BZ2rpdx+lbhHW8oi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326376800"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="326376800"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 16:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657648775"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="657648775"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 30 Jan 2023 16:21:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 02:21:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 02:21:26 +0200
Message-Id: <20230131002127.29305-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Keep sagv status updated on icl+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On icl+ SAGV is controlled by masking of the QGV points.
Reduce the QGV point mask to the same kind of enabled vs.
disable information that we had on previous platforms.
Will be useful in answering the question whether SAGV is
actually enabled or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++----------
 1 file changed, 29 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 1c236f02b380..202321ffbe2a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -119,6 +119,32 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
+static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	u16 qgv_points = 0, psf_points = 0;
+
+	/*
+	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
+	 * it with failure if we try masking any unadvertised points.
+	 * So need to operate only with those returned from PCode.
+	 */
+	if (num_qgv_points > 0)
+		qgv_points = GENMASK(num_qgv_points - 1, 0);
+
+	if (num_psf_gv_points > 0)
+		psf_points = GENMASK(num_psf_gv_points - 1, 0);
+
+	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
+}
+
+static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_mask)
+{
+	return !is_power_of_2(~points_mask & icl_qgv_points_mask(i915) &
+			      ICL_PCODE_REQ_QGV_PT_MASK);
+}
+
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask)
 {
@@ -136,6 +162,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 		return ret;
 	}
 
+	dev_priv->display.sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
+		I915_SAGV_ENABLED : I915_SAGV_DISABLED;
+
 	return 0;
 }
 
@@ -965,26 +994,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	return 0;
 }
 
-static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
-{
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
-	u16 qgv_points = 0, psf_points = 0;
-
-	/*
-	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
-	 * it with failure if we try masking any unadvertised points.
-	 * So need to operate only with those returned from PCode.
-	 */
-	if (num_qgv_points > 0)
-		qgv_points = GENMASK(num_qgv_points - 1, 0);
-
-	if (num_psf_gv_points > 0)
-		psf_points = GENMASK(num_psf_gv_points - 1, 0);
-
-	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
-}
-
 static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-- 
2.39.1

