Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3837A0E36
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EB210E58A;
	Thu, 14 Sep 2023 19:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CF98910E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719608; x=1726255608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F+wC1xbrY4ajmqtj+HhCzGDeAv1ITWz7JMGjVxGqJdA=;
 b=mzEmL6M+35KT4g3yE6ZNrXqrAlaqW9Dici3k9feXIV3kc+4ebkZtIOhd
 kB9EDOIe3DVEgDY1UQitkydXH8Oo6XcADtCitNBTC8psKMYOVvlZiQn+B
 NWoce0cTUGtJ8IHdKC5jw4lr8F+zkjA3JPM/89KhMKCBkPQ9UeSP3yyhK
 znzdPKY8/j+1nPkJ31K2m2nZ00KJWx6oGhSXy1OiC5EeMgTwh7FntTZOi
 YQr92rLKbnRIV8IjY+7WbSF8suWnaA6tGm3pYLaNYc5qn9nnO/LPBeK4v
 CYOqKqWRgfdiFyyVxP+kwO/3Yw8ufcoFS6riuxA1t8bt/nxdtMsSXJ2h3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421670"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421670"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790503"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790503"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:39 +0300
Message-Id: <20230914192659.757475-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/25] drm/i915/dp: Limit the output link bpp
 in DSC mode
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

Limit the output link bpp in DSC mode to the link_config_limits
link.min_bpp_x16 .. max_bpp_x16 range the same way it's done in non-DSC
mode.  Atm this doesn't make a difference, the link bpp range being
0 .. max pipe bpp, but a follow-up patch will need a way to reduce max
link bpp below its current value.

v2:
- Add to_bpp_int_roundup() instead of open coding it. (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 3 +++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 50fe8ff354137..966163ccbd7a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2123,6 +2123,11 @@ static inline int to_bpp_frac(int bpp_x16)
 #define BPP_X16_FMT		"%d.%04d"
 #define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
 
+static inline int to_bpp_int_roundup(int bpp_x16)
+{
+	return (bpp_x16 + 0xf) >> 4;
+}
+
 static inline int to_bpp_x16(int bpp)
 {
 	return bpp << 4;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2a45eefc83ebf..d5e6813d36c8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1925,6 +1925,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
@@ -1934,6 +1935,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 								adjusted_mode->hdisplay,
 								pipe_config->bigjoiner_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
+	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
 	if (DISPLAY_VER(i915) >= 13)
 		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
@@ -2079,10 +2081,12 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
 	/* Compressed BPP should be less than the Input DSC bpp */
 	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7d84689d69fad..d38d0dd23fc39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -233,6 +233,9 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	if (max_bpp > sink_max_bpp)
 		max_bpp = sink_max_bpp;
 
+	min_bpp = max(min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
+	max_bpp = min(max_bpp, to_bpp_int(limits->link.max_bpp_x16));
+
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
 						     min_bpp, limits,
 						     conn_state, 2 * 3, true);
-- 
2.37.2

