Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0505D98A9D8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9287810E55C;
	Mon, 30 Sep 2024 16:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j3En1jrI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2062C10E557;
 Mon, 30 Sep 2024 16:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714047; x=1759250047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pPeHneq7T86xWhb4GzlyWdwEkyOWGlRwoTpTRsDtw88=;
 b=j3En1jrIjn1SBu3CkTU/sbgB/MuDnjzk6QA36sxrl97NZOMk12G2lZeq
 uaVGD2qfdKoufk/LPb9Bgy33edkYimspviZfCrf4OUVcV6KtomE6BdYaC
 R1ajdkAKw1mB8kpVx8li9Jj4ORwNO10foD9w9TGRn+7ZhdTl+ta+HD1L5
 2G0RDKAohuPeEFFI5+5gjtwlnv3BOyUm2xKAnQTS01I+wKt0RgZ15en48
 nMRbk7o3uu8sJBb13+0UCsybyXVwzWGh2plquXRshxU+NbnMYPtQdpnR3
 CWfUs3SmxBKfK49xc5L9qNq2ILuIx6MY0n5sbjTxiL10huG6Hii4/9uVw w==;
X-CSE-ConnectionGUID: BeZjYmlVShWS//8vVcnHDg==
X-CSE-MsgGUID: XLgn1jMeR9OYyBOKhOyHjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700541"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700541"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:07 -0700
X-CSE-ConnectionGUID: x5LotZ04Q2qw8XwOLNdiXg==
X-CSE-MsgGUID: RaK3g5uQR5WxJHXYHvzISg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839214"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/13] drm/i915/dp: Use num_joined_pipes in
 bigjoiner_bw_max_bpp
Date: Mon, 30 Sep 2024 22:05:44 +0530
Message-ID: <20240930163549.416410-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Streamline the helper to get max compressed bpp for bigjoiner case, to
effectively use num of pipes joined. This will make the addition of
ultrajoiner limitations easier and improve redability.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 29f8cb9c4dd0..a85527a55dc0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -864,16 +864,21 @@ static int bigjoiner_interface_bits(struct intel_display *display)
 	return DISPLAY_VER(display) >= 14 ? 36 : 24;
 }
 
-static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock)
+static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock,
+				int num_joined_pipes)
 {
 	u32 max_bpp;
 	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 	int ppc = 2;
+	int num_big_joiners = num_joined_pipes / 2;
 
 	max_bpp = display->cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits(display) /
 		  intel_dp_mode_to_fec_clock(mode_clock);
 
+	max_bpp *= num_big_joiners;
+
 	return max_bpp;
+
 }
 
 static u32 small_joiner_ram_max_bpp(struct intel_display *display,
@@ -903,7 +908,8 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 							    num_joined_pipes);
 
 	if (num_joined_pipes == 2) {
-		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock);
+		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
+							     num_joined_pipes);
 
 		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
 	}
-- 
2.45.2

