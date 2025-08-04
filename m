Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EA6B1A38B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E08110E526;
	Mon,  4 Aug 2025 13:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIHdsq5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF2E10E523;
 Mon,  4 Aug 2025 13:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314735; x=1785850735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r7pac4QLnanX3MrTlctQkD+84FHJKy2NjYurXOp2a48=;
 b=jIHdsq5BA6349V1B75a6rp87JH3Vy1a6xcXZCzjjStagZvdhQ5lU8sqq
 +Z5TjRepYOEjF4GHuPbXjidE2lDewqj4x7EFSYVVlvIi/SSiY0j7oa9Kb
 yTriZ+19AFjDJeNjb8bQ8KjkNBawicSPazSmKGN6xKs3DB3zFL38kOvkg
 KLYfSk+Mgngqt8BxhK/c1ZgAM9heTtJhtK7kO/LxPyJumsEASpOccpsrf
 w7huZoh+GY3tqtn5qYTLAcZtXcIStypGRN9icuIS6kc4aNa9Fvocu447g
 xfGMFhzuPZKy5TMjGm/TVvQbl45oVNgEUreD6+D0sWsjif8ri+f+kV6tk A==;
X-CSE-ConnectionGUID: s+AgqK2TQDeyAgXGbt98SQ==
X-CSE-MsgGUID: VU8Sp5WTTBm4uo43z153Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447385"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447385"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:54 -0700
X-CSE-ConnectionGUID: NX0vPRL9S0W0UA/xg2S0Ng==
X-CSE-MsgGUID: BApNvPStRCOWnjOspc8kkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430659"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/15] drm/i915/psr: Store max PSR2/Panel Replay latency in
 crtc_state
Date: Mon,  4 Aug 2025 18:54:33 +0530
Message-ID: <20250804132441.990441-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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

Add a new `psr_latency` field to intel_crtc_state to hold the maximum
link wake latency for PSR2 and Panel Replay. This value is computed during
intel_dp_compute_config() when encoder context is available.

This allows the latency to be used later during guardband calculations,
where only the CRTC state is available and encoder-specific functions
can't be accessed.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4d9df803ad47..91d19906f85e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1119,6 +1119,7 @@ struct intel_crtc_state {
 	bool enable_psr2_su_region_et;
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
+	int psr_latency; /* PSR2/PR Vblank time */
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a7ecc8ad67f2..59808acbc314 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3299,6 +3299,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
+
+	pipe_config->psr_latency =
+		intel_psr_compute_max_link_wake_latency(intel_dp, pipe_config, false);
+
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
-- 
2.45.2

