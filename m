Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ECE68E5A4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9636210E68E;
	Wed,  8 Feb 2023 01:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37ADB10E689
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821318; x=1707357318;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+NCQvtoa0KFNDcv02kStQ/K5pyNKqok82PZngD26HpI=;
 b=kt1hLAuFVAQiwhNIpplZcIgRPebWogHETqYXlnmPJ4ODF1EnWjTG6IXe
 s9eU7RTVSUi9DnTUb4BVWq7On4OJW8awD5gRFGY7ZNJl5HvGRX7bWqUtS
 KgQQJElFqZlnJIJANC83ZIfH9dPY/yk6qDsXJHEyrCCLmnzrevoBXfzfD
 gOWxtDTJIkupD00wfkL2of9Z7w/Ht5IUzDD4zV8B3HsTANl6yHoe8tqt0
 GaCLeXROT0u2M3/cDn6XuGMyISUDqGGpbJKPJdT3zoHvPk6D2FHExE+d8
 jtrgYEt1aLCTCVOZ2ATKXKS5YzJ0NA7V1s9mHjqhTGS5JEdCAfm/y8ojn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974342"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974342"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672706"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672706"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:00 +0200
Message-Id: <20230208015508.24824-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Move variables to loop context
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

Lot of the loops over VBT child devices have variables
declared outside the loop but only used inside the loop.
Move the variables to a tighter scope.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++--------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1cd8af88ce50..6ea7396728ce 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1201,9 +1201,7 @@ child_device_ptr(const struct bdb_general_definitions *defs, int i)
 static void
 parse_sdvo_device_mapping(struct drm_i915_private *i915)
 {
-	struct sdvo_device_mapping *mapping;
 	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
 	int count = 0;
 
 	/*
@@ -1216,7 +1214,8 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 	}
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
+		struct sdvo_device_mapping *mapping;
 
 		if (child->slave_addr != SLAVE_ADDR1 &&
 		    child->slave_addr != SLAVE_ADDR2) {
@@ -2074,7 +2073,6 @@ parse_compression_parameters(struct drm_i915_private *i915)
 {
 	const struct bdb_compression_parameters *params;
 	struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
 	u16 block_size;
 	int index;
 
@@ -2099,7 +2097,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	}
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
 
 		if (!child->compression_enable)
 			continue;
@@ -2225,14 +2223,14 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 
 static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 {
-	const struct intel_bios_encoder_data *devdata;
 	enum port port;
 
 	if (!ddc_pin)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		devdata = i915->display.vbt.ports[port];
+		const struct intel_bios_encoder_data *devdata =
+			i915->display.vbt.ports[port];
 
 		if (devdata && ddc_pin == devdata->child.ddc_pin)
 			return port;
@@ -2291,14 +2289,14 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 
 static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 {
-	const struct intel_bios_encoder_data *devdata;
 	enum port port;
 
 	if (!aux_ch)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		devdata = i915->display.vbt.ports[port];
+		const struct intel_bios_encoder_data *devdata =
+			i915->display.vbt.ports[port];
 
 		if (devdata && aux_ch == devdata->child.aux_channel)
 			return port;
@@ -3305,7 +3303,6 @@ void intel_bios_fini_panel(struct intel_panel *panel)
 bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 {
 	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
 
 	if (!i915->display.vbt.int_tv_support)
 		return false;
@@ -3314,7 +3311,7 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 		return true;
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
 
 		/*
 		 * If the device type is not TV, continue.
@@ -3348,13 +3345,12 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 {
 	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
 
 	if (list_empty(&i915->display.vbt.display_devices))
 		return true;
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
 
 		/* If the device type is not LFP, continue.
 		 * We have to check both the new identifiers as well as the
@@ -3456,17 +3452,14 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
 			       enum port *port)
 {
 	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
-	u8 dvo_port;
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
+		u8 dvo_port = child->dvo_port;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
 			continue;
 
-		dvo_port = child->dvo_port;
-
 		if (dsi_dvo_port_to_port(i915, dvo_port) == PORT_NONE) {
 			drm_dbg_kms(&i915->drm,
 				    "VBT has unsupported DSI port %c\n",
@@ -3553,10 +3546,9 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_bios_encoder_data *devdata;
-	const struct child_device_config *child;
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
-		child = &devdata->child;
+		const struct child_device_config *child = &devdata->child;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
 			continue;
-- 
2.39.1

