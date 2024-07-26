Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CDA93CFD1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E771010E94B;
	Fri, 26 Jul 2024 08:49:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLOpvv6n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5B210E94B
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 08:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721983771; x=1753519771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0pSF9hw7uXfMJRoW8tL37aXDVB+qPHc4MjxFMqYE7+Q=;
 b=VLOpvv6nDTHE+wPxJ2RPhP/2PN5258SV4E4Tk9/wA1N4XoycASg9rDP5
 tXs/PRp5zTKMCA4oxRlZ8oIH1s6Z+ttWCrqhXYVdBk8ulot/4J0Nlp+78
 vNa0E76qUs6Bl6o1jPVwXz4FzVlezfxZj2yg8RtKY51tjifH/eTHT8yBj
 O8MBLLdxenNl7x8ZeerA/ZnkOMcXTDXyHupObw9nTXBMFlCyh64CDV5Kw
 dKgJe7NLm0n5syWKEE1qzcJg4KL6LflMPJIVTe7CXDrp6bQyjZ+KqnlLJ
 I21000Sapcikn3qbt5H/vyn1y+5Fm6Key8xdIfsw3myC/xOtWMUaOmvfM g==;
X-CSE-ConnectionGUID: TpOLaRP3QxynaYDetbTP+g==
X-CSE-MsgGUID: BLEkkt4TRKOkuxnIDxLDVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="23525307"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="23525307"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:49:31 -0700
X-CSE-ConnectionGUID: zs9bj6j2QaOWdbRGqxsyxQ==
X-CSE-MsgGUID: /XDm3l+rQ+O73r9SuaWBmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="58039203"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 26 Jul 2024 01:49:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2] i915/display/dp: Compute AS SDP when vrr is also enabled
Date: Fri, 26 Jul 2024 14:20:10 +0530
Message-ID: <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
Modify if condition (Jani).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5d6568c8e186..86412ae7b48f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
-- 
2.45.2

