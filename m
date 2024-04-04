Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3EC897E01
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B8E1131A7;
	Thu,  4 Apr 2024 03:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZKRFNmD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468431131A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201529; x=1743737529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=30OUap/8wwrgHoEIOi/5egcRY4B/oFgmyWcsfJvqw7c=;
 b=eZKRFNmDdZ1PfKS2tJNwrOUuybpAq9AgaA6EfWz1sH1IEfaRxQ6VMTM1
 ky57FoGX/sjjnWatHVJzaF7yjuOFdcr/2cJ6/6Qok+tq5x1CC40e5ns8a
 uFwnkF4pauYutlm4gGzvbK7H98xoc/FwTOQh1OXlEQAVAhDaz8EyDg7J2
 9GpHdUq4KI0PTxma9CQFVJd1YuF7iY9HxBFPKSq79ETIVmJWU1LxNnP3l
 25nXFgzDF9qEHzxS8iFA/KJYZvr3ygzDwjAuTMKmV1qvYQpxgrJ9yjKOB
 7BlRlJbkderRfy89tr5mx31PU6bJl16P3TiuAEfhGhpclFcHAfaCW7HRe Q==;
X-CSE-ConnectionGUID: SGzapuwsSFSYsAg31Be6tg==
X-CSE-MsgGUID: E2QzAf+8SwCwklSCVKFkmw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282630"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282630"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:09 -0700
X-CSE-ConnectionGUID: 3IL5M6RhRTWpgeWpLpgg3w==
X-CSE-MsgGUID: lCZ+PEMATUS0k9JuWnZBzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747737"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:32:06 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/7] drm/i915/dp: Fix comments on EDP HDR DPCD registers
Date: Thu,  4 Apr 2024 08:59:28 +0530
Message-ID: <20240404032931.380887-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-2-suraj.kandpal@intel.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Change comments from Pre-TGL+ to Pre-ICL as mentioned in specs

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 3d9723714c96..2d50a4734823 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -69,14 +69,14 @@
 #define INTEL_EDP_HDR_GETSET_CTRL_PARAMS                               0x344
 # define INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE                        BIT(0)
 # define INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE                         BIT(1)
-# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2) /* Pre-TGL+ */
+# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2) /* Pre-ICL */
 # define INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE                BIT(3)
 # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
 # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
 /* Bit 6 is reserved */
 # define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
 
-#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
+#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-ICL */
 #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A
 #define INTEL_EDP_SDR_LUMINANCE_LEVEL                                  0x352
 #define INTEL_EDP_BRIGHTNESS_NITS_LSB                                  0x354
-- 
2.43.2

