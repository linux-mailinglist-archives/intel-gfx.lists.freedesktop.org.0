Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0M1xO96yy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0EC368EFA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BCC10E8F0;
	Tue, 31 Mar 2026 11:41:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxFNnmvn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D4310E8D3;
 Tue, 31 Mar 2026 11:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957275; x=1806493275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6qn8YGPguYP+7Gcs/LsjfNEokDTufG3RDD1FjlVjwNY=;
 b=jxFNnmvndNPJn6D+7w30B1B9AGhHYPOmu0NCHNdUqyEV1gln6YTkrvYN
 YwpmIA2xx+NIGbuMqv+CE5g2dE47kqU5Wqyc8MaYOfUGctpfpSVhNsTbF
 nPb7DFkrxovp86dlA81S07/TsWLGCySVR8DHPpWpo7aj+uvLMBeDUrN5h
 vgXHlV8UMOJ+fXTPAGbJLLr6ToxJfV/nSYozL/zT1CjpqLZ8qJTAcyO2E
 4vt3aNIRk+B79ryPzIFCCDm2acuywGnDqQjlwmQlDojhB0ACVb1R5fRD6
 Xnp5KYPtjUTlHdiwtm8wwrYVuRskY+hf91Xeyv9Ks5so3Yu4zI4ZmZb09 w==;
X-CSE-ConnectionGUID: LfvjHaMAQeax7+PzEYjSqg==
X-CSE-MsgGUID: SEK4iBeoTSCEudtKU6KPnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87358378"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87358378"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:15 -0700
X-CSE-ConnectionGUID: bH8JL6+8RWG4/F5Fqu/dNw==
X-CSE-MsgGUID: iC2eFf/WRXym5hBu4OMc3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="264280411"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915: pass struct intel_display * to VLV sideband
 wrappers
Date: Tue, 31 Mar 2026 14:40:55 +0300
Message-ID: <a355fe0642f7e6566a22e85bda455092e49e3b68.1774957233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774957233.git.jani.nikula@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6D0EC368EFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In display code, the display pointer will be all around more convenient.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

'git show --color-words' makes this easy to review
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  32 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  32 ++--
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../i915/display/intel_display_power_well.c   |  64 +++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 174 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 116 ++++++------
 drivers/gpu/drm/i915/display/vlv_clock.c      |  13 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  20 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  38 ++--
 drivers/gpu/drm/i915/display/vlv_sideband.c   | 110 ++++++-----
 drivers/gpu/drm/i915/display/vlv_sideband.h   |  70 +++----
 11 files changed, 337 insertions(+), 338 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 9e170e79dcf6..c39d56e2ea26 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -118,41 +118,41 @@ static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 	u32 val;
 	int ret;
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
+	val = vlv_punit_read(display, PUNIT_REG_DDR_SETUP2);
 	if (enable)
 		val &= ~FORCE_DDR_HIGH_FREQ;
 	else
 		val |= FORCE_DDR_HIGH_FREQ;
 	val &= ~FORCE_DDR_LOW_FREQ;
 	val |= FORCE_DDR_FREQ_REQ_ACK;
-	vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
+	vlv_punit_write(display, PUNIT_REG_DDR_SETUP2, val);
 
-	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2),
+	ret = poll_timeout_us(val = vlv_punit_read(display, PUNIT_REG_DDR_SETUP2),
 			      (val & FORCE_DDR_FREQ_REQ_ACK) == 0,
 			      500, 3000, false);
 	if (ret)
 		drm_err(display->drm,
 			"timed out waiting for Punit DDR DVFS request\n");
 
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 }
 
 static void chv_set_memory_pm5(struct intel_display *display, bool enable)
 {
 	u32 val;
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 	if (enable)
 		val |= DSP_MAXFIFO_PM5_ENABLE;
 	else
 		val &= ~DSP_MAXFIFO_PM5_ENABLE;
-	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
+	vlv_punit_write(display, PUNIT_REG_DSPSSPM, val);
 
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 }
 
 #define FW_WM(value, plane) \
@@ -3918,9 +3918,9 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 	wm->level = VLV_WM_LEVEL_PM2;
 
 	if (display->platform.cherryview) {
-		vlv_punit_get(display->drm);
+		vlv_punit_get(display);
 
-		val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+		val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 		if (val & DSP_MAXFIFO_PM5_ENABLE)
 			wm->level = VLV_WM_LEVEL_PM5;
 
@@ -3933,11 +3933,11 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		 * HIGH/LOW bits so that we don't actually change
 		 * the current state.
 		 */
-		val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
+		val = vlv_punit_read(display, PUNIT_REG_DDR_SETUP2);
 		val |= FORCE_DDR_FREQ_REQ_ACK;
-		vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
+		vlv_punit_write(display, PUNIT_REG_DDR_SETUP2, val);
 
-		ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2),
+		ret = poll_timeout_us(val = vlv_punit_read(display, PUNIT_REG_DDR_SETUP2),
 				      (val & FORCE_DDR_FREQ_REQ_ACK) == 0,
 				      500, 3000, false);
 		if (ret) {
@@ -3946,12 +3946,12 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 				    "assuming DDR DVFS is disabled\n");
 			display->wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
 		} else {
-			val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
+			val = vlv_punit_read(display, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
 				wm->level = VLV_WM_LEVEL_DDR_DVFS;
 		}
 
-		vlv_punit_put(display->drm);
+		vlv_punit_put(display);
 	}
 
 	for_each_intel_crtc(display->drm, crtc) {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a47736613f6e..8e0424a2c16f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -613,9 +613,9 @@ static void vlv_get_cdclk(struct intel_display *display,
 	cdclk_config->vco = vlv_clock_get_hpll_vco(display->drm);
 	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
-	vlv_punit_get(display->drm);
-	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
-	vlv_punit_put(display->drm);
+	vlv_punit_get(display);
+	val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
+	vlv_punit_put(display);
 
 	if (display->platform.valleyview)
 		cdclk_config->voltage_level = (val & DSPFREQGUAR_MASK) >>
@@ -696,12 +696,12 @@ static void vlv_set_cdclk(struct intel_display *display,
 			BIT(VLV_IOSF_SB_BUNIT) |
 			BIT(VLV_IOSF_SB_PUNIT));
 
-	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 	val &= ~DSPFREQGUAR_MASK;
 	val |= (cmd << DSPFREQGUAR_SHIFT);
-	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
+	vlv_punit_write(display, PUNIT_REG_DSPSSPM, val);
 
-	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+	ret = poll_timeout_us(val = vlv_punit_read(display, PUNIT_REG_DSPSSPM),
 			      (val & DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
 			      500, 50 * 1000, false);
 	if (ret)
@@ -714,12 +714,12 @@ static void vlv_set_cdclk(struct intel_display *display,
 					    cdclk) - 1;
 
 		/* adjust cdclk divider */
-		val = vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL);
+		val = vlv_cck_read(display, CCK_DISPLAY_CLOCK_CONTROL);
 		val &= ~CCK_FREQUENCY_VALUES;
 		val |= divider;
-		vlv_cck_write(display->drm, CCK_DISPLAY_CLOCK_CONTROL, val);
+		vlv_cck_write(display, CCK_DISPLAY_CLOCK_CONTROL, val);
 
-		ret = poll_timeout_us(val = vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL),
+		ret = poll_timeout_us(val = vlv_cck_read(display, CCK_DISPLAY_CLOCK_CONTROL),
 				      (val & CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
 				      500, 50 * 1000, false);
 		if (ret)
@@ -727,7 +727,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	}
 
 	/* adjust self-refresh exit latency value */
-	val = vlv_bunit_read(display->drm, BUNIT_REG_BISOC);
+	val = vlv_bunit_read(display, BUNIT_REG_BISOC);
 	val &= ~0x7f;
 
 	/*
@@ -738,7 +738,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 		val |= 4500 / 250; /* 4.5 usec */
 	else
 		val |= 3000 / 250; /* 3.0 usec */
-	vlv_bunit_write(display->drm, BUNIT_REG_BISOC, val);
+	vlv_bunit_write(display, BUNIT_REG_BISOC, val);
 
 	vlv_iosf_sb_put(display->drm,
 			BIT(VLV_IOSF_SB_CCK) |
@@ -780,19 +780,19 @@ static void chv_set_cdclk(struct intel_display *display,
 	 */
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
-	vlv_punit_get(display->drm);
-	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	vlv_punit_get(display);
+	val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 	val &= ~DSPFREQGUAR_MASK_CHV;
 	val |= (cmd << DSPFREQGUAR_SHIFT_CHV);
-	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
+	vlv_punit_write(display, PUNIT_REG_DSPSSPM, val);
 
-	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+	ret = poll_timeout_us(val = vlv_punit_read(display, PUNIT_REG_DSPSSPM),
 			      (val & DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
 			      500, 50 * 1000, false);
 	if (ret)
 		drm_err(display->drm, "timed out waiting for CDCLK change\n");
 
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 
 	intel_update_cdclk(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ec96b141c74c..b1c91de9d798 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1890,9 +1890,9 @@ static bool vlv_punit_is_power_gated(struct intel_display *display, u32 reg0)
 {
 	bool ret;
 
-	vlv_punit_get(display->drm);
-	ret = (vlv_punit_read(display->drm, reg0) & SSPM0_SSC_MASK) == SSPM0_SSC_PWR_GATE;
-	vlv_punit_put(display->drm);
+	vlv_punit_get(display);
+	ret = (vlv_punit_read(display, reg0) & SSPM0_SSC_MASK) == SSPM0_SSC_PWR_GATE;
+	vlv_punit_put(display);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f855f0f88694..f96a5088d138 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1189,28 +1189,28 @@ static void vlv_set_power_well(struct intel_display *display,
 	state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
 			 PUNIT_PWRGT_PWR_GATE(pw_idx);
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	val = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS);
+	val = vlv_punit_read(display, PUNIT_REG_PWRGT_STATUS);
 	if ((val & mask) == state)
 		goto out;
 
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL);
+	ctrl = vlv_punit_read(display, PUNIT_REG_PWRGT_CTRL);
 	ctrl &= ~mask;
 	ctrl |= state;
-	vlv_punit_write(display->drm, PUNIT_REG_PWRGT_CTRL, ctrl);
+	vlv_punit_write(display, PUNIT_REG_PWRGT_CTRL, ctrl);
 
-	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS),
+	ret = poll_timeout_us(val = vlv_punit_read(display, PUNIT_REG_PWRGT_STATUS),
 			      (val & mask) == state,
 			      500, 100 * 1000, false);
 	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-			vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL));
+			vlv_punit_read(display, PUNIT_REG_PWRGT_CTRL));
 
 out:
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 }
 
 static void vlv_power_well_enable(struct intel_display *display,
@@ -1237,9 +1237,9 @@ static bool vlv_power_well_enabled(struct intel_display *display,
 	mask = PUNIT_PWRGT_MASK(pw_idx);
 	ctrl = PUNIT_PWRGT_PWR_ON(pw_idx);
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	state = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask;
+	state = vlv_punit_read(display, PUNIT_REG_PWRGT_STATUS) & mask;
 	/*
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
@@ -1253,10 +1253,10 @@ static bool vlv_power_well_enabled(struct intel_display *display,
 	 * A transient state at this point would mean some unexpected party
 	 * is poking at the power controls too.
 	 */
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL) & mask;
+	ctrl = vlv_punit_read(display, PUNIT_REG_PWRGT_CTRL) & mask;
 	drm_WARN_ON(display->drm, ctrl != state);
 
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 
 	return enabled;
 }
@@ -1533,30 +1533,30 @@ static void chv_dpio_cmn_power_well_enable(struct intel_display *display,
 		drm_err(display->drm, "Display PHY %d is not power up\n",
 			phy);
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Enable dynamic power down */
-	tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW28);
+	tmp = vlv_dpio_read(display, phy, CHV_CMN_DW28);
 	tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
 		DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW28, tmp);
+	vlv_dpio_write(display, phy, CHV_CMN_DW28, tmp);
 
 	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
-		tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW6_CH1);
+		tmp = vlv_dpio_read(display, phy, CHV_CMN_DW6_CH1);
 		tmp |= DPIO_DYNPWRDOWNEN_CH1;
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW6_CH1, tmp);
+		vlv_dpio_write(display, phy, CHV_CMN_DW6_CH1, tmp);
 	} else {
 		/*
 		 * Force the non-existing CL2 off. BXT does this
 		 * too, so maybe it saves some power even though
 		 * CL2 doesn't exist?
 		 */
-		tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW30);
+		tmp = vlv_dpio_read(display, phy, CHV_CMN_DW30);
 		tmp |= DPIO_CL2_LDOFUSE_PWRENB;
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW30, tmp);
+		vlv_dpio_write(display, phy, CHV_CMN_DW30, tmp);
 	}
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 
 	display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
 	intel_de_write(display, DISPLAY_PHY_CONTROL,
@@ -1624,9 +1624,9 @@ static void assert_chv_phy_powergate(struct intel_display *display, enum dpio_ph
 	else
 		reg = CHV_CMN_DW6_CH1;
 
-	vlv_dpio_get(display->drm);
-	val = vlv_dpio_read(display->drm, phy, reg);
-	vlv_dpio_put(display->drm);
+	vlv_dpio_get(display);
+	val = vlv_dpio_read(display, phy, reg);
+	vlv_dpio_put(display);
 
 	/*
 	 * This assumes !override is only used when the port is disabled.
@@ -1740,9 +1740,9 @@ static bool chv_pipe_power_well_enabled(struct intel_display *display,
 	bool enabled;
 	u32 state, ctrl;
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	state = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe);
+	state = vlv_punit_read(display, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe);
 	/*
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
@@ -1755,10 +1755,10 @@ static bool chv_pipe_power_well_enabled(struct intel_display *display,
 	 * A transient state at this point would mean some unexpected party
 	 * is poking at the power controls too.
 	 */
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
+	ctrl = vlv_punit_read(display, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
 	drm_WARN_ON(display->drm, ctrl << 16 != state);
 
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 
 	return enabled;
 }
@@ -1774,29 +1774,29 @@ static void chv_set_pipe_power_well(struct intel_display *display,
 
 	state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
 
-	vlv_punit_get(display->drm);
+	vlv_punit_get(display);
 
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	ctrl = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 	if ((ctrl & DP_SSS_MASK(pipe)) == state)
 		goto out;
 
 	ctrl &= ~DP_SSC_MASK(pipe);
 	ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
-	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, ctrl);
+	vlv_punit_write(display, PUNIT_REG_DSPSSPM, ctrl);
 
-	ret = poll_timeout_us(ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+	ret = poll_timeout_us(ctrl = vlv_punit_read(display, PUNIT_REG_DSPSSPM),
 			      (ctrl & DP_SSS_MASK(pipe)) == state,
 			      500, 100 * 1000, false);
 	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-			vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM));
+			vlv_punit_read(display, PUNIT_REG_DSPSSPM));
 
 #undef COND
 
 out:
-	vlv_punit_put(display->drm);
+	vlv_punit_put(display);
 }
 
 static void chv_pipe_power_well_sync_hw(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 8027bab2951b..0e16132d0923 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -724,46 +724,46 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	u32 val;
 	int i;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Clear calc init */
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW10(ch));
 	val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 	val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 	val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW10(ch));
 		val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 		val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 		val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW10(ch), val);
 	}
 
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW9(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW9(ch));
 	val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 	val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW9(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW9(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW9(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW9(ch));
 		val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 		val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW9(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW9(ch), val);
 	}
 
 	/* Program swing deemph */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW4(ch, i));
+		val = vlv_dpio_read(display, phy, CHV_TX_DW4(ch, i));
 		val &= ~DPIO_SWING_DEEMPH9P5_MASK;
 		val |= DPIO_SWING_DEEMPH9P5(deemph_reg_value);
-		vlv_dpio_write(display->drm, phy, CHV_TX_DW4(ch, i), val);
+		vlv_dpio_write(display, phy, CHV_TX_DW4(ch, i), val);
 	}
 
 	/* Program swing margin */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW2(ch, i));
+		val = vlv_dpio_read(display, phy, CHV_TX_DW2(ch, i));
 
 		val &= ~DPIO_SWING_MARGIN000_MASK;
 		val |= DPIO_SWING_MARGIN000(margin_reg_value);
@@ -776,7 +776,7 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 		val &= ~DPIO_UNIQ_TRANS_SCALE_MASK;
 		val |= DPIO_UNIQ_TRANS_SCALE(0x9a);
 
-		vlv_dpio_write(display->drm, phy, CHV_TX_DW2(ch, i), val);
+		vlv_dpio_write(display, phy, CHV_TX_DW2(ch, i), val);
 	}
 
 	/*
@@ -786,26 +786,26 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	 * 27 for ch0 and ch1.
 	 */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW3(ch, i));
+		val = vlv_dpio_read(display, phy, CHV_TX_DW3(ch, i));
 		if (uniq_trans_scale)
 			val |= DPIO_TX_UNIQ_TRANS_SCALE_EN;
 		else
 			val &= ~DPIO_TX_UNIQ_TRANS_SCALE_EN;
-		vlv_dpio_write(display->drm, phy, CHV_TX_DW3(ch, i), val);
+		vlv_dpio_write(display, phy, CHV_TX_DW3(ch, i), val);
 	}
 
 	/* Start swing calculation */
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW10(ch));
 	val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW10(ch));
 		val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW10(ch), val);
 	}
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
@@ -818,38 +818,38 @@ static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	u32 val;
 
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW0(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW0(ch));
 	if (reset)
 		val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 	else
 		val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW0(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW0(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW0(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW0(ch));
 		if (reset)
 			val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 		else
 			val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW0(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW0(ch), val);
 	}
 
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW1(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW1(ch));
 	val |= CHV_PCS_REQ_SOFTRESET_EN;
 	if (reset)
 		val &= ~DPIO_PCS_CLK_SOFT_RESET;
 	else
 		val |= DPIO_PCS_CLK_SOFT_RESET;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW1(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW1(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW1(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW1(ch));
 		val |= CHV_PCS_REQ_SOFTRESET_EN;
 		if (reset)
 			val &= ~DPIO_PCS_CLK_SOFT_RESET;
 		else
 			val |= DPIO_PCS_CLK_SOFT_RESET;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW1(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW1(ch), val);
 	}
 }
 
@@ -859,9 +859,9 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 	__chv_data_lane_soft_reset(encoder, crtc_state, reset);
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
@@ -887,47 +887,47 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 
 	chv_phy_powergate_lanes(encoder, true, lane_mask);
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Assert data lane reset */
 	__chv_data_lane_soft_reset(encoder, crtc_state, true);
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(display, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA1_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA1_FORCE;
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(display, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(display, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA2_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA2_FORCE;
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(display, phy, CHV_CMN_DW1_CH1, val);
 	}
 
 	/* program clock channel usage */
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW8(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW8(ch));
 	val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 	if (pipe == PIPE_B)
 		val |= DPIO_PCS_USEDCLKCHANNEL;
 	else
 		val &= ~DPIO_PCS_USEDCLKCHANNEL;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW8(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW8(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW8(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW8(ch));
 		val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 		if (pipe == PIPE_B)
 			val |= DPIO_PCS_USEDCLKCHANNEL;
 		else
 			val &= ~DPIO_PCS_USEDCLKCHANNEL;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW8(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW8(ch), val);
 	}
 
 	/*
@@ -935,14 +935,14 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 * matches the pipe, but here we need to
 	 * pick the CL based on the port.
 	 */
-	val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW19(ch));
+	val = vlv_dpio_read(display, phy, CHV_CMN_DW19(ch));
 	if (pipe == PIPE_B)
 		val |= CHV_CMN_USEDCLKCHANNEL;
 	else
 		val &= ~CHV_CMN_USEDCLKCHANNEL;
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW19(ch), val);
+	vlv_dpio_write(display, phy, CHV_CMN_DW19(ch), val);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
@@ -956,17 +956,17 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	int data, i, stagger;
 	u32 val;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* allow hardware to manage TX FIFO reset source */
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW11(ch));
 	val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW11(ch));
 		val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW11(ch), val);
 	}
 
 	/* Program Tx lane latency optimal setting*/
@@ -976,7 +976,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 			data = 0;
 		else
 			data = (i == 1) ? 0 : DPIO_UPAR;
-		vlv_dpio_write(display->drm, phy, CHV_TX_DW14(ch, i), data);
+		vlv_dpio_write(display, phy, CHV_TX_DW14(ch, i), data);
 	}
 
 	/* Data lane stagger programming */
@@ -991,17 +991,17 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	else
 		stagger = 0x2;
 
-	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(display, phy, VLV_PCS01_DW11(ch));
 	val |= DPIO_TX2_STAGGER_MASK(0x1f);
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(display, phy, VLV_PCS23_DW11(ch));
 		val |= DPIO_TX2_STAGGER_MASK(0x1f);
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(display, phy, VLV_PCS23_DW11(ch), val);
 	}
 
-	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW12(ch),
+	vlv_dpio_write(display, phy, VLV_PCS01_DW12(ch),
 		       DPIO_LANESTAGGER_STRAP(stagger) |
 		       DPIO_LANESTAGGER_STRAP_OVRD |
 		       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -1009,7 +1009,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 		       DPIO_TX2_STAGGER_MULT(0));
 
 	if (crtc_state->lane_count > 2) {
-		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW12(ch),
+		vlv_dpio_write(display, phy, VLV_PCS23_DW12(ch),
 			       DPIO_LANESTAGGER_STRAP(stagger) |
 			       DPIO_LANESTAGGER_STRAP_OVRD |
 			       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -1020,7 +1020,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	/* Deassert data lane reset */
 	__chv_data_lane_soft_reset(encoder, crtc_state, false);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void chv_phy_release_cl2_override(struct intel_encoder *encoder)
@@ -1042,20 +1042,20 @@ void chv_phy_post_pll_disable(struct intel_encoder *encoder,
 	enum pipe pipe = to_intel_crtc(old_crtc_state->uapi.crtc)->pipe;
 	u32 val;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* disable left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(display, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(display, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(display, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
-		vlv_dpio_write(display->drm, phy, CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(display, phy, CHV_CMN_DW1_CH1, val);
 	}
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 
 	/*
 	 * Leave the power down bit cleared for at least one
@@ -1079,22 +1079,22 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW5_GRP(ch), 0x00000000);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW4_GRP(ch), demph_reg_value);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW2_GRP(ch),
+	vlv_dpio_write(display, phy, VLV_TX_DW5_GRP(ch), 0x00000000);
+	vlv_dpio_write(display, phy, VLV_TX_DW4_GRP(ch), demph_reg_value);
+	vlv_dpio_write(display, phy, VLV_TX_DW2_GRP(ch),
 		       uniqtranscale_reg_value);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
+	vlv_dpio_write(display, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
 
 	if (tx3_demph)
-		vlv_dpio_write(display->drm, phy, VLV_TX_DW4(ch, 3), tx3_demph);
+		vlv_dpio_write(display, phy, VLV_TX_DW4(ch, 3), tx3_demph);
 
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW5_GRP(ch), DPIO_TX_OCALINIT_EN);
+	vlv_dpio_write(display, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
+	vlv_dpio_write(display, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
+	vlv_dpio_write(display, phy, VLV_TX_DW5_GRP(ch), DPIO_TX_OCALINIT_EN);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
@@ -1106,23 +1106,23 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	/* Program Tx lane resets to default */
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW0_GRP(ch),
+	vlv_dpio_write(display, phy, VLV_PCS_DW0_GRP(ch),
 		       DPIO_PCS_TX_LANE2_RESET |
 		       DPIO_PCS_TX_LANE1_RESET);
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW1_GRP(ch),
+	vlv_dpio_write(display, phy, VLV_PCS_DW1_GRP(ch),
 		       DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
 		       DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
 		       DPIO_PCS_CLK_DATAWIDTH_8_10 |
 		       DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW11_GRP(ch), 0x00001500);
-	vlv_dpio_write(display->drm, phy, VLV_TX_DW14_GRP(ch), 0x40400000);
+	vlv_dpio_write(display, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
+	vlv_dpio_write(display, phy, VLV_TX_DW11_GRP(ch), 0x00001500);
+	vlv_dpio_write(display, phy, VLV_TX_DW14_GRP(ch), 0x40400000);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
@@ -1137,20 +1137,20 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Enable clock channels for this port */
 	val = DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 	if (pipe == PIPE_B)
 		val |= DPIO_PCS_USEDCLKCHANNEL;
 	val |= 0xc4;
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW8_GRP(ch), val);
+	vlv_dpio_write(display, phy, VLV_PCS_DW8_GRP(ch), val);
 
 	/* Program lane clock */
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW14_GRP(ch), 0x00760018);
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW23_GRP(ch), 0x00400888);
+	vlv_dpio_write(display, phy, VLV_PCS_DW14_GRP(ch), 0x00760018);
+	vlv_dpio_write(display, phy, VLV_PCS_DW23_GRP(ch), 0x00400888);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
@@ -1161,10 +1161,10 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
-	vlv_dpio_get(display->drm);
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW0_GRP(ch), 0x00000000);
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
-	vlv_dpio_put(display->drm);
+	vlv_dpio_get(display);
+	vlv_dpio_write(display, phy, VLV_PCS_DW0_GRP(ch), 0x00000000);
+	vlv_dpio_write(display, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
+	vlv_dpio_put(display);
 }
 
 void vlv_wait_port_ready(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c7d37e74fbe9..a1aa88598013 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -528,9 +528,9 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
-	vlv_dpio_get(display->drm);
-	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW3(ch));
-	vlv_dpio_put(display->drm);
+	vlv_dpio_get(display);
+	tmp = vlv_dpio_read(display, phy, VLV_PLL_DW3(ch));
+	vlv_dpio_put(display);
 
 	clock.m1 = REG_FIELD_GET(DPIO_M1_DIV_MASK, tmp);
 	clock.m2 = REG_FIELD_GET(DPIO_M2_DIV_MASK, tmp);
@@ -556,13 +556,13 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
-	vlv_dpio_get(display->drm);
-	cmn_dw13 = vlv_dpio_read(display->drm, phy, CHV_CMN_DW13(ch));
-	pll_dw0 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW0(ch));
-	pll_dw1 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW1(ch));
-	pll_dw2 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW2(ch));
-	pll_dw3 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW3(ch));
-	vlv_dpio_put(display->drm);
+	vlv_dpio_get(display);
+	cmn_dw13 = vlv_dpio_read(display, phy, CHV_CMN_DW13(ch));
+	pll_dw0 = vlv_dpio_read(display, phy, CHV_PLL_DW0(ch));
+	pll_dw1 = vlv_dpio_read(display, phy, CHV_PLL_DW1(ch));
+	pll_dw2 = vlv_dpio_read(display, phy, CHV_PLL_DW2(ch));
+	pll_dw3 = vlv_dpio_read(display, phy, CHV_PLL_DW3(ch));
+	vlv_dpio_put(display);
 
 	clock.m1 = REG_FIELD_GET(DPIO_CHV_M1_DIV_MASK, pll_dw1) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
 	clock.m2 = REG_FIELD_GET(DPIO_CHV_M2_DIV_MASK, pll_dw0) << 22;
@@ -1866,24 +1866,24 @@ static void vlv_pllb_recal_opamp(struct intel_display *display,
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW17(ch));
+	tmp = vlv_dpio_read(display, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
 	tmp |= 0x00000030;
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW17(ch), tmp);
+	vlv_dpio_write(display, phy, VLV_PLL_DW17(ch), tmp);
 
-	tmp = vlv_dpio_read(display->drm, phy, VLV_REF_DW11);
+	tmp = vlv_dpio_read(display, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
 	tmp |= 0x8c000000;
-	vlv_dpio_write(display->drm, phy, VLV_REF_DW11, tmp);
+	vlv_dpio_write(display, phy, VLV_REF_DW11, tmp);
 
-	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW17(ch));
+	tmp = vlv_dpio_read(display, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW17(ch), tmp);
+	vlv_dpio_write(display, phy, VLV_PLL_DW17(ch), tmp);
 
-	tmp = vlv_dpio_read(display->drm, phy, VLV_REF_DW11);
+	tmp = vlv_dpio_read(display, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
 	tmp |= 0xb0000000;
-	vlv_dpio_write(display->drm, phy, VLV_REF_DW11, tmp);
+	vlv_dpio_write(display, phy, VLV_REF_DW11, tmp);
 }
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -1896,7 +1896,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 tmp, coreclk;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* See eDP HDMI DPIO driver vbios notes doc */
 
@@ -1905,15 +1905,15 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		vlv_pllb_recal_opamp(display, phy, ch);
 
 	/* Set up Tx target for periodic Rcomp update */
-	vlv_dpio_write(display->drm, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
+	vlv_dpio_write(display, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW16(ch));
+	tmp = vlv_dpio_read(display, phy, VLV_PLL_DW16(ch));
 	tmp &= 0x00ffffff;
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW16(ch), tmp);
+	vlv_dpio_write(display, phy, VLV_PLL_DW16(ch), tmp);
 
 	/* Disable fast lock */
-	vlv_dpio_write(display->drm, phy, VLV_CMN_DW0, 0x610);
+	vlv_dpio_write(display, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
 	tmp = DPIO_M1_DIV(clock->m1) |
@@ -1929,42 +1929,42 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
 	tmp |= DPIO_S1_DIV(DPIO_S1_DIV_HDMIDP);
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display, phy, VLV_PLL_DW3(ch), tmp);
 
 	tmp |= DPIO_ENABLE_CALIBRATION;
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display, phy, VLV_PLL_DW3(ch), tmp);
 
 	/* Set HBR and RBR LPF coefficients */
 	if (crtc_state->port_clock == 162000 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		vlv_dpio_write(display->drm, phy, VLV_PLL_DW18(ch), 0x009f0003);
+		vlv_dpio_write(display, phy, VLV_PLL_DW18(ch), 0x009f0003);
 	else
-		vlv_dpio_write(display->drm, phy, VLV_PLL_DW18(ch), 0x00d0000f);
+		vlv_dpio_write(display, phy, VLV_PLL_DW18(ch), 0x00d0000f);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		/* Use SSC source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df40000);
+			vlv_dpio_write(display, phy, VLV_PLL_DW5(ch), 0x0df40000);
 		else
-			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df70000);
+			vlv_dpio_write(display, phy, VLV_PLL_DW5(ch), 0x0df70000);
 	} else { /* HDMI or VGA */
 		/* Use bend source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df70000);
+			vlv_dpio_write(display, phy, VLV_PLL_DW5(ch), 0x0df70000);
 		else
-			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df40000);
+			vlv_dpio_write(display, phy, VLV_PLL_DW5(ch), 0x0df40000);
 	}
 
-	coreclk = vlv_dpio_read(display->drm, phy, VLV_PLL_DW7(ch));
+	coreclk = vlv_dpio_read(display, phy, VLV_PLL_DW7(ch));
 	coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		coreclk |= 0x01000000;
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW7(ch), coreclk);
+	vlv_dpio_write(display, phy, VLV_PLL_DW7(ch), coreclk);
 
-	vlv_dpio_write(display->drm, phy, VLV_PLL_DW19(ch), 0x87871000);
+	vlv_dpio_write(display, phy, VLV_PLL_DW19(ch), 0x87871000);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
@@ -2019,44 +2019,44 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	m2_frac = clock->m2 & 0x3fffff;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* p1 and p2 divider */
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW13(ch),
+	vlv_dpio_write(display, phy, CHV_CMN_DW13(ch),
 		       DPIO_CHV_S1_DIV(5) |
 		       DPIO_CHV_P1_DIV(clock->p1) |
 		       DPIO_CHV_P2_DIV(clock->p2) |
 		       DPIO_CHV_K_DIV(1));
 
 	/* Feedback post-divider - m2 */
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW0(ch),
+	vlv_dpio_write(display, phy, CHV_PLL_DW0(ch),
 		       DPIO_CHV_M2_DIV(clock->m2 >> 22));
 
 	/* Feedback refclk divider - n and m1 */
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW1(ch),
+	vlv_dpio_write(display, phy, CHV_PLL_DW1(ch),
 		       DPIO_CHV_M1_DIV(DPIO_CHV_M1_DIV_BY_2) |
 		       DPIO_CHV_N_DIV(1));
 
 	/* M2 fraction division */
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW2(ch),
+	vlv_dpio_write(display, phy, CHV_PLL_DW2(ch),
 		       DPIO_CHV_M2_FRAC_DIV(m2_frac));
 
 	/* M2 fraction division enable */
-	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW3(ch));
+	tmp = vlv_dpio_read(display, phy, CHV_PLL_DW3(ch));
 	tmp &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
 	tmp |= DPIO_CHV_FEEDFWD_GAIN(2);
 	if (m2_frac)
 		tmp |= DPIO_CHV_FRAC_DIV_EN;
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display, phy, CHV_PLL_DW3(ch), tmp);
 
 	/* Program digital lock detect threshold */
-	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW9(ch));
+	tmp = vlv_dpio_read(display, phy, CHV_PLL_DW9(ch));
 	tmp &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 		      DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
 	tmp |= DPIO_CHV_INT_LOCK_THRESHOLD(0x5);
 	if (!m2_frac)
 		tmp |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW9(ch), tmp);
+	vlv_dpio_write(display, phy, CHV_PLL_DW9(ch), tmp);
 
 	/* Loop filter */
 	if (clock->vco == 5400000) {
@@ -2081,19 +2081,19 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 			DPIO_CHV_GAIN_CTRL(0x3);
 		tribuf_calcntr = 0;
 	}
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW6(ch), loopfilter);
+	vlv_dpio_write(display, phy, CHV_PLL_DW6(ch), loopfilter);
 
-	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW8(ch));
+	tmp = vlv_dpio_read(display, phy, CHV_PLL_DW8(ch));
 	tmp &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
 	tmp |= DPIO_CHV_TDC_TARGET_CNT(tribuf_calcntr);
-	vlv_dpio_write(display->drm, phy, CHV_PLL_DW8(ch), tmp);
+	vlv_dpio_write(display, phy, CHV_PLL_DW8(ch), tmp);
 
 	/* AFC Recal */
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch),
-		       vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch)) |
+	vlv_dpio_write(display, phy, CHV_CMN_DW14(ch),
+		       vlv_dpio_read(display, phy, CHV_CMN_DW14(ch)) |
 		       DPIO_AFC_RECAL);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
@@ -2106,14 +2106,14 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Enable back the 10bit clock to display controller */
-	tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch));
+	tmp = vlv_dpio_read(display, phy, CHV_CMN_DW14(ch));
 	tmp |= DPIO_DCLKP_EN;
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch), tmp);
+	vlv_dpio_write(display, phy, CHV_CMN_DW14(ch), tmp);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 
 	/*
 	 * Need to wait > 100ns between dclkp clock enable bit and PLL enable.
@@ -2247,14 +2247,14 @@ void chv_disable_pll(struct intel_display *display, enum pipe pipe)
 	intel_de_write(display, DPLL(display, pipe), val);
 	intel_de_posting_read(display, DPLL(display, pipe));
 
-	vlv_dpio_get(display->drm);
+	vlv_dpio_get(display);
 
 	/* Disable 10bit clock to display controller */
-	val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch));
+	val = vlv_dpio_read(display, phy, CHV_CMN_DW14(ch));
 	val &= ~DPIO_DCLKP_EN;
-	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch), val);
+	vlv_dpio_write(display, phy, CHV_CMN_DW14(ch), val);
 
-	vlv_dpio_put(display->drm);
+	vlv_dpio_put(display);
 }
 
 void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i915/display/vlv_clock.c
index 1abdae453514..a589cdb74903 100644
--- a/drivers/gpu/drm/i915/display/vlv_clock.c
+++ b/drivers/gpu/drm/i915/display/vlv_clock.c
@@ -22,11 +22,11 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
 	if (!display->vlv_clock.hpll_freq) {
-		vlv_cck_get(drm);
+		vlv_cck_get(display);
 		/* Obtain SKU information */
-		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
+		hpll_freq = vlv_cck_read(display, CCK_FUSE_REG) &
 			CCK_FUSE_HPLL_FREQ_MASK;
-		vlv_cck_put(drm);
+		vlv_cck_put(display);
 
 		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
 
@@ -39,12 +39,13 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 static int vlv_clock_get_cck(struct drm_device *drm,
 			     const char *name, u32 reg, int ref_freq)
 {
+	struct intel_display *display = to_intel_display(drm);
 	u32 val;
 	int divider;
 
-	vlv_cck_get(drm);
-	val = vlv_cck_read(drm, reg);
-	vlv_cck_put(drm);
+	vlv_cck_get(display);
+	val = vlv_cck_read(display, reg);
+	vlv_cck_put(display);
 
 	divider = val & CCK_FREQUENCY_VALUES;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d4db73c184e5..76e8cd0f65a4 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -254,16 +254,16 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 
 static void band_gap_reset(struct intel_display *display)
 {
-	vlv_flisdsi_get(display->drm);
+	vlv_flisdsi_get(display);
 
-	vlv_flisdsi_write(display->drm, 0x08, 0x0001);
-	vlv_flisdsi_write(display->drm, 0x0F, 0x0005);
-	vlv_flisdsi_write(display->drm, 0x0F, 0x0025);
+	vlv_flisdsi_write(display, 0x08, 0x0001);
+	vlv_flisdsi_write(display, 0x0F, 0x0005);
+	vlv_flisdsi_write(display, 0x0F, 0x0025);
 	udelay(150);
-	vlv_flisdsi_write(display->drm, 0x0F, 0x0000);
-	vlv_flisdsi_write(display->drm, 0x08, 0x0000);
+	vlv_flisdsi_write(display, 0x0F, 0x0000);
+	vlv_flisdsi_write(display, 0x08, 0x0000);
 
-	vlv_flisdsi_put(display->drm);
+	vlv_flisdsi_put(display);
 }
 
 static int intel_dsi_compute_config(struct intel_encoder *encoder,
@@ -461,11 +461,11 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_flisdsi_get(display->drm);
+	vlv_flisdsi_get(display);
 	/* program rcomp for compliance, reduce from 50 ohms to 45 ohms
 	 * needed everytime after power gate */
-	vlv_flisdsi_write(display->drm, 0x04, 0x0004);
-	vlv_flisdsi_put(display->drm);
+	vlv_flisdsi_write(display, 0x04, 0x0004);
+	vlv_flisdsi_put(display);
 
 	/* bandgap reset is needed after everytime we do power gate */
 	band_gap_reset(display);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index a2da6285890b..68b73cca2aec 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -219,11 +219,11 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(display->drm);
+	vlv_cck_get(display);
 
-	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, 0);
-	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_DIVIDER, config->dsi_pll.div);
-	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL,
+	vlv_cck_write(display, CCK_REG_DSI_PLL_CONTROL, 0);
+	vlv_cck_write(display, CCK_REG_DSI_PLL_DIVIDER, config->dsi_pll.div);
+	vlv_cck_write(display, CCK_REG_DSI_PLL_CONTROL,
 		      config->dsi_pll.ctrl & ~DSI_PLL_VCO_EN);
 
 	/* wait at least 0.5 us after ungating before enabling VCO,
@@ -231,17 +231,17 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 	 */
 	usleep_range(10, 50);
 
-	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
+	vlv_cck_write(display, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
 
-	ret = poll_timeout_us(val = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL),
+	ret = poll_timeout_us(val = vlv_cck_read(display, CCK_REG_DSI_PLL_CONTROL),
 			      val & DSI_PLL_LOCK,
 			      500, 20 * 1000, false);
 	if (ret) {
-		vlv_cck_put(display->drm);
+		vlv_cck_put(display);
 		drm_err(display->drm, "DSI PLL lock failed\n");
 		return;
 	}
-	vlv_cck_put(display->drm);
+	vlv_cck_put(display);
 
 	drm_dbg_kms(display->drm, "DSI PLL locked\n");
 }
@@ -253,14 +253,14 @@ void vlv_dsi_pll_disable(struct intel_encoder *encoder)
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(display->drm);
+	vlv_cck_get(display);
 
-	tmp = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL);
+	tmp = vlv_cck_read(display, CCK_REG_DSI_PLL_CONTROL);
 	tmp &= ~DSI_PLL_VCO_EN;
 	tmp |= DSI_PLL_LDO_GATE;
-	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, tmp);
+	vlv_cck_write(display, CCK_REG_DSI_PLL_CONTROL, tmp);
 
-	vlv_cck_put(display->drm);
+	vlv_cck_put(display);
 }
 
 static bool has_dsic_clock(struct intel_display *display)
@@ -333,10 +333,10 @@ u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(display->drm);
-	pll_ctl = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL);
-	pll_div = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_DIVIDER);
-	vlv_cck_put(display->drm);
+	vlv_cck_get(display);
+	pll_ctl = vlv_cck_read(display, CCK_REG_DSI_PLL_CONTROL);
+	pll_div = vlv_cck_read(display, CCK_REG_DSI_PLL_DIVIDER);
+	vlv_cck_put(display);
 
 	config->dsi_pll.ctrl = pll_ctl & ~DSI_PLL_LOCK;
 	config->dsi_pll.div = pll_div;
@@ -603,9 +603,9 @@ static void assert_dsi_pll(struct intel_display *display, bool state)
 {
 	bool cur_state;
 
-	vlv_cck_get(display->drm);
-	cur_state = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
-	vlv_cck_put(display->drm);
+	vlv_cck_get(display);
+	cur_state = vlv_cck_read(display, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
+	vlv_cck_put(display);
 
 	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
 				 "DSI PLL state assertion failure (expected %s, current %s)\n",
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
index 2472e0412728..a9c812da3c91 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
@@ -8,69 +8,69 @@
 #include "intel_dpio_phy.h"
 #include "vlv_sideband.h"
 
-void vlv_bunit_get(struct drm_device *drm)
+void vlv_bunit_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_BUNIT));
 }
 
-u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
+u32 vlv_bunit_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_BUNIT, reg);
 }
 
-void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
+void vlv_bunit_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
+	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_BUNIT, reg, val);
 }
 
-void vlv_bunit_put(struct drm_device *drm)
+void vlv_bunit_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_BUNIT));
 }
 
-void vlv_cck_get(struct drm_device *drm)
+void vlv_cck_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK));
 }
 
-u32 vlv_cck_read(struct drm_device *drm, u32 reg)
+u32 vlv_cck_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCK, reg);
 }
 
-void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
+void vlv_cck_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
+	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_CCK, reg, val);
 }
 
-void vlv_cck_put(struct drm_device *drm)
+void vlv_cck_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCK));
 }
 
-void vlv_ccu_get(struct drm_device *drm)
+void vlv_ccu_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCU));
 }
 
-u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
+u32 vlv_ccu_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCU, reg);
 }
 
-void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
+void vlv_ccu_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
+	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_CCU, reg, val);
 }
 
-void vlv_ccu_put(struct drm_device *drm)
+void vlv_ccu_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCU));
 }
 
-void vlv_dpio_get(struct drm_device *drm)
+void vlv_dpio_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
@@ -86,13 +86,12 @@ static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
 		return VLV_IOSF_SB_DPIO;
 }
 
-u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg)
+u32 vlv_dpio_read(struct intel_display *display, enum dpio_phy phy, int reg)
 {
-	struct intel_display *display = to_intel_display(drm);
 	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 	u32 val;
 
-	val = vlv_iosf_sb_read(drm, unit, reg);
+	val = vlv_iosf_sb_read(display->drm, unit, reg);
 
 	/*
 	 * FIXME: There might be some registers where all 1's is a valid value,
@@ -105,71 +104,70 @@ u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg)
 	return val;
 }
 
-void vlv_dpio_write(struct drm_device *drm,
+void vlv_dpio_write(struct intel_display *display,
 		    enum dpio_phy phy, int reg, u32 val)
 {
-	struct intel_display *display = to_intel_display(drm);
 	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 
-	vlv_iosf_sb_write(drm, unit, reg, val);
+	vlv_iosf_sb_write(display->drm, unit, reg, val);
 }
 
-void vlv_dpio_put(struct drm_device *drm)
+void vlv_dpio_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
-void vlv_flisdsi_get(struct drm_device *drm)
+void vlv_flisdsi_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
-u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
+u32 vlv_flisdsi_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_FLISDSI, reg);
 }
 
-void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
+void vlv_flisdsi_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
+	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_FLISDSI, reg, val);
 }
 
-void vlv_flisdsi_put(struct drm_device *drm)
+void vlv_flisdsi_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
-void vlv_nc_get(struct drm_device *drm)
+void vlv_nc_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_NC));
 }
 
-u32 vlv_nc_read(struct drm_device *drm, u8 addr)
+u32 vlv_nc_read(struct intel_display *display, u8 addr)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_NC, addr);
 }
 
-void vlv_nc_put(struct drm_device *drm)
+void vlv_nc_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_NC));
 }
 
-void vlv_punit_get(struct drm_device *drm)
+void vlv_punit_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_PUNIT));
 }
 
-u32 vlv_punit_read(struct drm_device *drm, u32 addr)
+u32 vlv_punit_read(struct intel_display *display, u32 addr)
 {
-	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
+	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_PUNIT, addr);
 }
 
-int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
+int vlv_punit_write(struct intel_display *display, u32 addr, u32 val)
 {
-	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
+	return vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_PUNIT, addr, val);
 }
 
-void vlv_punit_put(struct drm_device *drm)
+void vlv_punit_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_PUNIT));
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
index 065273726379..8751a070b0ae 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
@@ -10,40 +10,40 @@
 #include "vlv_iosf_sb_reg.h"
 
 enum dpio_phy;
-struct drm_device;
-
-void vlv_bunit_get(struct drm_device *drm);
-u32 vlv_bunit_read(struct drm_device *drm, u32 reg);
-void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val);
-void vlv_bunit_put(struct drm_device *drm);
-
-void vlv_cck_get(struct drm_device *drm);
-u32 vlv_cck_read(struct drm_device *drm, u32 reg);
-void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val);
-void vlv_cck_put(struct drm_device *drm);
-
-void vlv_ccu_get(struct drm_device *drm);
-u32 vlv_ccu_read(struct drm_device *drm, u32 reg);
-void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val);
-void vlv_ccu_put(struct drm_device *drm);
-
-void vlv_dpio_get(struct drm_device *drm);
-u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg);
-void vlv_dpio_write(struct drm_device *drm, enum dpio_phy phy, int reg, u32 val);
-void vlv_dpio_put(struct drm_device *drm);
-
-void vlv_flisdsi_get(struct drm_device *drm);
-u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg);
-void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val);
-void vlv_flisdsi_put(struct drm_device *drm);
-
-void vlv_nc_get(struct drm_device *drm);
-u32 vlv_nc_read(struct drm_device *drm, u8 addr);
-void vlv_nc_put(struct drm_device *drm);
-
-void vlv_punit_get(struct drm_device *drm);
-u32 vlv_punit_read(struct drm_device *drm, u32 addr);
-int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val);
-void vlv_punit_put(struct drm_device *drm);
+struct intel_display;
+
+void vlv_bunit_get(struct intel_display *display);
+u32 vlv_bunit_read(struct intel_display *display, u32 reg);
+void vlv_bunit_write(struct intel_display *display, u32 reg, u32 val);
+void vlv_bunit_put(struct intel_display *display);
+
+void vlv_cck_get(struct intel_display *display);
+u32 vlv_cck_read(struct intel_display *display, u32 reg);
+void vlv_cck_write(struct intel_display *display, u32 reg, u32 val);
+void vlv_cck_put(struct intel_display *display);
+
+void vlv_ccu_get(struct intel_display *display);
+u32 vlv_ccu_read(struct intel_display *display, u32 reg);
+void vlv_ccu_write(struct intel_display *display, u32 reg, u32 val);
+void vlv_ccu_put(struct intel_display *display);
+
+void vlv_dpio_get(struct intel_display *display);
+u32 vlv_dpio_read(struct intel_display *display, enum dpio_phy phy, int reg);
+void vlv_dpio_write(struct intel_display *display, enum dpio_phy phy, int reg, u32 val);
+void vlv_dpio_put(struct intel_display *display);
+
+void vlv_flisdsi_get(struct intel_display *display);
+u32 vlv_flisdsi_read(struct intel_display *display, u32 reg);
+void vlv_flisdsi_write(struct intel_display *display, u32 reg, u32 val);
+void vlv_flisdsi_put(struct intel_display *display);
+
+void vlv_nc_get(struct intel_display *display);
+u32 vlv_nc_read(struct intel_display *display, u8 addr);
+void vlv_nc_put(struct intel_display *display);
+
+void vlv_punit_get(struct intel_display *display);
+u32 vlv_punit_read(struct intel_display *display, u32 addr);
+int vlv_punit_write(struct intel_display *display, u32 addr, u32 val);
+void vlv_punit_put(struct intel_display *display);
 
 #endif /* _VLV_SIDEBAND_H_ */
-- 
2.47.3

