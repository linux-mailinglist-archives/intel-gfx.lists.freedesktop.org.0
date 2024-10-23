Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D099ABF52
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174C210E75B;
	Wed, 23 Oct 2024 06:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwYNLldY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7FA10E766;
 Wed, 23 Oct 2024 06:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666269; x=1761202269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7dfMhnorMMaNUpOgkl6t1AcTCVe+qyMxdojYeV1HHjw=;
 b=FwYNLldYHj54JNqkiWp226EiK7GM7XMQSCz0jt83LbHiMhwJpkzz3ml1
 W6q9kIijAmdFHpFERV+jD+y5gJDqb5HTH7fbItCU4IlCipWk04w7IgQ25
 MX5LgNJ0B/LaEdlB/6Ya+QpHlXNhwskPJqARvwLdN/OxoWbLoaCNfQQNJ
 Y8ES3ImBgz0meP4P32PLkryrSBb0FBB02lR7IYzT5qiRuxYcNMRHTzYJT
 QiceU8QvXvWUu/PtiBk6km0feP74ytKeWkhkis/hJ80QN3yJ+UqZrynRs
 1R/RZ5ep2OiN28TfQ5yOzQ6+E11MxvrGsSDfjdUlRh8A8sqCc8YJrmfVj g==;
X-CSE-ConnectionGUID: 5yQ6rXjZRx2QzugtwuVgNg==
X-CSE-MsgGUID: 22Hofui4Qx2jfv3V/nwUJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097514"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097514"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:09 -0700
X-CSE-ConnectionGUID: bs0cH3j6QUKHK1+rOy2O+g==
X-CSE-MsgGUID: bmEoADb8QcCtKFCxr7/CfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691640"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 16/16] drm/i915/dp: Add Check for Odd Pixel Requirement
Date: Wed, 23 Oct 2024 12:22:57 +0530
Message-ID: <20241023065257.190035-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Check if Odd pixel is required during DSC compute config and update
the crtc_state to track the presence of odd pixels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 026254687a8d..b512e2dd9b37 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2366,6 +2366,14 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool intel_dp_dsc_needs_odd_pixel(int hdisplay, int replicated_pixels, int num_pipes)
+{
+	if (!replicated_pixels || num_pipes == 1)
+		return false;
+
+	return ((hdisplay + replicated_pixels) / num_pipes) % 2;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2452,6 +2460,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						adjusted_mode->crtc_hdisplay,
 						pipe_config->dsc.slice_count,
 						pipe_config->output_format);
+	pipe_config->dsc.has_odd_pixel =
+		intel_dp_dsc_needs_odd_pixel(adjusted_mode->crtc_hdisplay,
+					     pipe_config->dsc.replicated_pixels,
+					     num_joined_pipes);
 
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-- 
2.45.2

