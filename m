Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0008FB759
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E11710E522;
	Tue,  4 Jun 2024 15:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ho+ZD6c5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC80D10E522
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515095; x=1749051095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6wuLn8muTlwzRoXcxdkLKKeoLPx7g4GShLnBEwUJuyc=;
 b=ho+ZD6c5PSYfVZl/zVcwV4jAfzs7leJfRpkHcxV0aLCfok63n6EkrIR1
 uPuzIbzVEui2FsrLkIbChI0xH4B8tAqhiwGXMeHM6oI+JY+SfII/98ktL
 hW9QMVk/JsQv7PcIqsXHu0ow63uwojq9ZuyCWJFDV5x0bI28nFF4MgsvF
 84dkJ2n6ICdECEnnM81Hcluy9zXS/tJ/K+oZ2gdZfvcb1f7cLI7KvAIJ7
 NA1uBqX+l0HNlKM4ZvGiAS3dfT1u56xiFUipHX07jXUUmdjSqmtgUiIEO
 yRg9QSMcGXhivkAYcZ78lcmyliqE7ZBE3W8w+4PEGzTZjshsy3sA608qe w==;
X-CSE-ConnectionGUID: e4qUXS2/STCJI1Cnx9SACw==
X-CSE-MsgGUID: Y5EMQNbZTT+VV7mlRqPZ9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733677"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733677"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:35 -0700
X-CSE-ConnectionGUID: +xS8mJBzR+auwobtYS1t1w==
X-CSE-MsgGUID: 7Ho1pl2IQLG6wWOjJmBswA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828215"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 64/65] drm/i915: pass dev_priv explicitly to
 TRANS_SET_CONTEXT_LATENCY
Date: Tue,  4 Jun 2024 18:26:22 +0300
Message-Id: <989f89994edae0829e3b6d5d6e3d8a521f0eda00.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_SET_CONTEXT_LATENCY register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 62f8300c73a5..c608329dac42 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2703,7 +2703,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 13) {
-		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
+		intel_de_write(dev_priv,
+			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
 			       crtc_vblank_start - crtc_vdisplay);
 
 		/*
@@ -2860,7 +2861,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder))
 		adjusted_mode->crtc_vblank_start =
 			adjusted_mode->crtc_vdisplay +
-			intel_de_read(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder));
+			intel_de_read(dev_priv,
+				      TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder));
 }
 
 static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3fcebccb9f3c..8a1414ae72cb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4236,7 +4236,7 @@ enum skl_power_gate {
 #define _TRANS_B_SET_CONTEXT_LATENCY		0x6107C
 #define _TRANS_C_SET_CONTEXT_LATENCY		0x6207C
 #define _TRANS_D_SET_CONTEXT_LATENCY		0x6307C
-#define TRANS_SET_CONTEXT_LATENCY(tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
 #define  TRANS_SET_CONTEXT_LATENCY_MASK		REG_GENMASK(15, 0)
 #define  TRANS_SET_CONTEXT_LATENCY_VALUE(x)	REG_FIELD_PREP(TRANS_SET_CONTEXT_LATENCY_MASK, (x))
 
-- 
2.39.2

