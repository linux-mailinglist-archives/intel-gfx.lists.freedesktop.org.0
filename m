Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A8584CD36
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 15:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87AF10E151;
	Wed,  7 Feb 2024 14:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEwST0CS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9784210E151
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 14:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707317363; x=1738853363;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L7lPHDFbNzKEJ004lpDUOL5uX6Pm7knfPgl1l21fwsU=;
 b=BEwST0CSFYAPQ7AfvSi2akMbAmQPeZDJH48DUMfyjUiOHKls0cOPXDIk
 MUEnR4CKtFeEj+UXs094Ma9xy8AViju1UEBIHx3/LC1bWWvKmF54fFMxB
 XM9CwcB+lhDCZhr1B3ipH24SpkOUMADRzpNc46ZJ2QphyKaV8hcDwqiSG
 GZ1ikVullLi0MWKQ0RNXGd6BrN1bBE4PERIUeM0ocu8AuRwoB8GU5l1Iv
 hRypcCY2SZ0pJf1HlWri+uAuCEfZq7nPlQThAGq71I0KfY93pdW9wlVEn
 /oMbNhZAnYSLqcmROFuIyZNj/6ShLdsrWB9N4d3F0Myn6nSFhTzLYfaJL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="26445045"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="26445045"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:49:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="5954315"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa004.fm.intel.com with ESMTP; 07 Feb 2024 06:49:18 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Wed,  7 Feb 2024 20:05:09 +0530
Message-Id: <20240207143509.2607428-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Panel Replay VSC SDP not getting sent when VRR is enabled
and W1 and W2 are 0. So Program Set Context Latency in
TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b844cac4c58..c1ec78b5b6c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2618,8 +2618,16 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 13) {
-		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+		/*
+		 * WA: Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
+		 * to at least a value of 1 when Panel Replay is enabled with VRR.
+		 */
+		if (crtc_state->vrr.enable &&  crtc_state->has_panel_replay &&
+		    (crtc_vblank_start == crtc_vdisplay))
+			intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder), 1);
+		else
+			intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
+				       crtc_vblank_start - crtc_vdisplay);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
-- 
2.29.0

