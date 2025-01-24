Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318B2A1B882
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E2410E9A5;
	Fri, 24 Jan 2025 15:11:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVJToebC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E73A10E9A3;
 Fri, 24 Jan 2025 15:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731506; x=1769267506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GNL24bnUu/59HQIrJ3sUxrJomvXd9qR6WAzREInG9oI=;
 b=AVJToebCq3b8BtiX61nP9XONlIrVaT1sM8xC9BTKhJ8CSMxcDzE5NgyB
 VlTcYtsRoipaOSNwPZrgA6mq8kLlwE9yDd62Y2GHW6abCCXl+z2nEPz3C
 blwp6rWMiP7VL6VbErtSnbmRwz/JE+SI6+hh3qVMcXLcp4PnVP9RdqXN1
 wNPeswoz2UiZrYder+LXRTxVSfv1OcwgfnYUl14BbQdgZuxb8rWNFx5TS
 H5NkEGmAwKzWYLBiPqdN9tiohHh/7k3A9P9hf14kX4a/xhhtiKjSu0W1G
 ftjWEWz81iOFccouliBLw/nh3pR8MOHU/Sat9I21ubmcLy8D7iDm5q4KS g==;
X-CSE-ConnectionGUID: ztkp9lAxTzGHTde7KB3VXg==
X-CSE-MsgGUID: CLl08X3FSU+ITuwy9T/tpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177379"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177379"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:46 -0800
X-CSE-ConnectionGUID: dQueDKBbSNe9cG9ijGwp6Q==
X-CSE-MsgGUID: bgoDYeKwROO2GAs0jkZp8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221178"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/35] drm/i915/dp: Compute as_sdp based on if vrr possible
Date: Fri, 24 Jan 2025 20:29:50 +0530
Message-ID: <20250124150020.2271747-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Adaptive sync sdp param computation, we can configure during
full modeset as well when sink is having vrr support, where
it doesn't need dependency on vrr.enable status and can also
match vrr enable/disable fastset requirement.

--v2:
 - Separate the change from as_sdp.vtotal. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ddfc79b1ee10..1ff62e0421b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2826,7 +2826,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.45.2

