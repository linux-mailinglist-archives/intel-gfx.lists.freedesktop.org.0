Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uA0hMmfqAWpamQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8545105B6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E34810E79B;
	Mon, 11 May 2026 14:40:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bNKQNnRH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469F110E101
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2026 16:24:28 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-46fab5f4f59so154713b6e.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 May 2026 09:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778343867; x=1778948667; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vYSUkeQk08X5s5eiMKardz3dR/jsqi1HIQzkNjMFZNU=;
 b=bNKQNnRH3frfDVqRmtApxVheo+ntM2oqFfI/tvJLuA2LryNMQprnT6kI05IJ9o/x25
 nTC0Y96M6O8KgR4InBS4pjeG4QhDAqbEs7lSNp+gvaxRrtko1PfOsgRXdC8hbhiX4vJ1
 pkXHqFPd41PrdwBx4J0YZNpbbythPPS7b4AM6vy8WFk+ZK9ILDKtsQkZj/SNFiF3t/Ov
 /QS+WjOOdBY1p2wCT9EIFq7GiM4h1Y2OssaiqvBs0QS/NzXhcqKZz6qwQLL8oCUry10n
 rZw8qXI80K2lPDDoVzt4VCohOIGEtj6tdRp2zNIjey+umzcw5gQGHhtzROit3ssA8toW
 +IUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778343867; x=1778948667;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vYSUkeQk08X5s5eiMKardz3dR/jsqi1HIQzkNjMFZNU=;
 b=o58m77Pz2G0DPYYgQjX2MN4xHgYDp9v3oXl8btLoJflE+vzjYn4mxuB6oBfr0jaHzm
 IORnCgECgpP3blcRmn/SbebDUV3MTpSxQixUm1jGX1cdRblsFOx2rMpt+rCX7ROGzBIz
 S+X4XDQPN4W4NtBy8V0dRzifKBCdajld6NHDVrPERjCyUsBx9BHi1rx1ey2253relNHU
 xrszM+zZPafy3U5fnVOJ/T6J6tVmKXshuO3XkG1tPiTD11Jti/w/1ufDuM9lt+GDv1Pk
 TeLeyE3zu5rsd20Evh7vOnXI7B0W6AT0zsN9Y2lN0CzJ01MW43H8KVmUvRWIGs3iBerg
 KztA==
X-Gm-Message-State: AOJu0YzTpueDB93rEDB+di++3dSVfS8UuiZ21ruudDTnyESzwfEtllkL
 glPnH+1ROddpT8LLX69/0u3jU38IBx4HcsOy6LfMshw8j6oPGJ9MG+LB513kR/Jft98=
X-Gm-Gg: Acq92OEPWauZpjHCW9qmcAnsRrX5CBEIeKeni13ya4J5dmSWPfOO5MLtOhr7KxfHJ32
 X0Zx1sZBUFUppE77Q8RSxvYt37aRE1bHf+TavnVGUVV7km3y5snPG8jYI+GoAl1bUPU9/5S3mhY
 0B8wsVciRMt/GD6o/mpgL3+vM3o1ZbAFM/07pCY7LAGvxUTPt4oFIaWoElGQjpOGwbFlys53D3R
 d03RL/yJ+vdhlOdMMoxUurkOop6XY9SFFvjR3jTzmdT68H1+emxZPWeLfNZU2YMsGPLPYtjdQQT
 X9D50d7tAGjnu3VZXIrOcDSQg+NXCstWEM6aqXzQhitHVttBbhVRptJP6oCqXc6sxaLyzS4sehn
 7etOYI14AvuyCfgiLg0PE5E5+xFQWixFt9hdYQa+Rzy+wu9cC8wp7iP0nyk1u7T9T5ojYtQar0L
 Lz55NO/kl7CW7mpghFBF45lg+7NYmiR6rMsU/2LMpDFjhS2UAZqANh4ciMeE+6h7QU5hJbl+/fk
 d/5Xx1V/7ZQPJXDrpTrTxz+7Im3hMpAegI=
X-Received: by 2002:a05:6808:19a3:b0:467:53b0:b414 with SMTP id
 5614622812f47-480451ce0c8mr5800487b6e.6.1778343867067; 
 Sat, 09 May 2026 09:24:27 -0700 (PDT)
Received: from localhost ([136.49.184.116]) by smtp.gmail.com with ESMTPSA id
 5614622812f47-47c763b2c87sm17071559b6e.4.2026.05.09.09.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2026 09:24:26 -0700 (PDT)
From: Aaron Esau <aaron1esau@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 mika.kahola@intel.com, stable@vger.kernel.org,
 Aaron Esau <aaron1esau@gmail.com>
Subject: [PATCH 3/3] drm/i915/cx0: return errors from CX0 PLL enable on failure
Date: Sat,  9 May 2026 11:24:07 -0500
Message-ID: <20260509162407.510539-4-aaron1esau@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260509162407.510539-1-aaron1esau@gmail.com>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 4F8545105B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[46];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,ursulin.net,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[aaron1esau@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

intel_cx0pll_enable() silently continues when the PHY fails to come
out of SOC reset or the PLL fails to lock. When the CX0 PHY MSGBUS
is unresponsive, this causes all subsequent PLL register writes to be
silently dropped and the PLL lock request to time out, leaving the
display hardware in a broken state.

Return -ETIMEDOUT from intel_cx0_phy_lane_reset() when the PHY fails
to come out of SOC reset. Return -ETIMEDOUT from intel_cx0pll_enable()
when the PLL fails to lock. Propagate these errors through
intel_mtl_pll_enable() and mtl_pll_enable() to the shared DPLL
framework, which (as of the previous patch) will abort the CRTC
enable sequence rather than driving a pipe with a non-functional PLL.

Fixes: 51390cc0e00a ("drm/i915/mtl: Add Support for C10 PHY message bus and pll programming")
Cc: stable@vger.kernel.org
Signed-off-by: Aaron Esau <aaron1esau@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 47 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 +-
 3 files changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4cacea802..f5c8444ef 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3103,8 +3103,8 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
 	return val;
 }
 
-static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
-				     bool lane_reversal)
+static int intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
+				    bool lane_reversal)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
@@ -3121,10 +3121,12 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_set_us(display, XELPDP_PORT_BUF_CTL1(display, port),
 				     XELPDP_PORT_BUF_SOC_PHY_READY,
-				     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US))
-		drm_warn(display->drm,
-			 "PHY %c failed to bring out of SOC reset\n",
-			 phy_name(phy));
+				     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US)) {
+		drm_err(display->drm,
+			"PHY %c failed to bring out of SOC reset\n",
+			phy_name(phy));
+		return -ETIMEDOUT;
+	}
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
 		     lane_pipe_reset);
@@ -3160,6 +3162,8 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
+
+	return 0;
 }
 
 static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_count,
@@ -3220,17 +3224,18 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 	return val;
 }
 
-static void intel_cx0pll_enable(struct intel_encoder *encoder,
-				const struct intel_cx0pll_state *pll_state)
+static int intel_cx0pll_enable(struct intel_encoder *encoder,
+			       const struct intel_cx0pll_state *pll_state)
 {
 	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
-	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
+	int ret;
 
 	/*
 	 * Lane reversal is never used in DP-alt mode, in that case the
@@ -3246,7 +3251,9 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_program_port_clock_ctl(encoder, pll_state, port_clock, lane_reversal);
 
 	/* 2. Bring PHY out of reset. */
-	intel_cx0_phy_lane_reset(encoder, lane_reversal);
+	ret = intel_cx0_phy_lane_reset(encoder, lane_reversal);
+	if (ret)
+		goto out;
 
 	/*
 	 * 3. Change Phy power state to Ready.
@@ -3296,9 +3303,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
-			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
-		drm_warn(display->drm, "Port %c PLL not locked\n",
-			 phy_name(phy));
+			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL)) {
+		drm_err(display->drm, "Port %c PLL not locked\n",
+			phy_name(phy));
+		ret = -ETIMEDOUT;
+		goto out;
+	}
 
 	/*
 	 * 11. Follow the Display Voltage Frequency Switching Sequence After
@@ -3320,7 +3330,10 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 						    XELPDP_P2_STATE_READY);
 	}
 
+out:
 	intel_cx0_phy_transaction_end(encoder, wakeref);
+
+	return ret;
 }
 
 void intel_mtl_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state)
@@ -3458,11 +3471,11 @@ void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_cloc
 		       port_clock);
 }
 
-void intel_mtl_pll_enable(struct intel_encoder *encoder,
-			  struct intel_dpll *pll,
-			  const struct intel_dpll_hw_state *dpll_hw_state)
+int intel_mtl_pll_enable(struct intel_encoder *encoder,
+			 struct intel_dpll *pll,
+			 const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	intel_cx0pll_enable(encoder, &dpll_hw_state->cx0pll);
+	return intel_cx0pll_enable(encoder, &dpll_hw_state->cx0pll);
 }
 
 void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index ae98ac23e..1d6cc32d7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -28,9 +28,9 @@ struct intel_hdmi;
 void intel_clear_response_ready_flag(struct intel_encoder *encoder,
 				     int lane);
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
-void intel_mtl_pll_enable(struct intel_encoder *encoder,
-			  struct intel_dpll *pll,
-			  const struct intel_dpll_hw_state *dpll_hw_state);
+int intel_mtl_pll_enable(struct intel_encoder *encoder,
+			 struct intel_dpll *pll,
+			 const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_mtl_pll_disable(struct intel_encoder *encoder);
 enum icl_port_dpll_id
 intel_mtl_port_pll_type(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 78fd2e5f9..ce31deadc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4441,9 +4441,7 @@ static int mtl_pll_enable(struct intel_display *display,
 	if (drm_WARN_ON(display->drm, !encoder))
 		return -ENODEV;
 
-	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
-
-	return 0;
+	return intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
 }
 
 static void mtl_pll_disable(struct intel_display *display,
-- 
2.54.0

