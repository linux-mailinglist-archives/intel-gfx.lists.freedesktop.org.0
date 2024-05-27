Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCF48CFEA2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4565810EF3B;
	Mon, 27 May 2024 11:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqynuR4F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC12110EF3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808291; x=1748344291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4iYkajb6EYH6VEjX2jebAS5nHguVHVqkN6Tz08qIH2w=;
 b=BqynuR4FsksfI53Bcd9Ntnp+IDeY/tS0mxjEX1jb1AyTgCUk4viUmPLN
 ev1Llj2DsepzhxPR4CPlFZZje030wDlqROBBynMv1AnH8lR+WMtBRg1vq
 4N28yjSxRWBC7R2Hof6SATP7gNgevUK7Ht9YpSUjkbW6oz/YQBPyuSKfM
 sE88tdf5qkZwC1T9ondV79y6Jdad/RJDI5YjGmvUZRWNFr2BVaZEZV7r/
 o0bTi2BX/opsQdSbDwH2k1t6pZGfMW2WH6WLz+VAVzrMtC3uGjDM/AKOX
 YgQZGPz6zYXmZRkNVlp5ERp2d8eayNRGV6+0r0xspwvv6/7A+ikxuRjDu g==;
X-CSE-ConnectionGUID: c+bWB4YtTwOD4yaIwLjptg==
X-CSE-MsgGUID: 6Oa7jklVTv2tOAFbjJt4Cg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535577"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535577"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:31 -0700
X-CSE-ConnectionGUID: vTXPgXFwR1CN1rnY5g67VA==
X-CSE-MsgGUID: tTEk1HlGSJa9X3NriMpUsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34620614"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/11] drm/i915: pass dev_priv explicitly to
 HSW_TVIDEO_DIP_VSC_DATA
Date: Mon, 27 May 2024 14:10:49 +0300
Message-Id: <2f0ed82eb9c759feb3978e38f3b2835f359d6d1f.1716808214.git.jani.nikula@intel.com>
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
explicitly to the HSW_TVIDEO_DIP_VSC_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 17c038013b34..f7605ff547a3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -167,7 +167,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
 		return HSW_TVIDEO_DIP_GMP_DATA(dev_priv, cpu_transcoder, i);
 	case DP_SDP_VSC:
-		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_VSC_DATA(dev_priv, cpu_transcoder, i);
 	case DP_SDP_ADAPTIVE_SYNC:
 		return ADL_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 779691365125..1cb60a2ffa54 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3481,7 +3481,7 @@
 #define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
-- 
2.39.2

