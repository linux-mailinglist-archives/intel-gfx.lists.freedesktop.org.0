Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFQzJSbRuWnMOAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:09:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D512B2F27
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4ED10E629;
	Tue, 17 Mar 2026 22:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="os219axl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f202.google.com (mail-dy1-f202.google.com
 [74.125.82.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5147010E629
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 22:09:40 +0000 (UTC)
Received: by mail-dy1-f202.google.com with SMTP id
 5a478bee46e88-2c0cd2e4aa6so11150388eec.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 15:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773785380; x=1774390180;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=9+LGfzzHtFhuiKFHVAi1M/hVQayAnDIQqfT0FtjDgc0=;
 b=os219axl2kcLGOJh2oHE0BsoS0We2YfMb84vYW+JPFWI86cDGZbkFX+wVsWg7Z/jwQ
 6I5MMZYMWuXnSlaKiIdPkKuHoM/hj1xbwjJZaKGWPetRLgaAHpNwdjtvNaCT3rXlGtir
 2NcXaa7Sz9gwMt0ZuIgFxSjQuvB0uAaeYsM3g9cEg4V7GDjdWoPXB0C1yrQ2YCX4za6N
 Q8q2q52B0cRI0XCPX4gN5Rt5lyqzNvvqM51uX8WAtJwJGz+u/f/D4Up53q96tK6SGis2
 RPrg/k6rivwjuDvzbyuMc6vC5x3sFQ/5xC9M8EKEF94/yHtQz2WVa92jNyFsIUZIcMa7
 qZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773785380; x=1774390180;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9+LGfzzHtFhuiKFHVAi1M/hVQayAnDIQqfT0FtjDgc0=;
 b=kTsnjaHR9uwE9hzjxwaCtWwvLfEZdxicWbLDFrKYNcDR8/JCvP5/NECkHKaROvARHD
 t8pd8wci2Zs/BuFTn6BHrskkPlDdOirLQMcOdQhfbLla9OWrc6K1yqUb6W92k2H3Fh3W
 9cyeb1wLHJsun1b7by+9dqRjEz8H7vmCm8U3UA/y+DkXvkA+vQj7MDzVf74JqdhZv1wO
 1cO3cOR2g97CIBK2ZLfPqgdkxiVK6b7zeYoOrkPWOaAY35ay2JVp1DgF2tvg9fJE23v7
 lRuP0yylX+R+SLSk+pRffto9aY7wzbfduPKxXmR4hyxmlav5Ebtqo53B/PDww+F3WmNS
 xOnQ==
X-Gm-Message-State: AOJu0Ywd0Pgd8zZ4dHbVDhdG0KtqSlD7bJ0xCPsOv/f1y+0ci69BqYVc
 px0nUmHMKfvLDeXJP6UTWzjRB0dDwfEkM1cmmdAw7K9S/VCRnSo/F23e/P6pzyBPiqa+U+Kjfnu
 7rj0dcrWWP9H5U9S91jiZBIJnhaEb/RyyRUMNwSY3Swe4WyD3kjHcb2ro28mz2eVtdiIhKGNj7M
 svO21BfxQpX62TRbw3OQ5pQfYTg2wINnLM+4jhM9ogAPvvc+Tshp97BVAVcvk=
X-Received: from dybuh11.prod.google.com
 ([2002:a05:7301:750b:b0:2be:82ee:95dc])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:693c:3743:b0:2c0:dfb2:b50d with SMTP id
 5a478bee46e88-2c0e50ea96emr621094eec.25.1773785379305; 
 Tue, 17 Mar 2026 15:09:39 -0700 (PDT)
Date: Tue, 17 Mar 2026 15:09:03 -0700
In-Reply-To: <20260317220908.130968-1-jdsultan@google.com>
Mime-Version: 1.0
References: <20260317220908.130968-1-jdsultan@google.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
Message-ID: <20260317220908.130968-3-jdsultan@google.com>
Subject: [PATCH v4 2/2] drm/i915/display: Sync state to BIOS for seamless
 handoff
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Manasi Navare <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, 
 Rajat Jain <rajatja@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"
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
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 47D512B2F27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Align DP timings and C10 PLL state with BIOS values if within a 0.5%
clock threshold. This prevents minor mismatches from triggering a full
modeset during the first atomic commit, ensuring a flicker-free handoff.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 67 ++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4246481fc2f..22e5e931f134 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6397,6 +6397,71 @@ static int intel_atomic_check_config_and_link(struct intel_atomic_state *state)
 
 	return ret;
 }
+
+// Helper function to sanitize pll state
+static void intel_sanitize_pll_state(struct intel_crtc_state *old_crtc_state,
+		struct intel_crtc_state *new_crtc_state)
+{
+	int j;
+
+	for (j = 4; j < 9; j++) {
+		if (new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] !=
+				old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j]) {
+			new_crtc_state->dpll_hw_state.cx0pll.c10.pll[j] =
+				old_crtc_state->dpll_hw_state.cx0pll.c10.pll[j];
+		}
+	}
+}
+
+/*
+ * intel_dp_sanitize_seamless_boot - Snap driver state to BIOS state for seamless handoff.
+ * @state: the atomic state to sanitize
+ *
+ * This function compares the driver's calculated new_state with the inherited BIOS state
+ * (old_state). If they are within a small threshold (e.g., 0.5% for clock), it "snaps"
+ * the new_state to match the BIOS state exactly. This prevents minor state mismatches
+ * that would otherwise force a full modeset (and a screen flicker) during the initial
+ * kernel handoff.
+ */
+static void intel_dp_sanitize_seamless_boot(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	struct intel_crtc *crtc;
+	struct intel_encoder *encoder;
+	int i;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		/*
+		 * We must check old_crtc_state->inherited because new_crtc_state->inherited
+		 * is cleared at the start of intel_atomic_check for userspace commits.
+		 */
+		if (!old_crtc_state->inherited || !new_crtc_state->hw.active)
+			continue;
+
+		if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+			int old_clock = old_crtc_state->hw.adjusted_mode.crtc_clock;
+			int new_clock = new_crtc_state->hw.adjusted_mode.crtc_clock;
+			int threshold = old_clock / 200; /* 0.5% */
+
+			if (abs(new_clock - old_clock) <= threshold) {
+				new_crtc_state->hw.pipe_mode.crtc_clock = old_clock;
+				new_crtc_state->hw.adjusted_mode.crtc_clock = old_clock;
+				new_crtc_state->pixel_rate = old_crtc_state->pixel_rate;
+				new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
+			}
+		}
+
+		for_each_intel_encoder_mask(display->drm, encoder,
+				new_crtc_state->uapi.encoder_mask) {
+			if (intel_encoder_is_c10phy(encoder)) {
+				if (!new_crtc_state->dpll_hw_state.cx0pll.ssc_enabled)
+					intel_sanitize_pll_state(old_crtc_state, new_crtc_state);
+			}
+		}
+	}
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -6447,6 +6512,8 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	intel_dp_sanitize_seamless_boot(state);
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
-- 
2.53.0.851.ga537e3e6e9-goog

