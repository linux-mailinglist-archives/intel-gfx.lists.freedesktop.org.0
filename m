Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4C28A0822
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F17710EE58;
	Thu, 11 Apr 2024 06:12:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zybk3flo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3992A10EE58
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815926; x=1744351926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZZJ+jWsN0UQcqfbcBvl0Sw7AZaQhBuD1yLa8ZuuvVTs=;
 b=Zybk3flo356n3P3ZtELgk3xLpm9Xg/Utt3ae8BRgsDMLhlUvYmu/nOiJ
 pkyYKsTYHGSZ/rQOPgHLGGB8+3Nv1YndDXqqr5zjONTCIBY5Nf/BRHucf
 IeF6g64i9MFv83pMXTX8NjV7u5guahIKgWp2S70FPz2O4yylSISHvz7cS
 oomEFGPRgizlg+Uqjn/MaEazUFWSpfVs0cNbjbdjpK//ROC8BJU9z6zaS
 /2EEarA+F+5Hdp/VHbrbhxUkSsmjbyvtytlWpRUXr/+YVpYm7JroR9VVN
 taqbK4Eqypp4WlUcKflin97J9xhBvn7Nsr8S4+Ta8SXqOThiYBGb3q5AG A==;
X-CSE-ConnectionGUID: 0S5FSv0CTti/TEuFQCVQ+g==
X-CSE-MsgGUID: 5tvshylMRkKtcvn7x/zkPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8385000"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8385000"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:12:06 -0700
X-CSE-ConnectionGUID: ZFsPL38FQ0a1zWQz6ICqqw==
X-CSE-MsgGUID: DsMGwXLvQ86IUPdvCz5+bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226446"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:12:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/6] drm/i915/dp: Drop comments on EDP HDR DPCD registers
Date: Thu, 11 Apr 2024 11:39:23 +0530
Message-ID: <20240411060925.475456-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240411060925.475456-1-suraj.kandpal@intel.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Drop comments for EDP HDR DPCD registers as the code and
conditions will tell us what can be written where.

--v2
-Drop the comments altogether instead of just renaming them
[Sebastian]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 3d9723714c96..b61bad218994 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -69,14 +69,14 @@
 #define INTEL_EDP_HDR_GETSET_CTRL_PARAMS                               0x344
 # define INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE                        BIT(0)
 # define INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE                         BIT(1)
-# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2) /* Pre-TGL+ */
+# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2)
 # define INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE                BIT(3)
 # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
 # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
 /* Bit 6 is reserved */
 # define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
 
-#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
+#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346
 #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A
 #define INTEL_EDP_SDR_LUMINANCE_LEVEL                                  0x352
 #define INTEL_EDP_BRIGHTNESS_NITS_LSB                                  0x354
-- 
2.43.2

