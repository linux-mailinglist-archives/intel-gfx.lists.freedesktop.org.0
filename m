Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112339A4797
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696EE10E985;
	Fri, 18 Oct 2024 20:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUXEXgUk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC9A10E97F;
 Fri, 18 Oct 2024 20:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281799; x=1760817799;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CxEMRNRRIw0dhB2YfRGBrSPT+a0j8CSQ8HxSmRv4Olg=;
 b=MUXEXgUk+r7ewzen7mq4QHebEzykjsDEgp+2z/yWTpy2ab2IQ0LpcNEm
 BUhoVwcpyOmDKRAU+KtybuVmLMhJhRv6vYjxkdkyG8vz54zxizriVgllh
 14DyyQmi+rdbfay+BXmg9aQvBqd+sVaRu3KYxV+Ipb3aUnh6X2AjibUWK
 59tvQOrey5w0EwXrE7YGkFQrtfnTN4HFcLDTuHLZOq+AQJXRp81HAGJh/
 RukAPdHdLsJu2SGWvbEQg3eC+rhwRaBWOjpN6H6sZdL6Outb8j9nedXEB
 rrs/Qih6O8UkwY/+i6jKAiGlYIPiXbSJXwOCqnbGPy355IiKXQtIEJtU0 A==;
X-CSE-ConnectionGUID: i1ZXjQouTEmvpBWhh+2CsA==
X-CSE-MsgGUID: ClOwbYEZSzqM1NHi+7niig==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28286795"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28286795"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:19 -0700
X-CSE-ConnectionGUID: hqkDwF5iQHS9RmtrdliIrg==
X-CSE-MsgGUID: 4d/424tJR2uoK2q+de3wJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="102263864"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:18 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>
Subject: [PATCH v4 4/7] drm/i915/xe3lpd: Add C20 Phy consolidated programming
 table
Date: Fri, 18 Oct 2024 13:03:08 -0700
Message-ID: <20241018200311.67324-5-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018200311.67324-1-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

From DISPLAY_VER() >= 30 C20 PHY consolidated programming table of
DP and eDP been merged and now use the same rates and values. eDP
over TypeC has also been introduced.
Moreover it allows more granular and higher rates. Add new table to
represent this change.

Bspec: 68961
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 +++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f73d576fd99e..f878ef1a97ec 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1122,6 +1122,22 @@ static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
 	NULL,
 };
 
+static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_tables[] = {
+	&mtl_c20_dp_rbr,
+	&xe2hpd_c20_edp_r216,
+	&xe2hpd_c20_edp_r243,
+	&mtl_c20_dp_hbr1,
+	&xe2hpd_c20_edp_r324,
+	&xe2hpd_c20_edp_r432,
+	&mtl_c20_dp_hbr2,
+	&xe2hpd_c20_edp_r675,
+	&mtl_c20_dp_hbr3,
+	&mtl_c20_dp_uhbr10,
+	&xe2hpd_c20_dp_uhbr13_5,
+	&mtl_c20_dp_uhbr20,
+	NULL,
+};
+
 /*
  * HDMI link rates with 38.4 MHz reference clock.
  */
@@ -2242,10 +2258,14 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-			return xe2hpd_c20_edp_tables;
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+				return xe2hpd_c20_edp_tables;
+		}
 
-		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+		if (DISPLAY_VER(i915) >= 30)
+			return xe3lpd_c20_dp_edp_tables;
+		else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
 			return xe2hpd_c20_dp_tables;
 		else
 			return mtl_c20_dp_tables;
-- 
2.45.0

