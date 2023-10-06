Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2807BB94E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410A710E4FA;
	Fri,  6 Oct 2023 13:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39B310E4FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599447; x=1728135447;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hj+tolM7oArvWSfibE/H9b7jE2lXsHUQvl0T/yH2Ss4=;
 b=MeuIGhFOgQesn7Ni4j8zikJrhb+XW1Mx/LhPCzkUii61asP1QKEuN7Q2
 4gPVMAfclr/vBbEwELGFG6eSJKTrNp/l5xNAYFxowMIgQeiElWyumPTuA
 lWiUcddq7tdLGdckFg1DjrO2tjtI8k/to1U9LToxrEZtxY9bJTw6f51jR
 t5lOgOe4UPqwjqJl8JkHYBR5IaxQspWNFEGali34lCzYYmUUGdDNmlO8c
 YgqX1n7Q0N0VvJ3X1coF86xhWGCZ1r3rIywrJ7MyZNv8zSeENCBYKDbBc
 +gVk1PxxdIIDat5x0+rMrkPL3n/4nRTfkFZLHaVNoNLC+yUoZJWyAiRk0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019139"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019139"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841513"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841513"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:24 +0300
Message-Id: <20231006133727.1822579-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_mode_valid()
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

Use the connector's DSC DPCD capabilities in intel_dp_mode_valid().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7449ff145a842..baab353154e85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1205,7 +1205,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (HAS_DSC(dev_priv) &&
-	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+	    drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)) {
 		enum intel_output_format sink_format, output_format;
 		int pipe_bpp;
 
@@ -1223,11 +1223,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 */
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_compressed_bpp =
-				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
+				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
 			dsc_slice_count =
-				drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
+				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 								true);
-		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
+		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 			dsc_max_compressed_bpp =
 				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
 								    max_link_clock,
-- 
2.39.2

