Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6FD9DA2D3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:09:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0146210E9FD;
	Wed, 27 Nov 2024 07:09:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEST4Bel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8279910E9FA;
 Wed, 27 Nov 2024 07:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732691348; x=1764227348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ah2GySoK0PJ5LmWdhCp1TAf8jaRHm0UBKxqBWQNee+8=;
 b=mEST4Bel4B/iyMGuqc0+4x5S22l0kzXpBFBCChHGzSfen6F/1tueRz8T
 sCGuTyysxjq3X81YiwhBor7gC/n6hmjCOfP2KxGye6p4Vv8Z2GAT0nVN2
 ytlMIaX2awopo2N32aHCBL4dzMzBQUBz0J2WKstWvmzljj6dQqte1Aqzs
 2gkurPjhM+VLwJxIc1V/t5bMFrTNsRiJCVUHdGs37hDwfSyvSFoG3xQs7
 dTOAqwf+kUfpjldF1lLTLdR1qolQSCG5NDBdwiQJqOMoHL3LiEu2y/6g9
 h4fdU6fAFTFu2LiUHK+0Ltvo1qaxoK0DiLfzwtLbVJgkmE820UMdm0GQb Q==;
X-CSE-ConnectionGUID: b463qhi1TAmtwI5Oa0BWug==
X-CSE-MsgGUID: pDCBaNvmRPGt1r80Y0dRjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36667894"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="36667894"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:08 -0800
X-CSE-ConnectionGUID: XiqizkHOS5S9tH/BSSILsg==
X-CSE-MsgGUID: nfYEH5BlSyCbZcd3wHgwbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="96270394"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:09:06 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 7/7] drm/i915/display: Add vrr mode to crtc_state dump
Date: Wed, 27 Nov 2024 12:41:36 +0530
Message-ID: <20241127071136.1017190-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

Print Vrr mode along with other vrr members in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c    | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index bc9e761a3d1a..bd337ce8d4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -181,6 +181,20 @@ vlv_dump_csc(struct drm_printer *p, const char *name,
 			   csc->coeff[3 * i + 2]);
 }
 
+static const char * const vrrtg_mode_str[] = {
+	[INTEL_VRRTG_MODE_NONE] = "none",
+	[INTEL_VRRTG_MODE_VRR] = "vrr",
+	[INTEL_VRRTG_MODE_CMRR] = "cmrr",
+};
+
+static const char *intel_vrrtg_mode_name(enum intel_vrrtg_mode mode)
+{
+	if (mode >= ARRAY_SIZE(vrrtg_mode_str))
+		return "invalid";
+
+	return vrrtg_mode_str[mode];
+}
+
 void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   struct intel_atomic_state *state,
 			   const char *context)
@@ -296,8 +310,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr: %s, mode: %s vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(intel_vrrtg_is_enabled(pipe_config)),
+		   intel_vrrtg_mode_name(pipe_config->vrr.mode),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
-- 
2.45.2

