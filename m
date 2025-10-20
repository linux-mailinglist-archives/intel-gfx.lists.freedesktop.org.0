Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B5BBF303C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78FE10E4B5;
	Mon, 20 Oct 2025 18:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H9YZQymd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20DA110E4B1;
 Mon, 20 Oct 2025 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986265; x=1792522265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fFmSpZvn1D7g2D7lLu5f3YCNrAQd0NnjTCmKjMtqe8E=;
 b=H9YZQymd2bcRmirqBCCETNEyDKBHgtQXcmXNcaXKjMnvNX48eNYWVu/b
 i1E3hRqTclqUNszehP3Y/I1BE3DTSN2PWniODKkLlXEQzJ7kYUf/goq/Y
 T4mGcWJj0YCF9g25mUL8RAbEcpfPf++ZDllP6b2sEWnXNXOoRiv3yYZc3
 Wb3bg2I4Q5fJ9bChBso8BQCFXQ1lds/BMrSMuPzXenbNMCpSc/On6wJdb
 ZVpPgvPAVqGn9STJPMXY20CQmqzi0opMCj+gaSAqKTNHLJLCSwYKFuIv+
 z6hakPMS9hCBlTI+uHVgalgii6uRk7gqAwu0SyWJd5KONwcHWU5YND2Eu A==;
X-CSE-ConnectionGUID: mzb0EJawTi6wjyoytAS+rA==
X-CSE-MsgGUID: 01K65EBSShaHB0YPjBa3fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73398662"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="73398662"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:05 -0700
X-CSE-ConnectionGUID: 85YNG9RDSUueE1DxIj2gFA==
X-CSE-MsgGUID: /nKcm1gETjuYt/srfc4hWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="187806677"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:03 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/22] drm/i195/vrr: Move crtc_state->vrr.{vmin,
 vmax} update into intel_vrr_compute_vrr_timings()
Date: Mon, 20 Oct 2025 21:50:22 +0300
Message-ID: <20251020185038.4272-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

The way intel_vrr_compute_*_timings() works is rather confusing.
First intel_vrr_compute_config() assigns the computed vmin/vmax
into crtc_state->vrr.{vmin,vmax}, and then either
intel_vrr_compute_vrr_timings() leaves them untouched or
intel_vrr_compute_{cmrr,fixed_rr}_timings() overwrite them with
something else.

Clean this up by moving all crtc_state->vrr.{vmin,vmax} assignments
into intel_vrr_compute_*_timings().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 01cb9cfe08e1..9179ad53a2e7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -235,8 +235,13 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 }
 
 static
-void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
+				   int vmin, int vmax)
 {
+	crtc_state->vrr.vmax = vmax;
+	crtc_state->vrr.vmin = vmin;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
@@ -381,13 +386,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	crtc_state->vrr.vmin = vmin;
-	crtc_state->vrr.vmax = vmax;
-
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-
 	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
-		intel_vrr_compute_vrr_timings(crtc_state);
+		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
 	else
-- 
2.49.1

