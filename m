Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6FA18970C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 09:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5D06E89C;
	Wed, 18 Mar 2020 08:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD596E89C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 08:28:01 +0000 (UTC)
IronPort-SDR: HC+7A7YK9uN2AxecV1woYHgGotclteAmXbSwB0upgyXdTqE8jEyCPRlGeA8ZAW/UjqBhISzjcG
 1H782y3C6fmw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 01:28:01 -0700
IronPort-SDR: I6A5LKG8FCQGxu7FSZqR473usQ9EtMPfHBOZW2qgeFZ4ocBK/0+CRRIoPiPGUUDrAXKtl+0Cf9
 ib3oZjx+GgFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="236577625"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 18 Mar 2020 01:27:59 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 13:48:37 +0530
Message-Id: <20200318081837.23983-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313185227.21900-1-anshuman.gupta@intel.com>
References: <20200313185227.21900-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/edp: Ignore short pulse when panel
 powered off
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Few edp panels like Sharp is triggering short and long
hpd pulse after panel is getting powered off.
Currently driver is already ignoring long pulse for eDP
panel but in order to process the short pulse, it turns on
the VDD which requires panel power_cycle_delay + panel_power_on_delay
these delay on Sharp panel introduced the responsiveness overhead
of 800ms in the modeset sequence and as well is in suspend
sequence.
Ignoring any short pulse if panel is powered off.

FIXME: It requires to wait for panel_power_off delay in order
to check the panel power status due to pps_lock because panel triggers
short pulse immediately after writing PP_OFF to PP_CTRL register and
wait_panel_off waits for panel_power_off delay with pps_lock held.
This still creates responsiveness overhead of panel_power_off delay.

v2:
- checking vdd along with panel power to ignore the hpd. [Jani,Ville]
v3:
- safer side check to ignore the long hpd when eDP have power,
  adding type of hpd to debug log. [Jani]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a417cd2af2b..38e74195101a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6763,19 +6763,34 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 	.destroy = intel_dp_encoder_destroy,
 };
 
+static bool intel_edp_have_power(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+	bool have_power = false;
+
+	with_pps_lock(intel_dp, wakeref) {
+		have_power = edp_have_panel_power(intel_dp) &&
+						  edp_have_panel_vdd(intel_dp);
+	}
+
+	return have_power;
+}
+
 enum irqreturn
 intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
 {
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
 
-	if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {
+	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
+	    (long_hpd || !intel_edp_have_power(intel_dp))) {
 		/*
-		 * vdd off can generate a long pulse on eDP which
+		 * vdd off can generate a long/short pulse on eDP which
 		 * would require vdd on to handle it, and thus we
 		 * would end up in an endless cycle of
-		 * "vdd off -> long hpd -> vdd on -> detect -> vdd off -> ..."
+		 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
 		 */
-		DRM_DEBUG_KMS("ignoring long hpd on eDP [ENCODER:%d:%s]\n",
+		DRM_DEBUG_KMS("ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
+			      long_hpd ? "long" : "short",
 			      intel_dig_port->base.base.base.id,
 			      intel_dig_port->base.base.name);
 		return IRQ_HANDLED;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
