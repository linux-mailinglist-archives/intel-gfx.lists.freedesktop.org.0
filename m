Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1833BCC52F4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 22:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7361C10E97B;
	Tue, 16 Dec 2025 21:12:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXrQzH/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1623710E96F;
 Tue, 16 Dec 2025 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765919542; x=1797455542;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VcUaX3qmPQjeUb1fNKgrCAZ/t5rTpjSaTh8JAhZPTcg=;
 b=ZXrQzH/mAnJrF6luYS/DS98gJ7JJWiRaJqOR+uN19m6qRRqdJ9EBXjtd
 u3Cupg0K5uMMlLM7sWcmNXwVBT5i9esvkibPNj9AyhIe+oPYj+5F5ANPL
 2jHLJCGf/lUfxPdeEdGo0iQCJqjQs6Tu4urJxaY3WfqpQJkUfv2c2ALIf
 WSztpxlUPkW3VkpjLK8/HKk1tRfwvcPlUy1dcJGuBROgiTZDx2WXZYgth
 N8qFS4LTGDs7k1rVzcH1l4buoYQ//V8pYdZedmLInqerokrIvvLSJWu35
 mNg4souKUPg5zdGVdSgSPDvCKxa1h+AKlEk6ewg3podUGtCoGAdsJnIu6 w==;
X-CSE-ConnectionGUID: Hp7LWubmRzu17dej6lQ7wg==
X-CSE-MsgGUID: oDfATBCxSr6hcscaXTDN/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67732981"
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="67732981"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 13:12:22 -0800
X-CSE-ConnectionGUID: obBa9T0ZQaCwrARgXwHatg==
X-CSE-MsgGUID: d1hH3BgiSfSdHZ5IrRIp6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="198017057"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.223.67])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 13:12:21 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 16 Dec 2025 18:12:01 -0300
Subject: [PATCH 2/2] drm/i915/cx0: Toggle powerdown states for C10 on HDMI
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-2-08677b03e2f1@intel.com>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
In-Reply-To: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

A new step has been added to Bspec with respect to the C10 PHY, which
instructs the driver to toggle powerdown value for boths PHY lanes to P0
and then P2 when driving an HDMI connector. This update in the Bspec
reflects the changes required by Wa_14026084006, so document it.

Note that, unlike other display workarounds, this one is actually tied
to the C10 PHY and not to a specific display IP.  As such, let's just
document it in intel_cx0_phy.c instead of adding it to
intel_display_wa.c.

Bspec: 64568, 74489
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 264f8a5072e5..2c87c58812da 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3302,6 +3302,21 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
+	/*
+	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
+	 *
+	 * Wa_13013502646:
+	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
+	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
+	 * PHY lanes.
+	 */
+	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P0_STATE_ACTIVE);
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P2_STATE_READY);
+	}
+
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 

-- 
2.52.0

