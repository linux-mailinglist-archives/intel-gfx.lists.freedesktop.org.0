Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117168AC318
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C301126F9;
	Mon, 22 Apr 2024 03:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lv8+r6SN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82B21126F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756935; x=1745292935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWr5/vPq6qGItOXPc/KvhNc5+jKLhJUtW0fvWobrQdU=;
 b=lv8+r6SNk6Cg6eP78vI9B23qLc2bFkyJt7354WUeI6PLwi33cuRyAGeX
 OxE/boOt2HKwJYgaf+uy/NniiCPGIngl+CM0fsxFP2dKa9R/9XuKv39rQ
 kd3iYekIsfvl/g6l5dPE03DifsNbknm7i78vacHrt92ms1gdl+4k0wIAM
 4bMDmYIIRVFJQhQFXgUYNh1G0buSt2S17uUM47mh4l37t9VKRTi/zopl7
 XG6fB8YmDZOuclrO2qVDwTZf+HGN9uHvfcJn5rRZ/ohNycEHUtdkaxnH5
 L4RDI236UdjKAIgBZ5AC8RIaqFArRWAC1xCD+CW0CISJNHGO5ilTjpngb g==;
X-CSE-ConnectionGUID: FgyR4WNdQJSpqQtkEQ+xlQ==
X-CSE-MsgGUID: lGbeymA2Q9adQAN4tUDRYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158236"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158236"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:34 -0700
X-CSE-ConnectionGUID: 1h8Vp9otQNKJrYJGN4XPJQ==
X-CSE-MsgGUID: ujCcyhjIR+y5AJ+e3g8lsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907390"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/6] drm/i915/dp: Fix Register bit naming
Date: Mon, 22 Apr 2024 09:02:52 +0530
Message-ID: <20240422033256.713902-4-suraj.kandpal@intel.com>
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

