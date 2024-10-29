Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A658C9B485F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D9310E637;
	Tue, 29 Oct 2024 11:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vi4pNJ1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4788310E637;
 Tue, 29 Oct 2024 11:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730201588; x=1761737588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1yNhVENzWjqbuAg7/MpsAWhtvRVATN7eCmdNw5zqmoU=;
 b=Vi4pNJ1nATH69+6irzD3XM58SvJDNMQJXv/4X/SDW391yTs14O6HkEXh
 DKl37O2swoubE7RRoiimKoNHN9btPqTysZG6+zCwsU8hZ8St3e5yZqqGN
 o30vWBMtxisb94RcnvG0XTIQeYPFRegVeGDgv+OtfSF1fhKkyXxvjMj62
 7Y2KsEEY7PGyJXrIVCs2z/K08pXZxSMuxx5vJrDBNCjJpRJwJBQheCAqX
 5vfUdCdyZoCz7ysdehab9W/w02p6QUC/d9TYKTQLWWOaq5CDAULEIxNnN
 ZRFqqGFrTUxHTAEMKFh7eqsejl++ewKwaQpS0/p7HUeblu60oRU3B1BOX g==;
X-CSE-ConnectionGUID: Jq0mguNmQcKxaZ1+qFVrBQ==
X-CSE-MsgGUID: eFbdtw6WSQ2EWPRjvcj35w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33535764"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33535764"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:33:07 -0700
X-CSE-ConnectionGUID: 3yR/Dg/IQ4SnoNmH/jsd6A==
X-CSE-MsgGUID: hXMFs34kRgW33+prNcV2jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86699665"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:33:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: stop using bitwise OR with booleans in
 wm_optimization_wa()
Date: Tue, 29 Oct 2024 13:32:49 +0200
Message-Id: <f7ea5854c9a306f56f4142f8d37d567ee2f768a7.1730201504.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730201504.git.jani.nikula@intel.com>
References: <cover.1730201504.git.jani.nikula@intel.com>
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

Bitwise OR for booleans is a bit of an abuse. We can trivially drop the
usage.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e018a0868009..02f31c7b254b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1782,18 +1782,19 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum pipe pipe = intel_dp->psr.pipe;
-	bool set_wa_bit = false;
+	bool activate = false;
 
 	/* Wa_14015648006 */
-	if (IS_DISPLAY_VER(display, 11, 14))
-		set_wa_bit |= crtc_state->wm_level_disabled;
+	if (IS_DISPLAY_VER(display, 11, 14) && crtc_state->wm_level_disabled)
+		activate = true;
 
 	/* Wa_16013835468 */
-	if (DISPLAY_VER(display) == 12)
-		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
-			crtc_state->hw.adjusted_mode.crtc_vdisplay;
+	if (DISPLAY_VER(display) == 12 &&
+	    crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+	    crtc_state->hw.adjusted_mode.crtc_vdisplay)
+		activate = true;
 
-	if (set_wa_bit)
+	if (activate)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, LATENCY_REPORTING_REMOVED(pipe));
 	else
-- 
2.39.5

