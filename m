Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FEE8C015D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527FB1126AA;
	Wed,  8 May 2024 15:48:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcmLFd2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F9CE1126AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183294; x=1746719294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t9VULhDnv6LOo34NRXGzJQaWsC8+y3tmmjDXLnQ8Gs4=;
 b=lcmLFd2G9IGk9B1BIdowKx2MzqXM2nNJUvTvGGY3u8+bbi8udiQJXbiq
 XU1Gqg8qJFbqJx6ulSI17K3vMcrTIcUwan/5cuT37fzHSBGhtINZV7ICu
 oC9uoZWk8TEp7Uevhx9F/3gGFnMi3I613JyegiHZe8mD/6CzOHvGvZRB5
 35goosZa11rkq7Pl2yMoy0bNHtMOeHXHP3MJuF6EG8VxGUt6EDH+jcOiU
 d35rWVzrfa/vVtp70258wnaeHdue8J849Ax6KC82neLhwsO3DFuPwG90v
 pke6EVHXDZW+xk73O9P/y0lEG+22GgqBbYKxFGf6FGBSyxUvtg+/nJsik Q==;
X-CSE-ConnectionGUID: VwhwMkvyRK+ZxCOFhAb1WQ==
X-CSE-MsgGUID: oGF5/UcERMyPk2O3Elku1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="28532116"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28532116"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:14 -0700
X-CSE-ConnectionGUID: 9uSZGsUxShyVYB1KGwJeCA==
X-CSE-MsgGUID: 86ZUncqySYua8NUX2Ugfqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29447086"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_VMIN
Date: Wed,  8 May 2024 18:47:49 +0300
Message-Id: <ac1c6545a80e4cbdc98f54f8d67e69fd46cdcc91.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VRR_VMIN register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d9024ccf6098..fd0f0794f6dc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -218,7 +218,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
+	intel_de_write(dev_priv, TRANS_VRR_VMIN(dev_priv, cpu_transcoder),
+		       crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
 		       crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
@@ -312,7 +313,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
 		crtc_state->vrr.vmax = intel_de_read(dev_priv,
 						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
+		crtc_state->vrr.vmin = intel_de_read(dev_priv,
+						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
 	}
 
 	if (crtc_state->vrr.enable) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 693b4e562d46..775c878ca72f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1254,7 +1254,7 @@
 #define _TRANS_VRR_VMIN_B		0x61434
 #define _TRANS_VRR_VMIN_C		0x62434
 #define _TRANS_VRR_VMIN_D		0x63434
-#define TRANS_VRR_VMIN(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
+#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
 #define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
 
 #define _TRANS_VRR_VMAXSHIFT_A		0x60428
-- 
2.39.2

