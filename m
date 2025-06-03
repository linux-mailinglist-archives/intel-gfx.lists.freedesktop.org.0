Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C04ACCDAF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3606110E677;
	Tue,  3 Jun 2025 19:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvFOwfzw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FEF10E66C;
 Tue,  3 Jun 2025 19:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979452; x=1780515452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ztXHDh+62Amdd6VR3o3NHXw7cvnXdR/NU7Jony/oMM8=;
 b=mvFOwfzwjhOL5ezFTvIs01W51tzuI2ZeHck16fd0wQbY/w3j8o2Xk43i
 hAJLPTb4sRLxhuh20BU5SlfCjzX1MyZYun+TihE/3ZZ966IW+hePHALhs
 h0K2D19CL41sP/LC4PWmvJBZtx51NU+qTrBFUFmR9GiXqGQkqrLkY0zGg
 bJ++HzE7aOAbyVtc7OkzVryGTs7n+i7LslYU8svIV/P+DOf9n0jbjBfz6
 SbVC6FuqhJKYKLu99eJ8q/qWNZyhtoemvJ81RgpQZIHasugkn34RaCHil
 CKmowAE7gnOAMbSqqeKKcO3RODoxzE3xm6Avzl+veil07Iy+e+Mk9BvC8 A==;
X-CSE-ConnectionGUID: sWYWZmZVTJGa2Bq5v9/ttA==
X-CSE-MsgGUID: 9Wpm6LCOQECZli73hKVTDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50276057"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50276057"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:31 -0700
X-CSE-ConnectionGUID: j0vkxu7dSUizmv3G6hn8dQ==
X-CSE-MsgGUID: JScCIZwKS76bx+YvEhXNYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844827"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 17/17] drm/i915/vrr: Enable DC Balance bit
Date: Wed,  4 Jun 2025 01:05:22 +0530
Message-ID: <20250603193522.2567092-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and also add
enable/disable frame counters for DC Balance odd and even
frame count calculation.

--v2:
Update commit message

--v3:
- Driver should not control adjustment enable bit, as that
is already being controlled by firmware. Release bit from
driver computation.
- Commit message update.

--v4:
- Configure PIPEDMC_EVT_CTL enable/disable call.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 068fa7e792ed..4f8fac77afce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -277,6 +277,9 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (intel_vrr_dc_balance_possible(crtc_state))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 /*
@@ -688,6 +691,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
 	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
@@ -707,6 +712,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	}
 
 	ctl = trans_vrr_ctl(old_crtc_state);
-- 
2.48.1

