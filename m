Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819DF6A19DF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5413A10E878;
	Fri, 24 Feb 2023 10:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF8F10E880
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233967; x=1708769967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2UCVSkjkA8kXMuwjDIj/JEX3GqP/jDJrlRkJv6/rh8c=;
 b=FNc1ajB3kHS5bNYPPu0J7TvaiBt6qiQUBmsy6g2D5zA0MSgsjkte21pI
 Fb576G9oyK6M6UiSJ+kJBCJjFEn0rGPIZBdMBSoO8RPIqnAt5SV9Me3Lh
 zesnCyJMGkgRswvnWX3xBLQbAF4INSbZeu2EvqPBCflz1fVOaPBy9KA9e
 jO+8ESk9OJqkQ+xuQNwvdyb64xCWQYOAhsac44ApG1ahOjJyUtnT+5UQn
 /Unld0F0DJVPMBqTLmMVVFF5qiIavTiLHvBJ89AtrKAKkjUHRwt/HFUOA
 yy00pEYxBgxxXnOKPyKL9ACaa6eWB8pX3rd5x2CR5/3bKeBnH6e7Dvw09 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129881"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129881"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846597"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846597"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:26 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:46 +0200
Message-Id: <20230224101356.2390838-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/22] drm/i915/mtl: C20 HDMI state
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
index 60db8d1b7589..434ca994be4c 100644
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

