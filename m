Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAEFA27275
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2618A10E634;
	Tue,  4 Feb 2025 13:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jz6DRUUI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A12C10E634;
 Tue,  4 Feb 2025 13:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738674583; x=1770210583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OmuIelFCdSLw4jXzc4vltgfiOP9hvu4ZnUqeK8dfSh8=;
 b=Jz6DRUUImCbb2o9uuxaoo0wE+I8Bc3Jqof955x81NE5Yj1p+4x6ntSDL
 AjYnmFcTB1qNlTZQgCU7ExM/lXx/OXlR4ZEclDCYkC4lrLKHH3bGCo1UX
 TLDPTkID2pJCTaVhsPMjQRzCd++wcTycw95u49dd97UAGs0ilgq/gXLlk
 wNf1QmFuBMXyZs4OqBwf9xokZuwDt3mHwJBFwBZG7DUW9vQ1Kp6GrglW1
 8C5LgxeqoybqJ95TCFwSXiLJh2dHunBtb9VqHAvmSPujdumvfAmMaqedE
 jt6MQFE0QZV2Ksngym327D3Z0hI7Xhk1Y+ScvQ+3RVM8WLzC6Q3ha1eGG A==;
X-CSE-ConnectionGUID: qHox+RHjSo2BEQKPg0zD1w==
X-CSE-MsgGUID: bD5eUlU/S9GFYLc9idpVuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39082333"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39082333"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:09:43 -0800
X-CSE-ConnectionGUID: QURbHpDaTwqXPC4Oa0rQLg==
X-CSE-MsgGUID: 3mNUkRJITNmbDHRmT628ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110417869"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2025 05:09:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 2/2] Revert "drm/i915/dp: Compute as_sdp based on if vrr
 possible"
Date: Tue,  4 Feb 2025 18:36:38 +0530
Message-ID: <20250204130638.2800372-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
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

This reverts commit 08277aa5d5a44befd71717de35b956f55e1e8401.

Compute AS SDP params only when VRR is enabled to maintain
PSR exclusivity.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc6aba353c11..8b03f604b240 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2798,7 +2798,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.48.1

