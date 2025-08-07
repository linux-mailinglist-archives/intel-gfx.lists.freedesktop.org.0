Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACD6B1D6C0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D59210E7C9;
	Thu,  7 Aug 2025 11:32:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIV8L+E/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B551010E81F;
 Thu,  7 Aug 2025 11:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566369; x=1786102369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uP8ioKj+oHC4xRHDgHFIqA9QIl/4YaIESx6uyMmOcoI=;
 b=aIV8L+E/0DUnmL38H0c5718bH79yPaTytEFvsyZcBPQRCeybiBotWdsg
 9gQeMggefNHgeuAq/mknpdxj4OBzpUHeFeukzhrYNon4oGj9zf1Q81Iyb
 lJxU6TOAM3jSclp3OEF6iNFd+vi5xxbzaggSQY0UA4pF/m0iWONj3lHyB
 K02vtVW3xH/XaZf6EJfnqCyYQNcKuWaEGpnZ5TRUxgH5D7E9XSRQKVtgZ
 r5IQle01bQdkrWA6WyWGFeopRgaoJRTWVt9T1vsiPIBMuh2OTlrpfzXja
 UqJKU4SnhtIXHLqe+w+A7DJ/DlFyEO2/yED5yeF65jYMY/jVP2HSp67hd A==;
X-CSE-ConnectionGUID: nwBgf5wvRbmTz3nr4/q9Ng==
X-CSE-MsgGUID: 8vZlxSKXRrS5efM0ltWYSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67166969"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67166969"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:58 -0700
X-CSE-ConnectionGUID: PGA0AW5HQ/amLeQvZ8VtvA==
X-CSE-MsgGUID: qzjCyGt4SFWXgGHjKqsG7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="188716577"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:29:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/12] drm/i915/alpm: Add function to compute max link-wake
 latency
Date: Thu,  7 Aug 2025 16:45:42 +0530
Message-ID: <20250807111548.1490624-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index dfdde8e4eabe..42b4a0ceb53b 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -628,3 +628,18 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
 
 	return false;
 }
+
+int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled)
+{
+	int psr2_vblank_time = 0;
+	int auxless_wake_time = 0;
+
+	if (assume_all_enabled || crtc_state->has_sel_update)
+		psr2_vblank_time =  io_buffer_wake_time(crtc_state);
+
+	if (assume_all_enabled || crtc_state->has_panel_replay)
+		auxless_wake_time = _lnl_compute_aux_less_wake_time(crtc_state->port_clock);
+
+	return max(psr2_vblank_time, auxless_wake_time);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index a861c20b5d79..8f1db54eecf5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -38,4 +38,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 void intel_alpm_disable(struct intel_dp *intel_dp);
 bool intel_alpm_get_error(struct intel_dp *intel_dp);
+int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled);
 #endif
-- 
2.45.2

