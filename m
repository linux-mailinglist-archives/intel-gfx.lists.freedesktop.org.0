Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3392E9D3879
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCEB10E6FF;
	Wed, 20 Nov 2024 10:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FApySC3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09AC10E6F5;
 Wed, 20 Nov 2024 10:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098947; x=1763634947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GCM3Jw2O015iDUBpV+iRaISX64nJUxBZIEtBmdXPf+w=;
 b=FApySC3+4qP2r6jDip1COLVn9kzeX1Ezgx0jFP7Qg3IGIjyZtiC3QXEn
 quLMm62fakLuUCeEozlzjMbOtlo5x5EdNvJgsgNZcnFoq3fyoJyZyMp8B
 cq0IREPWJgAfixaMMeGpVhzswfIO6q/UN5P80Fc/SX0+YFKsSVyHU4tCW
 WMfjLEm5qRexn3ojGRg2TZ4ulkNgW2illR1RVDLP/jt7mE15bf3B71XJu
 /3UCwg1rhGvqD65Jjb96fJry4xFl06/b8JwDquNOkRM51jE7gK7R8B7Jp
 J60lJvIH90OhJHHSB808L6JavARfvfPwamW+8YbwPiS4objyGBVv236lf g==;
X-CSE-ConnectionGUID: 56bwAz1PQkOT/Fb3QCgz7Q==
X-CSE-MsgGUID: I5A1iU3eR2CVgYpBB2G6uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520070"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520070"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:47 -0800
X-CSE-ConnectionGUID: pPlO+yHjREG2F7pKk5Kh4A==
X-CSE-MsgGUID: WFPX62DtQn+QyagvYm7y0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674113"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 11/12] drm/i915/dp: Make dsc helpers accept const crtc_state
 pointers
Date: Wed, 20 Nov 2024 16:08:01 +0530
Message-ID: <20241120103802.134295-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Modify the dsc helpers to get max/min compressed bpp to accept
`const struct intel_crtc_state *` pointers instead of
`struct intel_crtc_state *`.

These helpers are not supposed to modify `crtc_state`.
Accepting const pointers will allow these helpers to be called from
functions that have const pointer to crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cd3ae2db1a9..1adde61c5b76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1980,7 +1980,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    struct intel_crtc_state *pipe_config,
+					    const struct intel_crtc_state *pipe_config,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -2005,7 +2005,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	return 0;
 }
 
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -2023,7 +2023,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 }
 
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 973b2aa0da1d..eac517c1d445 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config);
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-- 
2.45.2

