Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54EC1790BD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 14:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27411891BF;
	Wed,  4 Mar 2020 13:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EAF891BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 13:00:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 05:00:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="240453036"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 05:00:42 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 18:21:18 +0530
Message-Id: <20200304125118.12335-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/edp: Ignore short pulse when panel
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

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a417cd2af2b..93de015f5322 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6763,10 +6763,24 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 	.destroy = intel_dp_encoder_destroy,
 };
 
+static bool is_edp_powered_off(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+	bool powerd_off = false;
+
+	if (intel_dp_is_edp(intel_dp)) {
+		with_pps_lock(intel_dp, wakeref)
+			powerd_off = !edp_have_panel_power(intel_dp);
+	}
+
+	return powerd_off;
+}
+
 enum irqreturn
 intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
 {
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {
 		/*
@@ -6810,6 +6824,11 @@ intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
 	if (!intel_dp->is_mst) {
 		bool handled;
 
+		if (is_edp_powered_off(intel_dp)) {
+			drm_info(&i915->drm, "edp panel is off, ignoring the short pulse\n");
+			return IRQ_HANDLED;
+		}
+
 		handled = intel_dp_short_pulse(intel_dp);
 
 		if (!handled)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
