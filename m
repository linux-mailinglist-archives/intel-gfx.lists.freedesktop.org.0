Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA89F09D8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC4F10EFAF;
	Fri, 13 Dec 2024 10:41:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hfDePfKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E8E10EFAF;
 Fri, 13 Dec 2024 10:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086485; x=1765622485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qpXulv7KoVOgGPGcdxRQu6kjqNm7bmgfSFCFVt/q+ZQ=;
 b=hfDePfKwZX4WFKKWJ56OxReVwjrze68Rof/3TPGIpxwFLS+OvLenM0+P
 zEEjxZenkJEIDHjnBwJD+mNqxxE6Spuf5GpXrSGVTRg46ztPlJiOWIN61
 0oNZ3R9f5guJw54vVazrAZllJUTMFM+QuMrKlz9o0L6Gg7OWzJpGIcuT8
 ikvTjMkHBvS350T+b3XZEOG3zJTVBQgV2UC5mIzfvTRw03FG28b6nnAe0
 tpSw+Cb7cg7eahD7GWFfYq9jnePzCOfTQ5+SDL/nFFeFHCOV72vrsPh+9
 WFNUqkF/OBD1r1fp4SwdefMBa8rlKHBnaiFJ/jEukO5+NimQOh+EkrStb w==;
X-CSE-ConnectionGUID: e4zE32YFRNydfVeBiWnuyg==
X-CSE-MsgGUID: H368gogkSOWkjdvLWkaPvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38470617"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38470617"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:24 -0800
X-CSE-ConnectionGUID: IRNVzHJIRQCY3b5N1TdKAg==
X-CSE-MsgGUID: d9BkWLtTTu24GkI9gRXarQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119763451"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 13/13] drm/i915/dp: compute config for 128b/132b SST w/o DSC
Date: Fri, 13 Dec 2024 12:39:57 +0200
Message-Id: <9264e77e71459569d83cd8dc9094500fd2ae0fa3.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Enable basic 128b/132b SST functionality without compression. Reuse
intel_dp_mtp_tu_compute_config() to figure out the TU after we've
determined we need to use an UHBR rate.

It's slightly complicated as the M/N computation is done in different
places in MST and SST paths, so we need to avoid trashing the values
later for UHBR.

If uncompressed UHBR fails, we drop to compressed non-UHBR, which is
quite likely to fail as well. We still lack 128b/132b SST+DSC.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9b930622b8ce..68ce9765eaf2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2519,8 +2519,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
-	/* FIXME 128b/132b SST support missing */
-	if (!is_mst)
+	/* FIXME 128b/132b SST+DSC support missing */
+	if (!is_mst && dsc)
 		limits->max_rate = min(limits->max_rate, 810000);
 	limits->min_rate = min(limits->min_rate, limits->max_rate);
 
@@ -2634,6 +2634,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		 */
 		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
 							conn_state, &limits);
+		if (!ret && intel_dp_is_uhbr(pipe_config))
+			ret = intel_dp_mtp_tu_compute_config(intel_dp,
+							     pipe_config,
+							     pipe_config->pipe_bpp,
+							     pipe_config->pipe_bpp,
+							     conn_state,
+							     0, false);
 		if (ret)
 			dsc_needed = true;
 	}
@@ -3171,12 +3178,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_link_compute_m_n(link_bpp_x16,
-			       pipe_config->lane_count,
-			       adjusted_mode->crtc_clock,
-			       pipe_config->port_clock,
-			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
-			       &pipe_config->dp_m_n);
+	if (!intel_dp_is_uhbr(pipe_config)) {
+		intel_link_compute_m_n(link_bpp_x16,
+				       pipe_config->lane_count,
+				       adjusted_mode->crtc_clock,
+				       pipe_config->port_clock,
+				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
+				       &pipe_config->dp_m_n);
+	}
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
-- 
2.39.5

