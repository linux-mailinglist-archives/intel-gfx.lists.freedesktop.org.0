Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA439738A7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB7310E7D8;
	Tue, 10 Sep 2024 13:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxqGmNdm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C80110E7D9;
 Tue, 10 Sep 2024 13:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974982; x=1757510982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EOVYsF6TgPPSr7GlaRSBS+cNWC0Y5XEmlQcBzvaHsk4=;
 b=SxqGmNdm3z2KdBbgSVmBt27/Kv3eT32ID+4FoBVMGfuYyWOesqKMOofq
 Gsa6VZm90C3qEDc7luLwpU6H8KAHWeAQz+yFBQ8VjOIfWgm5TfmAE9oNX
 jj1XcdqpDmovdEUe7ea8ph00KTRHeUPbOA3tONZn3VybLyduLlWVUulnA
 431ZA/FBxwfliPhYtFT5DjB6T6uXLXTUAJQINDjXh4HxQuEnMNArdLQhf
 sz3qxz2nqOxI29X3IRihF7pBzZSoXI3aSo80npzJBw2HJO6PDsAZxuEhn
 vLe20i/xdB29Ubj3cLodAmE4J11OrHR4ROHZUYYm9gyH9rarvhlTlxjgJ A==;
X-CSE-ConnectionGUID: e8uKC3ZOQYCjb7QXjmZ4Sg==
X-CSE-MsgGUID: DULeJuDIRL+tjZ92Pc8ehw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24870367"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24870367"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:42 -0700
X-CSE-ConnectionGUID: AS+P6JrqRxGM0t8tEFMUVg==
X-CSE-MsgGUID: w9AQM5wtTDqM5kAgg9dasA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67796258"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 08/11] drm/i915/reg: fix DIP CTL register style
Date: Tue, 10 Sep 2024 16:28:52 +0300
Message-Id: <fdc607b716cf86b8bc88c15a43bc7088c5aab05f.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Adhere to the style described at the top of i915_reg.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 82 ++++++++++++++++++---------------
 1 file changed, 44 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b617de6b6928..489a88b133d6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3233,20 +3233,20 @@
 
 /* Per-transcoder DIP controls (PCH) */
 #define _VIDEO_DIP_CTL_A         0xe0200
+#define _VIDEO_DIP_CTL_B         0xe1200
+#define TVIDEO_DIP_CTL(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_CTL_A, _VIDEO_DIP_CTL_B)
+
 #define _VIDEO_DIP_DATA_A        0xe0208
+#define _VIDEO_DIP_DATA_B        0xe1208
+#define TVIDEO_DIP_DATA(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_DATA_A, _VIDEO_DIP_DATA_B)
+
 #define _VIDEO_DIP_GCP_A         0xe0210
+#define _VIDEO_DIP_GCP_B         0xe1210
+#define TVIDEO_DIP_GCP(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_GCP_A, _VIDEO_DIP_GCP_B)
 #define  GCP_COLOR_INDICATION		(1 << 2)
 #define  GCP_DEFAULT_PHASE_ENABLE	(1 << 1)
 #define  GCP_AV_MUTE			(1 << 0)
 
-#define _VIDEO_DIP_CTL_B         0xe1200
-#define _VIDEO_DIP_DATA_B        0xe1208
-#define _VIDEO_DIP_GCP_B         0xe1210
-
-#define TVIDEO_DIP_CTL(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_CTL_A, _VIDEO_DIP_CTL_B)
-#define TVIDEO_DIP_DATA(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_DATA_A, _VIDEO_DIP_DATA_B)
-#define TVIDEO_DIP_GCP(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_GCP_A, _VIDEO_DIP_GCP_B)
-
 /* Per-transcoder DIP controls (VLV) */
 #define _VLV_VIDEO_DIP_CTL_A		0x60200
 #define _VLV_VIDEO_DIP_CTL_B		0x61170
@@ -3273,36 +3273,54 @@
 							 _CHV_VIDEO_DIP_GDCP_PAYLOAD_C)
 
 /* Haswell DIP controls */
-
 #define _HSW_VIDEO_DIP_CTL_A		0x60200
-#define _HSW_VIDEO_DIP_AVI_DATA_A	0x60220
-#define _HSW_VIDEO_DIP_VS_DATA_A	0x60260
-#define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
-#define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
-#define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
-#define	_ADL_VIDEO_DIP_AS_DATA_A	0x60484
-#define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
-#define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
-#define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
-#define _HSW_VIDEO_DIP_SPD_ECC_A	0x602C0
-#define _HSW_VIDEO_DIP_GMP_ECC_A	0x60300
-#define _HSW_VIDEO_DIP_VSC_ECC_A	0x60344
-#define _HSW_VIDEO_DIP_GCP_A		0x60210
-
 #define _HSW_VIDEO_DIP_CTL_B		0x61200
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
+
+#define _HSW_VIDEO_DIP_AVI_DATA_A	0x60220
 #define _HSW_VIDEO_DIP_AVI_DATA_B	0x61220
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
+
+#define _HSW_VIDEO_DIP_VS_DATA_A	0x60260
 #define _HSW_VIDEO_DIP_VS_DATA_B	0x61260
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
+
+#define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
 #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
+
+#define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
+
+#define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
 #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+
+/*ADLP and later: */
+#define	_ADL_VIDEO_DIP_AS_DATA_A	0x60484
 #define _ADL_VIDEO_DIP_AS_DATA_B	0x61484
+#define ADL_TVIDEO_DIP_AS_SDP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans,\
+							     _ADL_VIDEO_DIP_AS_DATA_A + (i) * 4)
+
+#define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
 #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
+
+#define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
 #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
+#define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
 #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
+#define _HSW_VIDEO_DIP_SPD_ECC_A	0x602C0
 #define _HSW_VIDEO_DIP_SPD_ECC_B	0x612C0
+#define _HSW_VIDEO_DIP_GMP_ECC_A	0x60300
 #define _HSW_VIDEO_DIP_GMP_ECC_B	0x61300
+#define _HSW_VIDEO_DIP_VSC_ECC_A	0x60344
 #define _HSW_VIDEO_DIP_VSC_ECC_B	0x61344
+
+#define _HSW_VIDEO_DIP_GCP_A		0x60210
 #define _HSW_VIDEO_DIP_GCP_B		0x61210
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
 
 /* Icelake PPS_DATA and _ECC DIP Registers.
  * These are available for transcoders B,C and eDP.
@@ -3312,28 +3330,16 @@
 
 #define _ICL_VIDEO_DIP_PPS_DATA_A	0x60350
 #define _ICL_VIDEO_DIP_PPS_DATA_B	0x61350
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
+
 #define _ICL_VIDEO_DIP_PPS_ECC_A	0x603D4
 #define _ICL_VIDEO_DIP_PPS_ECC_B	0x613D4
-
-#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
-#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
-#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
-#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
-#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(dev_priv, trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
-/*ADLP and later: */
-#define ADL_TVIDEO_DIP_AS_SDP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans,\
-							     _ADL_VIDEO_DIP_AS_DATA_A + (i) * 4)
 
 #define _HSW_STEREO_3D_CTL_A		0x70020
-#define   S3D_ENABLE			(1 << 31)
 #define _HSW_STEREO_3D_CTL_B		0x71020
-
 #define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
+#define   S3D_ENABLE			(1 << 31)
 
 #define _PCH_TRANSACONF              0xf0008
 #define _PCH_TRANSBCONF              0xf1008
-- 
2.39.2

