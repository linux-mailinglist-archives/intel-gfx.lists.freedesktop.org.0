Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B47CBDE08D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE30110E77B;
	Wed, 15 Oct 2025 10:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JLerEoh2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C692910E77B;
 Wed, 15 Oct 2025 10:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524557; x=1792060557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3vZV8jj+2DPnYmer+MIV8/2SSrK+8Ql0cNkbJkbr08Y=;
 b=JLerEoh27rH+nX2oQiOPbLOsh587d424DZyQve5icalV3e6F8DpC/WeQ
 QaiczoVAjrOYU7m7ldARcqjAL7ouofamgy9MBPU87/VFWGjEcg3dCASzh
 LuxNd/USsCSNqfuP0BGOd0sAZbGa3tm174rlM9/Zr2db+w6OV5Je+sgMO
 eUD4Rd0WDDo6kmxBYeKSLIE4uiOKHOZPCBi0SCHDElVpqM/L5xMRtkLKB
 vduvcAZWO+PBgvAAhhzw02xXT6Go5UmkV2PnC38+C3tC2BjFlMJcUnQTY
 NKz2EgavHIWc/L4n4xlARyLLEagtAp/6ymyO2L4knzyxBfjmw+8xETcSR Q==;
X-CSE-ConnectionGUID: yUgxCWPZRCGB+1FCwciB8w==
X-CSE-MsgGUID: QiPN9mKARdyITX6aAyk9zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262611"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262611"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:57 -0700
X-CSE-ConnectionGUID: LyMReSOLRYCIF/uJPJuwMA==
X-CSE-MsgGUID: j9IyDGkwRXaVdY5zsQOrmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842556"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/6] drm/i915/psr: Add function to compute max link-wake
 latency
Date: Wed, 15 Oct 2025 15:52:39 +0530
Message-ID: <20251015102241.1797828-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 703e5f6af04c..03695aff1b22 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4416,3 +4416,16 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 
 	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
+
+int intel_psr_max_link_wake_latency(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	int auxless_wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	int wake_lines = DISPLAY_VER(display) < 20 ?
+			 psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						crtc_state->alpm_state.fast_wake_lines) :
+			 crtc_state->alpm_state.io_wake_lines;
+
+	return max(auxless_wake_lines, wake_lines);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index b17ce312dc37..baec7e8399f7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
 void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state);
+int intel_psr_max_link_wake_latency(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.45.2

