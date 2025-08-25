Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A70B33FF8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 14:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B2310E461;
	Mon, 25 Aug 2025 12:49:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Onp2UMPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9A210E458;
 Mon, 25 Aug 2025 12:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756126184; x=1787662184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9OoyyHgUyza1aYvv2dcYoUP65mioIrVv+UIw6cS7uD0=;
 b=Onp2UMPj/jvyMHkNQQf52MIg+A9J8J2cGx+6FilqhU4oqWPX6QvGUNf1
 GOXyZ1ywZhqSkCbzrPShvp9gygc0go0UGcUXHKhv4jPIdYH8HDmVmGe/u
 JsnikdlY6m8fmVJfYzmXz3VV8/3wxzcNOuejqQG+JoE4LIvsS5fZ2QYOm
 y5zWpJ2uTbSmlrNfQjBJIZ6sJZlT2Nizqs4+6tYB2Uc8wZ0bnX2jvuASt
 Py/3H03nzSHOsMP4fu+/OPowrcImWfKP85NZRSVg1d1ZPlzY8Mgq5OG//
 eTuw4Hk4J7PdygIHcNHSFGBJzlu61Z4nuMDlDLi4spsJQZN/kdUH6uY4l A==;
X-CSE-ConnectionGUID: lAKVWibrRoG2RJNtjyBbSw==
X-CSE-MsgGUID: 0nhXqUi2TMqr8akgr3hHpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62164122"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62164122"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:44 -0700
X-CSE-ConnectionGUID: 7d2ywSfHRJuxKHGv+UJi8A==
X-CSE-MsgGUID: I3lQVZaXS666AlqEy2LUNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="200229963"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:49:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 06/12] drm/i915/alpm: Add function to compute max link-wake
 latency
Date: Mon, 25 Aug 2025 18:05:42 +0530
Message-ID: <20250825123548.3022474-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
References: <20250825123548.3022474-1-ankit.k.nautiyal@intel.com>
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

