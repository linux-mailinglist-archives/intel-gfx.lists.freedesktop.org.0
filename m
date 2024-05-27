Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B560D8CFEA6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E6A10F4C0;
	Mon, 27 May 2024 11:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6h3A/4L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CE310F4C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808309; x=1748344309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kGlXJaDStGPU7jgoyT87xQRmxkNlXsRIEtSCNuzMOBc=;
 b=L6h3A/4LDJoV4WnVo7i6BttWbrZVTmiCnNbc0c2NjaNIKWisAdHD8Woj
 CzM8iXEZIHSra2soxAEihaA9OONF7fXt7RO7m+hWYon/G+SxgKi3inj2o
 wh+qPu3CLG5avJ6l8k8Y/62hnU8dJY7D/9wNH96Uph2X2ni1IDEyAlt3/
 52+mjaqTB1AAGFnETzbH4+hqi1V4lLyAVpibchaX/IV75JO1sDWhKheB6
 2Sf9ure2BlthJ6pjyUQnhvOIVpabJObfd7hpCTNWWij5PhPb+0OEYvfFd
 cfDOvBpUpjlXB/ZydX3ljO4xU7eXub3LGZri+OYR8EffhjcGeriV3myi3 A==;
X-CSE-ConnectionGUID: lxv5YrjKTbS5I79y0Ydy+A==
X-CSE-MsgGUID: N70+pUdIRMWi3nfeSICLbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535615"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535615"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:48 -0700
X-CSE-ConnectionGUID: 22uSETe+TrWaJyM9gTr4lQ==
X-CSE-MsgGUID: kqyW7eKFSUeTCWACIsfm6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34620731"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/11] drm/i915: pass dev_priv explicitly to
 ADL_TVIDEO_DIP_AS_SDP_DATA
Date: Mon, 27 May 2024 14:10:53 +0300
Message-Id: <75a4f817f7c73277b2b8021275ccb9a4f3716953.1716808214.git.jani.nikula@intel.com>
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
explicitly to the ADL_TVIDEO_DIP_AS_SDP_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 184fec37211b..3767be0bdba8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -169,7 +169,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(dev_priv, cpu_transcoder, i);
 	case DP_SDP_ADAPTIVE_SYNC:
-		return ADL_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
+		return ADL_TVIDEO_DIP_AS_SDP_DATA(dev_priv, cpu_transcoder, i);
 	case DP_SDP_PPS:
 		return ICL_VIDEO_DIP_PPS_DATA(dev_priv, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 57e805dcf4c6..be57812a6b07 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3486,7 +3486,7 @@
 #define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(dev_priv, trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
 /*ADLP and later: */
-#define ADL_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans,\
+#define ADL_TVIDEO_DIP_AS_SDP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans,\
 							     _ADL_VIDEO_DIP_AS_DATA_A + (i) * 4)
 
 #define _HSW_STEREO_3D_CTL_A		0x70020
-- 
2.39.2

