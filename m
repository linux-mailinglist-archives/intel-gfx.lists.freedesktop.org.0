Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04115901974
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 04:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFC210E30C;
	Mon, 10 Jun 2024 02:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTl9Gkgp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5FF10E308
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 02:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717988331; x=1749524331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RmNfJqDKZbQEfzwy67D9xvQPiMvwjRMMC/LlKFL8GQ4=;
 b=WTl9GkgpiJogqo/11xZNNDmsq7eWc9o/rse3cS4+Csu5cCFKb617z1TL
 UqzCh5zA5F3EL/WlkldkGIok6WUg/ZaFyUjhtYebZY7jnPp9lFS83zJt9
 C7qULnoKLN9SBTjGxfgnn8rgn3YaFjc4UbttB/ymIYJJcnBo23fNKwiR3
 B3S+YHEB4x7Uf634WUJrSzMOIxUrAQseeo7bmnjJ4gbKnGPUz6YBQDVZ+
 NDyZKwwb11i71EEQpNn5RSiP3KvGaqzVRmTEqKbQWHGuUWKcUHi3O1IGh
 /kFnN3Zl6Nhn67yrmTOSBFaCF4gnSFYqRWRW+Nm2rTSQjS36PmyvOjiiJ w==;
X-CSE-ConnectionGUID: HS8R+mosS7OhznQBP7RdVQ==
X-CSE-MsgGUID: gw1aVJrURUWlA8MBxhHzGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14812996"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14812996"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 19:58:50 -0700
X-CSE-ConnectionGUID: mv/iW0vOSVmhZrDVOMta5Q==
X-CSE-MsgGUID: QZ3toG0xRPa+5hDkwmXtZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="38842920"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 09 Jun 2024 19:58:49 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v15 8/9] drm/i915/display: Compute vrr vsync params
Date: Mon, 10 Jun 2024 08:18:24 +0530
Message-Id: <20240610024825.823096-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute vrr vsync params in case of FAVT as well instead of
only to AVT mode of operation.

--v2:
- Remove redundant computation for vrr_vsync_start
and vrr_vsync_end(Ankit).

--v3:
- vrr.enable and cmrr.enable check together is not required as both
will be true at the same point in time. (Ankit)
- Replace vrr.enable flag to cmrr.enable, mistakenly added. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19b364074de0..4ad99a54aa83 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -175,14 +175,15 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-		if (intel_dp_as_sdp_supported(intel_dp)) {
-			crtc_state->vrr.vsync_start =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_start);
-			crtc_state->vrr.vsync_end =
-				(crtc_state->hw.adjusted_mode.crtc_vtotal -
-					crtc_state->hw.adjusted_mode.vsync_end);
-		}
+	}
+
+	if (intel_dp_as_sdp_supported(intel_dp)) {
+		crtc_state->vrr.vsync_start =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_start);
+		crtc_state->vrr.vsync_end =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
 }
 
-- 
2.25.1

