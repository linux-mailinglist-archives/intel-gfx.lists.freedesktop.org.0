Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1A58CFEA0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02B310EEED;
	Mon, 27 May 2024 11:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U4YIYMOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE97D10EF0C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808282; x=1748344282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Wv0fX1TSNR4aFUah0JxQrGank80B6K5lmcFZITNC/8=;
 b=U4YIYMOSg4QlvanfSC5u6Ii19xG892pwPqZaCv/x9ljyiQAMqw6hAu4y
 cF2d9dTCjY9yeNafdHYxbBOdXO8OOfp1ke9SrPdfm0+Cu9gFCuJUBYXEQ
 xGexSEkuK6e20X0rTjKkSlEEImOsWqCfUd+1GqPNPeol3hVBdEhkUauef
 eqkgwaoqytj7QmensQZoMZJ9Ta4VMbq5I2VqwC8ot3pfgfF2e3SsGwK8A
 SxqfsKwWKphHsmMHr8j9P8CEtAAKEoZXB+A9KG5PGpxyLZ6c0pzRmbKzs
 tL96Txb6FM/uDbGUS1w5r0ZsPDIaR8ciTzg72Il8byunYacS3SYYhXPmq Q==;
X-CSE-ConnectionGUID: SjVdv6nJRwyhX89xAnSDRQ==
X-CSE-MsgGUID: HYLF9C7PRCmLFlX/pHGQHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24246629"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24246629"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:17 -0700
X-CSE-ConnectionGUID: GMmHnImgR72Y2iotjjlTnw==
X-CSE-MsgGUID: Df9D7piBRrO4J+j49ApXEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72152927"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/11] drm/i915: pass dev_priv explicitly to
 HSW_TVIDEO_DIP_VS_DATA
Date: Mon, 27 May 2024 14:10:46 +0300
Message-Id: <6f676d9b2bce0d4911e888c5efeacaddef98579c.1716808214.git.jani.nikula@intel.com>
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
explicitly to the HSW_TVIDEO_DIP_VS_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 5f77d1cf5cef..a5287b651eb5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -177,7 +177,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 	case HDMI_INFOFRAME_TYPE_SPD:
 		return HSW_TVIDEO_DIP_SPD_DATA(cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_VENDOR:
-		return HSW_TVIDEO_DIP_VS_DATA(cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_VS_DATA(dev_priv, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_DRM:
 		return GLK_TVIDEO_DIP_DRM_DATA(cpu_transcoder, i);
 	default:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 707d47955673..afb0a0a0d322 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3478,7 +3478,7 @@
 #define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
 #define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
 #define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
-- 
2.39.2

