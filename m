Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE8996F4D5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FEB10EA4A;
	Fri,  6 Sep 2024 12:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m6Q46C+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF7B10EA53
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627412; x=1757163412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KQAkrewQIJ3unwEPXxZ4KYc+dCnICQ/TOHzwCAF7HJQ=;
 b=m6Q46C+vjobjdO69LWgHgCmpcScBMwe6cBbMtmF4jpUBFKad9FBlSfvA
 mSX253tX2lCSeYHxUFnbe4iuux4jYMj0CIGyafMDTDDnZgyeRmzR0Cwu+
 QZkYjVfPT3IqIg7GhE/TO1GHlY5L83SNZeAjnGnVsiYkBpZyq9g4hedmt
 aC8n5ZsvGdUZebW5nx/h62KCb3/kq5oPO7il7jsvz4lK/rFAzElZeeTV/
 vHSuc0O5pIJDKNn5I9UOdEZw7JlRGFLpmCf0a1bC60j5OfBUghvzhQRhA
 ivYCiw2VMPM3SREwtCYOyoAyPA/u9SzhjkERXENnPxHxNqWH5KnjuqC6i w==;
X-CSE-ConnectionGUID: 9Q9lgh0HTSqIrOW4+PX2RA==
X-CSE-MsgGUID: 5EqivnQwSQepiiTctIKRDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257420"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257420"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:52 -0700
X-CSE-ConnectionGUID: aufjIS+fQ4Kxb0m8MIssrQ==
X-CSE-MsgGUID: pazjbMjwR5Gn+/93SrJonA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691100"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 14/14] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Fri,  6 Sep 2024 18:28:07 +0530
Message-ID: <20240906125807.3960642-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

Allow forcing ultrajoiner through debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 +++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 ++++--
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79837ba05a14..db2a50678cda 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1308,7 +1308,9 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
-bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
+bool intel_dp_need_ultrajoiner(struct intel_dp *dp,
+			       struct intel_connector *connector,
+			       int clock)
 {
 	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -1317,7 +1319,8 @@ bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
 	if (!intel_display_can_use_ultrajoiner(display))
 		return false;
 
-	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2) ||
+	       connector->force_joined_pipes == INTEL_ULTRA_JOINER_PIPES;
 }
 
 static enum drm_mode_status
@@ -1356,7 +1359,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, connector, target_clock)) {
 		joined_pipes = INTEL_ULTRA_JOINER_PIPES;
 		max_dotclk *= INTEL_ULTRA_JOINER_PIPES;
 	} else if (intel_dp_need_bigjoiner(intel_dp, connector,
@@ -2566,7 +2569,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, connector, adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
 	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 					 adjusted_mode->crtc_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b413b9f5fdf8..748e1a94afd2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -158,7 +158,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,
 			     int hdisplay, int clock);
-bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
+bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
+			       int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1f2a6d275114..5e87cdf0be69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -580,7 +580,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, connector,
+				      adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
 	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 					 adjusted_mode->crtc_hdisplay,
@@ -1479,7 +1480,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, intel_connector,
+				      target_clock)) {
 		joined_pipes = INTEL_BIG_JOINER_PIPES;
 		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
-- 
2.45.2

