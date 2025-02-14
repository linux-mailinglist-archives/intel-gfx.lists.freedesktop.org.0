Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCD0A35D79
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7775910E2B4;
	Fri, 14 Feb 2025 12:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cBRog3WM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB3910EC7B;
 Fri, 14 Feb 2025 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535773; x=1771071773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jOMQuJB8st/5yfhPysEPNJr9jWg8LBCsCUyUjZ2X/XQ=;
 b=cBRog3WMIDSnn7kqolZ0rWo7GP+roBNtUKKdkCn9PFyrpExmdqKXKo7l
 vTYevDv+nQxd4wyhoBxr9+m64/gcbp2SrwDxQ43fFLNE3NwviInxv6019
 Zdef9Uk/ZcMHV8VPFP9FCtHgE5YG/YBppZbhL//J2w4XSWSGqxZD9RBs4
 LofZuD5aYql6D3ZFLi7gOSm2qEl+CdApJayAlw0BvCLQFpyq+hl/DD3Y7
 0m27/grLafGooyAVdLLyzEXgxSETEviNVrP0tDJHrxgdiXtBK5RWjk8wq
 cgq3xqC1jYyNTeeB1jnTlLKcVgTwtcl8bdckViBKM7UQKz9snYTm63wa0 g==;
X-CSE-ConnectionGUID: WqbW3lojSuKjkUHp2QZc4Q==
X-CSE-MsgGUID: Egjhujm+Tv2CY6twptPHcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256014"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256014"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:52 -0800
X-CSE-ConnectionGUID: IInA/O2tSBCKvvRDmm0ljQ==
X-CSE-MsgGUID: /o1lgLsHQ26nAwejn9b6/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309584"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:50 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/19] drm/i915/vrr: Handle joiner with vrr
Date: Fri, 14 Feb 2025 17:41:23 +0530
Message-ID: <20250214121130.1808451-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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
index a4ed102a2119..61b4ec3756e8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -332,13 +332,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
 
@@ -430,6 +423,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
@@ -481,6 +477,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 	if (!crtc_state->vrr.enable)
 		return;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (dsb)
 		intel_dsb_nonpost_start(dsb);
 
@@ -545,6 +544,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
 		       crtc_state->vrr.vmin - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
@@ -587,6 +589,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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

