Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4418BDA02
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFED10E9BA;
	Tue,  7 May 2024 04:06:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOwUMYH6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D28810E9BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054805; x=1746590805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s4NiUTETtTRqdtmI0bcLr3db9YnJh/jMBp9cw4bZIRw=;
 b=TOwUMYH6+ZYx2GJh7N+GDJjn15yB2D5TXusnR60W6LJXn8SVySDyvnHf
 tGipyc3nLgqM+yVEwI4hKOQbm8ZiixT9zXYjp9b50E2M4W4Ak3NxUy+vz
 Tn0FUgc/KExyY5PH3Gt7GNIdgISbTXQ1pTmsbDbgqvycEB4JjMTXIYZDk
 RZoc8YLbVdoThyZQUguupGeyKgaKJ9PZqHs6p+gdWI2qps+1mLNlHD5Bl
 eSZ1l6AWEMd/y3J1cPGlp9hiXdidXUwHzHvQa6SsdgbOsycyBo66SMcPJ
 geymMJ5n8BTHUmHguvEoHVJBeXzNbP2z7NfDoSx3/T0l8QvbNfGgb5XV+ A==;
X-CSE-ConnectionGUID: c++badwDQGKT4TmOga5gbQ==
X-CSE-MsgGUID: 6IuQEV/+Q5iVcHYDJk6Y/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645348"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645348"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:45 -0700
X-CSE-ConnectionGUID: yxUokVjxQeuSDidMupWIRg==
X-CSE-MsgGUID: OaNBeX9lTCSb/UrgHi34NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468424"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/7] drm/i915/dp: Drop comments on EDP HDR DPCD registers
Date: Tue,  7 May 2024 09:34:05 +0530
Message-ID: <20240507040407.1056061-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 85205aeb3e9a..1ee693df0563 100644
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

