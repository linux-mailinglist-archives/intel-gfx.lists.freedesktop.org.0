Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF31A4D69E0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 22:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3B610EAD6;
	Fri, 11 Mar 2022 21:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0689F10EAD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 21:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647034129; x=1678570129;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4lEWJKHmkSDk4CpKKqLaMP5QtppZ/wZXsXiAHF1ybME=;
 b=acLZAIk/8V6cM8A3FjuZHRndzZ+9aneAttVghei/Mj5mcLgBeQgrfnnh
 VuqpscU8kij3oeO+dlbafToYy1mYXGY7SoOKpzyI4E3McCuy+nQT/3iwf
 tkvop+RJ38ApMKBsbYZ9nAWSOemz0y5fSuDrJQV/4veMSrsYpXYbu1XYw
 H5bV6e2bbCwkPO2mqKQ0XiLKljruY3dcT3m5rbFhMK3V2kNwOhVnd/Huc
 3S8EjNmolVAFt52SrwTLqSf1VDtfKxXMD5HclSqFYXhSZQCtTT54lrf4o
 LUe+7bgk4+/OubAJ5iKq3/MiH+bbLUF7X9gkF01e3iv1GSZ/PJrOtOHk9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255391478"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255391478"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 13:28:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="511511787"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2022 13:28:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 23:28:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 23:28:45 +0200
Message-Id: <20220311212845.32358-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reject unsupported TMDS rates on ICL+
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

ICL+ PLLs can't genenerate certain frequencies. Running the PLL
algorithms through for all frequencies 25-594MHz we see a gap just
above 500 MHz. Specifically 500-522.8MHZ for TC PLLs, and 500-533.2
MHz for combo PHY PLLs. Reject those frequencies hdmi_port_clock_valid()
so that we properly filter out unsupported modes and/or color depths
for HDMI.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5247
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f3e688f739f3..a4a6f8bd2841 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1837,6 +1837,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		      bool has_hdmi_sink)
 {
 	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	enum phy phy = intel_port_to_phy(dev_priv, hdmi_to_dig_port(hdmi)->base.port);
 
 	if (clock < 25000)
 		return MODE_CLOCK_LOW;
@@ -1857,6 +1858,14 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	if (IS_CHERRYVIEW(dev_priv) && clock > 216000 && clock < 240000)
 		return MODE_CLOCK_RANGE;
 
+	/* ICL+ combo PHY PLL can't generate 500-533.2 MHz */
+	if (intel_phy_is_combo(dev_priv, phy) && clock > 500000 && clock < 533200)
+		return MODE_CLOCK_RANGE;
+
+	/* ICL+ TC PHY PLL can't generate 500-532.8 MHz */
+	if (intel_phy_is_tc(dev_priv, phy) && clock > 500000 && clock < 532800)
+		return MODE_CLOCK_RANGE;
+
 	/*
 	 * SNPS PHYs' MPLLB table-based programming can only handle a fixed
 	 * set of link rates.
-- 
2.34.1

