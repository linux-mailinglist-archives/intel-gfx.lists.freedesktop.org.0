Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED9A0735D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D47910ED54;
	Thu,  9 Jan 2025 10:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwTB9LhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6F510ED52;
 Thu,  9 Jan 2025 10:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736418949; x=1767954949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=72P25/YYp+jxX9CJiC6wnnDT8iOXmAfcqBNpZkgbPkQ=;
 b=GwTB9LhX0lCrt6h0CLT3RfSSiA7FYOUMEG/jOQjKUh3AKadSiWnsYaLo
 f1MnrvcN3pJl4w85PaeE0T4JDS2JTGpmJ9/a1taSffBl9afXaUNCMr3MJ
 FkESDEpoLujF454Dbt8QiMIqCTGXfcly48CVSB508sdJNyZ6KeIScH7zT
 8xeriH237pD2bK/jHh8pXhu6BM3Bap//DJft5Hb2LlzGwrds6S4OccIGB
 EGnS+47phRWPLm2FBtZTzvMHkcpM264MCi0iuZTZcasLDOheTJWd+snP4
 9FUyAC0Gm4v9pOG8NwKzSbzMywVwnZgXU6QcaYqxeYwI33iwXF06FzOFT g==;
X-CSE-ConnectionGUID: 7LaC7VGERsSzQ3201OT8+Q==
X-CSE-MsgGUID: v3uOGYLHR529U9CZB70uYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="48034984"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="48034984"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:48 -0800
X-CSE-ConnectionGUID: zV+5mkrzRqOfYTdFFcyZtw==
X-CSE-MsgGUID: oO7LYEBeS8CNJ6lDNh/sTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103333008"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/4] drm/i915/psr: Add new function for writing sink panel
 replay enable bit
Date: Thu,  9 Jan 2025 12:35:29 +0200
Message-ID: <20250109103532.2093356-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109103532.2093356-1-jouni.hogander@intel.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
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

According to DP/eDP specification only DP_PANEL_REPLAY_ENABLE has to be set
prior link training. For this purpose add a new function which sets this
bit on sink side if Panel Replay is supported by the sink and the source.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_psr.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 64c00a8a6850..e592bc01c7fb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -827,6 +827,13 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
 }
 
+void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp)
+{
+	if (CAN_PANEL_REPLAY(intel_dp))
+		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+				   DP_PANEL_REPLAY_ENABLE);
+}
+
 static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 956be263c09e..3b2643b83e06 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -30,6 +30,7 @@ bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_enable_sink(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state);
+void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr_post_plane_update(struct intel_atomic_state *state,
-- 
2.34.1

