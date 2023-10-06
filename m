Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 832AC7BB93B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FB410E4FD;
	Fri,  6 Oct 2023 13:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6737310E4F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599441; x=1728135441;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ayNiyw2boDpDX2Cn5/3kns3NEWJaoXcxjDE+i0vUcx8=;
 b=YUBz8mfhfWtsiX9CZytNZ4sLsaFnhkn5b2uSODwj0pUZ2BBZDtwmmpgh
 pkGbmAEbk5nwt49vB/qLx2als30msT8zQykRjT4jS9cLEeui/mKwfYKCO
 uiZvktWtxZhIJCJDc4DE95lVYSa8lQ6u3TGp8L5yUqw++bNSn829AQlWN
 8CD61WCAN1YA17sUX1rrgx9Cd2KwspHYXpUxdBrNiAePMyajSY/QzMFmO
 IFbpELOz17gvs2taQNymQ2iz7Gdvtm2Y/GENu1wzRR9iTuOE2O5oIEfmP
 z3ShbJby0adbsNuG9klZ0EMMEHlZ86JLv6/atE2vZaVwwpc9bpg3mn6AJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019109"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019109"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841445"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841445"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:18 +0300
Message-Id: <20231006133727.1822579-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/19] drm/i915/dp: Pass connector DSC DPCD to
 drm_dp_dsc_sink_supported_input_bpcs()
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

Use the connector's DSC DPCD capabilities in
drm_dp_dsc_sink_supported_input_bpcs().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff4090a602b4b..1bb00ac655c78 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2037,7 +2037,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	 * Get the maximum DSC bpc that will be supported by any valid
 	 * link configuration and compressed bpp.
 	 */
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd, dsc_bpc);
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
 	for (i = 0; i < num_bpc; i++) {
 		pipe_bpp = dsc_bpc[i] * 3;
 		if (pipe_bpp < dsc_min_bpp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3ff429c30f300..303734ab7ef4e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -185,8 +185,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 						struct drm_connector_state *conn_state,
 						struct link_config_limits *limits)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -209,7 +207,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
 	min_bpp = limits->pipe.min_bpp;
 
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
 
 	drm_dbg_kms(&i915->drm, "DSC Source supported min bpp %d max bpp %d\n",
-- 
2.39.2

