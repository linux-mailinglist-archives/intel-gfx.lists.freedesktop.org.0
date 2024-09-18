Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BB197C049
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 21:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB53010E627;
	Wed, 18 Sep 2024 19:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLrW+EnY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F18810E626
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 19:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726686290; x=1758222290;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RtQgLkxVcXSJf9PtjKUB1g6Ks5CIi5i0MkQGYM/KttY=;
 b=BLrW+EnYkNIXthI+lJEZVMivWYhMT3svaGkGWwsHpOMoGk0VrXJN5yPh
 3nYJYKTdDTi418PkFBozSKPF3ACVCyKvh426fYSxEZvdv9stfinE4aJbQ
 pkzyb1ej6BixeuIgMxHtyDQAxQFOJ3dlkJCzRpaclsCm8X/gMrdy5tFkk
 sRtG1QNy7qhkXt/3CDyMY3JxGdfBcrBgx/B/vutMIqyAqZQn1KaDnPL2E
 biQBKP/br1VI2gM97woSh16htaCqgJMRBb1BtPpMQ++MjhJYRQ8ePUbEX
 3imAzOywJQFRPS5IPANybjOYyNidHXjbYg0H57ACKIotB+LA3u6jJvaw6 Q==;
X-CSE-ConnectionGUID: 3G7FGF2USNykcdNopXskhA==
X-CSE-MsgGUID: Z0Hc+nfMR7yCblC6UjDH8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48147717"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="48147717"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 12:04:50 -0700
X-CSE-ConnectionGUID: PwmIATHASdG3czP0xgQJGQ==
X-CSE-MsgGUID: 1ISGeq64Th+pbpkmAR7Waw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69786648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 12:04:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 22:04:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/dp: Extract intel_edp_set_sink_rates()
Date: Wed, 18 Sep 2024 22:04:41 +0300
Message-ID: <20240918190441.29071-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
References: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
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

Declutter intel_edp_init_dpcd() a bit by extracting the sink
rates probing into its own function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 76 +++++++++++++------------
 1 file changed, 40 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6a1b0e93a1fc..ae3f242fa925 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4066,6 +4066,45 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
 }
 
+static void
+intel_edp_set_sink_rates(struct intel_dp *intel_dp)
+{
+	intel_dp->num_sink_rates = 0;
+
+	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
+		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
+		int i;
+
+		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
+				 sink_rates, sizeof(sink_rates));
+
+		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
+			int val = le16_to_cpu(sink_rates[i]);
+
+			if (val == 0)
+				break;
+
+			/* Value read multiplied by 200kHz gives the per-lane
+			 * link rate in kHz. The source rates are, however,
+			 * stored in terms of LS_Clk kHz. The full conversion
+			 * back to symbols is
+			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
+			 */
+			intel_dp->sink_rates[i] = (val * 200) / 10;
+		}
+		intel_dp->num_sink_rates = i;
+	}
+
+	/*
+	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
+	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
+	 */
+	if (intel_dp->num_sink_rates)
+		intel_dp->use_rate_select = true;
+	else
+		intel_dp_set_sink_rates(intel_dp);
+}
+
 static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
@@ -4110,42 +4149,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 */
 	intel_psr_init_dpcd(intel_dp);
 
-	/* Clear the default sink rates */
-	intel_dp->num_sink_rates = 0;
-
-	/* Read the eDP 1.4+ supported link rates. */
-	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
-		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
-		int i;
-
-		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
-				sink_rates, sizeof(sink_rates));
-
-		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
-			int val = le16_to_cpu(sink_rates[i]);
-
-			if (val == 0)
-				break;
-
-			/* Value read multiplied by 200kHz gives the per-lane
-			 * link rate in kHz. The source rates are, however,
-			 * stored in terms of LS_Clk kHz. The full conversion
-			 * back to symbols is
-			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
-			 */
-			intel_dp->sink_rates[i] = (val * 200) / 10;
-		}
-		intel_dp->num_sink_rates = i;
-	}
-
-	/*
-	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
-	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
-	 */
-	if (intel_dp->num_sink_rates)
-		intel_dp->use_rate_select = true;
-	else
-		intel_dp_set_sink_rates(intel_dp);
+	intel_edp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-- 
2.44.2

