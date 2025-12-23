Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4BCD870D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 09:16:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2DC10E1A8;
	Tue, 23 Dec 2025 08:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TXrWDRBu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A327A10E183;
 Tue, 23 Dec 2025 08:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766477787; x=1798013787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FdWzzDaap/mynF0imhEGed3qWQdc3JLf8RwBE0RVguk=;
 b=TXrWDRBuSam9QPQ9jjjJK1aiGY2yagzPtwClNiWT/WV64OiKmuD0Zp1D
 w0chz3Muwtf8Nh58Jt/Z1OWN+yef54eAkqHmAf94K5nSv8YqSBfoenajX
 w+tjClUQPD3J5EKGlxECopaKsWKp0JIROzWs5gmIMkdVCZazgl6g7y8J1
 eVqyeCXgT2EpmzNa9TMKP8IgQthusQbEh9Fw/jS8HL94vnGNUrLAXY4AI
 C4N1Ac2kKOdGPTRfbRePio76X1U984tjfY/T+guWoEjRNaP3HZs0hb7yz
 DPkRDJ1NDJ/7Po6fz2WdmXrN0ZzfNWKTH/KT8Iv7emQkvMZLYOfl6dv79 A==;
X-CSE-ConnectionGUID: AcXMV6uwQoeY7/kAwdsLfg==
X-CSE-MsgGUID: vltAgMC3QriDPm89gJBIqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68081700"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68081700"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 00:16:27 -0800
X-CSE-ConnectionGUID: c/Qf/7zpSciImGYZ5Bk0JQ==
X-CSE-MsgGUID: x3q8efPrTdmzNZau3Hdu3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204224374"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 23 Dec 2025 00:16:26 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Move casf_compute_config
Date: Tue, 23 Dec 2025 13:42:58 +0530
Message-Id: <20251223081300.1196417-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251223081300.1196417-1-nemesa.garg@intel.com>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
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

Prefill calculations are getting screwed up as casf_compute
is getting called in later stage. So move casf_compute_config
to crtc_compute_config and check if there is a change in the
sharpness strength, if so set the flag uapi.mode_changed
so that everytime when strength changes casf_compute_config
can be called and new strength value gets updated.

v2: Remove extra casf_check [Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..568730ffe359 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2494,6 +2494,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	ret = intel_casf_compute_config(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
@@ -4286,10 +4290,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		return ret;
 	}
 
-	ret = intel_casf_compute_config(crtc_state);
-	if (ret)
-		return ret;
-
 	if (DISPLAY_VER(display) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state) ||
@@ -6431,6 +6431,10 @@ int intel_atomic_check(struct drm_device *dev,
 		if (new_crtc_state->uapi.scaling_filter !=
 		    old_crtc_state->uapi.scaling_filter)
 			new_crtc_state->uapi.mode_changed = true;
+
+		if (new_crtc_state->uapi.sharpness_strength !=
+                    old_crtc_state->uapi.sharpness_strength)
+                        new_crtc_state->uapi.mode_changed = true;
 	}
 
 	intel_vrr_check_modeset(state);
-- 
2.25.1

