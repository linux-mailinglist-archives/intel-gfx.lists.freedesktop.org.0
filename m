Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364A08CAA2C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACE910E292;
	Tue, 21 May 2024 08:41:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHwyr6Zl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A6710E220
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280907; x=1747816907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+Ae9luEHxtFTXTwwQ/jOOQMVoWE2Hgufcmt7v8aq9o=;
 b=ZHwyr6ZlnpJm86i23iMDzqcpHjIvDdrcGOFUnYEpH5+Uwn9hvbuNUKoE
 jz1TqnpD+Te85uHNWrnlcczz1fMHn7paKqJQY5NZqM92gN0pF+QmmnIzR
 LZRNXSn2gGN1Rs+QxN6owfBkb5Qi/OhYRQs7KotRqsoZ1v/L4qN3xGKKE
 o+HyCVUpslZB3TleJawDd58sdPjKMa2LBzZn3h+XkOhrzWBoditfVVzV6
 cmEbGMK/M82S4aUJsqQUZXWyMA6d+8gzNCJ9z7vfg2iKTJ3o/G1nDNia1
 sl7YTw3r37vEXM1spHflqtYcdVkpW/wpNlyJ534Uv0zRipF6IkrC2vYKx w==;
X-CSE-ConnectionGUID: CK97S8VJT9uY57zKeyp73Q==
X-CSE-MsgGUID: 1y5bHMvgTquwoeOgFXnFHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860336"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860336"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:47 -0700
X-CSE-ConnectionGUID: P5pforMDR6SB8d2vOFi1OQ==
X-CSE-MsgGUID: MDoDEZQPRbiGYamibEL6nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426210"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/9] drm/i915/psr: Add Early Transport status boolean into
 intel_psr
Date: Tue, 21 May 2024 11:41:16 +0300
Message-Id: <20240521084123.1984075-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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

Currently we are purely relying on psr2_su_region_et_valid. Add new boolean
value into intel_psr struct indicating whether Early Transport is enabled
or not and use it instead of psr2_su_region_et_valid for getting Early
Transport status information.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 95a806538cdc..76f37ae76d2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1703,6 +1703,7 @@ struct intel_psr {
 	bool sel_update_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
+	bool su_region_et_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1fadac7d9d94..ac293d1ca447 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -985,7 +985,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (intel_dp->psr.su_region_et_enabled)
 		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
 
 	/*
@@ -2057,6 +2057,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.dc3co_exit_delay = val;
 	intel_dp->psr.dc3co_exitline = crtc_state->dc3co_exitline;
 	intel_dp->psr.psr2_sel_fetch_enabled = crtc_state->enable_psr2_sel_fetch;
+	intel_dp->psr.su_region_et_enabled = crtc_state->enable_psr2_su_region_et;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.req_psr2_sdp_prior_scanline =
 		crtc_state->req_psr2_sdp_prior_scanline;
@@ -2213,6 +2214,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.sel_update_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
+	intel_dp->psr.su_region_et_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
 
-- 
2.34.1

