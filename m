Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6516A07DA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 12:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D4E10E4AB;
	Thu, 23 Feb 2023 11:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7A210E4AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 11:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677153468; x=1708689468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VNNitTKey0U0qsbhE+D/ZGmNoAfZINnmdAEY9ptyyNs=;
 b=nJFMmSShsqiavG7UiBHPnvOx1e0aCa7Q08UIRPm0InwVKCpVVvgwjxkh
 ojzox+3padJihuwNNNFAxRc6e3mrgmq9TtgVd75wH+HCmuS0gzJLhrQ8c
 JxcutvUq4NmjaEOvx1DKjiB2ktO5E9tDBG8KXsj1qldWrwi0HejJILXEf
 UFDmav34rugqma363zyc7pZIbn5b6YjCQ3xnkZOj/W/lD7ZQSHfOZZv1a
 YKvcllFRrLtE4CgXHCdL7tLAEkd91RHqF17cjzRYtzkzvZBBCV6E6UQnT
 b0yyhIZEHiFdLyn4H7r3kw5tphiNF4fj5QTB8d9+bm9imr0zQ5AiS6kQ9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="419419544"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="419419544"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 03:57:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="736336560"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="736336560"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 03:57:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 17:25:09 +0530
Message-Id: <20230223115509.3980226-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Don't roundup max bpp,
 while computing compressed bpp
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

While computing compressed bpp, maximum value of bits_per_pixel is
calculated that can be supported with the given link configuration
for a given mode. Avoid rounding up of this max bits_per_pixel.
Also improve documentation for computing max bits_per_pixel.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b77bd4565864..51e9d0b2d8b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -716,9 +716,19 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
 	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
 	 * for MST -> TimeSlots has to be calculated, based on mode requirements
+	 *
+	 * Due to FEC overhead, the available bw is reduced to 97.2261%.
+	 * To support the given mode:
+	 * Bandwidth required should be <= Available link Bandwidth * FEC Overhead
+	 * =>ModeClock * bits_per_pixel <= Available Link Bandwidth * FEC Overhead
+	 * =>bits_per_pixel <= Available link Bandwidth * FEC Overhead / ModeClock
+	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock) * 8 (TimeSlots / 64) /
+	 *		       (ModeClock / FEC Overhead)
+	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock * TimeSlots) /
+	 *		       (ModeClock / FEC Overhead * 8)
 	 */
-	bits_per_pixel = DIV_ROUND_UP((link_clock * lane_count) * timeslots,
-				      intel_dp_mode_to_fec_clock(mode_clock) * 8);
+	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
+			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
 
 	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
 				"total bw %u pixel clock %u\n",
-- 
2.25.1

