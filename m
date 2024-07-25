Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFDB93C30C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 15:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DFC10E230;
	Thu, 25 Jul 2024 13:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0ChGreP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9547510E230
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 13:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721914245; x=1753450245;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MKcXKGlm28o59fYOeo6RtJSczsX0c1BtTngWw2OL9Sc=;
 b=L0ChGrePTDHb0i7pS9HPYQgiCpiIApSTYzItvel/3MsA3dyh8Wv5IAZF
 PKBNiPyBwBytNcSYqDIsSR/6UelPf1CvJ+NkFFgdvT4ak0n+/9UlBys32
 LfZkBc0JIXJtbIQQ/sF36QbJO9oRQ8u41k82AmtwHtKzDKM0im8SQenps
 tUb8FfGcOgzN/4AqNQD6FMr8QmPvNt7d14n/7zWQi487w+iBHqlNn3BYO
 ni/lxA4b/wupcn+90hQBkfCLyuCus0KGCxH86tFc4LgQtRSy4TgdOpGNw
 aBSyxqZiJUj0OgpKHFPuU/6q8TckSUcdHecposx17DW8dvURDyh4lGpYt w==;
X-CSE-ConnectionGUID: pbPCMhskTOCNDGM+5hvfSw==
X-CSE-MsgGUID: s12GivadQF+173WciF28sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19785491"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19785491"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 06:30:29 -0700
X-CSE-ConnectionGUID: AnL0sJ9RQpqllKhmt96EcA==
X-CSE-MsgGUID: Mrrw1jbWQGiYgCYfbQn16w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="52846233"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 25 Jul 2024 06:30:28 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH] i915/display/dp: Compute AS SDP when vrr is also enabled
Date: Thu, 25 Jul 2024 19:01:10 +0530
Message-ID: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
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

AS SDP should be computed when VRR timing generator is also enabled.
Correct the compute condition to compute params of Adaptive sync SDP
when VRR timing genrator is enabled along with sink support indication.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5d6568c8e186..dc75d1c14a94 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
+	if (!(crtc_state->vrr.enable && intel_dp->as_sdp_supported))
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.45.2

