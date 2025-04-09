Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A6A82E6A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3EC10E69E;
	Wed,  9 Apr 2025 18:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+1xnDpk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34A010E2FC;
 Wed,  9 Apr 2025 18:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222726; x=1775758726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iz+AY4nSj0rvRtED+06IlDj3E1AxV/oxCWt5mClN1jY=;
 b=a+1xnDpkbRN6a+CrkKNvF00HlThWS2Qahpj+u1sMJau9MkTJxpxYkm/o
 +88TsBv0BUZa6rtjE53vX09m/reOwRwZlnWWH5f5aiJRORwmOGfI1wTTT
 9+flAgeHpNXQb5IGhQiCNn2oeQZuEMr0e75fIhy8aSCDNkAHspan3UAN4
 /wqHsU56CnlnTtcYYLtwxVFAitDfijDH2ghkkAJnA8eEbRpV1oMpmRhyu
 CPxCEUh7cVjsGFD8qczlvl7+Tl/apMeRgvp318prs//V8LZ1ljMfypMjX
 Gkto2mkLfU5K81rdR4ntbYrBHFMwjQfm/q5PPRe/gjmIBe1mD/7rWPtjO Q==;
X-CSE-ConnectionGUID: 5LyEjGb7SP+jAgcErdspdA==
X-CSE-MsgGUID: ZmiPHweaSWu6c7dPPxrLcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088365"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088365"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:38 -0700
X-CSE-ConnectionGUID: FuPxqR5QQE2iu9Oi2Y9vPQ==
X-CSE-MsgGUID: TWDwOciDS4C5fluMNocy4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785348"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/14] drm/i915/crt: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:47 +0300
Message-Id: <83980c1ae53157ef5d65d7ce99b294889622faa8.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index cca22d2402e8..8908b51dc3b9 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -370,7 +370,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 
 	if (HAS_PCH_LPT(dev_priv))
 		max_clock = 180000;
-	else if (IS_VALLEYVIEW(dev_priv))
+	else if (display->platform.valleyview)
 		/*
 		 * 270 MHz due to current DPLL limits,
 		 * DAC limit supposedly 355 MHz.
@@ -591,7 +591,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 	if (HAS_PCH_SPLIT(dev_priv))
 		return ilk_crt_detect_hotplug(connector);
 
-	if (IS_VALLEYVIEW(dev_priv))
+	if (display->platform.valleyview)
 		return valleyview_crt_detect_hotplug(connector);
 
 	/*
@@ -599,7 +599,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 	 * to get a reliable result.
 	 */
 
-	if (IS_G45(dev_priv))
+	if (display->platform.g45)
 		tries = 2;
 	else
 		tries = 1;
@@ -940,7 +940,6 @@ intel_crt_detect(struct drm_connector *connector,
 static int intel_crt_get_modes(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *encoder = &crt->base;
 	intel_wakeref_t wakeref;
@@ -953,7 +952,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	wakeref = intel_display_power_get(display, encoder->power_domain);
 
 	ret = intel_crt_ddc_get_modes(connector, connector->ddc);
-	if (ret || !IS_G4X(dev_priv))
+	if (ret || !display->platform.g4x)
 		goto out;
 
 	/* Try to probe digital port for output in DVI-I -> VGA mode. */
@@ -1021,7 +1020,7 @@ void intel_crt_init(struct intel_display *display)
 
 	if (HAS_PCH_SPLIT(dev_priv))
 		adpa_reg = PCH_ADPA;
-	else if (IS_VALLEYVIEW(dev_priv))
+	else if (display->platform.valleyview)
 		adpa_reg = VLV_ADPA;
 	else
 		adpa_reg = ADPA;
@@ -1069,7 +1068,7 @@ void intel_crt_init(struct intel_display *display)
 
 	crt->base.type = INTEL_OUTPUT_ANALOG;
 	crt->base.cloneable = BIT(INTEL_OUTPUT_DVO) | BIT(INTEL_OUTPUT_HDMI);
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		crt->base.pipe_mask = BIT(PIPE_A);
 	else
 		crt->base.pipe_mask = ~0;
-- 
2.39.5

