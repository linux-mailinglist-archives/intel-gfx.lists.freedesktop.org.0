Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254D58D1939
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1B111218E;
	Tue, 28 May 2024 11:16:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fF40v16y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173EB11218F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894966; x=1748430966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3MMkA6cOheLrqABTLrK6RPX8PQfhVIbWFkRhP70p2RY=;
 b=fF40v16yH2xv9/7sJO903ELICVCBOWKw22POGQQiVr+qsLrGgU/yeK2U
 e8LycVXN4wueyxIfwD024Q2vk25LiC+8ei0TQ4SdaitPReyHb1kZB+c+C
 WLpgm8go7EOgx0fe5Pwwe2sRrmMB7kasM85VJO7cH9EXKpcM2twrB2XtK
 fhdJ+6CdbwxBU6LDbS7y47F6nNUwh8L2cFykpHdCHRQxA1oUOxORkHmja
 0ia/5V4a14Xad3vSChkul9RohmooRK4G0uey9fCgY38ZVuwnEb/pmvOZD
 q6sIs655IG5gpp8XdlR0Emx1IOHzqk7tbV+bogUYl986t6hdSuuAimm5S w==;
X-CSE-ConnectionGUID: JRaWKNFUSLqfNwwaTSrDYg==
X-CSE-MsgGUID: fmFY0s2MSdSOovlemrWdpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353906"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353906"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:06 -0700
X-CSE-ConnectionGUID: SD/Yo/6VS8KiWY4EAmJv7A==
X-CSE-MsgGUID: z5g8Hyh0S7G6RhM1ixEVlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877442"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915: move PCH DP AUX CH regs to intel_dp_aux_regs.h
Date: Tue, 28 May 2024 14:15:41 +0300
Message-Id: <9bc3a7bb34edc5dc17ffcb2a9e64edcef8c7a7b8.1716894910.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
References: <cover.1716894909.git.jani.nikula@intel.com>
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

Move the macros where they belong.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                  | 7 -------
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index a438f6003ce4..4e109e81409b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -28,6 +28,10 @@
 #define VLV_DP_AUX_CH_CTL(aux_ch)	_MMIO(VLV_DISPLAY_BASE + \
 					      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
 
+#define _PCH_DPB_AUX_CH_CTL		0xe4110
+#define _PCH_DPC_AUX_CH_CTL		0xe4210
+#define PCH_DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_CTL, _PCH_DPC_AUX_CH_CTL)
+
 #define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
 #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
 #define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
@@ -78,6 +82,10 @@
 #define VLV_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(VLV_DISPLAY_BASE + _PORT(aux_ch, _DPA_AUX_CH_DATA1, \
 								       _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 
+#define _PCH_DPB_AUX_CH_DATA1		0xe4114
+#define _PCH_DPC_AUX_CH_DATA1		0xe4214
+#define PCH_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_DATA1, _PCH_DPC_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+
 #define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
 #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
 #define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 989cc5691490..06e41afd5c4e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3601,20 +3601,13 @@
 
 #define _PCH_DP_B		0xe4100
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
-#define _PCH_DPB_AUX_CH_CTL	0xe4110
-#define _PCH_DPB_AUX_CH_DATA1	0xe4114
 
 #define _PCH_DP_C		0xe4200
 #define PCH_DP_C		_MMIO(_PCH_DP_C)
-#define _PCH_DPC_AUX_CH_CTL	0xe4210
-#define _PCH_DPC_AUX_CH_DATA1	0xe4214
 
 #define _PCH_DP_D		0xe4300
 #define PCH_DP_D		_MMIO(_PCH_DP_D)
 
-#define PCH_DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_CTL, _PCH_DPC_AUX_CH_CTL)
-#define PCH_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT((aux_ch) - AUX_CH_B, _PCH_DPB_AUX_CH_DATA1, _PCH_DPC_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-
 /* CPT */
 #define _TRANS_DP_CTL_A		0xe0300
 #define _TRANS_DP_CTL_B		0xe1300
-- 
2.39.2

