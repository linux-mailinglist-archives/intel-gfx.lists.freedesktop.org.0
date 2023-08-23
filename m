Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EC3785E38
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865DF10E499;
	Wed, 23 Aug 2023 17:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7F910E48E;
 Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810563; x=1724346563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yKm0AJE+EwNg1ZupkJlL6X5cxxpWWKR9nsSCES3HtTI=;
 b=GwEzqNbg+BcJKTypWnd5ZpvzctM/z7GRtsY/fG9PcfCoXDWkbqXfRDCs
 55q8te5XnweMUAoU0cg/Fglo92i/K50skDz0oeMlh184CMo2R3yOkb9Eh
 V9s2M2OEdEqVOkP5e997gB9baQcXHX1YS+i23ryk4PiL5RV6xOU0xDSoR
 tDZNEf8jPdkNZlzbwYOdrO+Cp1UJWt5IC0fSf5T1n4wqhdelhXKSBZ5mk
 WMnxqvhfV06tM8/3hZm9a281juPTbfkv1fXRNji/MBHnmUHropL5lAMvo
 Jc6uHOylscanCWN78atbDXYzlbaT30g2YmFA4ez1q4sSqhdSrrb+K4Igc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147518"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147518"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204888"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204888"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:38 -0700
Message-Id: <20230823170740.1180212-41-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 40/42] drm/i915/lnl: Add support to check c10
 phy link rate
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add support to check c10 phy link rate for LNL in
intel_c10_phy_check_hdmi_link_rate() function.

BSpec: 68862
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c8da6985c179..d9c43f3b4f34 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2137,11 +2137,16 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
 	NULL,
 };
 
-static int intel_c10_phy_check_hdmi_link_rate(int clock)
+static int intel_c10_phy_check_hdmi_link_rate(struct drm_i915_private *i915, int clock)
 {
-	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
+	const struct intel_c10pll_state * const *tables;
 	int i;
 
+	if (DISPLAY_VER(i915) >= 20)
+		tables = lnl_c10_hdmi_tables;
+	else
+		tables = mtl_c10_hdmi_tables;
+
 	for (i = 0; tables[i]; i++) {
 		if (clock == tables[i]->clock)
 			return MODE_OK;
@@ -2414,7 +2419,7 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	if (intel_is_c10phy(i915, phy))
-		return intel_c10_phy_check_hdmi_link_rate(clock);
+		return intel_c10_phy_check_hdmi_link_rate(i915, clock);
 	return intel_c20_phy_check_hdmi_link_rate(clock);
 }
 
-- 
2.40.1

