Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B738E8C64AE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDE010E5CF;
	Wed, 15 May 2024 10:04:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VtTz4+uN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015EB10E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767471; x=1747303471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A+0XGDdAQvvHRvLX6Cv+296bywcmaVG1THAdIzaND9k=;
 b=VtTz4+uNjLIp2or3nyiF2Sx/yNaVpmeLAnCq4fLIyOVJCXZW75HmSaig
 /N82w9vnseh/CD1oxZoF7yanxUEfEE1dqKXe5g5P5liYXMpl0KdS/3qvy
 QYZCyTTeST3YHErw654iOrd65sJ7dANsqsGXiOTTlxJmbUshhykBGhEY5
 RQYT9YM14DwP1Is+01JxEUuOAOc7L1mZEJ5F7mG+/Y0u5WNT4eU/UQwjo
 u9HsgQOFu2GL1hispuIp+pJQ0kXHnWLYC1L0h/qkAy5aiAaCyLyRo+4Bt
 /A3Hlzd1PW4mLUH7vstU+xi8Y+OuDf8EmLSUXtjrpChIVQGKSr9N/VADt A==;
X-CSE-ConnectionGUID: +jnTjVyET36YJHPnt8UAig==
X-CSE-MsgGUID: xlm+UtoRQ3+xauuGCFz05w==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11936993"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11936993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:31 -0700
X-CSE-ConnectionGUID: leIpNNdjT3eGWjymOQPgEg==
X-CSE-MsgGUID: RoeRlq1tTfCFSxT82NcvAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584211"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/8] drm/i915/psr: Add Early Transport status boolean into
 intel_psr
Date: Wed, 15 May 2024 13:04:05 +0300
Message-Id: <20240515100411.691203-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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
index dcce2824556c..79f81524119b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -982,7 +982,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (intel_dp->psr.su_region_et_enabled)
 		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
 
 	/*
@@ -2053,6 +2053,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.dc3co_exit_delay = val;
 	intel_dp->psr.dc3co_exitline = crtc_state->dc3co_exitline;
 	intel_dp->psr.psr2_sel_fetch_enabled = crtc_state->enable_psr2_sel_fetch;
+	intel_dp->psr.su_region_et_enabled = crtc_state->enable_psr2_su_region_et;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.req_psr2_sdp_prior_scanline =
 		crtc_state->req_psr2_sdp_prior_scanline;
@@ -2209,6 +2210,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.sel_update_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
+	intel_dp->psr.su_region_et_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
 
-- 
2.34.1

