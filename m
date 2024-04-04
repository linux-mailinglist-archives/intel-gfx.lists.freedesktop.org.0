Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C6389907A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9026211356C;
	Thu,  4 Apr 2024 21:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LY9DyxXC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE94E113575
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266509; x=1743802509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rkcCSoi7j/W6DHSgx8msGjXd3EROo0JnnmocxL3TMgU=;
 b=LY9DyxXCnUpDC8a5Sp9pemX9PHWn5g2TU4b8leW8nXdUCuxMYeXgqDZh
 XNS5bEzQHXk2QbsCGIP6B74Kck84q0OuZIujAeMMdMPfhjNSAEXtVV+5V
 RhQiiIX4V7fu9hYCnnO8E54BLj9HzhjZz1DLPj5YNcEaDw+7jQsFfBrNf
 mCYurMKuEoybYrtpxoiBgfG9Gha/uWHWpXd/S7M7nM8XvpSuiQeDkI9kt
 1SDeyAICOLe3tuCHYVrMnsfp5rrDbVNpn0R3Ym+7UuRRnsCAzdOLhQxOJ
 0eNFxmmO0b+y6oTQGnnv2XpIjHLDo45FfCDMnaE6V3ikCmZ69i1EUOV36 g==;
X-CSE-ConnectionGUID: +SWwEUoFR0SSn6sGFZ44og==
X-CSE-MsgGUID: /DGKSZnqRXurATrZdB2G5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710811"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710811"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790618"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH v2 07/17] drm/i915:
 s/intel_dp_can_bigjoiner()/intel_dp_has_bigjoiner()/
Date: Fri,  5 Apr 2024 00:34:31 +0300
Message-ID: <20240404213441.17637-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename intel_dp_can_bigjoiner() to intel_dp_has_bigjoiner()
to better reflect its function.

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4552005caae2..4553c0c41bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -433,7 +433,7 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 	return max_rate;
 }
 
-bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
+bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
@@ -1207,7 +1207,7 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
-	if (!intel_dp_can_bigjoiner(intel_dp))
+	if (!intel_dp_has_bigjoiner(intel_dp))
 		return false;
 
 	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9f880d7865d1..8d1c3ca28159 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -120,7 +120,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
-bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
+bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
-- 
2.43.2

