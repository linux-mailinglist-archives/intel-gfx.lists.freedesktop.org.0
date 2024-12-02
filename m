Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAB19DF906
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB2210E416;
	Mon,  2 Dec 2024 02:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1pLqHrZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9072C10E414;
 Mon,  2 Dec 2024 02:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107417; x=1764643417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kr8KxyBE1N1kKfxYgvvzkIjxZnFGbta9wTlPFcdY6p8=;
 b=T1pLqHrZjuy2tKCEw9Di8jRgVwEzLAUR/ESs6We0G/1ZSDrb4ibUym7/
 zwURSI2+X0Q557WqWsWKROoX051btQfDvWNml77g88ZS7zayH/kc6adVi
 t2Ep0LNUJ/eKND0d/wiiA5aoP5CEvhF/5t5qPkOm6urDBltHR6JkRBzWy
 dHsOS3GDpxK6SAwcF8/N3v8e4PdyE2HjM9OKdxNM3V8Qeywqyq6HiOfKe
 H/m2fb0nVRvE+kQ79O9LD7Xyp2kkKTj20wxDtfxrYnjzxOcgHZ3uw4TAI
 2Rl4sE665nREPqc45ZwIWk0lw9ME4D1SrfwtPyjEVUB4MI+CCQlzA4NaO A==;
X-CSE-ConnectionGUID: qpypqZbTSBqF+zViRYZKKA==
X-CSE-MsgGUID: 4RXIUhPJSbCKPVwhdE/RpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634853"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634853"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:37 -0800
X-CSE-ConnectionGUID: 0yaniby9S7io78qLqSwQQQ==
X-CSE-MsgGUID: ylbwZqviS9eKggRwjC8Vsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878207"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:35 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 4/6] drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
Date: Mon,  2 Dec 2024 08:15:38 +0530
Message-ID: <20241202024540.2578856-5-mitulkumar.ajitkumar.golani@intel.com>
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

Compute as_sdp.vtotal based on minimum vtotal calculated
during vrr computation.

--v2:
 - make a separate patch and update to vmin only [Ankit].

--v3:
 - Update vtotal to vmin for cmrr case as well [Ankit].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 306c00cab57e..98573dd69028 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2815,15 +2815,14 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
 	as_sdp->length = 0x9;
 	as_sdp->duration_incr_ms = 0;
+	as_sdp->vtotal = crtc_state->vrr.vmin;
 
 	if (crtc_state->cmrr.enable) {
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
-		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
 		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
-		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
 	}
 }
-- 
2.46.0

