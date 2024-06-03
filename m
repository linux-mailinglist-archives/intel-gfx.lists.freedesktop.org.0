Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 612A98D8351
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129E410E3B6;
	Mon,  3 Jun 2024 13:02:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GhlO/cf2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D956710E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419777; x=1748955777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1DfKMh7YXffk8fc3VyAGyGi/9xYE/1dC3uQZ2fMlRGI=;
 b=GhlO/cf2CwKo2WYH+HxiO3Y+Yw8k4g0R4HGcQJMRN6av6dHSUfJxYi/J
 7ZjKVYRPEY8iMjIofGIAfeKCK8pM08ovKA89pvpOW3fvEE9tH/u9DtdBe
 GRumySQ7kyW0cigtixPdOp+L0gdwnIaHM+HVqNuxV2ysVO6ZDWaptFvu5
 mHRZWt17s4ybLN3hY2Jw1hfNGh07yJQF+6mk/BMFzMRFADQ3bsVjKIuA3
 rD5KoId5SyBzZOJ4do2yszMpaxhEor1Rxv0hI0Z/WLVLChdDBfx5mHP2D
 Zc0mVLPqwRihgqS6Y4JJfIpvkajYCBgRQ6WXrZGOXeuLAg5lwrI7L+svp Q==;
X-CSE-ConnectionGUID: GsjZHmVORtCkkpqfbHWE4A==
X-CSE-MsgGUID: auGUTYefQVi6hKRsCncs4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873382"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873382"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:57 -0700
X-CSE-ConnectionGUID: oAYGE10uRXu9xoqvD9OzjA==
X-CSE-MsgGUID: 5Jrw9m+9RzapEQduy0CtNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41959970"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 1/5] drm/i915/dp: fix the Adaptive sync Operation mode for SDP
Date: Mon,  3 Jun 2024 18:33:15 +0530
Message-Id: <20240603130319.1594872-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
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

Currently we support Adaptive sync operation mode with dynamic frame
rate, but instead the operation mode with fixed rate is set.
This was initially set correctly in the earlier version of changes but
later got changed, while defining a macro for the same.

Fixes: a5bd5991cb8a ("drm/i915/display: Compute AS SDP parameters")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd054e16850d..f33b2da1b084 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2634,10 +2634,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
 
-	/* Currently only DP_AS_SDP_AVT_FIXED_VTOTAL mode supported */
+	/* Currently only DP_AS_SDP_AVT_DYNAMIC_VTOTAL mode supported */
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
-	as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+	as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 	as_sdp->vtotal = adjusted_mode->vtotal;
 	as_sdp->target_rr = 0;
 	as_sdp->duration_incr_ms = 0;
-- 
2.40.1

