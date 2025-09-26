Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0DBA2810
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5118210E9DD;
	Fri, 26 Sep 2025 06:13:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfbtlCFj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DD410E327;
 Fri, 26 Sep 2025 06:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867191; x=1790403191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SI7pr/DgJmi8Ga77vmjd11pOM3Zro2FrlMp3MRg7C68=;
 b=mfbtlCFjgC1Pr8WHGvuM0uzPl7Cz3iTB846cv4Nu+yWdyUaysTMA6SKd
 CmojZ8s9lhLaaAYsCuhiNff7rw7oKEVP8NottXWfMP00JF3gq4tUcmzEf
 VlGvOmaufmeLZb6+X5+qjFsJmVA8olq5T4YRheu5cgY0cN004Ij8dynck
 2VnmmPAeQ+IAqMdPUZeiBJWTCz4a8ybyS40xo3gBOVNebrsxiMIzH4nuM
 c6EhFeczGjpZBIIS2tzjLbQixQDMnUX1eXOgQ6T92jvvbqAF4YM5QJc7a
 bxhtLouJdi12axteI8R24p3QDFASbuv5gvvJs2WZk7R10ygRO7cdUGedg g==;
X-CSE-ConnectionGUID: npEIpyQ2Q5KLPuBu4aKpGg==
X-CSE-MsgGUID: JNXgJKYXSH6dsZ3168u91w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007594"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007594"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:10 -0700
X-CSE-ConnectionGUID: FnKE0+1AT3CxESYVh4lnLQ==
X-CSE-MsgGUID: dqCEeLiNTieqZ4lOcvWvxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092889"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 07/14] drm/i915/alpm: Add function to compute max link-wake
 latency
Date: Fri, 26 Sep 2025 11:29:28 +0530
Message-ID: <20250926055935.3532568-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

Introduce a helper to compute the max link wake latency when using
Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.

This will be used to compute the minimum guardband so that the link wake
latencies are accounted and these features work smoothly for higher
refresh rate panels.

Bspec: 70151, 71477
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 749119cc0b28..df380ecf7d0f 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -598,3 +598,18 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
 
 	return false;
 }
+
+int intel_alpm_compute_max_link_wake_latency(const struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled)
+{
+	int psr2_vblank_time = 0;
+	int auxless_wake_time = 0;
+
+	if (assume_all_enabled || crtc_state->has_sel_update)
+		psr2_vblank_time =  io_buffer_wake_time(crtc_state);
+
+	if (assume_all_enabled || crtc_state->has_panel_replay)
+		auxless_wake_time = _lnl_compute_aux_less_wake_time(crtc_state);
+
+	return max(psr2_vblank_time, auxless_wake_time);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index a861c20b5d79..b371827af356 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -38,4 +38,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 void intel_alpm_disable(struct intel_dp *intel_dp);
 bool intel_alpm_get_error(struct intel_dp *intel_dp);
+int intel_alpm_compute_max_link_wake_latency(const struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled);
 #endif
-- 
2.45.2

