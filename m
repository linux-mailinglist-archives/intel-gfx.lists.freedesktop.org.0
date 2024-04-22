Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B128AC31D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802601126FC;
	Mon, 22 Apr 2024 03:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="linsW+xb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1762B1126FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756937; x=1745292937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZZJ+jWsN0UQcqfbcBvl0Sw7AZaQhBuD1yLa8ZuuvVTs=;
 b=linsW+xb+YylUM5uFXb4XBxTMrlzrThBoJmboIaxaHHVyYzt3EjL1fmG
 HanjHCGLaUjOGzjuwQ+lL45R38L0ob1BvHFda2cbzoQ5wqHga5hynZ85w
 u4wmTOXhPplSiycD8UMjN+X3lYE6e1YYsM4nICNWQJrhuZHpGAKdBfAbw
 Pnrk954YWniOqE2QMfrn3UpL9URGXLQqWewulRjys3px/EWXV+fbrEomN
 3PZ/CwOsZJPHaFqznpncADgR2s6uapD64dtwjLVWZsR/dJxVB2EGXln96
 5PlKuOPA9iPuJtUCZBQqBTMetLI5ET3T7Y/i5S6veLRO/+w0eUxOph9BJ A==;
X-CSE-ConnectionGUID: LZA8LUkLQsWh/Q7F3aRkgA==
X-CSE-MsgGUID: yNiy/aFmRXeo1eDCnRf9GQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158240"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158240"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:37 -0700
X-CSE-ConnectionGUID: UTE4/B90SbazrFUyN27TvQ==
X-CSE-MsgGUID: XnRvLXH6QGqiwAOSJKMVww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907399"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/6] drm/i915/dp: Drop comments on EDP HDR DPCD registers
Date: Mon, 22 Apr 2024 09:02:53 +0530
Message-ID: <20240422033256.713902-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422033256.713902-1-suraj.kandpal@intel.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
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

