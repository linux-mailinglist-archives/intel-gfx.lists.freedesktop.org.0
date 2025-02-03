Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12121A259E7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB16510E4D5;
	Mon,  3 Feb 2025 12:50:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iejHKKOD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CE610E4CF;
 Mon,  3 Feb 2025 12:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587038; x=1770123038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIiVBJUtpDPjyKyubVRu2DUL7VJKldgY/omxq+XZIP8=;
 b=iejHKKODh5YRl8TJ6J9Jqyn2CmFp9RE1T0TXSg2ltdKoqaV0kfHxE6i7
 uRo+dSYzESXB2RghMCCiWhFNkNTP/AXFIg7RjzZqO4siCknoKlKP8WEoe
 gTA//V94oDOCbnYXw3awsnoFCDhOqzfgDDbaRJovLzsZCrTNoKHtqWyuu
 UbipowIO/adKgx+Q1kCd5jLIC8jMyDofWoic/g+mNGCKFOi1/Ub2WVWYx
 6/bmhGmL+olXpMR3xuAtF4G5U5yni5hWKO1IJCi1u6zPkPDolg/dsjuxl
 Wadk2jikp5nxiKbcTEDxONyA8Ec/Q2IqGXLdhj9hCUQ7Wnyh26Zn8J5n/ w==;
X-CSE-ConnectionGUID: 0HdH0J2sQLG1hNvRPFSHNQ==
X-CSE-MsgGUID: BUZOYx8XQXmjVENrd7Lahw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548119"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548119"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:37 -0800
X-CSE-ConnectionGUID: fxwcK1+NS6mf0PZ4up6xyA==
X-CSE-MsgGUID: 2lz1QgA1S9OdU0vxVTY79g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529073"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 22/28] drm/i915/vrr: Refactor condition for computing vmax and
 LRR
Date: Mon,  3 Feb 2025 18:08:34 +0530
Message-ID: <20250203123840.3855874-23-ankit.k.nautiyal@intel.com>
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

LRR and Vmax can be computed only if VRR is supported and vrr.in_range
is set. Currently we proceed with vrr timings only for VRR supporting
panels and return otherwise. For using VRR TG with fix timings, need to
continue even for panels that do not support VRR.

To achieve this, refactor the condition for computing vmax and
update_lrr so that we can continue for fixed timings for panels that do
not support VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7fad8ded9794..c852de748ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -340,21 +340,21 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int vmin, vmax;
+	int vmin = 0, vmax = 0;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
 	crtc_state->vrr.in_range =
 		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
 
-	if (HAS_LRR(display))
-		crtc_state->update_lrr = true;
+	if (crtc_state->vrr.in_range) {
+		if (HAS_LRR(display))
+			crtc_state->update_lrr = true;
+		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+	}
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
-	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
 
 	if (vmin >= vmax)
 		return;
-- 
2.45.2

