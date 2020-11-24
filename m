Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A57632C228C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 11:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBF26E1F2;
	Tue, 24 Nov 2020 10:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6326E1F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 10:12:55 +0000 (UTC)
IronPort-SDR: K/UsMPxjU2CLz2DtPr0YUYWWq+zGVLfBQF8RMT4u9tVW6ahGpa6LETRl+O3T38cwDAg4vdwdrs
 8EmOLt+hQwQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="168412422"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="168412422"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 02:12:55 -0800
IronPort-SDR: Lbc+QponfF2xcY5gqU/FSrtP6sosVsi8THhyvxV7Op0DPI/wRFnsOw4umPa3vkx2QHHBLHHkng
 7Eo2OyHplckg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="361819386"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 02:12:53 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 15:28:47 +0530
Message-Id: <20201124095847.14098-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/dp: PPS registers doesn't require AUX
 power
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Platforms with South Display Engine on PCH, doesn't
require to get/put the AUX power domain in order to
access PPS register because PPS registers are always on
with South display on PCH.

Cc: Imre Deak <imre.deak@intel.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3896d08c4177..84a2c49e154c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -872,8 +872,9 @@ pps_lock(struct intel_dp *intel_dp)
 	 * See intel_power_sequencer_reset() why we need
 	 * a power domain reference here.
 	 */
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
+	if (!HAS_PCH_SPLIT(dev_priv))
+		wakeref = intel_display_power_get(dev_priv,
+						  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
 
 	mutex_lock(&dev_priv->pps_mutex);
 
@@ -886,9 +887,11 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	mutex_unlock(&dev_priv->pps_mutex);
-	intel_display_power_put(dev_priv,
-				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
-				wakeref);
+
+	if (!HAS_PCH_SPLIT(dev_priv))
+		intel_display_power_put(dev_priv,
+					intel_aux_power_domain(dp_to_dig_port(intel_dp)),
+					wakeref);
 	return 0;
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
