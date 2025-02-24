Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30F7A42125
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AA510E443;
	Mon, 24 Feb 2025 13:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gT6nAHbD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5647610E13C;
 Mon, 24 Feb 2025 06:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378613; x=1771914613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P9YDMCeBJ9g9JBR7ynrcBr3Jn4rsSSmSGJPm8tnaf2c=;
 b=gT6nAHbDMB5ajsnBs7ymyi0983P6/SvmG/NyxNsFQYQNiKGnQXKAUvHP
 vcJa3Ux9sATxOu/jGUlut4HEbA2OZehvaHwszefxgXLoxMr4FsbKzu0xH
 vLMe5xWBG4T/d1eW4klOUsoWty4odVCbIGMDHyLs3XmReIcAViUCC6xQ6
 wXXGyhCuJlrykSYy70gTPDie90KuzVV5s8QzY5JDtCpxDuaqExn3Aywwl
 G59bYAqf/g8jgq1vNx6ELJeWJV+h0AJy+DLLQkEy4otL2ptueM2n0tp56
 tDYgsijThhPT4S7hctmE4Zm5+cU3KcZWBExXGyoNaj0u8UoLObch3tMT2 w==;
X-CSE-ConnectionGUID: Wv1czL+mSG+OZEnB3CSRBQ==
X-CSE-MsgGUID: tUtgd+moRLSfuLo3Vqy2Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719721"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719721"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:13 -0800
X-CSE-ConnectionGUID: gbjQdbqBTY+/M1Pmwcuxcw==
X-CSE-MsgGUID: EnXAEwxjTUCnRE50Y5n39w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076643"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/20] drm/i915/display: Add fixed_rr to crtc_state dump
Date: Mon, 24 Feb 2025 11:47:17 +0530
Message-ID: <20250224061717.1095226-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Add fixed refresh rate mode in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..f204a5830c29 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -294,8 +294,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
+	drm_printf(&p, "vrr: %s, fixed_rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
+		   str_yes_no(intel_vrr_is_fixed_rr(pipe_config)),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.vsync_start, pipe_config->vrr.vsync_end);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b16d277e78c5..ce74bac244fd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -628,7 +628,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
 }
 
-static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->vrr.flipline &&
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 750a380da9e3..6cc7e6902b08 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -40,5 +40,6 @@ void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

