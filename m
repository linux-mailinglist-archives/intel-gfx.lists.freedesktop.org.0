Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7AA504767
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Apr 2022 11:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7AB10E0F7;
	Sun, 17 Apr 2022 09:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB35810E0F7
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Apr 2022 09:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650187878; x=1681723878;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pGmA5muJi2+xqq8STh+3a2MH6WswgNA+0/aMmR98FPk=;
 b=kxTkYzIz//Xw0plZa7gmEZIsN8BN3fYNHzvtBMWUrZ/dqReDdWgDqcUB
 RahZtHBACUPN+B9EFRwEnZIXtztvEO1k6hDPxlK0LowT/lES60fNt0Eok
 3SaDdfsg4zEiQPnQjxx7KI/P8nihBxYxGjwBxsTxHZmr4q46qVQ/l9+kk
 Y3f6CdcPaODx66DUZyK5fh8v0wTk9Qm6i8BGWN30HSbYHOo4owwxwydGm
 xLAC2Xr1eRn23bVcxrHZZ1shacK5H6cUfaWE1ZTd3QP1PvObpg3l0ddRK
 kmJ3m+VJsAwFJh1vgVWLzGRmtjztxwbBl6gKsvb5t8nM/NIg9QOPcdizS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="349824224"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="349824224"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 02:31:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="575136043"
Received: from mabushan-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.44.245])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 02:31:16 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Apr 2022 12:31:05 +0300
Message-Id: <20220417093105.729014-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915: program wm blocks to at least
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

v2: styling and comments changes (Ville)
v3: Updated the reviewed-by tag
v4: max_t to max and patch styling (Ville)

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4321
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 594ab59e4991..ee0047fdc95d 100644
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
+		blocks = max(blocks,
+			     fixed16_to_u32_round_up(wp->plane_blocks_per_line));
 	lines = div_round_up_fixed16(selected_result,
 				     wp->plane_blocks_per_line);
 
-- 
2.25.1

