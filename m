Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A357A9DF1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D24A10E60B;
	Thu, 21 Sep 2023 19:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9773A10E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325906; x=1726861906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X7kV+TtWYm0E6L/LJt7RDE5muBcWDXbUHTVu65oiBB8=;
 b=g2s19Mus8bic/30T+3VY7hkiWl3iwiCQAZq8wo+iYBiw53V02CC3z2Ub
 Ts1fdcMD4hpHAWV8GqMclypDxj40DlMkGrsHpq7D/0Ues7UbF76vEVrBW
 Q9vEfscGqNXZJ0lHYRp7WLi3+7hiaGfGSgDnu0nT9CAlOiRPc4p/Jptun
 IYsHd6kS4zVlrQkkWmtVDDZC6jWJM+TXHfSkiZoaxSpsqMEtfOtAOg8RD
 nOpaOxZHJvx55HGvQpe2Y/Wp+rrbSqTRsqQbCpx/JNr8fR0ohN0J7wxIt
 q0S5Ku22ON6nX96koirst1/yr5Z8CfXVnfF+sPcQOjteMwb8G223x/LfK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523076"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523076"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523729"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523729"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:53 +0300
Message-Id: <20230921195159.2646027-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/dp: Limit the output link bpp in
 DSC mode
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 3 +++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a71af7ef07379..3c6bb1cb5b441 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2128,6 +2128,11 @@ static inline int to_bpp_frac(int bpp_x16)
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
index b48cbde35a04a..cfdbff74eec19 100644
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
index 32327293bd437..d84eb06269a9c 100644
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

