Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AFBBE662A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4247C10EB06;
	Fri, 17 Oct 2025 05:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oGwwrN2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD96E10EAFB;
 Fri, 17 Oct 2025 05:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678109; x=1792214109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lriz6LA0xBjVKPsyuaHUkN2urbx+Q43A+A2LhVtnzdM=;
 b=oGwwrN2bynx4gCcnoi7u0XSabs3eDt//+cnJwlWDNE/VqdUl+grexLF/
 zL4QQ/lO84gIHI9TW2rZ9ILXi23js5DpyN5dPpYhgbpuzlfI6nfgLRSK0
 LKySOi/id1dE0souILh0FyzyVYwnf/DVUk7Rk2pjy8phEdgMwoQazsFef
 sbZHyflPhr3ClE9KDH9bhJ0daVGvCq+WpBTlpxTjaWlGXgle50eLuPB4r
 B7Q8wXG+oKTZ/DkS9AKS0sHw4IO5uB8FSwHb79JLwhSrc2yetdDSx3QkN
 sRsVW+tcuvt5T7EmmTz/XEkHErp1RK2zb5ZhpwBEdhJD9mAQsnLw+x7/W Q==;
X-CSE-ConnectionGUID: DKrQk43hSMyhhYgCXXni0w==
X-CSE-MsgGUID: rCUJ/9yGSBuNuogZmOFG4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352605"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352605"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:09 -0700
X-CSE-ConnectionGUID: biLRE+nOQOmLqcR1NWhGrw==
X-CSE-MsgGUID: upyms2dxR9iY/EHE5yl9Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576535"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Date: Fri, 17 Oct 2025 10:31:58 +0530
Message-ID: <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 703e5f6af04c..a8303b669853 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4416,3 +4416,15 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 
 	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
+
+int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int auxless_wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	int wake_lines = DISPLAY_VER(display) < 20 ?
+			 psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						crtc_state->alpm_state.fast_wake_lines) :
+			 crtc_state->alpm_state.io_wake_lines;
+
+	return max(auxless_wake_lines, wake_lines);
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

