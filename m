Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E29798897F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 19:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F3410ECF8;
	Fri, 27 Sep 2024 17:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+wXiYOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CCCD10ECF6;
 Fri, 27 Sep 2024 17:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727456576; x=1758992576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AZpHndGzg32BuKtyBNPNW2BzAqGFg79BL4oiKMoVenM=;
 b=S+wXiYOBBr8Q3UpMuAdttrUCKaJ3lA0z0iWsbbhdKFBgQNIXAUKbDhw+
 14pazMBGQ4cyHkwGxLqpNk9zMEL/bobDt2XsX0lau9K4iWVIlHnhMxoQn
 wxMQfMGA903DgbrxdixlU6sSjJ57CD34PQXhBMpm8p+hmCdFLsXkZXaVz
 CR1OQwxQ+E50C4sMrMFB91yz1N1jBrv+Hp9q6wHRYRdg/+mUPJtVW7QKd
 A+dzVY82oVv/aLypiUABYfJ1AqyJHJa0ls2qAF8+nQsx54SEe8V1k5A22
 qHcM2ndfF6nCt9RBLHB0lu2jBDZD6pCKgFpYUGUCLln/3EDlKx/Ii3DcN g==;
X-CSE-ConnectionGUID: FOJ9dNrERcqN5RornRcACw==
X-CSE-MsgGUID: y7CY8Xj7TXy5vGRg1MRvTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26785781"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="26785781"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 10:02:56 -0700
X-CSE-ConnectionGUID: 3GAIUYjuRYq973JL7jLEug==
X-CSE-MsgGUID: kpGetgKqQAO/O+2BcvHG2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72169805"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 10:02:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Date: Fri, 27 Sep 2024 22:34:50 +0530
Message-ID: <20240927170450.4072245-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927152241.4014909-14-ankit.k.nautiyal@intel.com>
References: <20240927152241.4014909-14-ankit.k.nautiyal@intel.com>
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

Add compressed bpp limitations for ultrajoiner.

v2: Fix the case for 1 pipe. (Ankit)
v3: Refactor existing helper separately and add only ultrajoiner
limitation. (Ville)
v4: Separate out function for ultrajoiner_ram_bits.
v5: Make the helper function more concise. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a85527a55dc0..d8a4a6fa1514 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -896,25 +896,31 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display,
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
 				       int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(&i915->drm);
-	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
 
-	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
-							    num_joined_pipes);
-
-	if (num_joined_pipes == 2) {
-		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
-							     num_joined_pipes);
-
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
-	}
+	if (num_joined_pipes > 1)
+		max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock,
+							    num_joined_pipes));
+	if (num_joined_pipes == 4)
+		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(mode_hdisplay));
 
-	return max_bpp_small_joiner_ram;
+	return max_bpp;
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
-- 
2.45.2

