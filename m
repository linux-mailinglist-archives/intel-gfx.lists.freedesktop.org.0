Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C636699FC1F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62CD10E62D;
	Tue, 15 Oct 2024 23:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n9XjNioB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569DC10E62D;
 Tue, 15 Oct 2024 23:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033897; x=1760569897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CxEMRNRRIw0dhB2YfRGBrSPT+a0j8CSQ8HxSmRv4Olg=;
 b=n9XjNioBEJs6RIbTwodsGTJI/UD//XPsRqeSgEtXZk7LTtzIabaZKb5f
 pIytUrsrSEMP2DWkpeeAXtHeG2kGeZ7oqoOyX2OQtGnG/2pYH3QJ83zSr
 14696XDjF+QnyKEuQA23Uabro4KmBrCg71W4luEJSMUKSszBCFKZhkBxX
 LIIqGnWU7DOLKqMhTCBrp6CIsxVN/RsNStM90BqIzXFBs/nonFq96RvfW
 81qSe4tYKmxBhyRRFRnvh9+J3FNgwtTrxmMQQKL38z4wrX2qaHAEtmHKO
 z+TKkr9rQC2OoVw0sNUPK4wUUdyfdVg8iVdTGrHGr1kAZR7IY5XbYnFy6 Q==;
X-CSE-ConnectionGUID: m63a9fG6RS6fxjTOIDqHww==
X-CSE-MsgGUID: sle7WiU5QNOzVNfkXErqxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600793"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600793"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:35 -0700
X-CSE-ConnectionGUID: leBULzdCTduRl4GPGGl7rg==
X-CSE-MsgGUID: nJ7M1sjmRL2aAWbq0N/7lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120425"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:34 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>
Subject: [PATCH v3 4/7] drm/i915/xe3lpd: Add C20 Phy consolidated programming
 table
Date: Tue, 15 Oct 2024 16:11:21 -0700
Message-ID: <20241015231124.23982-5-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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

