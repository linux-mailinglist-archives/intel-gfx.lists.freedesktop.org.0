Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E93194334F0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 13:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D762A6E133;
	Tue, 19 Oct 2021 11:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9826E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 11:43:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="215410311"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="215410311"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:43:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="494057850"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:43:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Swati Sharma <swati2.sharma@intel.com>
Date: Tue, 19 Oct 2021 14:43:34 +0300
Message-Id: <20211019114334.24643-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/bios: gracefully disable dual
 eDP for now"
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

This reverts commit 05734ca2a8f76c9eb3890b3c9dfc3467f03105c1.

It's not graceful, instead it leads to boot time warning splats in the
case it is supposed to handle gracefully. Apparently the BIOS/GOP
enabling the port we end up skipping leads to state readout
problems. Back to the drawing board.

References: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21255/bat-adlp-4/boot0.txt
Fixes: 05734ca2a8f7 ("drm/i915/bios: gracefully disable dual eDP for now")
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 47 -----------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b99907c656bb..f9776ca85de3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1930,50 +1930,6 @@ static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devd
 	}
 }
 
-static enum port get_edp_port(struct drm_i915_private *i915)
-{
-	const struct intel_bios_encoder_data *devdata;
-	enum port port;
-
-	for_each_port(port) {
-		devdata = i915->vbt.ports[port];
-
-		if (devdata && intel_bios_encoder_supports_edp(devdata))
-			return port;
-	}
-
-	return PORT_NONE;
-}
-
-/*
- * FIXME: The power sequencer and backlight code currently do not support more
- * than one set registers, at least not on anything other than VLV/CHV. It will
- * clobber the registers. As a temporary workaround, gracefully prevent more
- * than one eDP from being registered.
- */
-static void sanitize_dual_edp(struct intel_bios_encoder_data *devdata,
-			      enum port port)
-{
-	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child = &devdata->child;
-	enum port p;
-
-	/* CHV might not clobber PPS registers. */
-	if (IS_CHERRYVIEW(i915))
-		return;
-
-	p = get_edp_port(i915);
-	if (p == PORT_NONE)
-		return;
-
-	drm_dbg_kms(&i915->drm, "both ports %c and %c configured as eDP, "
-		    "disabling port %c eDP\n", port_name(p), port_name(port),
-		    port_name(port));
-
-	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
-	child->device_type &= ~DEVICE_TYPE_INTERNAL_CONNECTOR;
-}
-
 static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 {
 	/*
@@ -2031,9 +1987,6 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
-	if (is_edp)
-		sanitize_dual_edp(devdata, port);
-
 	if (is_dvi)
 		sanitize_ddc_pin(devdata, port);
 
-- 
2.30.2

