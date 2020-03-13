Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB82184F25
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 20:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934026E7D7;
	Fri, 13 Mar 2020 19:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B270D6E7D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 19:02:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 12:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="442513941"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga005.fm.intel.com with ESMTP; 13 Mar 2020 12:01:57 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 00:22:27 +0530
Message-Id: <20200313185227.21900-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200304125118.12335-1-anshuman.gupta@intel.com>
References: <20200304125118.12335-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/edp: Ignore short pulse when panel
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
Ignoring any short pulse once panel is powered off.

FIXME: It requires to wait for panel_power_off_delay in order
to check the panel status, as panel triggers short pulse immediately
after writing PP_OFF to PP_CTRL register.

v2:
- checking vdd along with panel power to ignore the hpd. [Jani,Ville]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a417cd2af2b..3475791d3bea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6763,21 +6763,36 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 	.destroy = intel_dp_encoder_destroy,
 };
 
+static bool intel_edp_have_power(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+	bool powerd_on = false;
+
+	with_pps_lock(intel_dp, wakeref) {
+		powerd_on = edp_have_panel_power(intel_dp) &&
+					edp_have_panel_vdd(intel_dp);
+	}
+
+	return powerd_on;
+}
+
 enum irqreturn
 intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
 {
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {
+	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
+	    !intel_edp_have_power(intel_dp)) {
 		/*
-		 * vdd off can generate a long pulse on eDP which
+		 * vdd off can generate a hpd pulse on eDP which
 		 * would require vdd on to handle it, and thus we
 		 * would end up in an endless cycle of
-		 * "vdd off -> long hpd -> vdd on -> detect -> vdd off -> ..."
+		 * "vdd off -> hpd -> vdd on -> detect -> vdd off -> ..."
 		 */
-		DRM_DEBUG_KMS("ignoring long hpd on eDP [ENCODER:%d:%s]\n",
-			      intel_dig_port->base.base.base.id,
-			      intel_dig_port->base.base.name);
+		drm_dbg_kms(&i915->drm, "ignoring hpd on eDP [ENCODER:%d:%s]\n",
+			    intel_dig_port->base.base.base.id,
+			    intel_dig_port->base.base.name);
 		return IRQ_HANDLED;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
