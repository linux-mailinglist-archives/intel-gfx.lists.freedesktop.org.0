Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D890C63FE3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4C810E364;
	Mon, 17 Nov 2025 12:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e1MHBeV7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F6110E35F;
 Mon, 17 Nov 2025 12:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381385; x=1794917385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BTtIA09D+tao0NrqJwdU2niaCC9C8BrBRygzucJ5px8=;
 b=e1MHBeV7dnl32IjDM4FAAZmPlxEXs3sa1G6HkCpTPD8MZjodwkaD+FgC
 DmL8G3B2xZH+AHeSQO3CBYXsNpE++3uBRP0fTggXfnIUoKVakzfZbvPn8
 GCecARxWhUGaiGNM+YvkeDtgkoat1s4vPq9k+0nUVXKNTzL+Oc0/lPt+u
 jiTDwLIWZkCbC7zSmJwjxQlWy/2FU7zQn5egAP/pmuO5GjJIz8SGAqLfw
 eTrSd7rkjcCh3rY3JGuNT8Dq1dEORBBEutj/aE448IuVYNdihlnL6/Ayl
 4qNfh/lXZrRUASg2YKhNqWw/7dbuRl8Pj5Xc4ggBNUDqtWiMhvzsdbUeB Q==;
X-CSE-ConnectionGUID: 2qokmysGT4OXI8OKgriTGw==
X-CSE-MsgGUID: PISqhxD0SA+KyVH4bK8lJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945777"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945777"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:45 -0800
X-CSE-ConnectionGUID: zYPWCbFRTK2djvCs5n79vA==
X-CSE-MsgGUID: a1swCAs7Rl+Ey8BIug247Q==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:43 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 1/8] drm/i915/cmtg: enable cmtg LNL onwards
Date: Mon, 17 Nov 2025 17:12:09 +0530
Message-Id: <20251117114216.1522615-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
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

Introduce a flag for cmtg. LNL onwards CMTG support will be added.
Set the flag as per DISPLAY_VER() check.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 38702a9e0f50..7b8343755c90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1351,6 +1351,9 @@ struct intel_crtc_state {
 
 	struct drm_rect psr2_su_area;
 
+	/* CMTG Enable */
+	bool enable_cmtg;
+
 	/* Variable Refresh Rate state */
 	struct {
 		bool enable, in_range;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..3f7da4c08665 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3421,6 +3421,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
+	if(DISPLAY_VER(display) >= 15 && intel_dp_is_edp(intel_dp)) {
+		pipe_config->enable_cmtg = true;
+		drm_dbg_kms(display->drm,"ANI-DBG: intel_dp_compute_config\n");
+	}
+
 	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp, connector,
 							pipe_config);
 }
-- 
2.29.0

