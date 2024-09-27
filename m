Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A8988829
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2268210ECDD;
	Fri, 27 Sep 2024 15:21:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DfSoyLai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F2710ECDD;
 Fri, 27 Sep 2024 15:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450467; x=1758986467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JqlJYjb8prFgUPpyKa3K4IB5GY8XK6vVpy167nAdTaY=;
 b=DfSoyLaipfmgpf4iM3P/eIGP7fJlOBrXHpYHKgj9qKjyNbEiXOjxGb/z
 Um8nzbNAvpC8LnRGjovmENKOH/ZhBblPV6ATPurNeBPdpNvnZ2pAYiopu
 fLSPa0IaBQrZbCxC24wVcuEhCGoDahM7MnTfvG2qsCtdnSBBSlrBuGp8U
 WrJ9CAM3gvmISvLL+Y8GfjWknIdq1dNoDPuonOMl5zlvmyijf1sQAUFV8
 4vgvPdcECiemN3RZIjGpvvH98b+9F7bA7E/Esmc91LDv3SjtzhPDn1k2k
 UAwmxw30/zX4lX4D6aaWAJl/dHd2dPf+9Q+qKTGOSlqhN0FpQaja/0Rc2 Q==;
X-CSE-ConnectionGUID: JRc53XDoQqyCEWfdjc8UtA==
X-CSE-MsgGUID: gBn8HGzDSPW0W4AFjqEAIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179754"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179754"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:07 -0700
X-CSE-ConnectionGUID: NlTnOVweRGOZXyBqNQKw6A==
X-CSE-MsgGUID: wwEfSu3ASgioNvok3LOqHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95897003"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/17] drm/i915/dp: Use num_joined_pipes in
 bigjoiner_bw_max_bpp
Date: Fri, 27 Sep 2024 20:52:36 +0530
Message-ID: <20240927152241.4014909-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
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

Streamline the helper to get max compressed bpp for bigjoiner case, to
effectively use num of pipes joined. This will make the addition of
ultrajoiner limitations easier and improve redability.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

