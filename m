Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B369897DFF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080FF1131A9;
	Thu,  4 Apr 2024 03:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qgyq5gyL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764521131A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201527; x=1743737527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWr5/vPq6qGItOXPc/KvhNc5+jKLhJUtW0fvWobrQdU=;
 b=Qgyq5gyLnPmVGfrm421oKMJFUSZZ5+cOv54wDb2E71+5LzXt1nKJM2e6
 cq+HbXasCYdeLM2GbbwDiwsOzy7D4Y6e/7HsjJGtv6p/UYv8NMEq+YhQi
 RL7XbryVLzjUI1ljK8FOxp5gEDMv0W+7v2gE28mRWajxXxml3Ibe8Q77c
 gNPw4nq1sQ0sUjcEJ55ORZaRaG3IKYd0rJ7A+arQ3WwUnBxZ56dRN/OLj
 HovfdqqyxHnXAQ8N+QEBzLU8hSDGY7ehPtOfJ83NpJtI2rR6QfCQ/1ZcZ
 +ep99FVjiu+KTWZnrfNTZA2OiBs21xQpi+pNyT2eVGgTI/A5YC6Dxk+j6 A==;
X-CSE-ConnectionGUID: XWpH66lITfar2IW3/tx2rw==
X-CSE-MsgGUID: Qzf4ZWf6QRK85rUb8j2uQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282628"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282628"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:06 -0700
X-CSE-ConnectionGUID: JNLfMdPsTdqz+7LLJIUBlA==
X-CSE-MsgGUID: qSu0lDrES1aUu5rOKfdoYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747728"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:32:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/7] drm/i915/dp: Fix Register bit naming
Date: Thu,  4 Apr 2024 08:59:27 +0530
Message-ID: <20240404032931.380887-5-suraj.kandpal@intel.com>
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

Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit is tells TCON to
ignore DPCD colorimetry values and take the one's sent through
SDP.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 94edf982eff8..3d9723714c96 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -74,7 +74,7 @@
 # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
 # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
 /* Bit 6 is reserved */
-# define INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE                    BIT(7)
+# define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
 
 #define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
 #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A
-- 
2.43.2

