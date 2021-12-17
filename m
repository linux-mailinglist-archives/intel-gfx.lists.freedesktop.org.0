Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D924479096
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6996010E31B;
	Fri, 17 Dec 2021 15:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD7A10E4BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="326065648"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="326065648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="519790001"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 17 Dec 2021 07:54:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:54:01 +0200
Message-Id: <20211217155403.31477-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/bios: Throw out the
 !has_ddi_port_info() codepaths
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

Now that we parse the DDI port info from the VBT on all g4x+ platforms
we can throw out all the old codepaths in intel_bios_is_port_present(),
intel_bios_is_port_edp() and intel_bios_is_port_dp_dual_mode(). None
of these should be called on pre-g4x platforms.

For good measure throw in a WARN into intel_bios_is_port_present()
should someone get the urge to call it on older platforms. The
other two functions are specific to HDMI and DP so should not need
any protection as those encoder types don't even exist on older
platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 99 ++-----------------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 15 ---
 2 files changed, 9 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d7d64d3bf083..f5aa2c72b2fe 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2663,37 +2663,10 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
  */
 bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 {
-	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
-	static const struct {
-		u16 dp, hdmi;
-	} port_mapping[] = {
-		[PORT_B] = { DVO_PORT_DPB, DVO_PORT_HDMIB, },
-		[PORT_C] = { DVO_PORT_DPC, DVO_PORT_HDMIC, },
-		[PORT_D] = { DVO_PORT_DPD, DVO_PORT_HDMID, },
-		[PORT_E] = { DVO_PORT_DPE, DVO_PORT_HDMIE, },
-		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
-	};
+	if (WARN_ON(!has_ddi_port_info(i915)))
+		return true;
 
-	if (has_ddi_port_info(i915))
-		return i915->vbt.ports[port];
-
-	/* FIXME maybe deal with port A as well? */
-	if (drm_WARN_ON(&i915->drm,
-			port == PORT_A) || port >= ARRAY_SIZE(port_mapping))
-		return false;
-
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
-		child = &devdata->child;
-
-		if ((child->dvo_port == port_mapping[port].dp ||
-		     child->dvo_port == port_mapping[port].hdmi) &&
-		    (child->device_type & (DEVICE_TYPE_TMDS_DVI_SIGNALING |
-					   DEVICE_TYPE_DISPLAYPORT_OUTPUT)))
-			return true;
-	}
-
-	return false;
+	return i915->vbt.ports[port];
 }
 
 /**
@@ -2705,34 +2678,10 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
  */
 bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
 {
-	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
-	static const short port_mapping[] = {
-		[PORT_B] = DVO_PORT_DPB,
-		[PORT_C] = DVO_PORT_DPC,
-		[PORT_D] = DVO_PORT_DPD,
-		[PORT_E] = DVO_PORT_DPE,
-		[PORT_F] = DVO_PORT_DPF,
-	};
+	const struct intel_bios_encoder_data *devdata =
+		intel_bios_encoder_data_lookup(i915, port);
 
-	if (has_ddi_port_info(i915)) {
-		const struct intel_bios_encoder_data *devdata;
-
-		devdata = intel_bios_encoder_data_lookup(i915, port);
-
-		return devdata && intel_bios_encoder_supports_edp(devdata);
-	}
-
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
-		child = &devdata->child;
-
-		if (child->dvo_port == port_mapping[port] &&
-		    (child->device_type & DEVICE_TYPE_eDP_BITS) ==
-		    (DEVICE_TYPE_eDP & DEVICE_TYPE_eDP_BITS))
-			return true;
-	}
-
-	return false;
+	return devdata && intel_bios_encoder_supports_edp(devdata);
 }
 
 static bool child_dev_is_dp_dual_mode(const struct child_device_config *child)
@@ -2755,40 +2704,10 @@ static bool child_dev_is_dp_dual_mode(const struct child_device_config *child)
 bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
 				     enum port port)
 {
-	static const struct {
-		u16 dp, hdmi;
-	} port_mapping[] = {
-		/*
-		 * Buggy VBTs may declare DP ports as having
-		 * HDMI type dvo_port :( So let's check both.
-		 */
-		[PORT_B] = { DVO_PORT_DPB, DVO_PORT_HDMIB, },
-		[PORT_C] = { DVO_PORT_DPC, DVO_PORT_HDMIC, },
-		[PORT_D] = { DVO_PORT_DPD, DVO_PORT_HDMID, },
-		[PORT_E] = { DVO_PORT_DPE, DVO_PORT_HDMIE, },
-		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
-	};
-	const struct intel_bios_encoder_data *devdata;
+	const struct intel_bios_encoder_data *devdata =
+		intel_bios_encoder_data_lookup(i915, port);
 
-	if (has_ddi_port_info(i915)) {
-		const struct intel_bios_encoder_data *devdata;
-
-		devdata = intel_bios_encoder_data_lookup(i915, port);
-
-		return devdata && child_dev_is_dp_dual_mode(&devdata->child);
-	}
-
-	if (port == PORT_A || port >= ARRAY_SIZE(port_mapping))
-		return false;
-
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
-		if ((devdata->child.dvo_port == port_mapping[port].dp ||
-		     devdata->child.dvo_port == port_mapping[port].hdmi) &&
-		    child_dev_is_dp_dual_mode(&devdata->child))
-			return true;
-	}
-
-	return false;
+	return devdata && child_dev_is_dp_dual_mode(&devdata->child);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f043d85ba64d..c23582769f34 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -226,21 +226,6 @@ struct bdb_general_features {
 #define DEVICE_TYPE_DIGITAL_OUTPUT	(1 << 1)
 #define DEVICE_TYPE_ANALOG_OUTPUT	(1 << 0)
 
-/*
- * Bits we care about when checking for DEVICE_TYPE_eDP. Depending on the
- * system, the other bits may or may not be set for eDP outputs.
- */
-#define DEVICE_TYPE_eDP_BITS \
-	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
-	 DEVICE_TYPE_MIPI_OUTPUT |		\
-	 DEVICE_TYPE_COMPOSITE_OUTPUT |		\
-	 DEVICE_TYPE_DUAL_CHANNEL |		\
-	 DEVICE_TYPE_LVDS_SIGNALING |		\
-	 DEVICE_TYPE_TMDS_DVI_SIGNALING |	\
-	 DEVICE_TYPE_VIDEO_SIGNALING |		\
-	 DEVICE_TYPE_DISPLAYPORT_OUTPUT |	\
-	 DEVICE_TYPE_ANALOG_OUTPUT)
-
 #define DEVICE_TYPE_DP_DUAL_MODE_BITS \
 	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
 	 DEVICE_TYPE_MIPI_OUTPUT |		\
-- 
2.32.0

