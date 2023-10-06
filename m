Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 937087BB931
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB5110E4EE;
	Fri,  6 Oct 2023 13:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1875010E4EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599433; x=1728135433;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TTFTTPtTH97eFCVrqP2rpnm/G2Xi00Oq6l2l5jatXIA=;
 b=FUF+HogrTW/kwmb++TOrX1WXJBAxudPiIdWHKqwFJ9MfZS8e14KnGOVb
 qgy5d4nmS7zk8iD+N6uQxWJr0GQO2bQGObj6yZqr4Lj46Z9En+E3+YfMi
 76XBJekMnnl/Ad2ega9gJVLjtOoAWWUvY9hRsYpvpXR4E0JQ+jasgDE/Y
 BCFlNuMTIYPDE3jieEOvRQiU/iT46r0c3yhfweFd42UXPkvnHo8j5pye0
 LesDDdqpLj75KLoHTFQlUIkM63LGhG5b7Ki0wAaYvh37vXYr2CBq9xRgE
 yxGzPyqlu/DmEArsfpcpguWNYwLRrMadfjL9YGR1tiDxsdYtcuxw90006 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019087"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019087"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841387"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841387"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:13 +0300
Message-Id: <20231006133727.1822579-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/19] drm/i915/dp: Use connector DSC DPCD in
 i915_dsc_fec_support_show()
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

Use the connector's DSC DPCD capabilities in i915_dsc_fec_support_show()
instead of the version stored in the encoder. Atm the two are identical,
but a follow-up patch will store the (MST) connector specific version
in the connector.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 834a8e50ea4fb..2836826f8c05f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1234,19 +1234,19 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 		seq_printf(m, "DSC_Enabled: %s\n",
 			   str_yes_no(crtc_state->dsc.compression_enable));
 		seq_printf(m, "DSC_Sink_Support: %s\n",
-			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
+			   str_yes_no(drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)));
 		seq_printf(m, "DSC_Output_Format_Sink_Support: RGB: %s YCBCR420: %s YCBCR444: %s\n",
-			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
 								      DP_DSC_RGB)),
-			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
 								      DP_DSC_YCbCr420_Native)),
-			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
 								      DP_DSC_YCbCr444)));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
 			   str_yes_no(intel_dp->force_dsc_en));
 		if (!intel_dp_is_edp(intel_dp))
 			seq_printf(m, "FEC_Sink_Support: %s\n",
-				   str_yes_no(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
+				   str_yes_no(drm_dp_sink_supports_fec(connector->dp.fec_capability)));
 	} while (try_again);
 
 	drm_modeset_drop_locks(&ctx);
-- 
2.39.2

