Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15909E3677
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5871610ECA0;
	Wed,  4 Dec 2024 09:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="glk50YPO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF28110ECA0;
 Wed,  4 Dec 2024 09:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304262; x=1764840262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eUNVgoUbKZe1X6eFyNC4IPo08NkDgIXn1bR/uQJoZrw=;
 b=glk50YPOhKrh4Zy+KltSDrA8vvepcXR5pAWs7TLQM9UJbPC+AkNg5yjj
 lGMCvQj/qzmR091PKTNwkYPC0AaQyHNsbJ426CtKAjaFtjmY/vsj8VFpC
 0vkt+plXwpgkw1ACWMLuW6ABqjEg59vvmPgUvH6R73Hnezm61/Ly41jkt
 YsRMvRn4Y9tBmPUt1UmwBJWvODCB6zyFPQMU36dGlbbj25la0W7gg7rgU
 bDJG4ynGZTXUkQQJttVbUUvfoM2irX+dppGaRYocvLXeoteaL36X75TkT
 g0IBB6XuQDOOrF6UrjIpUHFjEKCCZPlvGdto0qdvufRR01XxRGCo8bnXm Q==;
X-CSE-ConnectionGUID: FiyklYSvT7SZI7R8iW4WYQ==
X-CSE-MsgGUID: BcUdX1vvQfWa002kOrEnhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038476"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038476"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:22 -0800
X-CSE-ConnectionGUID: lBkTpEN3Td6ZN5Nj3ylNVg==
X-CSE-MsgGUID: hjEGeohgS8mOcITl8FkN6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555180"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:20 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 13/14] drm/i915/dp: Make dsc helpers accept const crtc_state
 pointers
Date: Wed,  4 Dec 2024 14:56:41 +0530
Message-ID: <20241204092642.1835807-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8da85eee65a5..60693c301c3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1972,7 +1972,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    struct intel_crtc_state *pipe_config,
+					    const struct intel_crtc_state *pipe_config,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -1997,7 +1997,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	return 0;
 }
 
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -2015,7 +2015,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 }
 
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 45b37d322565..1488e18ea8b0 100644
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

