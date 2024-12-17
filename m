Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2509F4780
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBA810E8A5;
	Tue, 17 Dec 2024 09:29:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f2yoSBeu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD4110E8AC;
 Tue, 17 Dec 2024 09:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427799; x=1765963799;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A3YpixThfPIPXj5Gwyjl/2K94Ui3JyU5BalBzSNT5nA=;
 b=f2yoSBeuiC87zABDph7zZrQPKBkdj6v1WXlAF0HZKW4QqyDeMkZv57WC
 8i5rGSuTOPCC1ObVAjL/15DaLjQvo7n8weFZqo88QUvMaJ73lW+oA4XtK
 xgEmnCpnw8MaXsk4fspj05aGK29o2rDcFBW25YTVoVld8xcb9VtLsIAZc
 9JC2jTVDa5zBwm+1KNDL8nKZbC3TuQ9jE6wPNsGX398G/tWw2z/6CiRv1
 w36bKfzjp6GvJQ/D+IAMphR/GdBYxpjIEbYj6hjckmY4Wj03CQg01/9L1
 w1rVM9JaJmC3vOXSj8XdZE8KbpLFhdgIyLUsXkIOfbOBjEotPKh9GGYAV g==;
X-CSE-ConnectionGUID: TUibODBGTWiASYLZW6PGvg==
X-CSE-MsgGUID: WfUZ28LDScuKmkL1OV4nxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976157"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976157"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:58 -0800
X-CSE-ConnectionGUID: 4uZR1CvsSIiBURDAjOaq3Q==
X-CSE-MsgGUID: +LZiZiMnQw+TNavxjuVjcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052435"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 06/14] drm/i915/dp: Return int from dsc_max/min_src_input_bpc
 helpers
Date: Tue, 17 Dec 2024 15:02:36 +0530
Message-ID: <20241217093244.3938132-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

Use ints for dsc_max/min_bpc instead of u8 in
dsc_max/min_src_input_bpc helpers and their callers.
This will also help replace min_t/max_t macros with min/max ones.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9848a3ecc556..f13680c4fb80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1784,7 +1784,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(display) >= 12)
@@ -1801,14 +1801,14 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
-	u8 dsc_max_bpc;
+	int dsc_max_bpc;
 
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -2188,7 +2188,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(void)
+int intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
 	return 8;
@@ -2200,7 +2200,7 @@ bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
+	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
@@ -2247,9 +2247,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	u8 max_req_bpc = conn_state->max_requested_bpc;
-	u8 dsc_max_bpc, dsc_max_bpp;
-	u8 dsc_min_bpc, dsc_min_bpp;
+	int max_req_bpc = conn_state->max_requested_bpc;
+	int dsc_max_bpc, dsc_max_bpp;
+	int dsc_min_bpc, dsc_min_bpp;
 	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
@@ -2269,7 +2269,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
-- 
2.45.2

