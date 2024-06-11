Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D49A903B72
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09EF10E5FF;
	Tue, 11 Jun 2024 12:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OaXXK8Wv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C6710E600
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107529; x=1749643529;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DTMrIgPdMlEMBXYD+V/luChBYFM2NmDJNoOTMOM3VrM=;
 b=OaXXK8WvVTfTCgXeKqwZMqnqRIjbYS1ac3u81unsH3Y59AaH+8ZIJrKk
 OQlfNYre/OyDWep6ZOcf/i0z7qO5+/d21hRoFz5vD4uj2Iy9SQiALSJc1
 hP4Ca4Rvlqx96Y66YevPDfJoL49S8RsjWmGhVef+8Vk3Axw2rhhtl6iF1
 6NqUxMzDtMgySfieogdoXp1i0mbEhN6gsLbznUtnsyH6ysgNe1bfoFSXp
 N3NPO8Ibu4RfSo1wCGRKvkxnB/QMxoL9q6d/skvPCUFlhWIJ/zU3diYYz
 w5Hmd5Jo+lxzMmv9bSVOyxW4EPEkXsSkrW1ZmfnJ287ZdZ0iXBiAy8XS3 g==;
X-CSE-ConnectionGUID: 4dA7fmA3SxyakANcq7epog==
X-CSE-MsgGUID: vaGc/lSnQN6XWhvfU4OQwg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14606414"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14606414"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:05:16 -0700
X-CSE-ConnectionGUID: ohc0wSkPSYWzkYwAHMsLZQ==
X-CSE-MsgGUID: 5AANyzraRgyZND23Cgy4zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39493897"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa009.jf.intel.com with ESMTP; 11 Jun 2024 05:05:15 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH] drm/i915/display: Send vrr vsync params whne vrr is enabled
Date: Tue, 11 Jun 2024 17:35:24 +0530
Message-ID: <20240611120525.148042-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Compute trans vrr vsync params only when either VRR or CMRR
is enabled.

Fixes: 5922f45329cd ("drm/i915/display: Compute vrr vsync params")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05f67dc9d98d..dc9cf7ddafe9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -232,7 +232,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp_as_sdp_supported(intel_dp)) {
+	if (intel_dp_as_sdp_supported(intel_dp) &&
+	    crtc_state->vrr.enable) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

