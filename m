Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F56786956
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE42510E4A6;
	Thu, 24 Aug 2023 08:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC8910E4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864308; x=1724400308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P3ihYbokDnC4+dRl+tcyFRvL/Gec+4rISFi1kCOPwps=;
 b=FqY23+TGiH5qT6Pd+ZDyqZGfY1uy2cqaBL4inFAVdpyXUZbke0n/kbsA
 MYv6oMRt0I2W12XS/K7hEzI+uESEL5/juk1q57VH3bW4hT8MPpmQh85I3
 m4pODZBtxvNhArGgeMRYibnrLDYB1mX5GqCKK7gvO6Zz4oHFd0l5g86IK
 m0z3ZoDL5InQF7mk97awC5UDum3SXEmMNk0Ag2RRrCI10yXohmEKK1743
 IFx9cxliD1tZ2quChZT8DE6Yip0+gUL9C3sxE/JRovGXrZl4acMh2PXE4
 +Ppn8rCOqOMu4hMFwYeD+FPHJzKeLsKl22HeffYWU0M0pUEH2B0TTJiVs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345849"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345849"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710289"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:00 +0300
Message-Id: <20230824080517.693621-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/22] drm/i915/dp: Limit the output link bpp
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
index a0a404967b5d2..b143085b399eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2113,6 +2113,11 @@ static inline int to_bpp_int(int bpp_x16)
 	return bpp_x16 >> 4;
 }
 
+static inline int to_bpp_int_roundup(int bpp_x16)
+{
+	return (bpp_x16 + 0xf) >> 4;
+}
+
 static inline int to_bpp_frac_dec(int bpp_x16)
 {
 	return (bpp_x16 & 0xf) * 625;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ce861a7fd418..6637bd4768bf7 100644
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
@@ -2078,10 +2080,12 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
index 2b78a3a8966f3..525766206fce5 100644
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

