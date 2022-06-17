Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D15254FBC1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE1910F47A;
	Fri, 17 Jun 2022 16:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF1D10F3F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485047; x=1687021047;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JPcMo6ZvJvRGIWBdviaDiLw5tXQgPjHbrZ9/kFokzVA=;
 b=jK4mXOZVTvU7FfCbFjyiiaBnMMoJr1i0KkhjFOZYIQgxtcV1CS2INxrk
 IDR4A6fm4EMJ5p90l8WrrYM3HXsMHUQTtulm0ygwcuQLIAPTuCrJABPrF
 RCxuLHKN1dYneKlUHnPM/IuNqPxFHyg0UIctRO8gV/ZIVryYJvWYqiIvM
 GYHA8yGF2djEvp51YJH/z7Mi7WBxRO8naEOUUveFd0fPqr3lLdgQTfHX1
 Zw+C4tlaB7tSc8y8ywaoda8AzHtKh0TkoZ3nZueM5Qd8ZoskAk/1POK58
 qXFrQIpgJZGlTwBVjjHgNEvZCU7tUfnXJh38b7Q3pfYUWMF9cOguB7Xa3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="304940053"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="304940053"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="675523028"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jun 2022 09:05:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:04:57 +0300
Message-Id: <20220617160510.2082-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/16] drm/i915: Extract
 has_double_buffered_m_n()
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

We have a couple of places that want to make distinction between
double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
Add a helper for that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b24784c4522d..5559688047b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2798,6 +2798,11 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	return 0;
 }
 
+bool has_double_buffered_m_n(struct drm_i915_private *i915)
+{
+	return DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915);
+}
+
 static void
 intel_reduce_m_n_ratio(u32 *num, u32 *den)
 {
@@ -5900,7 +5905,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
+	if (has_double_buffered_m_n(dev_priv)) {
 		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2feb8ae5d5d4..44c88aadfc30 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -543,6 +543,7 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
+bool has_double_buffered_m_n(struct drm_i915_private *i915);
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2fac76bcf06d..75645508080a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1842,8 +1842,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
 				    enum transcoder cpu_transcoder)
 {
-	/* M1/N1 is double buffered */
-	if (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+	if (has_double_buffered_m_n(i915))
 		return true;
 
 	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
-- 
2.35.1

