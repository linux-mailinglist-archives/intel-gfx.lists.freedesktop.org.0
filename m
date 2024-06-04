Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44988FB701
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC3F10E4D9;
	Tue,  4 Jun 2024 15:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E++gh3nd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A8410E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514849; x=1749050849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gDNESvxjqWSDqQvNtFiuz0ZX+Hdun/G6vVxZIwAHBYg=;
 b=E++gh3nd69Xy46j66D3cbu5AYmLNY/fehjk8hDlk1BHbIfyV+ZVvZdGC
 ErHGj/cPbwBs3PZAroNOhhMn2KB2aC5zZdK4rHl02XfL1KrxPi4mdl1N9
 07o+B0okGldLgit6i9CiVvu++riTdDDettq2qI/hae+K9UDSajnOCFdug
 umJ9Tu3gIYz0ZVWpBsB7uoRcrdzdwRRAztudSTuoQANpBzujtQk2G+hCK
 6w89J+rBdaHqCTlQAk7Mzt+0gmhuayBAyy6LPf4W4zUdyY0YQvtnxXp4f
 yox+FA04bD7+tkea4sdwtT7eZOP1RK7ktj+wtIFzpMU/2kpAZLqZAH2en w==;
X-CSE-ConnectionGUID: FYDf1hOkS4GB1AK6Y5/3lw==
X-CSE-MsgGUID: hybjsY3wQVOH188QWsmZEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469738"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469738"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:29 -0700
X-CSE-ConnectionGUID: 5MnrxXJIQYy54SqBMxiy7g==
X-CSE-MsgGUID: YWVvduQNQFSDVGXdAqopNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383278"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/65] drm/i915: pass dev_priv explicitly to TRANS_MULT
Date: Tue,  4 Jun 2024 18:25:30 +0300
Message-Id: <7ea79208a81fd5c3b021bcd8e1f9f90607716d82.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_MULT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 81ae72648e8e..e7ee4970e306 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1646,7 +1646,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 		intel_vrr_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
-		intel_de_write(dev_priv, TRANS_MULT(cpu_transcoder),
+		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
 
 	hsw_set_frame_start_delay(crtc_state);
@@ -3861,7 +3861,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
 			intel_de_read(dev_priv,
-				      TRANS_MULT(pipe_config->cpu_transcoder)) + 1;
+				      TRANS_MULT(dev_priv, pipe_config->cpu_transcoder)) + 1;
 	} else {
 		pipe_config->pixel_multiplier = 1;
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e26464672f7..3bb895d030ab 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1226,7 +1226,7 @@
 #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
 #define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
 #define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
-#define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
+#define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
 /* VRR registers */
 #define _TRANS_VRR_CTL_A		0x60420
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ff561a1e0fd3..600e89148f77 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -506,9 +506,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(GAMMA_MODE(PIPE_A));
 	MMIO_D(GAMMA_MODE(PIPE_B));
 	MMIO_D(GAMMA_MODE(PIPE_C));
-	MMIO_D(TRANS_MULT(TRANSCODER_A));
-	MMIO_D(TRANS_MULT(TRANSCODER_B));
-	MMIO_D(TRANS_MULT(TRANSCODER_C));
+	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_A));
+	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_B));
+	MMIO_D(TRANS_MULT(dev_priv, TRANSCODER_C));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_A));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_B));
 	MMIO_D(HSW_TVIDEO_DIP_CTL(dev_priv, TRANSCODER_C));
-- 
2.39.2

