Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D263B47964
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A1710E191;
	Sun,  7 Sep 2025 07:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmHmrf6H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D4D10E183;
 Sun,  7 Sep 2025 07:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231189; x=1788767189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fx/KfvxUk8UnL4dsZPl49/XniM9bJgBjwXNAhipKIMM=;
 b=lmHmrf6HkJBe/12w0kdV3/tr/D29TVK63CdXW121p6KmXRpJ54ZUf+7I
 uGWvKufb1dcggg/jp9lNCPWRXrHoBWDTe++Gsh6UWhhwhEUOQePlwjZ0F
 Jd6FP8txzw7JpwKgIVbUKyDAIPLm+5aC+kZJeVLFObhXs0hv385tzKTW2
 JEzSk3H8NrMaZe7pe3USF9FcPwULJkm1JhQQWaXnSTkxkWbb/Gp3BUciW
 G/D6gunOuJCGaJ907+6XQt1NHAw/UTFyhickxvyBA/Bmhs1LqL1uBHo4j
 BveDCbyZjA0b2YJKh/wi7zh81riLDHLHLbCOafQKLDWLDE3Fl/+EhgWw5 A==;
X-CSE-ConnectionGUID: jOjPcnhiSXacOzieJR91CQ==
X-CSE-MsgGUID: E5lxslUaQC+P0ArSmBRysg==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220294"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220294"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:28 -0700
X-CSE-ConnectionGUID: NlWOCSDpS22US+VCA8mwiQ==
X-CSE-MsgGUID: xGpwZZNKQFmRrpNIbOedFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176873999"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 07/14] drm/i915/alpm: Add function to compute max link-wake
 latency
Date: Sun,  7 Sep 2025 13:02:34 +0530
Message-ID: <20250907073241.19632-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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
index ed7a7ed486b5..02de069b02d7 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -611,3 +611,18 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
 
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
+		auxless_wake_time = _lnl_compute_aux_less_wake_time(crtc_state);
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

