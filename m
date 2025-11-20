Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E6C72915
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B476510E700;
	Thu, 20 Nov 2025 07:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RZ7DFxVH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6972210E700;
 Thu, 20 Nov 2025 07:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623178; x=1795159178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6Drg0gJvkQeqHcEva+xFFP6a8nk+WWb44JKSxsBGtc=;
 b=RZ7DFxVHWcGwJmBmYrpOkYuyS1+A7d6KF/sG9btGAtcN0RsyzelNtzp+
 RD2uyC2TVEI8sW2Raq49A14uZRjW2SmFu0Ckzl64Gz2J2VBRuElLC464g
 xhdKH0PdYieH9I3qMqIyIXc7R+UlOV3hWOsGlPjxIVfZNRGEOqewDUcgL
 Y4K1MyO5D1DZbVhNjP5l2xgd+sZxNHAE4efxzKZfW1LOJMqKxsyIEEm3t
 5KrxpFUIULkKvQ7aqciDHZdMjUY4aMHLIv4cfW2kmn/32IkgUgQpAQsmw
 +xNkzyRZyqkhlh2nLtLB0qWrFO0SKbLRk513Uv9JIXSYv1EPINbfy3WZa Q==;
X-CSE-ConnectionGUID: xJJwBULnRhSgpQZ3mmGlTA==
X-CSE-MsgGUID: DzSE+B8rTimCG9jADe8xBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559113"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559113"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:38 -0800
X-CSE-ConnectionGUID: FXEiIrj9TPOlfxmjHwC95g==
X-CSE-MsgGUID: s5gpH9zuQAuT9VL+x40vYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073702"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/11] drm/i915/dp: Account for DSC slice overhead in
 intel_dp_dsc_compute_config()
Date: Thu, 20 Nov 2025 12:36:39 +0530
Message-ID: <20251120070640.727040-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Account for DSC slice overhead bubbles to determine if the mode
configuration can be supported with DSC for a given number of pipes
joined.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d8198a039f17..46a919baf035 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2596,6 +2596,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
+		int adjusted_clock = target_clock;
 
 		if (joiner == FORCED_JOINER) {
 			if (!connector->force_joined_pipes)
@@ -2626,7 +2627,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 		max_dotclk *= num_joined_pipes;
 
-		if (target_clock <= max_dotclk)
+		adjusted_clock =
+			intel_dsc_get_pixel_rate_with_dsc_bubbles(target_clock,
+								  adjusted_mode->htotal,
+								  crtc_state->dsc.slice_count);
+
+		if (adjusted_clock <= max_dotclk)
 			return ret;
 
 		ret = -EINVAL;
-- 
2.45.2

