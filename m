Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE7A3F5F45
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D63FF6E041;
	Tue, 24 Aug 2021 13:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3AE06E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:34:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204444938"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204444938"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="683975929"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:16 +0300
Message-Id: <17ff3112bb2bc3f7fb759306f9f24c4a84147e01.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/bios: use alternate aux channel
 directly from child data
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

Avoid extra caching of the data.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++------------
 drivers/gpu/drm/i915/i915_drv.h           |  1 -
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 10b2beddc121..674f1424fcc2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1565,28 +1565,29 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 	for_each_port(port) {
 		info = &i915->vbt.ddi_port_info[port];
 
-		if (info->devdata && aux_ch == info->alternate_aux_channel)
+		if (info->devdata && aux_ch == info->devdata->child.aux_channel)
 			return port;
 	}
 
 	return PORT_NONE;
 }
 
-static void sanitize_aux_ch(struct drm_i915_private *i915,
+static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 			    enum port port)
 {
-	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
+	struct drm_i915_private *i915 = devdata->i915;
+	struct ddi_vbt_port_info *info;
 	struct child_device_config *child;
 	enum port p;
 
-	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
+	p = get_port_by_aux_ch(i915, devdata->child.aux_channel);
 	if (p == PORT_NONE)
 		return;
 
 	drm_dbg_kms(&i915->drm,
 		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
 		    "disabling port %c DP support\n",
-		    port_name(port), info->alternate_aux_channel,
+		    port_name(port), devdata->child.aux_channel,
 		    port_name(p), port_name(p));
 
 	/*
@@ -1602,7 +1603,7 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
 	child = &info->devdata->child;
 
 	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
-	info->alternate_aux_channel = 0;
+	child->aux_channel = 0;
 }
 
 static const u8 cnp_ddc_pin_map[] = {
@@ -1980,11 +1981,8 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		}
 	}
 
-	if (is_dp) {
-		info->alternate_aux_channel = child->aux_channel;
-
-		sanitize_aux_ch(i915, port);
-	}
+	if (is_dp)
+		sanitize_aux_ch(devdata, port);
 
 	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
@@ -2863,7 +2861,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 		&i915->vbt.ddi_port_info[port];
 	enum aux_ch aux_ch;
 
-	if (!info->alternate_aux_channel) {
+	if (!info->devdata->child.aux_channel) {
 		aux_ch = (enum aux_ch)port;
 
 		drm_dbg_kms(&i915->drm,
@@ -2879,7 +2877,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
 	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
 	 */
-	switch (info->alternate_aux_channel) {
+	switch (info->devdata->child.aux_channel) {
 	case DP_AUX_A:
 		aux_ch = AUX_CH_A;
 		break;
@@ -2940,7 +2938,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 			aux_ch = AUX_CH_I;
 		break;
 	default:
-		MISSING_CASE(info->alternate_aux_channel);
+		MISSING_CASE(info->devdata->child.aux_channel);
 		aux_ch = AUX_CH_A;
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a0dead9f9222..91097526cd96 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -640,7 +640,6 @@ struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
 
-	u8 alternate_aux_channel;
 	u8 alternate_ddc_pin;
 };
 
-- 
2.20.1

