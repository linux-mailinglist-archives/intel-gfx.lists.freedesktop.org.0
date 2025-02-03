Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471E0A259E6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A2C10E4D3;
	Mon,  3 Feb 2025 12:50:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RhyPgFLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A67610E4CF;
 Mon,  3 Feb 2025 12:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587035; x=1770123035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3QzJyMZNKZfN/eA0KBFROH/+srdH5AvmHu1nmzE43Bc=;
 b=RhyPgFLvFOLzrKUBwGJ9dCZoDW65Q0eHAonGlm7mqCNIpiasxx+OS7wu
 lGNyxIEZ9Emk28UT2Z2t98voAII1EyFYkv41NCoO90bjTHOPUIgIHBnaz
 cRXob2RS6elqwGRJ8qUjZmOuPTNgGpH1pS9i1QEPvmOilSNFAzt2bAwy9
 1Rax6It1vYQdkRLkQXjKYmNb7Gip9H9BLY4Zj9aXL0Y4TZME5Q0fDXSRY
 ahIEHV05KfGwU50050+lgKO1TMq0DR1Lc0ocd8LL0wddEzb2zM9nHBR0q
 IV7MreztEXKdysCeMXqrxVX1l04zaPoul6RIc3nREo22OZpswY5H9MpUx g==;
X-CSE-ConnectionGUID: 0euWHz8JQUS5PATXHI9Wyg==
X-CSE-MsgGUID: w4SFFRDSRemyL8XYQgwwuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548114"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548114"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:35 -0800
X-CSE-ConnectionGUID: wmuOfoKvTfC5VAF5fPlXIA==
X-CSE-MsgGUID: FE+aM6rjSXWndr+mXSFTFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529055"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 21/28] drm/i915/vrr: Handle joiner with vrr
Date: Mon,  3 Feb 2025 18:08:33 +0530
Message-ID: <20250203123840.3855874-22-ankit.k.nautiyal@intel.com>
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

Do not program transcoder registers for VRR for the secondary pipe of
the joiner. Remove check to skip VRR for joiner case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b522af70696..7fad8ded9794 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -342,13 +342,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
-	/*
-	 * FIXME all joined pipes share the same transcoder.
-	 * Need to account for that during VRR toggle/push/etc.
-	 */
-	if (crtc_state->joiner_pipes)
-		return;
-
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
@@ -440,6 +433,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
@@ -491,6 +487,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 	if (!intel_vrr_is_enabled(crtc_state))
 		return;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (dsb)
 		intel_dsb_nonpost_start(dsb);
 
@@ -518,6 +517,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (!intel_vrr_is_enabled(crtc_state))
 		return;
 
@@ -560,6 +562,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		return;
+
 	if (!intel_vrr_is_enabled(old_crtc_state))
 		return;
 
-- 
2.45.2

