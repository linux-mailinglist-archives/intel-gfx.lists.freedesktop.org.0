Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641DA7A07A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B3F10E98D;
	Thu,  3 Apr 2025 09:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtQZqVOQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE47010E987;
 Thu,  3 Apr 2025 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673890; x=1775209890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MTJiPthUIj+1kdi3LFyGfDprloB7YgOFX8zxkCuwOl8=;
 b=HtQZqVOQrsCcLF0PKXB36J4g3SfUpExZ5QCRASTKzJ0EBBiHM5lwrp8n
 GYpBOPXWDwP8E8D+d4n7JGVrV2XwJyEPtomayLLaPTu7PMXAd4ZxyvnI2
 7lmDRsvLGX6zuGZ0Ljot8J0lwu1PJchUP55er2+cZzbuJD5OHoHNiuCpr
 08JEjoDZEkU7rwDhltTTwdGtnM8eOlZxMAkjYhuVoN+ojzpCpsa4vZPFv
 6gtDpTcmT+bkGkBZLNJPYwkCG8TnA+D/sKHed8K1v3NLdmFlP05dO8OoE
 fE18W2WQ5zd+Csdi441qxfr2aGVs6erFrEIcvoLOqYguo9tpHydrYqdqV Q==;
X-CSE-ConnectionGUID: nA3kgtF/SYqpEphaC6Oxhw==
X-CSE-MsgGUID: EX4jfeYoS5WEZHetN9VaJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196667"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196667"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:29 -0700
X-CSE-ConnectionGUID: y3apyXWAQZa3WrEt+Aablg==
X-CSE-MsgGUID: hwZvozclQFKwmVrvfwLO8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463828"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:27 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 7/8] drm/i915/lobf: Add mutex for alpm update
Date: Thu,  3 Apr 2025 14:58:24 +0530
Message-Id: <20250403092825.484347-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The ALPM_CTL can be updated from different context, so
add mutex to sychonize the update.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c          | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h          | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 2 +-
 4 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 46d569df37c0..55eaf2ba996c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -23,7 +23,7 @@ bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
 
-void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
+void intel_alpm_init(struct intel_dp *intel_dp)
 {
 	u8 dpcd;
 
@@ -31,6 +31,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
 		return;
 
 	intel_dp->alpm_dpcd = dpcd;
+	mutex_init(&intel_dp->alpm_parameters.lock);
 }
 
 /*
@@ -327,6 +328,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
@@ -370,6 +372,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
 
 void intel_alpm_configure(struct intel_dp *intel_dp,
@@ -493,6 +496,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(display) < 20)
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
 	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
 		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
 		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
@@ -500,4 +505,6 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	intel_de_rmw(display,
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 91f51fb24f98..012b0b1d17ff 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -15,7 +15,7 @@ struct intel_connector;
 struct intel_atomic_state;
 struct intel_crtc;
 
-void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
+void intel_alpm_init(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index daa5e2438c94..f7500fd1ee8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1806,6 +1806,7 @@ struct intel_dp {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
 		enum transcoder transcoder;
+		struct mutex lock;
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7b95d62730e6..0d986d624d8c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6393,7 +6393,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 */
 	intel_hpd_enable_detection(encoder);
 
-	intel_alpm_init_dpcd(intel_dp);
+	intel_alpm_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
-- 
2.29.0

