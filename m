Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FB3A41922
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 10:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16D110E162;
	Mon, 24 Feb 2025 09:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/hix/Tu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB25310E162;
 Mon, 24 Feb 2025 09:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740389503; x=1771925503;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bfItUmQsB/7SrMr3C2eek7mPEaO9V90oXjAzGfWy8ro=;
 b=U/hix/TuYB2ESB1hnubFZG5r+9LCeR5issTNzwXMwaCf6PsaEiodmVBi
 B1DHiSyIdLLHQeFQgjWVH5ymlSrv20y+8MdxsacJt20OwCnMfeHFOmDJk
 Ey66Wd1aPUyG8MgBJi4o/2EsBJ10aSRE02rAL1TKoimd7cATIDqJzpd3k
 wqTzmBbR2d9EOo3NlPTipOuhYWnuHQpT/ntXhKqZKAAeJOecnFvrPtJLm
 HoaSkCeHgI/s9FkW5vJTZS1STzdKXs0ruW85G9Zm8zzW5qxRF8M2sgFw+
 GCleva53X0xON4s6SUz9NMP9IgawPK+vuLm7ZGL0divbdaOMyNJnQqX8s A==;
X-CSE-ConnectionGUID: AUmf7WkQShWXiFjV805A0w==
X-CSE-MsgGUID: 1vzxUyENSeyww5ffbNY/aA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="40373928"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="40373928"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:31:42 -0800
X-CSE-ConnectionGUID: 2lv553+IQ5OMDgE5E4UMFw==
X-CSE-MsgGUID: vcxsiu44ToimB+tBfy/q2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115737655"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:31:41 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/dp_mst: Fix encoder HW state readout for UHBR MST
Date: Mon, 24 Feb 2025 11:32:42 +0200
Message-ID: <20250224093242.1859583-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

The encoder HW/SW state verification should use a SW state which stays
unchanged while the encoder/output is active. The intel_dp::is_mst flag
used during state computation to choose between the DP SST/MST modes can
change while the output is active, if the sink gets disconnected or the
MST topology is removed for another reason. A subsequent state
verification using intel_dp::is_mst leads then to a mismatch if the
output is disabled/re-enabled without recomputing its state.

Use the encoder's active MST link count instead, which will be always
non-zero for an active MST output and will be zero for SST.

Fixes: 35d2e4b75649 ("drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout")
Fixes: 40d489fac0e8 ("drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()")
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7937f4de66cb4..8c8b53414da67 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -890,7 +890,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			    encoder->base.base.id, encoder->base.name);
 
 	if (!mst_pipe_mask && dp128b132b_pipe_mask) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 		/*
 		 * If we don't have 8b/10b MST, but have more than one
@@ -902,7 +902,8 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		 * we don't expect MST to have been enabled at that point, and
 		 * can assume it's SST.
 		 */
-		if (hweight8(dp128b132b_pipe_mask) > 1 || intel_dp->is_mst)
+		if (hweight8(dp128b132b_pipe_mask) > 1 ||
+		    intel_dp_mst_encoder_active_links(dig_port))
 			mst_pipe_mask = dp128b132b_pipe_mask;
 	}
 
@@ -4131,13 +4132,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST) {
 		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 		/*
 		 * If this is true, we know we're being called from mst stream
 		 * encoder's ->get_config().
 		 */
-		if (intel_dp->is_mst)
+		if (intel_dp_mst_encoder_active_links(dig_port))
 			intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
 		else
 			intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
-- 
2.44.2

