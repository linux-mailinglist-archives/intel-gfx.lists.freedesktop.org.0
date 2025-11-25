Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BBCC852AD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5511510E3FC;
	Tue, 25 Nov 2025 13:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SvL9vBPA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A0310E3F0;
 Tue, 25 Nov 2025 13:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077102; x=1795613102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZ8LOTsNLO3BEJ0XzXt+oRcbRqjGDw3kBUU7jjm52JY=;
 b=SvL9vBPAuQ1HgVEw/UeX7CPGsAS3CvbPVYbi0wzbs83Xzhl+RWaaJ4M4
 DaxcWUBnu1SsMkKiZuOyx8pz5VL4sQ3FVwl0dYVNa52R0rXXhGtONWjrV
 LNvSTR0nyWffh/Czgjzxy7FB6N92WZOoGBFeOhTT1f8GsUFzKvhPWy6FJ
 GpqL7RHHxHnjthCgEXZ5EY6r7ixxh2kNTiKooUGeOfAL0jyayjnT3OeOY
 ECIpt6FQDXHExRpipCFHnTSBdblWsNwf/IIznnaAm+CCjTzuumYPjyf/t
 dCtHi28l1YDkIP9QLo7KEkw7sXfRAH5zzc+Wn6jhD5JDl5DPcDbeLBCzx Q==;
X-CSE-ConnectionGUID: pY9gXbZeQn+LWeBK6lSmKg==
X-CSE-MsgGUID: MGjIgPAtTA2c8qJpvZk30A==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77461473"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="77461473"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:25:01 -0800
X-CSE-ConnectionGUID: 4fI2OT7FS/egIPeYmamUwg==
X-CSE-MsgGUID: NsMsdMJQTkOp8rPxcBM7YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192520978"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:25:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/5] drm/i915/power: drop wakeref parameter from
 with_intel_display_power*()
Date: Tue, 25 Nov 2025 15:24:41 +0200
Message-ID: <d568d5a1a0dc0ad81697010a29fb4a3f552af827.1764076995.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
index 04f5c488f399..34e69b884713 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3469,12 +3469,11 @@ static bool transcoder_ddi_func_is_enabled(struct intel_display *display,
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
 
@@ -3496,10 +3495,9 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
@@ -3525,10 +3523,9 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & BIG_JOINER_ENABLE))
@@ -3595,10 +3592,9 @@ static void enabled_ultrajoiner_pipes(struct intel_display *display,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
-		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & ULTRA_JOINER_ENABLE))
@@ -3756,12 +3752,11 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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

