Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68990CB921F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0326910E8D2;
	Fri, 12 Dec 2025 15:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a301zRK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE3410E8D1;
 Fri, 12 Dec 2025 15:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553369; x=1797089369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fm1cfsRKyLxgVSO4yd2tIbsWOPhMbbuMMgP6b26DFXo=;
 b=a301zRK6OUkvLPb0wBek7ltGxPjpzjuLaROrI8CzXPt3iXxdFavGJJN6
 +WiFD8iiA2m1y2aujnh/H5x2qRCEJgzgkIITVHISIQBWLCEybmjZoyK9T
 8Oe4c/sAE/T7Z4dIFCiQEJWaeEMVMrDoVLMDZq39vV8Hiwr187jQfZs8f
 xiJfAUk2dv0ANgBtQ5J0wGQrc0ROWlL6cpf8xROdNaB4idMa/XHeTjicI
 18x0KQKGESUrrVMr9THemXPnPLr9x2iqa1ntAFb+ZJ2fCgEXac8S/rIcY
 bu85TmaUHyjW9nyJdQ1e8G/WqgdaMiK4GKjbwVAWEvPa2xWEn3lD9ChIh Q==;
X-CSE-ConnectionGUID: qSUhCMnvTKajb87ygVw2Qw==
X-CSE-MsgGUID: JopA/PrlQjSy1kaLbO/hpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71402559"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71402559"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:29 -0800
X-CSE-ConnectionGUID: absOD/YYTy6Dmj0KPSvcAw==
X-CSE-MsgGUID: OoC3dZuTTH+YdYTbItstlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="228171844"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:23 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/13] drm/i915: Extract commit_dsb_max_cmds()
Date: Fri, 12 Dec 2025 17:28:43 +0200
Message-ID: <20251212152847.13679-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The code to determine the number of required DSB commands for
the commit is now split into two parts in a messy way, and the
comment explaining the numbers is completely ditached from the
place that actually has those numbers. Consolidtate it all into
a single function that makes sense.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++-------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3081dc8d86da..94742083693b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7293,29 +7293,40 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 	intel_color_prepare_commit(state, crtc);
 }
 
+static unsigned int
+commit_dsb_max_cmds(const struct intel_crtc_state *crtc_state)
+{
+	/* just enough to start the chained DSB */
+	if (!crtc_state->use_dsb && !crtc_state->use_flipq)
+		return 16;
+
+	/*
+	 * Rough estimate:
+	 * ~64 registers per each plane * 8 planes = 512
+	 * Double that for pipe stuff and other overhead.
+	 * ~4913 registers for 3DLUT
+	 * ~200 color registers * 3 HDR planes
+	 */
+	if (crtc_state->plane_color_changed)
+		return 8192;
+	else
+		return 1024;
+}
+
 static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	unsigned int size = new_crtc_state->plane_color_changed ? 8192 : 1024;
 
 	if (!new_crtc_state->use_flipq &&
 	    !new_crtc_state->use_dsb &&
 	    !new_crtc_state->dsb_color)
 		return;
 
-	/*
-	 * Rough estimate:
-	 * ~64 registers per each plane * 8 planes = 512
-	 * Double that for pipe stuff and other overhead.
-	 * ~4913 registers for 3DLUT
-	 * ~200 color registers * 3 HDR planes
-	 */
 	new_crtc_state->dsb_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0,
-						       new_crtc_state->use_dsb ||
-						       new_crtc_state->use_flipq ? size : 16);
+						       commit_dsb_max_cmds(new_crtc_state));
 	if (!new_crtc_state->dsb_commit) {
 		new_crtc_state->use_flipq = false;
 		new_crtc_state->use_dsb = false;
-- 
2.51.2

