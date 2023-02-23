Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF246A0AFF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD0210EB93;
	Thu, 23 Feb 2023 13:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195C510E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159954; x=1708695954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lbZJeN6kSpf8KSPEM9v8dPts+l7XMLBw4K9IdyATHW4=;
 b=jzmv5JRHrSTJn0yEkEySR1GWWqYBzJocj4nFLuSC9cgetE8pqJ3ojxNH
 wADUHcIMe0J5oUvOu9JfzjcBsRb8dJlh2LRQINkbiYoDZI+ak9tRlj7OS
 V2CVj0c0vUw2mr9ptipBIUBErher5lED5zBK+acZ08l+qGzGySwRc3J0E
 lyUE/b0liPekaIAIc/Is34MfUUEu7bsffAp1Nm3ZIKRaFaaLpcTtUv82h
 8Una6tzhcmh96hLPaXZDfZqprJRelqnLYPi0JmQFhDGmZo09hg+lNHmOR
 9gjLOPGFohGhvErvegSn/d0ut0xg2sLHrB21YZYwFBH/Q9KNGz6BilcNl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581661"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562502"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562502"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:52 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:11 +0200
Message-Id: <20230223134021.2236889-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/22] drm/i915/mtl: C20 HDMI state
 calculations
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

Add C20 HDMI state calculations and put HDMI table definitions
in use.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 84218d3f1f23..30a72768a16d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1632,6 +1632,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 {
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		return mtl_c20_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c20_hdmi_tables;
 	}
 
 	MISSING_CASE(encoder->type);
@@ -1672,9 +1674,19 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c20_phy_check_hdmi_link_rate(crtc_state->port_clock) != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				    crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
-- 
2.34.1

