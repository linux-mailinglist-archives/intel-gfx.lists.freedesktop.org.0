Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D90CD8EA0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2BA10E255;
	Tue, 23 Dec 2025 10:45:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3eQprXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 327E210E237;
 Tue, 23 Dec 2025 10:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486743; x=1798022743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2s2EXac30uPt9GQjjc9ty6qWUHeckav08gbJGyFgm0o=;
 b=h3eQprXcOK+QXlk9Q5NO8INTsHMk7zcJTvAf+C/p77dGDgqVSZNbZFJF
 UtwglFsGX6o6oRI3ojjlFvJ8+aG4Yer9Xm/ayNxzhQ1qm8yDMi36dhZbw
 qVC87NNp0hTPPSbxXvj4IF4nT+1VFYZkaq8T0khBg2+YCHgrp7GCUT3y/
 Xj/e9+xpFk8M3VwrwQPTT5lLkG4EMONFsFGYo1iBteCkr4+dyv6yU6qEx
 PAPTnBNvzB7sXC9MZdy8gNlpwzCFDjkA0s2/e0k+fSYVWEZx8cFomsysT
 1XnwBqxvpeLtfcvBPOqzb++VwK0mTg4+RSzOVklhLjQ5hBRSQ9cpj7seA g==;
X-CSE-ConnectionGUID: TJpyfVbXT5iJBUxmNAF+2g==
X-CSE-MsgGUID: K9rK0Nd8S1Cvw/BouIipow==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68090007"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68090007"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:43 -0800
X-CSE-ConnectionGUID: 6LFrvBN5QqKt5+8OA54uAA==
X-CSE-MsgGUID: g+FrTB1FStCbj/4P3iTw6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734568"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:39 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 14/18] drm/i915/display: Wait for VRR PUSH status update
Date: Tue, 23 Dec 2025 16:15:36 +0530
Message-ID: <20251223104542.2688548-15-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

After VRR Push is sent, need to wait till flipline decision boundary
to get Push bit to get cleared.

--v2:
- Adjust delays to vrr vmin vblank delays. (Ankit)

--v3:
- Change intel_vrr_vmin_safe_window_end() so that
intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)

--v4:
- Simplify intel_vrr_vmin_safe_window_end implementation. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 68b39fe0f7bc..a4a198a28519 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1095,10 +1095,21 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
 		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
 }
 
+static int
+intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
+}
+
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vblank_start(crtc_state) -
-	       crtc_state->set_context_latency;
+	int vmin_vblank_start = crtc_state->vrr.dc_balance.enable ?
+			intel_vrr_dcb_vmin_vblank_start(crtc_state) :
+			intel_vrr_vmin_vblank_start(crtc_state);
+
+	return vmin_vblank_start - crtc_state->set_context_latency;
 }
 
 int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
-- 
2.48.1

