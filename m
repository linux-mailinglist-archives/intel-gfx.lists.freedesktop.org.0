Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9267D97360D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 13:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B2310E794;
	Tue, 10 Sep 2024 11:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dapvYQaC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A3710E79E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725967107; x=1757503107;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sUOqrZzaH7lr+Hco5FTKjisUERsAJj1B7leZ7rikHz0=;
 b=dapvYQaC9ylsrOaeQXvD7jUjP6752holdnwcYk8YUEi5f19JD1qI7/Ka
 XBrGwXN6vSNtN0ZwLqfvJXvg/6LgHtkDyEy+qJncmDoQdFQdhD63Fhe0Q
 M9MDhyWeXeBQg+RdhWTv8qrWPv+TkC2ZHDjxuh5VU+KrwMpmnpPACtsPi
 lvkSwe/6cGGEs6RAIRhfoR/qet10fP0mMsnhjlZe9rxlIOX068t6YJ0XS
 SkuZ7j4/Mf0qsNvU+fKq2o782bENfEtPgug5dVXxaSwZiSrfpTvDSDmHW
 opW0CVifIkJxmRUnrZ8ok8Mb7ZcId6jzkrArywGlHrgOTb/tDEURBR8MR A==;
X-CSE-ConnectionGUID: hprZ+Ku3SfCBZypKuLrqDQ==
X-CSE-MsgGUID: nF1ix4DGQvGfLUE4Y9eoqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24865469"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24865469"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 04:18:26 -0700
X-CSE-ConnectionGUID: r26PmfjjRMez94cU1+JZcQ==
X-CSE-MsgGUID: BE39S6NuQgSkjc/pUVHQpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="97695041"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 04:18:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/dp: Fix AUX IO power enabling for eDP PSR
Date: Tue, 10 Sep 2024 14:18:47 +0300
Message-ID: <20240910111847.2995725-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Panel Self Refresh on eDP requires the AUX IO power to be enabled
whenever the output (main link) is enabled. This is required by the
AUX_PHY_WAKE/ML_PHY_LOCK signaling initiated by the HW automatically to
re-enable the main link after it got disabled in power saving states
(see eDP v1.4b, sections 5.1, 6.1.3.3.1.1).

The Panel Replay mode on non-eDP outputs on the other hand is only
supported by keeping the main link active, thus not requiring the above
AUX_PHY_WAKE/ML_PHY_LOCK signaling (eDP v1.4b, section 6.1.3.3.1.2).
Thus enabling the AUX IO power for this case is not required either.

Based on the above enable the AUX IO power only for eDP/PSR outputs.

Bspec: 49274, 53370

Cc: Animesh Manna <animesh.manna@intel.com>
Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute config for panel replay")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 00fbe9f8c03a9..b1c294236cc87 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -916,7 +916,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 * instead of a specific AUX_IO_<port> reference without powering up any
 	 * extra wells.
 	 */
-	if (intel_encoder_can_psr(&dig_port->base))
+	if (intel_psr_needs_aux_io_power(&dig_port->base, crtc_state))
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
 	else if (DISPLAY_VER(i915) < 14 &&
 		 (intel_crtc_has_dp_encoder(crtc_state) ||
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b30fa067ce6e3..f2991dc4a04ab 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -205,6 +205,19 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder)
 		return false;
 }
 
+bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * For PSR/PR modes only eDP requires the AUX IO power to be enabled whenever
+	 * the output is enabled. For non-eDP outputs the main link is always
+	 * on, hence it doesn't require the HW initiated AUX wake-up signaling used
+	 * for eDP.
+	 */
+	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
+	       intel_encoder_can_psr(encoder);
+}
+
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 4e09c10908e4c..6eb5f15f674fa 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -25,6 +25,8 @@ struct intel_plane_state;
 				    (intel_dp)->psr.source_panel_replay_support)
 
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
+bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_enable_sink(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state);
-- 
2.44.2

