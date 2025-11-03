Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E35FC2A151
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C677610E37C;
	Mon,  3 Nov 2025 05:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hx19CN0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0452A10E37A;
 Mon,  3 Nov 2025 05:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147846; x=1793683846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7jYNI9FxgdNLGuwCKS0nxhuq56qF38UUWd3Krue0yBY=;
 b=hx19CN0ZbtlIL9YAfJ4Ro+zivhv6JOKYkzL6RZwBu8aW2A8lOwWKBkvA
 Ma60/bKO4VgRBP/YTeMjjtIZ7kvVART4M7GB4A260UPM/AZvqAsnm8uXi
 6H0nfAlniDRBXdj0j4FXK/ud1ovgjqhACz5qKMdHIFw4b9EY6st69tVdp
 EGIaMtH+sD5b5y6qeOzkFvIzXcm0tiJwm7oyndNtJtIdNu8Ai8FbYFJt+
 Wx3C7P2jCmYIcva9tI1Tbqomek3F6pCGA0k4FcGNGpjBXslUyFLg1Jzm0
 KKEKQjoypShemrlywzg64p29TIKK1BCeWribwXnbE4Ensuwf8h0LL6kOy g==;
X-CSE-ConnectionGUID: u5g2Yq46RGO13aurP6vr+Q==
X-CSE-MsgGUID: 51+92LT/TcSMFSbv8Qwy9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143880"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143880"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:46 -0800
X-CSE-ConnectionGUID: H/v+MQK8RgGqQkLqyHDGZw==
X-CSE-MsgGUID: Cy3SO8pfRZ+n/FT5GyybOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925421"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:45 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 21/22] drm/i915/vrr: Enable DC Balance
Date: Mon,  3 Nov 2025 11:00:01 +0530
Message-ID: <20251103053002.3002695-22-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Enable DC Balance from vrr compute config and related hw flag.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4c4dc065d3ad..d68306cdbf57 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -240,12 +240,17 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 				   int vmin, int vmax)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	crtc_state->vrr.vmax = vmax;
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (HAS_VRR_DC_BALANCE(display))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 static
@@ -815,6 +820,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	if (crtc_state->vrr.dc_balance.enable) {
+		vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
 		intel_dmc_configure_dc_balance_event(display, pipe, true);
 		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 			       ADAPTIVE_SYNC_COUNTER_EN);
-- 
2.48.1

