Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A79C8BDA01
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA71A10E9A5;
	Tue,  7 May 2024 04:06:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ebmwhf+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3978F10E919
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054803; x=1746590803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ceZwMf//3hj6Xs6EuEZeYzZEWyVAGjl61CDXhs1lhu0=;
 b=ebmwhf+5VWuSct7o8tTWsggKxRmKqFJgN840vA+NfNNBFGJMA24h5Ltq
 TBJon6fJdqdOlK3iK7Vl5YlYg9J6A4IFMWLjizzWf2XxhS7Qo9PjVVCCq
 nuyj98Nl9bXKizFPpLMLQjnO9WuRauiJR8V/ftWo+lJVPdHzdyhCk+qIi
 1qX1V9bgH7VP5RRZq0G47gYblMZGWxCFCgG6tKlF6HGsJvgsodsN0j6Nf
 VRf+1nYvqEj2jWmjSWcBIl7dpYAbM2HyaXwZs5OReGsWICZuWfnAdhete
 fupue/lwUd23/Pjgl1ieUwGuTvrjUd40J7HaSPHYXhq5I6VXCUG6QhdVw Q==;
X-CSE-ConnectionGUID: UA603HbRTVuX/9rHHWt/rQ==
X-CSE-MsgGUID: gce2kzz8QnO4oO1HxHRUTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645345"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645345"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:43 -0700
X-CSE-ConnectionGUID: dtuHvbngRNCl250AlHZNdQ==
X-CSE-MsgGUID: nNj026iOTDeGSyzTdj8ZFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468412"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/7] drm/i915/dp: Fix Register bit naming
Date: Tue,  7 May 2024 09:34:04 +0530
Message-ID: <20240507040407.1056061-5-suraj.kandpal@intel.com>
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

Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit tells TCON to
ignore DPCD colorimetry values and take the one's sent through
SDP.

--v2
-Fix typo in commit message [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 63d99afba398..85205aeb3e9a 100644
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

