Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0857A35D70
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF26A10EC6F;
	Fri, 14 Feb 2025 12:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1u035PF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40BD10EC6B;
 Fri, 14 Feb 2025 12:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535758; x=1771071758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OR1fNJ/2FSPDfyrpx8uFRA4Gb6MpClNXZ7TRI3F/hJI=;
 b=m1u035PFaWfZoOJJwW4vzz3lNI/t1k6MVKEZTlLjVKN816jXcfxCIRvV
 CcJ62EjyyNnY00yCQ2ZKXSORqVIWY+wRpKtYNBzON+RYcNqGCIMXeUFkx
 luG/yIuL8ZgxUYn2/HuDeU0Xec6LdX135XRelRFTtZVfEvs4s0PgDr3Oi
 PE9Julot66NLh6VU4Oy6TqvK1UqdAsTWNBTps9YCgFjWGgk6eSBFY9bBe
 +Zuf2hLjh9CPKYtNcNmpE07UE55HNwt4NE/AamTwTMoFqhSZ15MR9WJiU
 JEHtetjniSuCRxYL9DzMhFFjzS8ZyYsqdyPk/iecMjPraOuZht/JKWVCJ A==;
X-CSE-ConnectionGUID: jAiKMm3rT9aHn0iHx6JJiw==
X-CSE-MsgGUID: HKRAxr8ITmWHFHM9AxGWdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51255992"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51255992"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:36 -0800
X-CSE-ConnectionGUID: xOKTrGZOQCel1OHvEhf13Q==
X-CSE-MsgGUID: aNF/uQoyTfGNpAy8l1+zZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309531"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/19] drm/i915/vrr: Disable CMRR
Date: Fri, 14 Feb 2025 17:41:14 +0530
Message-ID: <20250214121130.1808451-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Switching between variable and fixed timings is possible as for that we
just need to flip between VRR timings. However for CMRR along with the
timings, few other bits also need to be changed on the fly, which might
cause issues. So disable CMRR for now, till we have variable and fixed
timings sorted out.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 008a9c3e152d..0ee7fb0362ce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -182,7 +182,8 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!HAS_CMRR(display))
+	/* Avoid CMRR for now till we have VRR with fixed timings working */
+	if (!HAS_CMRR(display) || true)
 		return false;
 
 	actual_refresh_k =
-- 
2.45.2

