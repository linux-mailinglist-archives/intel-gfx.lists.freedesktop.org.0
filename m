Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E55B96814D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6C310E234;
	Mon,  2 Sep 2024 08:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjLzVhlW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E25610E23F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264308; x=1756800308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2E+r97iG5vmE1SbrPqUGiu2ZywI5p2va9oQ5DCJChdQ=;
 b=IjLzVhlWqrKIFS93Jhm7zzvhFwtyjaBANu2yYtrHElwc56iBDn4I/1xT
 Iq9CkUn4itGA4u+PztIKQ7CVmKyvyBANvpVW7c19dcBCNGYsgl0kC0AVc
 9Pn86XvdrY81nABDmmV/DP9fgQN0GEnpWirGcfilg1/VU15RrglV6GtBX
 XQuxIwb5k0OSTbG2XfC/PrmzsPAzxDvAsjzdrCUmApgi+I7n8IPfT/496
 cq7VUUruynQ+U5JoIZ3UyieoYCK6ZFyCEpSLNa4uxVHHndPbigJr4AxR2
 JRws95+LjmRJrFFwKJ3khLMvfWrlaDzOCkxrouETINY7CzR6ANEwYeHJN Q==;
X-CSE-ConnectionGUID: cVsjizWjR0+QFUTgzBUxiw==
X-CSE-MsgGUID: xNavGXdxQlSXlXZaB2uhjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967391"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967391"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:08 -0700
X-CSE-ConnectionGUID: lv4NlcxyQs2eLIHQlP7VaQ==
X-CSE-MsgGUID: Qkj+dUgQQ+qPo2looKSi7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039860"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/13] drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh
 rate
Date: Mon,  2 Sep 2024 13:36:26 +0530
Message-ID: <20240902080635.2946858-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

While running with fixed refresh rate and VRR timing generator set FAVT
mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel
about Fixed refresh rate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f733cf61e399..05399f87d7f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2737,6 +2737,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
+		if (crtc_state->vrr.fixed_rr)
+			as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		else
+			as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
-- 
2.45.2

