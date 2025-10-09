Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BBCBC83C4
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F0810E999;
	Thu,  9 Oct 2025 09:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O52u3shK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4975010E999;
 Thu,  9 Oct 2025 09:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001274; x=1791537274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YRVsAVSjqj/oDPZBI+Y91cXtWb8ezZe8A/ToVBPQlZE=;
 b=O52u3shKZeQgNz370ynkiuiQCFAQR4aLuApBXC20dyzWxOqOAnt5JOUD
 4sW6TIRA02PUU9H2CwxzCVXS4y5k+f1GnYUP1H3WD+L5SAxK04S1DWWLM
 A/y+wYAb4IuI+HgfkNPA+cMnxDj799hpYkcBShWplK5UXRA2a1hj/4fCG
 elJTOS5x1wS/oyggeQwK8J6rsiql7k+lF+BtuCiaQAbaria6kJBapfHRU
 x//JBpP+zIL+UI/yCrlVLZ+pMvct+ZtH3nVIXsqiZqa8HJErOLG/dvP+c
 xEPmAYPNKzql/f4iKVoB1A29yBeA+1EUazYVnOAjCNLQHDnATn3/8I3dF w==;
X-CSE-ConnectionGUID: N4PNMCn4TQOYio5GCJe9cg==
X-CSE-MsgGUID: UkMeS9EMSA2OOZ16EKGD0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123497"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123497"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:33 -0700
X-CSE-ConnectionGUID: 9XYm8bIqSPSezocFVJWDDg==
X-CSE-MsgGUID: 2Ztfv8pqSjapaBGM92S7Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918081"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/8] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Thu,  9 Oct 2025 14:31:01 +0530
Message-ID: <20251009090102.850344-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

As we move towards using a shorter, optimized guardband, we need to adjust
how the delayed vblank start is computed.

Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
intel_vrr_always_use_vrr_tg() is true.

This also paves way for guardband optimization, by handling the movement of
the crtc_vblank_start for platforms that have VRR TG always active.

v2: Drop the helper and add the adjustment directly to
intel_vrr_compute_guardband(). Ville

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 221b25832e56..5f9b8e5c48be 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -436,7 +436,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -444,6 +444,10 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
 					intel_vrr_max_guardband(crtc_state));
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		adjusted_mode->crtc_vblank_start  =
+			crtc_state->vrr.vmin - crtc_state->vrr.guardband;
+
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
-- 
2.45.2

