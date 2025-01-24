Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2C4A1B89F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0C310E9C7;
	Fri, 24 Jan 2025 15:12:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9H46RvP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268EC10E9C9;
 Fri, 24 Jan 2025 15:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731575; x=1769267575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2cYYnicTdciIo85Nh7zZ/wEWvveej25oxmKc09kpzc8=;
 b=F9H46RvP+xD2MZWv6Cu/OH8tZjeKQiO/yhnXqHt9TiWS3bdXLNFWbUGi
 UL6QOMC7czu//dNpU0vjdCnanOT9wmpuR1mFYSoVhi/vX/HPw9ZueHEsa
 wU9b4tysxltSH+3SN73kmuV4rH90zfn+IWIG8/aAJ/c7T1X6tsJW+tMnw
 zdHHBJTgamP9beFzBBnecJY/r2fXpmwEVcAhXpP97WitAhWt9vYfwboQX
 shf3D4T4Qnpv4yM92xH7cxQWf4ypkISVGP1YYhJhbhy6qLJibe/IVac8H
 xtiFv2tD2Z1Br9kfqNkM4SZOYshrmP8y3JgivXAFqsf5OpltVcpzLKdao w==;
X-CSE-ConnectionGUID: vVpDMN9kT0ew8Ir9uQj4Pw==
X-CSE-MsgGUID: 6YWodQZaTzmOeM/B3qCZMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177516"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177516"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:55 -0800
X-CSE-ConnectionGUID: PUWqcmfRSD6sQcpQBWJIgg==
X-CSE-MsgGUID: gVK8SWweTNSDGBWfmD4tvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221689"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 34/35] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Fri, 24 Jan 2025 20:30:19 +0530
Message-ID: <20250124150020.2271747-35-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace. From MTL+, gradually move away from older timing
generator and use VRR timing generator for fixed refresh rate also.

In such a case, Flipline Vmin and Vmax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.
The MSA Vtotal is derived from Vmax register.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b6d45f4ccf53..d357733f24d4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -235,6 +235,14 @@ void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state, int vm
 	crtc_state->vrr.flipline = crtc_state->vrr.vmax;
 }
 
+static
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state, int vmin)
+{
+	intel_vrr_prepare_fixed_timings(crtc_state, vmin);
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
 static
 void intel_vrr_prepare_vrr_timings(struct intel_crtc_state *crtc_state, int vmin, int vmax)
 {
@@ -352,13 +360,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
 
-	if (vmin >= vmax)
-		return;
-
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else if (intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_compute_fixed_rr_timings(crtc_state, vmin);
 	else
 		intel_vrr_prepare_fixed_timings(crtc_state, vmin);
 
-- 
2.45.2

