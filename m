Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 462F69DF907
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E204310E2F7;
	Mon,  2 Dec 2024 02:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqmBrE3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BD210E629;
 Mon,  2 Dec 2024 02:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107419; x=1764643419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lz4Xt3OiTLKV1FNq/MFN6Lft1td7esa608UCVvSd96s=;
 b=IqmBrE3CLbB8yE6HBlGcrjy1bx94pnNcBKW3qCU5HMVmAs27F83qoUZg
 AbAhhLPlqu+v74j5Kn80SUTULCzGpWOWJy0XzWal+7uLV0ccwYEKs1ZGl
 kol7Jr97me0U0ENoApTbn81aa7ghFVrxZrsrCvJ3WjN13jChhKpHTfBIJ
 3QNvfHxbq7+oFjnkPpoCwbNR36LY8RTF4BUx3I/GaAr53d7Op868201y/
 wQJPui5oWXXLO0tBcKZx/sUQL/p8kNFi8vfQn/+qDk2qsQNvHiO7HSRO5
 ul4dycJqOzdGL22zXAUrBUBj+RSq+1sPB1k1qJ+6l9sCuhym0re16aHZT w==;
X-CSE-ConnectionGUID: 3OhroNCGSOeV1mohfToymQ==
X-CSE-MsgGUID: Xo+OG61WSX+NWP3bgm5Gaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634858"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634858"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:39 -0800
X-CSE-ConnectionGUID: iVdU/hCdQM+rofkLVyoCBg==
X-CSE-MsgGUID: FNi2ZoBpRKaNx5iqerG6QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878212"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:37 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 5/6] drm/i915/dp: Compute as_sdp based on if vrr possible
Date: Mon,  2 Dec 2024 08:15:39 +0530
Message-ID: <20241202024540.2578856-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 98573dd69028..73a1a839e0a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2807,7 +2807,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.46.0

