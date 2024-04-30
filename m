Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179D28B6F47
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DDF10FB3A;
	Tue, 30 Apr 2024 10:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMoXO2YR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A7110FB3A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471883; x=1746007883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=erAJGJdKZ3mJXC8ad10Zv/X2KcCFOvM7H3IuyevqDSg=;
 b=dMoXO2YRNnpciVwlq659HkJ4hY55ICJd4O7bfl60kz642gTnvBqnc1Dy
 tDv5BBE2VB7yoD+W7cmn2nMlzJpkDpI3NsqIDLFyYlNp27zvT87KENXsj
 x8iIfgY4GU5bWow9fRsNVGPFl59tAINgRiVgCa2vXEYvgIl61eyOoxF4s
 cq/vKV7uurflnv0m6+05/ef69N/QAEeHf7gdUuEHLBeKOTL9mgkuVMS6U
 QZWtgh9xziCOtWAOWN2OlwAYhKxLEM5+p29ydSlIG2qO3CgE1IuNpF2q7
 ntYKLENilp2KWrCteheTSjwQ39BK83F47wa2mY2Wdb1JWaefUDTr1WQd6 Q==;
X-CSE-ConnectionGUID: 4+TkRtxxQ6uijBf3HR0WAA==
X-CSE-MsgGUID: li7+OkDsQ1yX/PgMsohJUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043850"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043850"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:23 -0700
X-CSE-ConnectionGUID: lVzeRHRBSSWQOEzP5U7zNw==
X-CSE-MsgGUID: UYgQ7KuLR3mISYV/OalaVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281462"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 14/19] drm/i915: pass dev_priv explicitly to PSR2_MAN_TRK_CTL
Date: Tue, 30 Apr 2024 13:10:08 +0300
Message-Id: <72934c8ac3a923ca0c12fc6cdeec1e0b87ecc4a4.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PSR2_MAN_TRK_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 23 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +-
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 36c08cd3a624..ded7795e4c3a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -844,7 +844,8 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+	intel_de_rmw(dev_priv,
+		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
 
 	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
@@ -919,10 +920,12 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
-		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
 		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
 	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), 0);
+		intel_de_write(dev_priv,
+			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
 	}
 
 	if (psr2_su_region_et_valid(intel_dp))
@@ -1681,7 +1684,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		goto unlock;
 
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		val = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
+		val = intel_de_read(dev_priv,
+				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
 		if (val & PSR2_MAN_TRK_CTL_ENABLE)
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
@@ -2251,7 +2255,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
 		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(cpu_transcoder),
+			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
 			       man_trk_ctl_enable_bit_get(dev_priv) |
 			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
 			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
@@ -2293,7 +2297,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		break;
 	}
 
-	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
+	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
 
 	if (!crtc_state->enable_psr2_su_region_et)
@@ -3014,7 +3018,9 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 		val = man_trk_ctl_enable_bit_get(dev_priv) |
 		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
 		      man_trk_ctl_continuos_full_frame(dev_priv);
-		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), val);
+		intel_de_write(dev_priv,
+			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
+			       val);
 		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
@@ -3112,7 +3118,8 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 				 * SU configuration in case update is sent for any reason after
 				 * sff bit gets cleared by the HW on next vblank.
 				 */
-				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
+				intel_de_write(dev_priv,
+					       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
 					       val);
 				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 762fc0ad7eb5..55e07e87dfbd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -229,7 +229,7 @@
 
 #define _PSR2_MAN_TRK_CTL_A					0x60910
 #define _PSR2_MAN_TRK_CTL_EDP					0x6f910
-#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)
+#define PSR2_MAN_TRK_CTL(dev_priv, tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)
 #define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
 #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
-- 
2.39.2

