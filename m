Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C6CBE8A56
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EFE10EBD9;
	Fri, 17 Oct 2025 12:48:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fDxWmnkS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50CC110EBD8;
 Fri, 17 Oct 2025 12:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760705297; x=1792241297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HpObGFLKYxdVAAguVRXbl2kL4+Eq2yWQfavtv6Q6jZ4=;
 b=fDxWmnkSzi8r4eV4+8ehMz928J1u//BU+AhIpR4BcCecsBv/r6Yjdtb0
 3qfEp7x9fclsMwsNqBDwoxbsT5QJlFYUDKUTjkScTJeX+7t6OQkOOgRhD
 VxDXzQrAeBMKX+a3yG0rX7bMhaHKwtyFRiBq7Y9O9iMlpWg6s3KEb3lHO
 a9+KM8AakDS7kvQf/J11bACAhFAD1ydhwkkZDVdCO/0kYMvQzH8QAdnxP
 OEUUVM45jywA1W5ICme/Dp3w3y7l+sVUD104P0x267+p05yjUmVysQBaQ
 Ih3Oh3ioe0mYN4pPnu4Pq380IF3WIGYzD07zgHrkCvEmFG9i7qnXp+Tsm g==;
X-CSE-ConnectionGUID: 6CZMfouaQrSY9E7ZHfrMVw==
X-CSE-MsgGUID: CBcRL/erRRGx8rQL98QSiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61944193"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61944193"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:17 -0700
X-CSE-ConnectionGUID: ripD0FI2ROClT6b1Iv+Bxw==
X-CSE-MsgGUID: 1cbBX8OUQXeMUZHOEgYKrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182281065"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Date: Fri, 17 Oct 2025 18:05:00 +0530
Message-ID: <20251017123504.2247954-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
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

v2:
- Account for flag `req_psr2_sdp_prior_scanline` and scl lines while
  computing min guardband. (Jouni)
- Use wake lines only for eDP with panel_replay and sel_update flags
  set. (Jouni)

Bspec: 70151, 71477
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 27 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 703e5f6af04c..3cca48a4a5d3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4416,3 +4416,30 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 
 	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
+
+int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int psr_min_guardband;
+	int wake_lines;
+
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+		return 0;
+
+	if (crtc_state->has_panel_replay)
+		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	else if (crtc_state->has_sel_update)
+		wake_lines = DISPLAY_VER(display) < 20 ?
+			     psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						    crtc_state->alpm_state.fast_wake_lines) :
+			     crtc_state->alpm_state.io_wake_lines;
+	else
+		return 0;
+
+	psr_min_guardband = wake_lines + crtc_state->set_context_latency;
+
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		psr_min_guardband++;
+
+	return psr_min_guardband;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index b17ce312dc37..620b35928832 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
 void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state);
+int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.45.2

