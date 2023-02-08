Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA0B68E5A8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0891010E691;
	Wed,  8 Feb 2023 01:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C12F10E690
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821330; x=1707357330;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jW6o6fEHRN5TbnJXmH9qD+RQ32MGpclHQX4qz/30LgU=;
 b=DdGwKXPDCCHxxzwrMRUiOJ3vy6whYh0f9JWUMyBQzX4mVsSFr1Ih/TS7
 DL30fCLGqw/91WniKMjySSU5/HZPCq92YImDbgI4q51m8ljHWKffWxg26
 fnGbCLoO+eG6+urAK6n7lPrVOsjlLMHj9EhI34s1RCWOq4fjAzig95M/n
 0WXdZepwlVdJvMcArO0xj9J5smShlzRHvRTYp02nkCu5Fmicncy2Sp2Wr
 4CyC92GgEiLvfg6C6Gdwb0AzGaj1c7P5wOgByNrmrAyQc3mSLPG9B/hQD
 qGnMKgqIzlWecxrLtCR9C0uWGNAxuLwKFxOCL+xMLbgzAKSaiyqpcdva+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974360"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974360"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672716"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672716"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:04 +0200
Message-Id: <20230208015508.24824-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Consult the registested
 encoders for the ICL combo PHY w/a
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

Display WA #1178 calls us to tweak some magic bits when doing AUX
to an external combo PHY port. Instead of looking to see if the VBT
has declared such a port (which could in theory even alias with a
declared eDP port on the same PHY) just check the real situation
based on the registered encoders.

The only slight chicken vs. egg situation here is during output
probing. But typically we'd register the eDP ports first and so
once we get to probe anything external on the combo PHY we have
already determined if it's eDP or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_power_well.c   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8710dd41ffd4..56a20bf5825b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -391,6 +391,19 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
 
+static bool intel_port_is_edp(struct drm_i915_private *i915, enum port port)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder(&i915->drm, encoder) {
+		if (encoder->type == INTEL_OUTPUT_EDP &&
+		    encoder->port == port)
+			return true;
+	}
+
+	return false;
+}
+
 static void
 icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
@@ -416,7 +429,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
-	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
+	    !intel_port_is_edp(dev_priv, (enum port)phy)) {
 		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
 		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
-- 
2.39.1

