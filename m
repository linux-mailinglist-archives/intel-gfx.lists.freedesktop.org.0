Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F14F67CA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 19:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C83610E02B;
	Wed,  6 Apr 2022 17:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E8910E02B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 17:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649267006; x=1680803006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EyeuCt3i1ivmC+B3n+NHaPwTCNzWnyVACVwQwfwxdR4=;
 b=bBcpwZvuNEjdHHPWcIbTpvR5L9vjDLKPRzGf+/UPVRDpr3yO4E+g3w9O
 PVgABc+oTbiCypuZkw/Y0fKR8Bh7oOQkva8zicdLmT62+xl5H/RmeLVcw
 QM+Wx4sqOJlduS7hMhSsOOxi8SERvh1bPRtTcFvG0OKUhaXls7tInu5sf
 A/9wNFZrwj5dVRIJdnmeB3StCHELvo/DX4NEWrt+IFkZBi/D19/PZTFbB
 yJEdKACeOPg7sv+s7qhF8RN+DYM5nBKZt6TgWmO0nRu9MMJwbWRWGMIXf
 8ucRAqOe82UGBoRiGz9L9tfj8Qfa+eUk+Jr0rxRYXtfra4pT9xDvHLiDq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324283272"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="324283272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:43:25 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="570672874"
Received: from jproschw-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:43:23 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 20:43:11 +0300
Message-Id: <20220406174311.82104-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: program wm blocks to at least
 blocks required per line
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

V2: styling and comments changes (Ville)
V3: Updated the reviewed-by tag

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8824f269e5f5..d284ec8aff21 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5475,6 +5475,25 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	}
 
 	blocks = fixed16_to_u32_round_up(selected_result) + 1;
+	/*
+	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
+	 * as there will be at minimum one line for lines configuration. This
+	 * is a work around for FIFO underruns observed with resolutions like
+	 * 4k 60 Hz in single channel DRAM configurations.
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
+	if (skl_wm_has_lines(dev_priv, level))
+		blocks = max_t(u32, blocks,
+			       fixed16_to_u32_round_up(wp->plane_blocks_per_line));
 	lines = div_round_up_fixed16(selected_result,
 				     wp->plane_blocks_per_line);
 
-- 
2.25.1

