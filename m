Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8880B41EE0A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A125D6ECB5;
	Fri,  1 Oct 2021 13:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772836ECB5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:01:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="225083558"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="225083558"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="564939870"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Oct 2021 06:01:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:00:58 +0300
Message-Id: <20211001130107.1746-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/10] drm/i915: Introduce has_iboost()
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

Suck the "do we have iboost?" platform checks into a small helper.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 51cd0420e00e..f6429114ce7c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -92,6 +92,11 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
 	return level;
 }
 
+static bool has_iboost(struct drm_i915_private *i915)
+{
+	return DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915);
+}
+
 /*
  * Starting with Haswell, DDI port buffers must be programmed with correct
  * values in advance. This function programs the correct values for
@@ -111,7 +116,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 		return;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
+	if (has_iboost(dev_priv) &&
 	    intel_bios_encoder_dp_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
@@ -145,7 +150,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		level = n_entries - 1;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
+	if (has_iboost(dev_priv) &&
 	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
@@ -1463,7 +1468,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
+	if (has_iboost(dev_priv))
 		skl_ddi_set_iboost(encoder, crtc_state, level);
 
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
@@ -3084,7 +3089,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	else
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state, level);
 
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
+	if (has_iboost(dev_priv))
 		skl_ddi_set_iboost(encoder, crtc_state, level);
 
 	/* Display WA #1143: skl,kbl,cfl */
-- 
2.32.0

