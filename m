Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654548D1938
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF96112191;
	Tue, 28 May 2024 11:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HloXvycJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A5B11218F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894962; x=1748430962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVR2tt6ABwHbY9+g6VtiVz/Z+yxh0O7PNdqEh+7goFI=;
 b=HloXvycJw5vJYaS2NAGDw5JKzZsKjfxVlyjpbKA3hQx9hlNuSJfDZWQu
 7FyMpUX69vlgPTPb8BEzSQ76Vf0ZaGxHXHyQnNOlNR0SaiKrTaJf8fWqy
 wp2nb5sHOd6OIFw5dcDQ5RtzPwI18qjyA0ds+boRhO38dV71z/upVZszs
 5Y0xk5zN781Q4k+GTdsGNTCpEAZlPchGfZGPARamsumL0+nTV2WQh6YPT
 0C0TlbtyKZm3vwbEL3gQbv11N3TjcQDHPFiu781HWnwg8iMkHoFNvEFAl
 JWJFFv+VlfULemZWnyjd+oMVCZ1Z2C2jF2U3nGz0LTJ+nv05sRXPZSwjd Q==;
X-CSE-ConnectionGUID: 79G3XmMxQV2kA+zCcjtz9g==
X-CSE-MsgGUID: XB30ANIKQWWJJDOc9fr5FQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353900"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353900"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:01 -0700
X-CSE-ConnectionGUID: 4eU1JTRqQASv5TniOfPHvg==
X-CSE-MsgGUID: OI+ZqFFsSiGcC3oW1K+NQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877416"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915: rearrange DP AUX register macros
Date: Tue, 28 May 2024 14:15:40 +0300
Message-Id: <8ace710d8a1edac7e1af1ed12122fb6bc68114e9.1716894910.git.jani.nikula@intel.com>
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

Follow the recommended style for grouping register macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index e642445364d2..a438f6003ce4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -23,12 +23,13 @@
 
 #define _DPA_AUX_CH_CTL			0x64010
 #define _DPB_AUX_CH_CTL			0x64110
-#define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
-#define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
 #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
 						   _DPB_AUX_CH_CTL)
 #define VLV_DP_AUX_CH_CTL(aux_ch)	_MMIO(VLV_DISPLAY_BASE + \
 					      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
+
+#define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
+#define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
 #define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
 		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
 					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
@@ -72,12 +73,13 @@
 
 #define _DPA_AUX_CH_DATA1		0x64014
 #define _DPB_AUX_CH_DATA1		0x64114
-#define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
-#define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
 #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
 						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 #define VLV_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(VLV_DISPLAY_BASE + _PORT(aux_ch, _DPA_AUX_CH_DATA1, \
 								       _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+
+#define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
+#define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
 #define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
 		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
 					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
-- 
2.39.2

