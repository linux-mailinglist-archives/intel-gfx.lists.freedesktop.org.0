Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAjgLWrqAWpHmQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD0B5105DA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599FD10E7AB;
	Mon, 11 May 2026 14:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dQdwaU2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com
 [209.85.160.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBA210E3D2
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2026 16:24:27 +0000 (UTC)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-40850555c56so382050fac.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 May 2026 09:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778343866; x=1778948666; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=agw8Xmb0yn99pL/oH0Zm03pOn4MhFsZEOxVqcmxAjFE=;
 b=dQdwaU2n4O1qYjpX2C+I1fuEmAV9+IMj0/gJ+urgEj/X9Hfcb37mOJSrpr+NE6+kUZ
 YBtvskXBnkStawVfHxjTrR+8FXFQlqVKWwOBKPgMieDBI+6oNfemJohprn7o377cxK6P
 YTLEUCb/zyViV7qr6nclZi36nPV73D6878JEatEyZnoMhevYpK+Yb7MbQVa6U3p4b1jM
 VOJehMmjMrjJLONqKYFK8JVYe3HqysxItCmRz1g0qGF18uHLtivpdZ3539bQK40lrSPE
 oFubzmZvpYl1VbDS/b/td1sx0dNKIsSM8MowY8+YkFu5hvOb3sKRXJ3irEUqR9NEiYaS
 oZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778343866; x=1778948666;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=agw8Xmb0yn99pL/oH0Zm03pOn4MhFsZEOxVqcmxAjFE=;
 b=pdvS4B+iR9ueKJeSSnXElDNMOdSIX6TgJLcPWBCrZIzrpmHmVa3DpnqDgm1j4NBoBB
 8qlXsP75JlcIlZTb06Ua6glqSw/+DfiggpP55uFr15L1OPLhDVdI2B/MUsXrR/mLPW0z
 UYRlsdhINtEhYltx22pd/hUKpeolN9Ner9S2pV9UpKKsn9nNYAZLN9zqHbCBxZkh6eth
 1CaXolkR+keeq2fZ2y7LuYxsDiKxG5/uwOQtwfJJTMy0cl7840brvVSKFWI9L5/IfP+b
 kByRoWyNVpmhDpv30OPmV6BwZE01w/C7OyRXCAF835AETLWsfrZzMuGSdBxVaqNX9Zyj
 PLbw==
X-Gm-Message-State: AOJu0YxhAPAPcL1YTsWqxCWcJGf/iw/ts+52ZXu/fGgoS2Lb91wCy1e+
 chL/ZhYjPCuqXKxXTpW+/GhlkZ0YmeLdXP4J3c7sNkpoyOvT24W6/020U5WPVsggzS0=
X-Gm-Gg: Acq92OHVi37k7nCRTCFVsXYdShp+QQ5jbUywLhZtx/aehUoV5Fn7kXoFkOwg7EYyIMZ
 UIoXkwAyVBu01Ugkv1VoUInw4nuGum912EdtaTlQHhL2tJ2SIb6i/dMHBJd891yvoz9073X+AQB
 5ch802Dk4A6U6Sng3MX+WRNrWBTZiQvUjFgmVmXvdRGOFJiNwLhdPTcRifZzDpqbVK0J4Bvksl7
 TvDu3vCXyFsKiIpYA8rbGR8G6N1nH0xang6azIVfElATLifYjqLjxeRAVyYTjYIouGZUUeLswx1
 Aqu+GWM7IPYIyWVWuLgh6igz740B95HREh2AZgR5w7ATWNmO28y0N3GV1CGUOx57DaN4QvEp0fL
 KnuGshqrcsqZUAwtOuxq6safMHH4plUfZobhFiMFkPIx5i/wVM9syM7CXkqQzl6HOjHfGRXeT46
 H3ADZyL72c6xo8fhmio2MHjM+qZ1hZ6ZM8yvsIJCRRfXXEhrjPeOqpDSNfNJWZLdtn5PTORW62y
 FY9AVdnoeJR39cuzXMXZIFF
X-Received: by 2002:a05:6870:2d5:b0:434:2a0e:1560 with SMTP id
 586e51a60fabf-434f60ee4edmr6394699fac.2.1778343865970; 
 Sat, 09 May 2026 09:24:25 -0700 (PDT)
Received: from localhost ([136.49.184.116]) by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-43557371c56sm4590698fac.9.2026.05.09.09.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2026 09:24:25 -0700 (PDT)
From: Aaron Esau <aaron1esau@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 mika.kahola@intel.com, stable@vger.kernel.org,
 Aaron Esau <aaron1esau@gmail.com>
Subject: [PATCH 2/3] drm/i915/dpll: add error propagation to DPLL enable path
Date: Sat,  9 May 2026 11:24:06 -0500
Message-ID: <20260509162407.510539-3-aaron1esau@gmail.com>
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
X-Rspamd-Queue-Id: 6AD0B5105DA
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

The .enable callback in struct intel_dpll_funcs returns void, providing
no way to report PLL enable failures to callers. This leaves
_intel_enable_shared_dpll() and intel_dpll_enable() unable to detect
when a PLL fails to lock, causing pll->on to be set to true
unconditionally and the CRTC enable sequence to proceed against a
non-functional PLL.

Change the .enable callback to return int. Update all implementations
to return 0 (no functional change for platforms where enable cannot
fail). Thread the error through _intel_enable_shared_dpll() and
intel_dpll_enable(), rolling back active_mask and power domain state
on failure.

Update hsw_crtc_enable() and ilk_pch_enable() to check the return
value and bail out before attempting to drive a pipe with no working
PLL.

No functional change on any platform yet, as all .enable callbacks
return 0. A subsequent patch will make the CX0 PHY PLL enable path
return errors on failure.

Signed-off-by: Aaron Esau <aaron1esau@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 87 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  7 +-
 4 files changed, 80 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0f82bf771..74bfeed31 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1645,8 +1645,14 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	if (new_crtc_state->intel_dpll)
-		intel_dpll_enable(new_crtc_state);
+	if (new_crtc_state->intel_dpll) {
+		if (intel_dpll_enable(new_crtc_state)) {
+			drm_err(display->drm,
+				"[CRTC:%d:%s] PLL enable failed, aborting crtc enable\n",
+				crtc->base.base.id, crtc->base.name);
+			return;
+		}
+	}
 
 	intel_encoders_pre_enable(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430..78fd2e5f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -69,9 +69,9 @@ struct intel_dpll_funcs {
 	 * Hook for enabling the pll, called from intel_enable_dpll() if
 	 * the pll is not already enabled.
 	 */
-	void (*enable)(struct intel_display *display,
-		       struct intel_dpll *pll,
-		       const struct intel_dpll_hw_state *dpll_hw_state);
+	int (*enable)(struct intel_display *display,
+		      struct intel_dpll *pll,
+		      const struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
 	 * Hook for disabling the pll, called from intel_disable_dpll()
@@ -245,14 +245,28 @@ intel_tc_pll_enable_reg(struct intel_display *display,
 	return MG_PLL_ENABLE(tc_port);
 }
 
-static void _intel_enable_shared_dpll(struct intel_display *display,
-				      struct intel_dpll *pll)
+static int _intel_enable_shared_dpll(struct intel_display *display,
+				     struct intel_dpll *pll)
 {
+	int ret;
+
 	if (pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
 
-	pll->info->funcs->enable(display, pll, &pll->state.hw_state);
+	ret = pll->info->funcs->enable(display, pll, &pll->state.hw_state);
+	if (ret) {
+		drm_err(display->drm, "%s: PLL enable failed (err %d)\n",
+			pll->info->name, ret);
+		pll->on = false;
+		if (pll->info->power_domain)
+			intel_display_power_put(display, pll->info->power_domain,
+						pll->wakeref);
+		return ret;
+	}
+
 	pll->on = true;
+
+	return 0;
 }
 
 static void _intel_disable_shared_dpll(struct intel_display *display,
@@ -270,17 +284,20 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
  * @crtc_state: CRTC, and its state, which has a DPLL
  *
  * Enable DPLL used by @crtc.
+ *
+ * Returns: 0 on success, negative error code on failure.
  */
-void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
+int intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_dpll *pll = crtc_state->intel_dpll;
 	unsigned int pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
 	unsigned int old_mask;
+	int ret = 0;
 
 	if (drm_WARN_ON(display->drm, !pll))
-		return;
+		return -EINVAL;
 
 	mutex_lock(&display->dpll.lock);
 	old_mask = pll->active_mask;
@@ -305,10 +322,14 @@ void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 
 	drm_dbg_kms(display->drm, "enabling %s\n", pll->info->name);
 
-	_intel_enable_shared_dpll(display, pll);
+	ret = _intel_enable_shared_dpll(display, pll);
+	if (ret)
+		pll->active_mask &= ~pipe_mask;
 
 out:
 	mutex_unlock(&display->dpll.lock);
+
+	return ret;
 }
 
 /**
@@ -577,7 +598,7 @@ static void ibx_assert_pch_refclk_enabled(struct intel_display *display)
 				 "PCH refclk assertion failure, should be active but is disabled\n");
 }
 
-static void ibx_pch_dpll_enable(struct intel_display *display,
+static int ibx_pch_dpll_enable(struct intel_display *display,
 				struct intel_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -604,6 +625,8 @@ static void ibx_pch_dpll_enable(struct intel_display *display,
 	intel_de_write(display, PCH_DPLL(id), hw_state->dpll);
 	intel_de_posting_read(display, PCH_DPLL(id));
 	udelay(200);
+
+	return 0;
 }
 
 static void ibx_pch_dpll_disable(struct intel_display *display,
@@ -707,7 +730,7 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 	.compare_hw_state = ibx_compare_hw_state,
 };
 
-static void hsw_ddi_wrpll_enable(struct intel_display *display,
+static int hsw_ddi_wrpll_enable(struct intel_display *display,
 				 struct intel_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -717,9 +740,11 @@ static void hsw_ddi_wrpll_enable(struct intel_display *display,
 	intel_de_write(display, WRPLL_CTL(id), hw_state->wrpll);
 	intel_de_posting_read(display, WRPLL_CTL(id));
 	udelay(20);
+
+	return 0;
 }
 
-static void hsw_ddi_spll_enable(struct intel_display *display,
+static int hsw_ddi_spll_enable(struct intel_display *display,
 				struct intel_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -728,6 +753,8 @@ static void hsw_ddi_spll_enable(struct intel_display *display,
 	intel_de_write(display, SPLL_CTL, hw_state->spll);
 	intel_de_posting_read(display, SPLL_CTL);
 	udelay(20);
+
+	return 0;
 }
 
 static void hsw_ddi_wrpll_disable(struct intel_display *display,
@@ -1300,10 +1327,11 @@ static const struct intel_dpll_funcs hsw_ddi_spll_funcs = {
 	.get_freq = hsw_ddi_spll_get_freq,
 };
 
-static void hsw_ddi_lcpll_enable(struct intel_display *display,
+static int hsw_ddi_lcpll_enable(struct intel_display *display,
 				 struct intel_dpll *pll,
 				 const struct intel_dpll_hw_state *hw_state)
 {
+	return 0;
 }
 
 static void hsw_ddi_lcpll_disable(struct intel_display *display,
@@ -1393,7 +1421,7 @@ static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
 	intel_de_posting_read(display, DPLL_CTRL1);
 }
 
-static void skl_ddi_pll_enable(struct intel_display *display,
+static int skl_ddi_pll_enable(struct intel_display *display,
 			       struct intel_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1413,15 +1441,19 @@ static void skl_ddi_pll_enable(struct intel_display *display,
 
 	if (intel_de_wait_for_set_ms(display, DPLL_STATUS, DPLL_LOCK(id), 5))
 		drm_err(display->drm, "DPLL %d not locked\n", id);
+
+	return 0;
 }
 
-static void skl_ddi_dpll0_enable(struct intel_display *display,
+static int skl_ddi_dpll0_enable(struct intel_display *display,
 				 struct intel_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 
 	skl_ddi_pll_write_ctrl1(display, pll, hw_state);
+
+	return 0;
 }
 
 static void skl_ddi_pll_disable(struct intel_display *display,
@@ -2053,7 +2085,7 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 	.compare_hw_state = skl_compare_hw_state,
 };
 
-static void bxt_ddi_pll_enable(struct intel_display *display,
+static int bxt_ddi_pll_enable(struct intel_display *display,
 			       struct intel_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -2158,6 +2190,8 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 	temp &= ~LANESTAGGER_STRAP_OVRD;
 	temp |= hw_state->pcsdw12;
 	intel_de_write(display, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
+
+	return 0;
 }
 
 static void bxt_ddi_pll_disable(struct intel_display *display,
@@ -4007,7 +4041,7 @@ static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct inte
 		drm_dbg_kms(display->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
 }
 
-static void combo_pll_enable(struct intel_display *display,
+static int combo_pll_enable(struct intel_display *display,
 			     struct intel_dpll *pll,
 			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -4029,9 +4063,11 @@ static void combo_pll_enable(struct intel_display *display,
 	adlp_cmtg_clock_gating_wa(display, pll);
 
 	/* DVFS post sequence would be here. See the comment above. */
+
+	return 0;
 }
 
-static void icl_tbt_pll_enable(struct intel_display *display,
+static int icl_tbt_pll_enable(struct intel_display *display,
 			       struct intel_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -4050,9 +4086,11 @@ static void icl_tbt_pll_enable(struct intel_display *display,
 	icl_pll_enable(display, pll, TBT_PLL_ENABLE);
 
 	/* DVFS post sequence would be here. See the comment above. */
+
+	return 0;
 }
 
-static void mg_pll_enable(struct intel_display *display,
+static int mg_pll_enable(struct intel_display *display,
 			  struct intel_dpll *pll,
 			  const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -4075,6 +4113,8 @@ static void mg_pll_enable(struct intel_display *display,
 	icl_pll_enable(display, pll, enable_reg);
 
 	/* DVFS post sequence would be here. See the comment above. */
+
+	return 0;
 }
 
 static void icl_pll_disable(struct intel_display *display,
@@ -4392,16 +4432,18 @@ static int mtl_pll_get_freq(struct intel_display *display,
 	return intel_cx0pll_calc_port_clock(encoder, &dpll_hw_state->cx0pll);
 }
 
-static void mtl_pll_enable(struct intel_display *display,
+static int mtl_pll_enable(struct intel_display *display,
 			   struct intel_dpll *pll,
 			   const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_encoder *encoder = get_intel_encoder(display, pll);
 
 	if (drm_WARN_ON(display->drm, !encoder))
-		return;
+		return -ENODEV;
 
 	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
+
+	return 0;
 }
 
 static void mtl_pll_disable(struct intel_display *display,
@@ -4422,10 +4464,11 @@ static const struct intel_dpll_funcs mtl_pll_funcs = {
 	.get_freq = mtl_pll_get_freq,
 };
 
-static void mtl_tbt_pll_enable(struct intel_display *display,
+static int mtl_tbt_pll_enable(struct intel_display *display,
 			       struct intel_dpll *pll,
 			       const struct intel_dpll_hw_state *hw_state)
 {
+	return 0;
 }
 
 static void mtl_tbt_pll_disable(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5b71c8605..21fae6fd0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -435,7 +435,7 @@ int intel_dpll_get_freq(struct intel_display *display,
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-void intel_dpll_enable(const struct intel_crtc_state *crtc_state);
+int intel_dpll_enable(const struct intel_crtc_state *crtc_state);
 void intel_dpll_disable(const struct intel_crtc_state *crtc_state);
 void intel_dpll_swap_state(struct intel_atomic_state *state);
 void intel_dpll_init(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 16619f7be..cb979a946 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -399,7 +399,12 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	 * get_dpll unconditionally resets the pll - we need that
 	 * to have the right LVDS enable sequence.
 	 */
-	intel_dpll_enable(crtc_state);
+	if (intel_dpll_enable(crtc_state)) {
+		drm_err(display->drm,
+			"[CRTC:%d:%s] PCH PLL enable failed, aborting PCH enable\n",
+			crtc->base.base.id, crtc->base.name);
+		return;
+	}
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(display, pipe);
-- 
2.54.0

