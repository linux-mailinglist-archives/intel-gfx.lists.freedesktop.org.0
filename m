Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDE484715
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A184210E24E;
	Tue,  4 Jan 2022 17:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D9910E24E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318023; x=1672854023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d7zQz9j/bOMUs+lYq7alXFEJylE8FTir5j7kT7DJSQs=;
 b=c31aY7JfM45b3QidJCpPl33GmxPwAqyuiOuMfpKtuTxT5tKgs3GKL8IH
 7y6lRMa6L+ZXoJ6KTwo6KnpMa5KNe6saqUn4VpObkzbVauO4fxNdhRzbx
 NyonhECQv9y1GJ8dTCeVVIPGEsmhQjnzoZqErZYpDSnFEuYspVl/ifH1C
 Y5T8lMDQRbW6BrKEj6e9wjqKcDnoUaA22eOEkRHlIScd0MSutvmCRVfM9
 UgwA+tob0t7NMw5OwmVTGRh0uxXO2Dg+HTBVaQXgR2vWzHnx5tm1u0+3n
 EaGLBNk40EnEviS13sj0NDTaoFIr9ivuw4VJFDHN4/+xp2N8AvOk3cZxh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="242224055"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="242224055"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="556239235"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:49 +0200
Message-Id: <ebd358c34df7536bc0f111c53423a7b724529e2e.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/mst: read link status only when
 requested by sink in ESI
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The link service irq vector in DPCD 0x2005 contains the link status
changed bit to indicate the status should be checked. Only read and
check the link status when requested by the sink.

This also reduces the confusion around the buffer size for the combined
ESI and link status. Alas, we still need to take into account that all
link status helpers expect a buffer of DP_LINK_STATUS_SIZE (6) while the
link status in ESI only has 4 bytes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 41 +++++++++++--------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8ca8cfca2b4..a3368c30bc3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -72,8 +72,6 @@
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
-#define DP_DPRX_ESI_LEN 14
-
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
 #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
@@ -2813,11 +2811,9 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 }
 
 static bool
-intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *sink_irq_vector)
+intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
-	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI,
-				sink_irq_vector, DP_DPRX_ESI_LEN) ==
-		DP_DPRX_ESI_LEN;
+	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) == 4;
 }
 
 static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
@@ -3638,12 +3634,22 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
 	}
 }
 
-static bool intel_dp_mst_link_status(struct intel_dp *intel_dp, u8 *esi)
+static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u8 link_status[DP_LINK_STATUS_SIZE] = {};
+	const size_t esi_link_status_size = DP_LINK_STATUS_SIZE - 2;
+
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI, link_status,
+			     esi_link_status_size) != esi_link_status_size) {
+		drm_err(&i915->drm,
+			"[ENCODER:%d:%s] Failed to read link status\n",
+			encoder->base.base.id, encoder->base.name);
+		return false;
+	}
 
-	if (!drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
+	if (!drm_dp_channel_eq_ok(link_status, intel_dp->lane_count)) {
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] channel EQ not ok, retraining\n",
 			    encoder->base.base.id, encoder->base.name);
@@ -3675,18 +3681,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 	drm_WARN_ON_ONCE(&i915->drm, intel_dp->active_mst_links < 0);
 
 	for (;;) {
-		/*
-		 * The +2 is because DP_DPRX_ESI_LEN is 14, but we then
-		 * pass in "esi+10" to drm_dp_channel_eq_ok(), which
-		 * takes a 6-byte array. So we actually need 16 bytes
-		 * here.
-		 *
-		 * Somebody who knows what the limits actually are
-		 * should check this, but for now this is at least
-		 * harmless and avoids a valid compiler warning about
-		 * using more of the array than we have allocated.
-		 */
-		u8 esi[DP_DPRX_ESI_LEN+2] = {};
+		u8 esi[4] = {};
 		bool handled;
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
@@ -3699,9 +3694,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
 
-		/* check link status - esi[10] = 0x200c */
-		if (intel_dp->active_mst_links > 0 && link_ok) {
-			if (!intel_dp_mst_link_status(intel_dp, esi))
+		if (intel_dp->active_mst_links > 0 && link_ok &&
+		    esi[3] & LINK_STATUS_CHANGED) {
+			if (!intel_dp_mst_link_status(intel_dp))
 				link_ok = false;
 		}
 
-- 
2.30.2

