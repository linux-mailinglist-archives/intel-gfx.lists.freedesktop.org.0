Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7D984F8FE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 16:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262A010F692;
	Fri,  9 Feb 2024 15:57:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3hY82Lt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A65C10F692
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 15:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707494233; x=1739030233;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pHS5GfGUHhMEcPaAtjYiHh9WxY6+k01BTmuwJvIq+jI=;
 b=n3hY82LtrXc+FV3ncWmZC7ZTpbFh3nPjC+9fbSJZmsjSV4NCALOKeQ4i
 WXapQ8nG34CyqesUM3Wi3yxw/rEMkjX2e+Ryazx2SKYk8fRTQiMwzJBP+
 t9cZNTpDtHkqLEUSbYa+7ydCUH1QXYS2kxdqSoJK93j7qHVpcnHUvDKVw
 R5xVGPe9k08iwwK6Z2sT2JUCv0qHFGNy1Dn0RtLcdH8j6c3C4/Daf1ipg
 mLHsv8s6DCj5wuOGPeZ4OyBIaE3BDPmuzcdKTHlpITwAqVJRg1q20dAk/
 IkLgqC3XJEScByXQrCnPdYEv6Sk3jc6gdV8Dn2BADWvcmWvkT+fITPElE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5300599"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5300599"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 07:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="2304948"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 07:57:12 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Fri,  9 Feb 2024 21:13:00 +0530
Message-Id: <20240209154300.2747529-1-animesh.manna@intel.com>
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

HSD: 14015406119

v1: Initial version.
v2: Update timings stored in adjusted_mode struct. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index baf7354cb6e2..2e11629e4e9f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -552,6 +552,19 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+
+		/*
+		 * WA: HSD-14015406119
+		 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
+		 * to at least a value of 1 when Panel Replay is enabled with VRR.
+		 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
+		 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
+		 * by 1 if both are equal.
+		 */
+		if (DISPLAY_VER(i915) >= 13 && crtc_state->has_panel_replay &&
+		    adjusted_mode.crtc_vblank_start == adjusted_mode.crtc_vdisplay)
+			adjusted_mode.crtc_vblank_start += 1;
+
 		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 	} else {
 		mode_flags &= ~I915_MODE_FLAG_VRR;
-- 
2.29.0

