Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187BC9A64AF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 12:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15F010E489;
	Mon, 21 Oct 2024 10:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B43VED2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2ADD10E489
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 10:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729507762; x=1761043762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sht8uCtzZl/fALIioUNrTmPDgfLfs8nQ5Gg5yFJJJVI=;
 b=B43VED2oMa2Y4Kyaa26yrDzfqmc8WIIbKpMaiEt/gFZCbST3BoA6BUB5
 2iLLgAQe1HoOxz5sAJCmeo6Z7O3xBUNGrbkcwFfQT/0DwtCsgkzPi6DRN
 7W+4x5lGGnTXSW9hdG0mofuAfwQlgD9Hh0fKEf+1OB1gCt6SGhYfmda43
 lJ7uEen2n1OVvkLmHCfj6fgeaG7fL/0d294Xc9RPBAUpsyp46WjBmOpoR
 bWh6fj69qjuLzgiJzKIn2F1ROxPFxvB6u2i6gQNkYCI3pJ9sYBDRYkr+1
 epdYQbOLZt66Am1Fmz3LQREuoqQ3sVZgK8ZVUr6TlVmm08fMMK3+yhHea w==;
X-CSE-ConnectionGUID: 9syB6HyEQM+nehYeTfgJ+Q==
X-CSE-MsgGUID: Oh7BkDtFRFCGMsMi4kdsTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="28439939"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28439939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 03:49:21 -0700
X-CSE-ConnectionGUID: U+ySU2cBQ5yyvbRI1u9MKg==
X-CSE-MsgGUID: qJl2TwJrSpa/5fC3lB/OBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84310763"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 03:49:21 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 3/3] drm/i915/dp: Compute as_sdp based on if vrr possible
Date: Mon, 21 Oct 2024 16:21:00 +0530
Message-ID: <20241021105100.2861830-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
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

Adaptive sync sdp param computation, specifically minimum vtotal is
blocking vrr enable and disable fastset requirements in certain scenario
i.e. during null modeset, this minimum vtotal we can configure during
full modeset as well when sink is having vrr support, where it doesn't
need dependency on vrr.enable status and can also match vrr
enable/disable fastset requirement.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b1f68fff524d..0fefe6f16257 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2769,7 +2769,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
+	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
@@ -2786,7 +2786,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr_divider = true;
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
-		as_sdp->vtotal = adjusted_mode->vtotal;
+		as_sdp->vtotal = crtc_state->vrr.vmin + 1;
 		as_sdp->target_rr = 0;
 	}
 }
-- 
2.46.0

