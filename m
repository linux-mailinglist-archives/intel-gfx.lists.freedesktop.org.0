Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4A0C2A154
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425DD10E37A;
	Mon,  3 Nov 2025 05:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmkJjns6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C86E10E37A;
 Mon,  3 Nov 2025 05:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147848; x=1793683848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FV8hS9xkBaBxLb/7hSsP6P+NCmmObgRtX/epjMon8Ic=;
 b=YmkJjns6Ut95vIM1kE7cE773C2qx94WaG1WCspq37/N4OMzAPFFzBEkY
 nbNcht0YqKFG+E/JN0pvHo6QfhWIN5T/gzVXs+ng4DMOjWKliYYE80UoU
 mx+g1jbsgFOQSvABvMcdLsmq8s1sNc/Vgf6fn2+G7evECg5B8g9HBOp5E
 eYHQURqc3BTjWmOBvgQ0Tw+MUsm8OJWxgr1mUzj3gVhAHVZtIe43gSLVG
 66bHjG9v2nIbExGD1/1r11kQE4CetPeaLQbj7ppnmmp7KhQeuF68PneuV
 VPq8GxA47/hSogIu1TokvabCk1SYqHC3321UFx4+lIyaw6JYFSdbAdpqQ A==;
X-CSE-ConnectionGUID: jWxi/VGETGSgCbRwsTUv6w==
X-CSE-MsgGUID: sWdm4jP0RXqd2mjYY4QTZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143881"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143881"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:48 -0800
X-CSE-ConnectionGUID: Lz63ftJSQTGnidES+eLXwA==
X-CSE-MsgGUID: hIBlGk7IT0GFjth3Lk0eUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925441"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND,
 22/22] drm/i915/vrr: Add function to check if DC Balance Possible
Date: Mon,  3 Nov 2025 11:00:02 +0530
Message-ID: <20251103053002.3002695-23-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to check if DC Balance possibile on
requested PIPE and also validate along with DISPLAY_VER
check.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d68306cdbf57..50bb3a1f6105 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -236,6 +236,22 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static
+int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
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
+
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 				   int vmin, int vmax)
@@ -249,7 +265,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
-	if (HAS_VRR_DC_BALANCE(display))
+	if (intel_vrr_dc_balance_possible(crtc_state))
 		crtc_state->vrr.dc_balance.enable = true;
 }
 
-- 
2.48.1

