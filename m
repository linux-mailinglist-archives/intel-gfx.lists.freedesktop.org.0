Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FD78AF483
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 18:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8103E1134B8;
	Tue, 23 Apr 2024 16:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NR0FiaNY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC8F01134BA;
 Tue, 23 Apr 2024 16:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713890709; x=1745426709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zO/ar62b29qQIahYyq408SM7x7BlExVD6m7QvYWHtgU=;
 b=NR0FiaNYydROchaPGEtt46dqlbTtnMp0zg97BCRU4B9IlULqv/ln7f80
 v/XfCkP6I0KszIiCVbLJ3Ouc/7suJKX8hKDT3jrPdUJA7xDbAV1YNiwDj
 fcNT5FyuxRyfAALUOd4rjGQa768KnJgbK2Nq3V18MUshPdihqP6vV0zsw
 +IefbFSx735/XiosiBloKA7dkZvvkBqX6IJBhIzaSodHsI/eUDFTq842/
 6uY4BbQErNfWUeWtAd1Owa+84+sxKuEGuwG1ghlgjrRvo53tomaCvZd7Y
 qFu4hJ1eHY8eaZsM0m39UbCdlljHK25PZLJu9YNHaKxWCCx8wUyKPFe7/ w==;
X-CSE-ConnectionGUID: PzoQKBphSmak9GyJoIYTCA==
X-CSE-MsgGUID: /6vHzOUaSnCMgBxdyKgsaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20891466"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20891466"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:09 -0700
X-CSE-ConnectionGUID: NBSJHX5+SOKEGOaOCUnPGQ==
X-CSE-MsgGUID: l9qQkPbFQUKzucJ+Gy+rLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28883603"
Received: from fpirou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.117])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: convert _MMIO_PIPE3()/_MMIO_PORT3() to accept
 base
Date: Tue, 23 Apr 2024 19:44:59 +0300
Message-Id: <4b95f125f5021abc00b5fc661b2728f1b583c01e.1713890614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713890614.git.jani.nikula@intel.com>
References: <cover.1713890614.git.jani.nikula@intel.com>
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

Most users of _MMIO_PIPE3() and _MMIO_PORT3() need to add the MMIO base
to the registers. Convert the macros to _MMIO_BASE_PIPE3() and
_MMIO_BASE_PORT3() to move the base addition until after the register
selection. If the register address depends on DISPLAY_MMIO_BASE(), this
removes the need to figure the base out for each register, and it only
needs to be added once.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_reg_defs.h |  4 +-
 drivers/gpu/drm/i915/i915_reg.h               | 80 ++++++++++---------
 2 files changed, 44 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
index 2f07b7afa3bf..23fc1505dc08 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -29,8 +29,8 @@
 #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
 #define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
 
-#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
-#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
+#define _MMIO_BASE_PIPE3(base, pipe, a, b, c)	_MMIO((base) + _PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
+#define _MMIO_BASE_PORT3(base, pipe, a, b, c)	_MMIO((base) + _PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
 
 /*
  * Device info offset array based helpers for groups of registers with unevenly
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8eb6c2bf4557..51f703970cf6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -973,13 +973,13 @@
 #define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
 #define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
 
-#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62F20)
-#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62F30)
-#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62F34)
-#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	   \
-						    _VLV_AUD_PORT_EN_B_DBG, \
-						    _VLV_AUD_PORT_EN_C_DBG, \
-						    _VLV_AUD_PORT_EN_D_DBG)
+#define _VLV_AUD_PORT_EN_B_DBG		0x62F20
+#define _VLV_AUD_PORT_EN_C_DBG		0x62F30
+#define _VLV_AUD_PORT_EN_D_DBG		0x62F34
+#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_BASE_PORT3(VLV_DISPLAY_BASE, (port) - PORT_B, \
+							 _VLV_AUD_PORT_EN_B_DBG, \
+							 _VLV_AUD_PORT_EN_C_DBG, \
+							 _VLV_AUD_PORT_EN_D_DBG)
 #define VLV_AMP_MUTE		        (1 << 1)
 
 #define GEN6_BSD_RNCID			_MMIO(0x12198)
@@ -1147,10 +1147,11 @@
 /*
  * Clock control & power management
  */
-#define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
-#define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
-#define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
-#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
+#define _DPLL_A			0x6014
+#define _DPLL_B			0x6018
+#define _CHV_DPLL_C		0x6030
+#define DPLL(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+						 (pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
 
 #define VGA0	_MMIO(0x6000)
 #define VGA1	_MMIO(0x6004)
@@ -1246,10 +1247,11 @@
 #define   SDVO_MULTIPLIER_SHIFT_HIRES		4
 #define   SDVO_MULTIPLIER_SHIFT_VGA		0
 
-#define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
-#define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
-#define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
-#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
+#define _DPLL_A_MD		0x601c
+#define _DPLL_B_MD		0x6020
+#define _CHV_DPLL_C_MD		0x603c
+#define DPLL_MD(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+						 (pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
 
 /*
  * UDI pixel divider, controlling how many pixels are stuffed into a packet.
@@ -2718,8 +2720,8 @@
 #define _WM0_PIPEA_ILK		0x45100
 #define _WM0_PIPEB_ILK		0x45104
 #define _WM0_PIPEC_IVB		0x45200
-#define WM0_PIPE_ILK(pipe)	_MMIO_PIPE3((pipe), _WM0_PIPEA_ILK, \
-					    _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
+#define WM0_PIPE_ILK(pipe)	_MMIO_BASE_PIPE3(0, (pipe), _WM0_PIPEA_ILK, \
+						 _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
 #define  WM0_PIPE_PRIMARY_MASK	REG_GENMASK(31, 16)
 #define  WM0_PIPE_SPRITE_MASK	REG_GENMASK(15, 8)
 #define  WM0_PIPE_CURSOR_MASK	REG_GENMASK(7, 0)
@@ -4767,27 +4769,29 @@
 #define TVIDEO_DIP_GCP(pipe) _MMIO_PIPE(pipe, _VIDEO_DIP_GCP_A, _VIDEO_DIP_GCP_B)
 
 /* Per-transcoder DIP controls (VLV) */
-#define _VLV_VIDEO_DIP_CTL_A		(VLV_DISPLAY_BASE + 0x60200)
-#define _VLV_VIDEO_DIP_DATA_A		(VLV_DISPLAY_BASE + 0x60208)
-#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	(VLV_DISPLAY_BASE + 0x60210)
-
-#define _VLV_VIDEO_DIP_CTL_B		(VLV_DISPLAY_BASE + 0x61170)
-#define _VLV_VIDEO_DIP_DATA_B		(VLV_DISPLAY_BASE + 0x61174)
-#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	(VLV_DISPLAY_BASE + 0x61178)
-
-#define _CHV_VIDEO_DIP_CTL_C		(VLV_DISPLAY_BASE + 0x611f0)
-#define _CHV_VIDEO_DIP_DATA_C		(VLV_DISPLAY_BASE + 0x611f4)
-#define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	(VLV_DISPLAY_BASE + 0x611f8)
-
-#define VLV_TVIDEO_DIP_CTL(pipe) \
-	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_CTL_A, \
-	       _VLV_VIDEO_DIP_CTL_B, _CHV_VIDEO_DIP_CTL_C)
-#define VLV_TVIDEO_DIP_DATA(pipe) \
-	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_DATA_A, \
-	       _VLV_VIDEO_DIP_DATA_B, _CHV_VIDEO_DIP_DATA_C)
-#define VLV_TVIDEO_DIP_GCP(pipe) \
-	_MMIO_PIPE3((pipe), _VLV_VIDEO_DIP_GDCP_PAYLOAD_A, \
-		_VLV_VIDEO_DIP_GDCP_PAYLOAD_B, _CHV_VIDEO_DIP_GDCP_PAYLOAD_C)
+#define _VLV_VIDEO_DIP_CTL_A		0x60200
+#define _VLV_VIDEO_DIP_CTL_B		0x61170
+#define _CHV_VIDEO_DIP_CTL_C		0x611f0
+#define VLV_TVIDEO_DIP_CTL(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
+							 _VLV_VIDEO_DIP_CTL_A, \
+							 _VLV_VIDEO_DIP_CTL_B, \
+							 _CHV_VIDEO_DIP_CTL_C)
+
+#define _VLV_VIDEO_DIP_DATA_A		0x60208
+#define _VLV_VIDEO_DIP_DATA_B		0x61174
+#define _CHV_VIDEO_DIP_DATA_C		0x611f4
+#define VLV_TVIDEO_DIP_DATA(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
+							 _VLV_VIDEO_DIP_DATA_A, \
+							 _VLV_VIDEO_DIP_DATA_B, \
+							 _CHV_VIDEO_DIP_DATA_C)
+
+#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	0x60210
+#define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	0x61178
+#define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	0x611f8
+#define VLV_TVIDEO_DIP_GCP(pipe)	_MMIO_BASE_PIPE3(VLV_DISPLAY_BASE, (pipe), \
+							 _VLV_VIDEO_DIP_GDCP_PAYLOAD_A, \
+							 _VLV_VIDEO_DIP_GDCP_PAYLOAD_B, \
+							 _CHV_VIDEO_DIP_GDCP_PAYLOAD_C)
 
 /* Haswell DIP controls */
 
-- 
2.39.2

