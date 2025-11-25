Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D9DC837C4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 07:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E8410E297;
	Tue, 25 Nov 2025 06:33:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KkTr9biJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A7610E16E;
 Tue, 25 Nov 2025 06:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764052388; x=1795588388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TxtRQHWHpmfGh3RG7/fgT/jlgWqD0CfhVK/ywrkyur0=;
 b=KkTr9biJ3/aFvoTdHSdramATzPNVT7IaSsCKO5pS+PPFsDe78eUvX2Rh
 F4RKk4fqRQZ/aQUdbrmywTrG/Epcuri8Q9mFwcCf0WgQzq2Rbxlixme44
 0zjqRLBesGN2zWo7gItlvwdZ/eHJD2XdH20zTOWCXv5Kj0lTQo265kVlo
 xGDEONruXXps3R6j3qvL+IrJTJdEagZk3Gnwun5m1nacZLgQHiYKQBZ2V
 5MXbdcv1ZguS2o/kgzqCxtHS/yY7sLSQeMNuoZNKD6oHSm1dws7lz9QPN
 PNlEGasdV0h1GoioRcH9HgDLxt1H9bG2pf+h3aYYjDFyFlO/5dV8ENTkF Q==;
X-CSE-ConnectionGUID: XirzPWGNTMmwjJMjeSYU6g==
X-CSE-MsgGUID: cbqTHyEoQ7+6gIRwAS1KwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68652128"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="68652128"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:07 -0800
X-CSE-ConnectionGUID: D5nWa8EgTQuTeOqADq9CSg==
X-CSE-MsgGUID: Y8ms3ICJSz+nSkZ29LCniQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="192991790"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.198])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/4] drm/i915/psr: Add helper for checking if vblank evasion
 is needed by PSR
Date: Tue, 25 Nov 2025 08:32:50 +0200
Message-ID: <20251125063253.328023-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125063253.328023-1-jouni.hogander@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

PSR2_MAN_TRK_CTL[SF Continuous full frame] is sampled on the rising edge of
delayed vblank. SW must ensure this bit is not changing around that
bit. Due to this PSR2 Selective Fetch needs vblank evasion.

Due to this add helper for intel_pipe_update_start usage to choose if
vblank evasion is needed by PSR.

Bspec: 50424
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 08bca4573974..18d5fe992f58 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4540,3 +4540,18 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 	return psr_min_guardband;
 }
+
+bool intel_psr_needs_evasion(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		intel_dp = enc_to_intel_dp(encoder);
+
+		break;
+	}
+	return intel_dp->psr.psr2_sel_fetch_enabled;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 620b35928832..8c09a9f8a00e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -86,5 +86,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state);
 int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
+bool intel_psr_needs_evasion(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

