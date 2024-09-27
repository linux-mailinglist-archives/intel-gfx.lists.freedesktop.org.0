Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F38F988828
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E500410ECD5;
	Fri, 27 Sep 2024 15:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAd1TNeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C30110ECDD;
 Fri, 27 Sep 2024 15:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450469; x=1758986469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aKOJzWxuyBrlo2jOisZTfrdikjqQ7bVcGCo6Ll/VcLc=;
 b=HAd1TNeAHLijYHufqMh3YaVz9haGvGGPYSbXIpTNbwqiYnpfIA6/hqyy
 ZgB2WAbBwlC0RUQSP/M6aU8jtbiSbViOzqsrFzxV7hB4+LonhNw/1Owtw
 LmPk+j+XRU5obUygGBZEmT7BKIDHhAKZ81oIhss2X8B245uH8uXctmsfh
 iaYwHtqgF3b/mydLyq2KkaMDiSb5MB+DNvsis/cploOsIx1AVjJsoDlEM
 t7RPHwsX2cCNkQ+fFXNGfvuCppIuZ6sXIFs5DNBv1vsbolNjmxmQHkfFI
 9fx+/8Axw+I3e3dCfwx5nDi69ONN8UM7azKkJ4nbWTUdRdMs5fTZfWyEf g==;
X-CSE-ConnectionGUID: 5ecAwDr7R2CguMa6gzo9HA==
X-CSE-MsgGUID: sh/9nm0bT7mV7cVN7X9/cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179762"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179762"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:09 -0700
X-CSE-ConnectionGUID: ufJoACMJQrOxSZp8Dx12JA==
X-CSE-MsgGUID: 44IT3QCqSxCWvu1sSQk6BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95897015"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:21:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Fri, 27 Sep 2024 20:52:37 +0530
Message-ID: <20240927152241.4014909-14-ankit.k.nautiyal@intel.com>
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

Add compressed bpp limitations for ultrajoiner.

v2: Fix the case for 1 pipe. (Ankit)
v3: Refactor existing helper separately and add only ultrajoiner
limitation. (Ville)
v4: Separate out function for ultrajoiner_ram_bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a85527a55dc0..8a32d38d21bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -896,6 +896,16 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display,
 	return max_bpp;
 }
 
+static int ultrajoiner_ram_bits(void)
+{
+	return 4 * 72 * 512;
+}
+
+static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
+{
+	return ultrajoiner_ram_bits() / mode_hdisplay;
+}
+
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
@@ -907,11 +917,18 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
 							    num_joined_pipes);
 
-	if (num_joined_pipes == 2) {
+	if (num_joined_pipes > 1) {
+		u32 max_bpp;
 		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
 							     num_joined_pipes);
 
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
+		max_bpp = min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
+
+		if (num_joined_pipes == 2)
+			return max_bpp;
+
+		if (num_joined_pipes == 4)
+			return min(max_bpp, ultrajoiner_ram_max_bpp(mode_hdisplay));
 	}
 
 	return max_bpp_small_joiner_ram;
-- 
2.45.2

