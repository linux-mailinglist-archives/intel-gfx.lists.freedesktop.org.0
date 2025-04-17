Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AAFA918C1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B4C10EA91;
	Thu, 17 Apr 2025 10:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dj+z+8Ue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6959510EA94;
 Thu, 17 Apr 2025 10:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884310; x=1776420310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+NUTN4b4ROlRwliaPEQveE8dTizbJ4Z10dX8fyFDqYU=;
 b=dj+z+8UeNSsLVtW40JEcruvfQJRnC603QmMvBMVhOxiK669S+lUSFGX/
 MaqmNra1wLtQFhUDXXajAYNyFjR0agVcikcjsNr1RlJH5FRg22bI38+wb
 kzRTYAOJgSDDeKGBZmYSvR/h1ALddHMKT+PvTytNzLdmWlOxfaIwNaP1p
 QsUvUsS/8SyRvX2wGG0pJmCYGY7EWxNWkpvZmvTcN+cDgf2FWM1qu/pBE
 pfpAKyRbmiCUm/DzGKCddoqFiYi9rO4rhBs7Oeye1tD5ISlyGoMc9uWH1
 Ha0asm4F3k5tiSZKe8IfjGPnQhkxP/wyRRC6F+G6KNJ3q1Qm5TrPChoSf w==;
X-CSE-ConnectionGUID: POt40YkFQKCLmFYfi/1KfQ==
X-CSE-MsgGUID: jRzLIpisTI2TvcX+L50J5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106731"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106731"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:05:09 -0700
X-CSE-ConnectionGUID: FKvZljn8T3+3uKPsbp244Q==
X-CSE-MsgGUID: E1bH4DNTRXafuna47U85CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745566"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:05:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 08/10] drm/i915/lobf: Add mutex for alpm update
Date: Thu, 17 Apr 2025 15:11:21 +0530
Message-Id: <20250417094123.1662424-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
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
 drivers/gpu/drm/i915/display/intel_alpm.c          | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h          |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 4 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 31119c0c663e..2f2198ed67c8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -25,7 +25,7 @@ bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
 
-void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
+void intel_alpm_init(struct intel_dp *intel_dp)
 {
 	u8 dpcd;
 
@@ -33,6 +33,7 @@ void intel_alpm_init_dpcd(struct intel_dp *intel_dp)
 		return;
 
 	intel_dp->alpm_dpcd = dpcd;
+	mutex_init(&intel_dp->alpm_parameters.lock);
 }
 
 /*
@@ -331,6 +332,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	    (!crtc_state->has_sel_update && !intel_dp_is_edp(intel_dp)))
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
@@ -372,6 +374,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
 
 void intel_alpm_configure(struct intel_dp *intel_dp,
@@ -409,6 +412,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		if (!intel_dp_is_edp(intel_dp))
 			continue;
 
+		mutex_lock(&intel_dp->alpm_parameters.lock);
+
 		alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
 
 		if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {
@@ -416,6 +421,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
 		}
+
+		mutex_unlock(&intel_dp->alpm_parameters.lock);
 	}
 }
 
@@ -533,6 +540,8 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(display) < 20)
 		return;
 
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
 	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
 		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
 		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
@@ -540,4 +549,6 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 	intel_de_rmw(display,
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 77bae022a0ea..c043a071f84f 100644
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
index 389dd033c2d0..11346c159489 100644
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
index d7a30d0992b7..e26dc2ad1be7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6392,7 +6392,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 */
 	intel_hpd_enable_detection(encoder);
 
-	intel_alpm_init_dpcd(intel_dp);
+	intel_alpm_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
-- 
2.29.0

