Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE974A259E5
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D38B10E4CC;
	Mon,  3 Feb 2025 12:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPZXfnt1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D7E10E4CC;
 Mon,  3 Feb 2025 12:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587033; x=1770123033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=egN6yFAMPF0qk02U39ScuO3nVrGL1FTx0A49kAKPvjI=;
 b=IPZXfnt1Ga06JsfCsLhCTBblOauavolXx+UkLJFXf1ENrGQLdPm4FYvT
 ygUwIV/B6CFOAdkqdmlUWaiQyhc4fYp+69CqgfFX4lgKy9FCPzhS8Vol4
 pN1XzVGaU2xxnmTfb5h0JRJ2Cjgh7SU2zYrYTKS+xPPXeIhVsT513nLDk
 rBz90ooHcYVIx7zPiyB9cyfUPYeG08AHAmwGCcEsdtRpSnnmdkKj78AHd
 MctO4/aR5bTO8tThIDvcCmAQzEEjkaoqDSIRKzKwlm4Ki2HciNRBIUJa5
 bnwahivL0WU8lrWb2J5/K5xs9nWrLBSnYNqOS2b5AFgqlLID/uRQhYG8D w==;
X-CSE-ConnectionGUID: 9iGdTBBlSAS0Yk3MyQQcKQ==
X-CSE-MsgGUID: MwZ8UjxyQzmhxhCEnGO7Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548106"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548106"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:33 -0800
X-CSE-ConnectionGUID: ImWgexFRSdOu8NQuGE5m5g==
X-CSE-MsgGUID: VmafF43GTPCzXrf7TOW8JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529041"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/28] drm/i915/display: Extend WA 14015406119 for PSR2
Date: Mon,  3 Feb 2025 18:08:32 +0530
Message-ID: <20250203123840.3855874-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Wa_14015406119 is required for PSR1/2 while working with fixed refresh
rate with VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 09f881050ccd..a920d06278fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2617,8 +2617,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		IS_DISPLAY_VER(display, 13, 14);
+	return intel_vrr_possible(crtc_state) &&
+	       (crtc_state->has_psr || crtc_state->has_sel_update) &&
+	       IS_DISPLAY_VER(display, 13, 14);
 }
 
 static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

