Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C4FC62716
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9185310E2E0;
	Mon, 17 Nov 2025 05:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfyWwgeO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DC010E2E1;
 Mon, 17 Nov 2025 05:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358305; x=1794894305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YFftZkST++R7ztPciEn3ChGeP8DlyQ5vZ+0C08b1kBQ=;
 b=CfyWwgeOQ67pKJsrmvbpwBV+r/gzcZYa0qx09KZO6XY8KCw8HO29yI73
 SsUw55fURpenXQD+jpCXdUjJ1tVcTBTKdGG3eKAujHCy356c6BqXkbpdl
 2sQpfAGGrJ0DYdWfAsDdakjbnVA3BcmpVHRbtwWO6ns4m7V3B8/RDAw7O
 JfQmZxZQol/N6BR6wdBieDPUy0VQPM6iyN7nc47snM9ZrGjvmxVYDWXdH
 qEHKBngWig+g8C8Dx+rbj5xZASw6Xp0Hscl0yubVPYDdRwZAyTq+z+1f3
 udbcqB477efKAvsgcvPpxhbq7OGVPNDB4L3WXqSCGDH5r9QsOWzdpQWpm Q==;
X-CSE-ConnectionGUID: XQ2wJwoGRc+ad+U2bIwAew==
X-CSE-MsgGUID: q0guHgrGQLqbeEo39APFiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446080"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446080"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:45:05 -0800
X-CSE-ConnectionGUID: GyhEmjrsShaGvSazfAch+g==
X-CSE-MsgGUID: NvJiKH+ISI2MGMlby4wFdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016425"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:45:03 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 18/18] drm/i915/vrr: Add function to check if DC Balance
 Possible
Date: Mon, 17 Nov 2025 11:14:42 +0530
Message-ID: <20251117054442.4047665-19-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to check if DC Balance possibile on
requested PIPE and also validate along with DISPLAY_VER
check.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 87945b031a7d..8aba20a50d92 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -263,11 +263,25 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 }
 
 static
-void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
-				   int vmin, int vmax)
+int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
+	 * and PIPE B. Account those limitation while computing DC
+	 * Balance parameters.
+	 */
+	return (HAS_VRR_DC_BALANCE(display) &&
+		((pipe == PIPE_A) || (pipe == PIPE_B)));
+}
 
+static
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
+				   int vmin, int vmax)
+{
 	crtc_state->vrr.vmax = vmax;
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
@@ -275,7 +289,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
-	if (HAS_VRR_DC_BALANCE(display))
+	if (intel_vrr_dc_balance_possible(crtc_state))
 		crtc_state->vrr.dc_balance.enable = true;
 }
 
-- 
2.48.1

