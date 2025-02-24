Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31088A4218B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78F1010E54E;
	Mon, 24 Feb 2025 13:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJCLYXeT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1230310E14D;
 Mon, 24 Feb 2025 06:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378599; x=1771914599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y7LpkCA//CeuJue6gMfrElkC7zuOKaWVZ17r2ZY6wwY=;
 b=gJCLYXeT8KAv5mhJApUtO/8A2FAmVRofIo4uIc1ZDXwV2ro4EX4W2W0S
 619zq3AhMzQL3dqPPgFSRaJkPgMv826X6JJS8NlGA7swh2F26nuTQmNgf
 rLIH2qM39S5R73gspf/nDUfwgUnchDM9qXBnTkFOTeG8RZJeJKAO7w+aQ
 7rg+a9bC3Y9aCu2p1X+5iw0lHJVRY+xk4znaLrPQ7dbDSERasJE4ENqtF
 GAp648B6mmGblfN0HHglDrALHehTZMnLZ7S7Z4i5uMl3fPj1581eVGZds
 3fcpY/cAQHpVwKh2uJdJUk9IcIe5H4iRh0Dc3oanUmDOot+RHvAa8thqX A==;
X-CSE-ConnectionGUID: KYbrHHv0RoumiipmoAGX5A==
X-CSE-MsgGUID: DgmeDJb2R2yoeokuKd17eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719683"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719683"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:58 -0800
X-CSE-ConnectionGUID: CaA9IGYwSmO+1683kzU0jw==
X-CSE-MsgGUID: 2gzPeNnrSB6UgJtaOCOl/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076572"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/20] drm/i915/vrr: Handle joiner with vrr
Date: Mon, 24 Feb 2025 11:47:10 +0530
Message-ID: <20250224061717.1095226-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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
index 45efcb57c77a..30fcd1e66a12 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -345,13 +345,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
 
@@ -443,6 +436,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
@@ -494,6 +490,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 	if (!crtc_state->vrr.enable)
 		return;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (dsb)
 		intel_dsb_nonpost_start(dsb);
 
@@ -558,6 +557,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
 		       crtc_state->vrr.vmin - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
@@ -586,6 +588,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		return;
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       trans_vrr_ctl(old_crtc_state));
 	intel_de_wait_for_clear(display,
-- 
2.45.2

