Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFDD30191
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9177210E1FC;
	Fri, 16 Jan 2026 11:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="okBg/XDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com
 [209.85.210.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E5510E7B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:49 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id
 d2e1a72fcca58-81f3de65b79so774565b3a.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496149; x=1769100949;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=eG3rEM0XnsP7mfoGfC144CTbZaCEXof3j5ORE1+Pdco=;
 b=okBg/XDtfjEYMzmnkfyKaurMN9nAJoa34oWKr1Wc7n0eq0SzG+6bKgYUohk/yDTwBB
 45+24kJg7r5c03CIZ9v0wtGoiKDuafzVbgtnwC4B8VPqzw8QGld+qFPbXH/tMy66K/U6
 520ACGyQFZesvsFhUkL+6dFz4Vfeb/DYT68ljUAvvzM2Cox3LwTzg9SIIGmg2bdPw5E2
 78uIn2fA0mOQ+kvOciel3gTxHhW8CA6qvKagF6gS4jCP0cwQ/2d8CexV2G967ZM8qngH
 oay3sa07bZgXDgbKPperS2UczHBQlr1UFZI48RBVtEG9q/tt6rlFf321uIhz3aNLCAW/
 ef0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496149; x=1769100949;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eG3rEM0XnsP7mfoGfC144CTbZaCEXof3j5ORE1+Pdco=;
 b=Cx1auBH2SUYlpX3NczjGnp9eO6rTE5sjRq59ckftUr0VTGV0EKsnjhqtJ2eO9d0Ik4
 RAx4vxi8K7Ig+ppUSltK/G735gd6D1wG3x/wvhY3pN+4yMBa18sBxoVLlg0vfNbVTE70
 DSCJ7ITQEqrmHU+rTC/cZufiFrar87BQ5Kp+NI2RNwcb4ZVV9Q7+p/Kue3pzVeanZTLg
 9+5gn7KlFPC4mD/x+RYy1QfqnOczeBx1qdYT0frW+SxG582MZnzlsO9xCV10+Gq3+8DM
 PT0t9vwKntMs3ZKzvXYyE6KbWytgyoPu74pQ0kZtaTezOsXKlNzaFv/r4DdtuA8KPb2d
 1nlg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGjXRqXrtlSbt/o6QwEAI6EbQJnbPIgmlIdpeMDxX+6ssTJnLmUlunoLRvp+wo8M+8t6G1KrHEyPM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw2gpi9T235a/42Lw0l2sTXwSeLcsaLRp/2SKMq/iwM9dL4Qio9
 SzxhYgd77N4PXzKPn5prKBnOC7M7Cm3FT9FyO5A6T0ft8X4IZbgNjkRipdw0zrW1h5OeNtf3yON
 kUnGtQLXHnz5CLw==
X-Received: from pfbih10.prod.google.com
 ([2002:a05:6a00:8c0a:b0:7f9:3450:d9b0])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:14cb:b0:81b:13c5:b6b2 with SMTP id
 d2e1a72fcca58-81fa01ec364mr194077b3a.33.1768496148910; 
 Thu, 15 Jan 2026 08:55:48 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:51 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=4641;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=WGsmXa9DlEYC0Cve/8njqaHWAeYO6NiBVpq2cwTNRhM=;
 b=EdHqabS/u+xNeSSUOjDiQsCsVkF8RmXH+vLfPnAxkiqpvbE7mI9E3uVmb7w5uMQA7eqy/3/k5
 HvIc2FEVoNxBwE1irI83s0wQkIQxVBri/CEu9gLmdjJCMJGg33vqRy8
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-5-001d5b38fc11@google.com>
Subject: [PATCH RFC 05/10] drm/i915/display: Enable early PLL readout and
 robustify modeset setup
From: Juasheem Sultan <jdsultan@google.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <seanpaul@google.com>, Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Fri, 16 Jan 2026 11:08:31 +0000
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

To support seamless boot and accurate state reconstruction on PTL:
1. Introduce `intel_dpll_readout_hw_state_early()` to capture shared DPLL
   states before the full modeset readout loop. This ensures PLL state is
   available when reconstructing CRTC states.
2. In `intel_modeset_readout_hw_state()`, explicitly set connector status
   to `connected` if an encoder is active. This prevents the framework from
   treating active boot connectors as disconnected if a subsequent detect()
   call hasn't run yet.
3. Add a NULL check for `encoder->get_hw_state` to prevent crashes during
   early readout if an encoder isn't fully initialized.
4. Suppress a warning in `skl_ddi_dpll0_get_hw_state` that can trigger
   during early boot transitions.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 16 +++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  7 +++++++
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8ea96cc524a1e253edfaa4a3f15be79560a1b7b5..57c2713ce3e7a6f410669e991cb58f9c63761718 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1482,15 +1482,15 @@ static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 
 	/* DPLL0 is always enabled since it drives CDCLK */
 	val = intel_de_read(display, regs[id].ctl);
-	if (drm_WARN_ON(display->drm, !(val & LCPLL_PLL_ENABLE)))
-		goto out;
+	//if (drm_WARN_ON(display->drm, !(val & LCPLL_PLL_ENABLE)))
+	//	goto out;
 
 	val = intel_de_read(display, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	ret = true;
 
-out:
+//out:
 	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
@@ -4513,6 +4513,16 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
 	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
 }
 
+void intel_dpll_readout_hw_state_early(struct intel_display *display)
+{
+	struct intel_dpll *pll;
+	int i;
+
+	for_each_dpll(display, pll, i) {
+		pll->on = intel_dpll_get_hw_state(display, pll, &pll->state.hw_state);
+	}
+}
+
 static void readout_dpll_hw_state(struct intel_display *display,
 				  struct intel_dpll *pll)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f131bdd1c975de2f126e88d0fdabf73f9e7d9a87..a17e85295bf026ab28d3610fa027b7e72ee77acf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -424,6 +424,7 @@ void intel_dpll_swap_state(struct intel_atomic_state *state);
 void intel_dpll_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
 void intel_dpll_readout_hw_state(struct intel_display *display);
+void intel_dpll_readout_hw_state_early(struct intel_display *display);
 void intel_dpll_sanitize_state(struct intel_display *display);
 
 void intel_dpll_dump_hw_state(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 8415f3d703edd01b4d209e7d805795c022ed6627..5dbffd0321e9527e114a7c29c82732870c1e4769 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -696,6 +696,8 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
+	intel_dpll_readout_hw_state_early(display);
+
 	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
@@ -724,6 +726,10 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 
 		pipe = 0;
 
+		if (!encoder->get_hw_state) {
+			continue;
+		}
+
 		if (encoder->get_hw_state(encoder, &pipe)) {
 			crtc = intel_crtc_for_pipe(display, pipe);
 			crtc_state = to_intel_crtc_state(crtc->base.state);
@@ -778,6 +784,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 			struct intel_crtc *crtc;
 
 			connector->base.dpms = DRM_MODE_DPMS_ON;
+			connector->base.status = connector_status_connected;
 
 			encoder = intel_attached_encoder(connector);
 			connector->base.encoder = &encoder->base;

-- 
2.52.0.457.g6b5491de43-goog

