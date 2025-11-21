Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FE2C7910D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 13:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C4510E2B6;
	Fri, 21 Nov 2025 12:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3pK4q2J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3762910E2B7;
 Fri, 21 Nov 2025 12:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763729494; x=1795265494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vUrY3j/dXAB/ETj88j/yNv6eAaASeDp8x7apJeg4Vmw=;
 b=X3pK4q2J/oL8AZPglSWTltKFoaB4MQE8bCfboznOAvHUeVH1fA0N3w9v
 oT3VcFS+YRUBoYf8KXfRb7BWCCzN8hrp/X2xlnSppPkxKRYOVuzdzWVGc
 FjOan4nZEjEL3RbUkXms+j0LwJmzen0GToPIRpK6JpNdIdUi9FBb+oOjh
 CCN8L3E3+igxiC0yM9zHpVkK2YCwt+GSoof4PvdvmxsZ9U5u7DtK2PDQB
 IEUPEfifzRNlT+U4uT/d/ew0VDk62713UJnDRAZ9zDQPWf2CI4uxaOwJU
 f6cgBhieO+y/VDxg702iQg+SasbbLFdoW/uUMEz/NCy2QJPonGtvFaIhC A==;
X-CSE-ConnectionGUID: Gc9ekjBcSVWfQmNxX62fqA==
X-CSE-MsgGUID: Zw4Lq9M4QY6aDAqZ5pyI0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65702786"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65702786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:33 -0800
X-CSE-ConnectionGUID: WSyy8gOUS0SrMbL52z5uYQ==
X-CSE-MsgGUID: nAFfsONaRIiIC0W0aietCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191936419"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/power: drop wakeref parameter from
 with_intel_display_power*()
Date: Fri, 21 Nov 2025 14:51:03 +0200
Message-ID: <5ff6f3026596d9706c4e53fc89fe2ce8cb38bb0c.1763729370.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763729370.git.jani.nikula@intel.com>
References: <cover.1763729370.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add another level of macro abstraction, and declare the wakeref within
the for loop using __UNIQUE_ID. This allows us to drop a bunch of
boilerplate declarations and parameter passing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c   | 15 +++++----------
 .../gpu/drm/i915/display/intel_display_power.h | 14 ++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 +--
 drivers/gpu/drm/i915/display/intel_tc.c        | 18 ++++++------------
 5 files changed, 23 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 165138b95cb2..e1fdc6fe9762 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -85,7 +85,6 @@ static bool intel_cmtg_transcoder_is_secondary(struct intel_display *display,
 					       enum transcoder trans)
 {
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
 	u32 val = 0;
 
 	if (!HAS_TRANSCODER(display, trans))
@@ -93,7 +92,7 @@ static bool intel_cmtg_transcoder_is_secondary(struct intel_display *display,
 
 	power_domain = POWER_DOMAIN_TRANSCODER(trans);
 
-	with_intel_display_power_if_enabled(display, power_domain, wakeref)
+	with_intel_display_power_if_enabled(display, power_domain)
 		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, trans));
 
 	return val & CMTG_SECONDARY_MODE;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c8a7f63111e..ccfa53bf0ad0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3454,12 +3454,11 @@ static bool transcoder_ddi_func_is_enabled(struct intel_display *display,
 					   enum transcoder cpu_transcoder)
 {
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
 	u32 tmp = 0;
 
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 
-	with_intel_display_power_if_enabled(display, power_domain, wakeref)
+	with_intel_display_power_if_enabled(display, power_domain)
 		tmp = intel_de_read(display,
 				    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
@@ -3481,10 +3480,9 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
@@ -3510,10 +3508,9 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & BIG_JOINER_ENABLE))
@@ -3580,10 +3577,9 @@ static void enabled_ultrajoiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & ULTRA_JOINER_ENABLE))
@@ -3741,12 +3737,11 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	for_each_cpu_transcoder_masked(display, cpu_transcoder,
 				       panel_transcoder_mask) {
 		enum intel_display_power_domain power_domain;
-		intel_wakeref_t wakeref;
 		enum pipe trans_pipe;
 		u32 tmp = 0;
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref)
+		with_intel_display_power_if_enabled(display, power_domain)
 			tmp = intel_de_read(display,
 					    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index f8813b0e16df..79ce8d94bf7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -297,12 +297,18 @@ enum dbuf_slice {
 void gen9_dbuf_slices_update(struct intel_display *display,
 			     u8 req_slices);
 
-#define with_intel_display_power(display, domain, wf) \
-	for ((wf) = intel_display_power_get((display), (domain)); (wf); \
+#define __with_intel_display_power(display, domain, wf) \
+	for (intel_wakeref_t (wf) = intel_display_power_get((display), (domain)); (wf); \
 	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
-#define with_intel_display_power_if_enabled(display, domain, wf) \
-	for ((wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+#define with_intel_display_power(display, domain) \
+	__with_intel_display_power(display, domain, __UNIQUE_ID(wakeref))
+
+#define __with_intel_display_power_if_enabled(display, domain, wf) \
+	for (intel_wakeref_t (wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
 	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
+#define with_intel_display_power_if_enabled(display, domain) \
+	__with_intel_display_power_if_enabled(display, domain, __UNIQUE_ID(wakeref))
+
 #endif /* __INTEL_DISPLAY_POWER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..7df0e5e13688 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5791,9 +5791,8 @@ bool intel_digital_port_connected_locked(struct intel_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_glitch_free = intel_tc_port_handles_hpd_glitches(dig_port);
 	bool is_connected = false;
-	intel_wakeref_t wakeref;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
 		poll_timeout_us(is_connected = dig_port->connected(encoder),
 				is_connected || is_glitch_free,
 				30, 4000, false);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 1e21fd02685d..c678216af352 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -269,10 +269,9 @@ assert_tc_port_power_enabled(struct intel_tc_port *tc)
 static u32 get_lane_mask(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	intel_wakeref_t wakeref;
 	u32 lane_mask;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE)
 		lane_mask = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
 
 	drm_WARN_ON(display->drm, lane_mask == 0xffffffff);
@@ -296,7 +295,6 @@ get_pin_assignment(struct intel_tc_port *tc)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 	enum intel_tc_pin_assignment pin_assignment;
-	intel_wakeref_t wakeref;
 	i915_reg_t reg;
 	u32 mask;
 	u32 val;
@@ -312,7 +310,7 @@ get_pin_assignment(struct intel_tc_port *tc)
 		mask = DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx);
 	}
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE)
 		val = intel_de_read(display, reg);
 
 	drm_WARN_ON(display->drm, val == 0xffffffff);
@@ -527,12 +525,11 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	u32 isr_bit = display->hotplug.pch_hpd[dig_port->base.hpd_pin];
-	intel_wakeref_t wakeref;
 	u32 fia_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref) {
+	with_intel_display_power(display, tc_phy_cold_off_domain(tc)) {
 		fia_isr = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
 		pch_isr = intel_de_read(display, SDEISR);
 	}
@@ -774,10 +771,9 @@ tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 static void tgl_tc_phy_init(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	intel_wakeref_t wakeref;
 	u32 val;
 
-	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref)
+	with_intel_display_power(display, tc_phy_cold_off_domain(tc))
 		val = intel_de_read(display, PORT_TX_DFLEXDPSP(FIA1));
 
 	drm_WARN_ON(display->drm, val == 0xffffffff);
@@ -819,12 +815,11 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
 	u32 cpu_isr_bits = display->hotplug.hpd[hpd_pin];
 	u32 pch_isr_bit = display->hotplug.pch_hpd[hpd_pin];
-	intel_wakeref_t wakeref;
 	u32 cpu_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
 		cpu_isr = intel_de_read(display, GEN11_DE_HPD_ISR);
 		pch_isr = intel_de_read(display, SDEISR);
 	}
@@ -1015,12 +1010,11 @@ static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
 	u32 pica_isr_bits = display->hotplug.hpd[hpd_pin];
 	u32 pch_isr_bit = display->hotplug.pch_hpd[hpd_pin];
-	intel_wakeref_t wakeref;
 	u32 pica_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE) {
 		pica_isr = intel_de_read(display, PICAINTERRUPT_ISR);
 		pch_isr = intel_de_read(display, SDEISR);
 	}
-- 
2.47.3

