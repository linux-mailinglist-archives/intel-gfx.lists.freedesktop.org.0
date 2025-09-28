Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF1DBA69D6
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0065910E384;
	Sun, 28 Sep 2025 07:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpvnuDLX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CD910E385;
 Sun, 28 Sep 2025 07:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043965; x=1790579965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YbA1jQ5bPKhn3CS1EtLJt8BABKSvVfUm055IFDv40uc=;
 b=DpvnuDLXy8U3YRTaaxPoBSHJz34y7JwYc7tuO6z0V+IcFZWWyXD89nSS
 8roECZpSGLcl7tdZO30Nwq7Qt+Gc0TTyy2N9nbZU7oNxF1LJ2QaRjLMRF
 GEhcnwZ7LI/3Bv/+HQZ8TBSx6RuKA8UlBxGopVQNa5suiMgvezdajtZTY
 gwKzAc8Ai7d2eG4vgLJXlB+tJGQ4YUrBdivpVJjYexS0VPGzkHvgYPifB
 SPRbJm5QsIe6hOf8sq6kL2IhEn3WI2qP+W9iRYpo+SYH+XoK0F1Fd5IhT
 HC96itr++AaPNEyeMq1wIpwX2XRiPswvTUtzPZLMLqFsUQh72gusbafeU w==;
X-CSE-ConnectionGUID: t3wsAzOnTPmy4JcSjkU9BA==
X-CSE-MsgGUID: 8W45tBwHTGSqWrYMQatVIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528537"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528537"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:24 -0700
X-CSE-ConnectionGUID: ERDTO79gScWrLXgioahaKg==
X-CSE-MsgGUID: cIKUKudHQVezZ2a2wM/rcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215094062"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/15] drm/i915/vrr: Use optimized guardband when VRR TG is
 active
Date: Sun, 28 Sep 2025 12:35:36 +0530
Message-ID: <20250928070541.3892890-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

We want to use the optimized/reduced guardband whenever we are using the
VRR timing generator, as the legacy timing generator doesn't need vrr
guardband.

On platforms where the VRR timing generator is always ON, we optimize the
guardband regardless of whether the display is operating in fixed or
variable refresh rate mode.

On platforms where the VRR timing generator is not always ON, we optimize
the guardband only when VRR is enabled.

Add a helper intel_vrr_use_optimized_guardband() to determine if the
optimized/reduced guardband should be used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a43e5ee2d3ac..ff6848de21b5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -956,3 +956,10 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 
 	return guardband;
 }
+
+bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index d332e5a0a1c1..0c741c2a5bbd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -44,5 +44,6 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
 int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 				struct intel_connector *connector);
+bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

