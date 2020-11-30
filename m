Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFAD2C8FDE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A886E8B6;
	Mon, 30 Nov 2020 21:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B496E8B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:08 +0000 (UTC)
IronPort-SDR: BBBaNLvSvQ8Nq+sCzNXXNMdJsBmibtnZXfngjsmVy0UOhNw2UC1yEJdfmzpTHIy4H8Jz39FGUH
 o9XQ6oBlZKnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424734"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424734"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:08 -0800
IronPort-SDR: gGcciGz/FIzsmfHxW73D6wJjz20Eg+zpCketQUg5VKm0F1MGIfT2Yvw4iq9aUsRqiH/+3RebUN
 Y/pjuAt7MW2A==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810548"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:55 +0200
Message-Id: <20201130212200.2811939-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/ddi: Track power reference taken
 for encoder DDI IO use
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add wakeref tracking for the DDI encoders' DDI_IO display power domain
references.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 38 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 92940a0c5ef8..9518d298b0f7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2285,9 +2285,11 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 	dig_port = enc_to_dig_port(encoder);
 
 	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT)
-		intel_display_power_get(dev_priv,
-					dig_port->ddi_io_power_domain);
+	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+								   dig_port->ddi_io_power_domain);
+	}
 
 	/*
 	 * AUX power is only needed for (e)DP mode, and for HDMI mode on TC
@@ -3577,9 +3579,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
 	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT)
-		intel_display_power_get(dev_priv,
-					dig_port->ddi_io_power_domain);
+	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+								   dig_port->ddi_io_power_domain);
+	}
 
 	/* 6. Program DP_MODE */
 	icl_program_mg_dp_mode(dig_port, crtc_state);
@@ -3698,9 +3702,11 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_clk_select(encoder, crtc_state);
 
 	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT)
-		intel_display_power_get(dev_priv,
-					dig_port->ddi_io_power_domain);
+	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+								   dig_port->ddi_io_power_domain);
+	}
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
@@ -3778,7 +3784,9 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
 	intel_ddi_clk_select(encoder, crtc_state);
 
-	intel_display_power_get(dev_priv, dig_port->ddi_io_power_domain);
+	drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
+	dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+							   dig_port->ddi_io_power_domain);
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
@@ -3936,8 +3944,9 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 
 	if (!intel_phy_is_tc(dev_priv, phy) ||
 	    dig_port->tc_mode != TC_PORT_TBT_ALT)
-		intel_display_power_put_unchecked(dev_priv,
-						  dig_port->ddi_io_power_domain);
+		intel_display_power_put(dev_priv,
+					dig_port->ddi_io_power_domain,
+					fetch_and_zero(&dig_port->ddi_io_wakeref));
 
 	intel_ddi_clk_disable(encoder);
 }
@@ -3958,8 +3967,9 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
 
-	intel_display_power_put_unchecked(dev_priv,
-					  dig_port->ddi_io_power_domain);
+	intel_display_power_put(dev_priv,
+				dig_port->ddi_io_power_domain,
+				fetch_and_zero(&dig_port->ddi_io_wakeref));
 
 	intel_ddi_clk_disable(encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2dcda480b714..91ed5c445150 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1466,6 +1466,7 @@ struct intel_digital_port {
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;
 	enum intel_display_power_domain ddi_io_power_domain;
+	intel_wakeref_t ddi_io_wakeref;
 	struct mutex tc_lock;	/* protects the TypeC port mode */
 	intel_wakeref_t tc_lock_wakeref;
 	int tc_link_refcount;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
