Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707978CFEA5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CB310F4BC;
	Mon, 27 May 2024 11:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jOgtN9xu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9594210F4BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808300; x=1748344300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyT6ENHuhxOPOC2f0PkBjfivJOWMkN0KTBX72U73Ni4=;
 b=jOgtN9xu6Pz/JjGUrnLcFVYvrREyZRs0gLVYYrY0F/eh8QS/t5WbdASR
 RYJhC1MLdYGqOk6bFiOf4sWcmw00Zax+c1VwKcoZ3jkU61a32W9QN/+3q
 Y9apQ9QbI6BoZJQZubiLZXWWa+gc0sX7D0zf9kNAsAoSyfBUaASnUyFt/
 xagMGf83BqyS+RiSmCrE9horhy5D95gSmiLMvZw9m0EYSIdMNF12+iPWX
 42jZGNH8L9NZs4q2RhVl156CPLOMUuUeyieSRBh4e9C7CIXktwwC6DLx8
 XDOifOp1YIU7EY/Jfe7pDs0HNVOpgIkDMBDMH+MFh6m8Bk3WC4oPpp56+ A==;
X-CSE-ConnectionGUID: id5WLwawRHOoAAMa0zbxUQ==
X-CSE-MsgGUID: 26Rv6CgJRtmhcbvRX04gaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535598"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535598"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:40 -0700
X-CSE-ConnectionGUID: 7MVrW+fuRL+ywkMe8XdN1w==
X-CSE-MsgGUID: tEe0ylp0RPKvjrd10NV/uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34620678"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/11] drm/i915: pass dev_priv explicitly to
 ICL_VIDEO_DIP_PPS_DATA
Date: Mon, 27 May 2024 14:10:51 +0300
Message-Id: <fb7c308dd655d1bc4af44ab9c88b5f5245d8a5d6.1716808214.git.jani.nikula@intel.com>
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
explicitly to the ICL_VIDEO_DIP_PPS_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a26ce1e4befd..184fec37211b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -171,7 +171,7 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 	case DP_SDP_ADAPTIVE_SYNC:
 		return ADL_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
-		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
+		return ICL_VIDEO_DIP_PPS_DATA(dev_priv, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
 		return HSW_TVIDEO_DIP_AVI_DATA(dev_priv, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_SPD:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4645476bb29e..5fe0a0c6514f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3483,7 +3483,7 @@
 #define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
 /*ADLP and later: */
 #define ADL_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans,\
-- 
2.39.2

