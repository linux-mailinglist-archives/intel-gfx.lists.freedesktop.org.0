Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A0F2C8FE1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1396E8BF;
	Mon, 30 Nov 2020 21:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4976E8B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:10 +0000 (UTC)
IronPort-SDR: utELd5L2lFfjZ4hTFfkIJh7+4Bs49V7cad4FgFd1tqtfVHpsLRvGJ0f+OUHaqTzNbRcPZ7++lq
 jX/AFr2282WA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424736"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424736"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:09 -0800
IronPort-SDR: wcV9KLLcdIeEdckn9jEw8Jfmpq1CxAq0LhCNZEd+6Oc6qWfd4yaOt1CQgmEES2AUJJia/mdU3z
 h5uf/La7tO1Q==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810556"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:56 +0200
Message-Id: <20201130212200.2811939-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/ddi: Track power reference taken
 for encoder main lane AUX use
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

Add wakeref tracking for the DDI encoders' main lane AUX display power
domain references.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 23 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9518d298b0f7..bfcfe8c3567e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2296,9 +2296,12 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 	 * ports.
 	 */
 	if (intel_crtc_has_dp_encoder(crtc_state) ||
-	    intel_phy_is_tc(dev_priv, phy))
-		intel_display_power_get(dev_priv,
-					intel_ddi_main_link_aux_domain(dig_port));
+	    intel_phy_is_tc(dev_priv, phy)) {
+		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
+		dig_port->aux_wakeref =
+			intel_display_power_get(dev_priv,
+						intel_ddi_main_link_aux_domain(dig_port));
+	}
 }
 
 void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
@@ -4042,8 +4045,9 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		icl_unmap_plls_to_ports(encoder);
 
 	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
-		intel_display_power_put_unchecked(dev_priv,
-						  intel_ddi_main_link_aux_domain(dig_port));
+		intel_display_power_put(dev_priv,
+					intel_ddi_main_link_aux_domain(dig_port),
+					fetch_and_zero(&dig_port->aux_wakeref));
 
 	if (is_tc_port)
 		intel_tc_port_put_link(dig_port);
@@ -4378,9 +4382,12 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	if (is_tc_port)
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
 
-	if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port)
-		intel_display_power_get(dev_priv,
-					intel_ddi_main_link_aux_domain(dig_port));
+	if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port) {
+		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
+		dig_port->aux_wakeref =
+			intel_display_power_get(dev_priv,
+						intel_ddi_main_link_aux_domain(dig_port));
+	}
 
 	if (is_tc_port && dig_port->tc_mode != TC_PORT_TBT_ALT)
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 91ed5c445150..22f7328023a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1467,6 +1467,7 @@ struct intel_digital_port {
 	enum aux_ch aux_ch;
 	enum intel_display_power_domain ddi_io_power_domain;
 	intel_wakeref_t ddi_io_wakeref;
+	intel_wakeref_t aux_wakeref;
 	struct mutex tc_lock;	/* protects the TypeC port mode */
 	intel_wakeref_t tc_lock_wakeref;
 	int tc_link_refcount;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
