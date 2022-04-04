Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20B84F167C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 15:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CAB810E387;
	Mon,  4 Apr 2022 13:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260D510EA8C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 13:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649080194; x=1680616194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gWb29PqcOsK0uiIG459ASS3GhIDjZggVQswhL81Ay/E=;
 b=ieHchOpXIgrni+H7dx8GDDYHBzh6CdOqHI/Fx6sAqc5j6pZly2nkBD7o
 1ZNmNvpjjFPlWK3ZTl2tE6rlUafWdd5yTbEcuVJzGZbmnkublEjUIKY/V
 y5PExpQhd48DVqgcNcUU4smnMp7Ka6N3sWAExLny2VJmAoUSH4YOXT0Jo
 tiMcoA+hEF9bPazSGuk2p6M9jeztPnvjvTK1kyEpVXz97MLFbtF6jDjDd
 q9+sqnAyXo1vYONUzyhuAXimkAQpAMRdNHO2SEov145iLE4tMPdmahSOv
 dRSCmUmQF35+H66a00XDYoXVuEYk4VcvZGygbpt6c0dmtcJURB3QZarir g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="260505135"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="260505135"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:49:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="569391811"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.39.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:49:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 16:49:18 +0300
Message-Id: <20220404134918.729038-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least blocks
 required per line
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

In configurations with single DRAM channel, for usecases like
4K 60 Hz, FIFO underruns are observed quite frequently. Looks
like the wm0 watermark values need to bumped up because the wm0
memory latency calculations are probably not taking the DRAM
channel's impact into account.

As per the Bspec 49325, if the ddb allocation can hold at least
one plane_blocks_per_line we should have selected method2.
Assuming that modern HW versions have enough dbuf to hold
at least one line, set the wm blocks to equivalent to blocks
per line.

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8824f269e5f5..ae28a8c63ca4 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	blocks = fixed16_to_u32_round_up(selected_result) + 1;
+	/*
+	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
+	 * as there will be at minimum one line for lines configuration.
+	 *
+	 * As per the Bspec 49325, if the ddb allocation can hold at least
+	 * one plane_blocks_per_line, we should have selected method2 in
+	 * the above logic. Assuming that modern versions have enough dbuf
+	 * and method2 guarantees blocks equivalent to at least 1 line,
+	 * select the blocks as plane_blocks_per_line.
+	 *
+	 * TODO: Revisit the logic when we have better understanding on DRAM
+	 * channels' impact on the level 0 memory latency and the relevant
+	 * wm calculations.
+	 */
+	blocks = skl_wm_has_lines(dev_priv, level) ?
+			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
+				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
+			fixed16_to_u32_round_up(selected_result) + 1;
 	lines = div_round_up_fixed16(selected_result,
 				     wp->plane_blocks_per_line);
 
-- 
2.25.1

