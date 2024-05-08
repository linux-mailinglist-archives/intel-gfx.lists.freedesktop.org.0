Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF7F8C015B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9E71122F3;
	Wed,  8 May 2024 15:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0XXyb6X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7DE1122F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183286; x=1746719286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JLUZaw8bgm9CFNA9i6A2LxR8jfBnzqShwD2K+VbxKWM=;
 b=C0XXyb6XAQuYE1Zbi/Ij5CAMTJyEqf3AGF1E7fCvo7bRCBcvgmcZmFOQ
 +Bz4Ri0VmJbRPF8nD8hYytwOBNMEuVi7ylkCUkxbKFXbaWajqDGuDucci
 O6FwUgu7Qs1hZcgvzs25F0rUzHoLiVKlvLfiULKDSt7kWtikY3Ci6o4mA
 Cfm5BlPpWGYumePOqGJXM+f8/lib0jwjRaNwPh+aOMt04sPROWUWduhGZ
 mdXKjm3f5hJ4KsV0oxiK+yV8rerav0RJ4hirDfjw4KahufgeI2vITlFw+
 6pLru+iUKovYZq+KUMjPMfKxHpWeTuZe55QI10ZlEEcmxiia/FTBH9d0C g==;
X-CSE-ConnectionGUID: N2kfPyFLRVO08XXX7llEQg==
X-CSE-MsgGUID: 1yKr8UooRyW89ZkK48tPTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10924956"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10924956"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:06 -0700
X-CSE-ConnectionGUID: 3J9X68TDSrWwnBP5vEnLeg==
X-CSE-MsgGUID: icYl8hfXSmCjeyJi8pDMgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52137107"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_CTL
Date: Wed,  8 May 2024 18:47:47 +0300
Message-Id: <d86be64197d547085e857b09dacd21f4ee6b1517.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VRR_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++++++++-----
 drivers/gpu/drm/i915/i915_reg.h          |  2 +-
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 894ee97b3e1b..b1136aee775f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -213,13 +213,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			     0, PIPE_VBLANK_WITH_DELAY);
 
 	if (!crtc_state->vrr.flipline) {
-		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
+		intel_de_write(dev_priv,
+			       TRANS_VRR_CTL(dev_priv, cpu_transcoder), 0);
 		return;
 	}
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
+	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+		       trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
 }
 
@@ -263,7 +265,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
 
@@ -276,7 +278,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
 		       trans_vrr_ctl(old_crtc_state));
 	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
@@ -292,7 +294,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 
-	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
+	trans_vrr_ctl = intel_de_read(dev_priv,
+				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5670eee4a498..a178e9f6804c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1233,7 +1233,7 @@
 #define _TRANS_VRR_CTL_B		0x61420
 #define _TRANS_VRR_CTL_C		0x62420
 #define _TRANS_VRR_CTL_D		0x63420
-#define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
+#define TRANS_VRR_CTL(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
-- 
2.39.2

