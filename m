Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95F62EB908
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 05:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB89789DBC;
	Wed,  6 Jan 2021 04:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E82889DBC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 04:49:29 +0000 (UTC)
IronPort-SDR: 5vl1eFfiqrC7EiTxuxZ1zhzLrbKw2FR1faOc+f6FJfwHm/l/S3ZgxDwJvh5ZGnSytaAqi3zCUu
 RdkixBanJDIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="195771562"
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; d="scan'208";a="195771562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 20:49:28 -0800
IronPort-SDR: O5hC0S47lbOH0jci06SxthBSTsgRv2TlxQFSytWRhqk3uhj+gneWhFl6AZItXpsJxK9QBKAW35
 lxXCuV/GK1Jg==
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; d="scan'208";a="379145079"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 20:49:25 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 10:04:38 +0530
Message-Id: <20210106043438.27754-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210105051353.5714-1-anshuman.gupta@intel.com>
References: <20210105051353.5714-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2] drm/i915/pps: Add PPS power domain
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It abstracts getting the AUX power domain in pps_lock under
PPS power domain. This makes sure that the platforms which really
requires AUX power in order to access PPS registers will get the
reference to necessary power wells.

PPS power domain requires only to track the AUX_A associated
power wells as the platforms need AUX power in order to access PPS
registers supports eDP only on PORT_A.

v2:
- Fixed missed POWER_DOMAIN_PPS in pps_unlock().

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 7 ++-----
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d52374f01316..1dc4ca9e5d1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -107,6 +107,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "VGA";
 	case POWER_DOMAIN_AUDIO:
 		return "AUDIO";
+	case POWER_DOMAIN_PPS:
+		return "PPS";
 	case POWER_DOMAIN_AUX_A:
 		return "AUX_A";
 	case POWER_DOMAIN_AUX_B:
@@ -2651,11 +2653,13 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
 	BIT_ULL(POWER_DOMAIN_MODESET) |			\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_PPS) |			\
 	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 #define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
 	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_PPS) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 #define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
 	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
@@ -2688,6 +2692,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 #define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
 	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_PPS) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 #define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
 	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
@@ -2700,6 +2705,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 #define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
 	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
+	BIT_ULL(POWER_DOMAIN_PPS) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 #define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
 	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
@@ -2712,6 +2718,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
 	BIT_ULL(POWER_DOMAIN_MODESET) |			\
 	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
+	BIT_ULL(POWER_DOMAIN_PPS) |			\
 	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
 	BIT_ULL(POWER_DOMAIN_INIT))
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index bc30c479be53..7642be3c8e2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -55,6 +55,7 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_OTHER,
 	POWER_DOMAIN_VGA,
 	POWER_DOMAIN_AUDIO,
+	POWER_DOMAIN_PPS,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8a00e609085f..99b4bec3c926 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -895,8 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
 	 * See intel_power_sequencer_reset() why we need
 	 * a power domain reference here.
 	 */
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
+	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_PPS);
 
 	mutex_lock(&dev_priv->pps_mutex);
 
@@ -909,9 +908,7 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	mutex_unlock(&dev_priv->pps_mutex);
-	intel_display_power_put(dev_priv,
-				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
-				wakeref);
+	intel_display_power_put(dev_priv, POWER_DOMAIN_PPS, wakeref);
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
