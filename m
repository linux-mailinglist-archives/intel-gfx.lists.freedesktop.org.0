Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C02A9E3671
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F311910EC9B;
	Wed,  4 Dec 2024 09:24:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c9aA4wKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848AE10EC9A;
 Wed,  4 Dec 2024 09:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304250; x=1764840250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7q0EpaXknYSjq9HhFrYpzKZXNt9Hty1VaouFc5uIRGA=;
 b=c9aA4wKzAl2l7Xcaxjk99K1OBKAmXrDzpRRVX4zxmZ4QFGyuyg3miuVm
 7/nqm4W7zrTQhNcant2Bo+l+jYkhflFWgSyY+qOA+tICPpYb/J4t+df3w
 lgRAE9BUQdP6+K7tECamcWy8mZCtZcuI7C+I4FBKdbLJ2bSdNktwnokTC
 H6WPhn9+YNeOjRL6WSAGA/v0dkX3QgoXPTpmatl86J0a2CeCHP3vUfodj
 X8xoGdqw3ksHXenjcWLpL+lrRJ/3jzBv6LI5EaG3D/D2IkpAAiMbWqtYX
 zwDBqWcsZSRH/8QgXgl08ntklX3kGCv9D6Jr+Yjsc9vqbzWJ5dvHRjndK Q==;
X-CSE-ConnectionGUID: u9RAUvh3SymKOuCHsGfP5w==
X-CSE-MsgGUID: bNHo77IzTsyrMdcWMj89yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038465"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038465"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:10 -0800
X-CSE-ConnectionGUID: cfIrzN7rS5u1KpENrc6iaA==
X-CSE-MsgGUID: EitGm/8TR5OonykMYIzTpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555135"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 07/14] drm/i915/dp: Use intel_display in
 intel_dp_dsc_max_src_input_bpc()
Date: Wed,  4 Dec 2024 14:56:35 +0530
Message-ID: <20241204092642.1835807-8-ankit.k.nautiyal@intel.com>
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

Replace struct drm_i915_private with struct intel_display in the helper
intel_dp_dsc_max_src_input_bpc().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3767d3870a19..edfe084dca39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1781,12 +1781,12 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return 12;
-	if (DISPLAY_VER(i915) == 11)
+	if (DISPLAY_VER(display) == 11)
 		return 10;
 
 	return 0;
@@ -1795,12 +1795,12 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int dsc_max_bpc;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
@@ -2196,9 +2196,10 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
+	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
@@ -2238,7 +2239,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int max_req_bpc = conn_state->max_requested_bpc;
@@ -2259,7 +2260,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-- 
2.45.2

