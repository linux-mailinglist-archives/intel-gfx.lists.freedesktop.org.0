Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338F08CFEA3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E56310EF0C;
	Mon, 27 May 2024 11:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZiAM/gx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1413310EF3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808295; x=1748344295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FExllybe+W/F+mzBXToohLTu1oluyG4gVF41dnSRkVw=;
 b=iZiAM/gxvet2J1gbw+nBSMEzKFarLDRxfcvnmltH1+kTZtfKB/gLgwu6
 /hDe6aJqgFybZrxrKpjYZMDwJsjNLyySKYLAL7v1y+5BivNoX4G291xPs
 rgmT+7Gyxh9jYZ3LPGdfAbp/+khuVhOOHE8+DRSbanz6dIztS6qMq/yS6
 1tsG8Yy9I91PYKD2i5bIVsGJzx30pMIjc++r6+lccMIIMyXlXAexo7k2c
 bgur6JK67YtIml3DjqYaTuXCvjnTHjaPbBaJneocDT6Fv/Jjgb4F4dWZw
 Mjah3V9feqQrF1l4GvxKnIeGFcCIqFtaTi1DUtHsCGOjhW6jhqxDxSqrD w==;
X-CSE-ConnectionGUID: fLmqhrRDS3qu+MtklljEWQ==
X-CSE-MsgGUID: hrrmlgskRuCewsDiLg3uGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535591"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535591"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:35 -0700
X-CSE-ConnectionGUID: nwRz7FxXSQaXT5l6O8Y2og==
X-CSE-MsgGUID: 9ceEBhlgQ3exVwa1hrCTjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34620648"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/11] drm/i915: pass dev_priv explicitly to
 GLK_TVIDEO_DIP_DRM_DATA
Date: Mon, 27 May 2024 14:10:50 +0300
Message-Id: <bab2d0385b748c34bec262afaf491be881990033.1716808214.git.jani.nikula@intel.com>
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
explicitly to the GLK_TVIDEO_DIP_DRM_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f7605ff547a3..a26ce1e4befd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -179,7 +179,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 	case HDMI_INFOFRAME_TYPE_VENDOR:
 		return HSW_TVIDEO_DIP_VS_DATA(dev_priv, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_DRM:
-		return GLK_TVIDEO_DIP_DRM_DATA(cpu_transcoder, i);
+		return GLK_TVIDEO_DIP_DRM_DATA(dev_priv, cpu_transcoder, i);
 	default:
 		MISSING_CASE(type);
 		return INVALID_MMIO_REG;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1cb60a2ffa54..4645476bb29e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3482,7 +3482,7 @@
 #define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
-#define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
 /*ADLP and later: */
-- 
2.39.2

