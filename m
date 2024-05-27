Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F728CFEA1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2124C10F4BB;
	Mon, 27 May 2024 11:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvX5Lo2U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A35610EF3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808286; x=1748344286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3/Z98slp6WpJZ6FUwxMioB03X2B06PLGd1aSB435ePc=;
 b=BvX5Lo2UAAo1E8yHgm+PzSEuWDuC0n08ugvncFtenTK6E8ueQizYjycx
 K27vGVBEPRjqGp4WDf02Dh3fQftd7XDjvo9IyBiLg5SCmhz6T0IjvEYch
 Ea4kvkLLgJ5ZQHIiKDjgczc8/BjQLNo24Vc2Z+u6Gau1ksgU+rQpSKHpp
 tBo5qoULTy3Vc6dIfvPugoSzn8XfKkaCVTJBDf8mqGZYcBy4Khl1uDgtG
 XqeK3SF/3tJ8VuVfMRcIVBZCL469/VRUBMP5HSnYYunhb66af0X1zJwxJ
 KVXTnxVE3ZROSPLfCrqVGP6vQNf9zFyEddPNXITxnu+8Grdl888H9Ahe9 A==;
X-CSE-ConnectionGUID: XxRXp70cS+2/uoY4NZYqHg==
X-CSE-MsgGUID: wwQ7qgfpRhyQXLPUFIeiGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24246638"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24246638"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:26 -0700
X-CSE-ConnectionGUID: nYuRSPhZTiClSuB0Sjg/bg==
X-CSE-MsgGUID: KOJOGu9tTb+xXWBDr/bSSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72152939"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/11] drm/i915: pass dev_priv explicitly to
 HSW_TVIDEO_DIP_GMP_DATA
Date: Mon, 27 May 2024 14:10:48 +0300
Message-Id: <fff766dca0e790a801fb7d1ad78980da69d3b9f7.1716808214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
References: <cover.1716808214.git.jani.nikula@intel.com>
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
explicitly to the HSW_TVIDEO_DIP_GMP_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cd54973621c3..17c038013b34 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -165,7 +165,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 {
 	switch (type) {
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_GMP_DATA(dev_priv, cpu_transcoder, i);
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
 	case DP_SDP_ADAPTIVE_SYNC:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index df4112a2c521..779691365125 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3480,7 +3480,7 @@
 #define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
-- 
2.39.2

