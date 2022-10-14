Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EF75FEE32
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C3C10EAEA;
	Fri, 14 Oct 2022 12:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0249810EADF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751930; x=1697287930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dAlAPuhYxYV7krMzhfjJf49UBeI91pCZcbHLZFHlpwI=;
 b=lcWsHDCOYWC3NRvVQBDqo26u7nicc14G/98QwrDj2JuA615rC+vo21Oa
 3Sahmg234ho05peZ+8gS/RGCamDmgjifQP/kBLjnuYwqyGSt5QRepo7tp
 S0fyBY0FbKDxRPPRWYbBgkOyDTUhXoIpSf/kg6q5im0fOvfUnOOJjcRLI
 ZjozmIMACt4iLBE78GbW60M2fWQOQDqv1HH7gl5I9CJ03l42mZUHdooMU
 OutOdez7tJ7igRHRcX7nskktISNV/KIbEO1CImmchVwcUMFqToESWe3sy
 CxuIMQ+xHAe3Bg8u9RRnSHEudYY3lHXfTAsC2IUZ+bX8W+yZ/0SPkI8e9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104659"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104659"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739780"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739780"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:31 +0300
Message-Id: <20221014124740.774835-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/20] drm/i915/mtl: C20 HDMI state calculations
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3c0c6bf190d6..088f59c26dde 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1340,9 +1340,19 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
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

