Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E3C19C06A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B816EA5C;
	Thu,  2 Apr 2020 11:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED1C6EA5C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:48:49 +0000 (UTC)
IronPort-SDR: uUL89lgaacYHPrk9+SKRwjNasEZzdYDZR546At3ENXi2a894Q3witGDy5EZbezF91wCEKwJzNb
 GuDprSWV7Y9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:48:48 -0700
IronPort-SDR: mG+FJrFLUlu5q8f1sw6D1PKZh7uT91yRravb3/9Yy7bD5dgIEuHGmLcNzbTrgD4riYeAM/I3YY
 xLRMRQPGPbqg==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="449596085"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:48:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:05 +0300
Message-Id: <20200402114819.17232-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/17] drm/i915/tc: use struct drm_device based
 logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 47 ++++++++++++++-----------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 9b850c11aa78..275618bedf32 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -152,6 +152,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 				      u32 live_status_mask)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	u32 valid_hpd_mask;
 
 	if (dig_port->tc_legacy_port)
@@ -164,8 +165,9 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 		return;
 
 	/* If live status mismatches the VBT flag, trust the live status. */
-	DRM_ERROR("Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
-		  dig_port->tc_port_name, live_status_mask);
+	drm_err(&i915->drm,
+		"Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
+		dig_port->tc_port_name, live_status_mask);
 
 	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
 }
@@ -233,8 +235,7 @@ static bool icl_tc_phy_set_safe_mode(struct intel_digital_port *dig_port,
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, can't set safe-mode to %s\n",
-			    dig_port->tc_port_name,
-			      enableddisabled(enable));
+			    dig_port->tc_port_name, enableddisabled(enable));
 
 		return false;
 	}
@@ -286,11 +287,12 @@ static bool icl_tc_phy_is_in_safe_mode(struct intel_digital_port *dig_port)
 static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 			       int required_lanes)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	int max_lanes;
 
 	if (!icl_tc_phy_status_complete(dig_port)) {
-		DRM_DEBUG_KMS("Port %s: PHY not ready\n",
-			      dig_port->tc_port_name);
+		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
+			    dig_port->tc_port_name);
 		goto out_set_tbt_alt_mode;
 	}
 
@@ -311,15 +313,16 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	 * became disconnected. Not necessary for legacy mode.
 	 */
 	if (!(tc_port_live_status_mask(dig_port) & BIT(TC_PORT_DP_ALT))) {
-		DRM_DEBUG_KMS("Port %s: PHY sudden disconnect\n",
-			      dig_port->tc_port_name);
+		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
+			    dig_port->tc_port_name);
 		goto out_set_safe_mode;
 	}
 
 	if (max_lanes < required_lanes) {
-		DRM_DEBUG_KMS("Port %s: PHY max lanes %d < required lanes %d\n",
-			      dig_port->tc_port_name,
-			      max_lanes, required_lanes);
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: PHY max lanes %d < required lanes %d\n",
+			    dig_port->tc_port_name,
+			    max_lanes, required_lanes);
 		goto out_set_safe_mode;
 	}
 
@@ -357,15 +360,17 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 
 static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	if (!icl_tc_phy_status_complete(dig_port)) {
-		DRM_DEBUG_KMS("Port %s: PHY status not complete\n",
-			      dig_port->tc_port_name);
+		drm_dbg_kms(&i915->drm, "Port %s: PHY status not complete\n",
+			    dig_port->tc_port_name);
 		return dig_port->tc_mode == TC_PORT_TBT_ALT;
 	}
 
 	if (icl_tc_phy_is_in_safe_mode(dig_port)) {
-		DRM_DEBUG_KMS("Port %s: PHY still in safe mode\n",
-			      dig_port->tc_port_name);
+		drm_dbg_kms(&i915->drm, "Port %s: PHY still in safe mode\n",
+			    dig_port->tc_port_name);
 
 		return false;
 	}
@@ -438,6 +443,7 @@ intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
 
 void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_encoder *encoder = &dig_port->base;
 	int active_links = 0;
 
@@ -451,8 +457,9 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 
 	if (active_links) {
 		if (!icl_tc_phy_is_connected(dig_port))
-			DRM_DEBUG_KMS("Port %s: PHY disconnected with %d active link(s)\n",
-				      dig_port->tc_port_name, active_links);
+			drm_dbg_kms(&i915->drm,
+				    "Port %s: PHY disconnected with %d active link(s)\n",
+				    dig_port->tc_port_name, active_links);
 		intel_tc_port_link_init_refcount(dig_port, active_links);
 
 		goto out;
@@ -462,9 +469,9 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 		icl_tc_phy_connect(dig_port, 1);
 
 out:
-	DRM_DEBUG_KMS("Port %s: sanitize mode (%s)\n",
-		      dig_port->tc_port_name,
-		      tc_port_mode_name(dig_port->tc_mode));
+	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
+		    dig_port->tc_port_name,
+		    tc_port_mode_name(dig_port->tc_mode));
 
 	mutex_unlock(&dig_port->tc_lock);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
