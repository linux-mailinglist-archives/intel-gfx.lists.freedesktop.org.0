Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D81078A5AD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE92110E210;
	Mon, 28 Aug 2023 06:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C924210E210;
 Mon, 28 Aug 2023 06:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693203666; x=1724739666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uDSnkAcF64QyjTLR04sJ09Xw9NIiOgD3VXjY7Lx1ni8=;
 b=FS4kst/V4Ce3sr0Fsb9QrlG71gtzMGgHIy6ffiJjsuBko4BPxqJemM2F
 cRMBjksuxXj1oP+7653ku6rod0AqfG1gHx5DpBEjsPyDQmHyIVogFpK63
 upjizCeMPyFOG8zFsbnTixjBMQ6ztONgzgbuZcFvEGup37RkBji24vdho
 0FKYocFfQCyl/tLRX5jqSmO8RqxVPR92ZPb70MvTvE4Uh62X2jArlUXKq
 RJ/LJSTeyEkBFgrga7JBkBxb0dI3nHVKeq4FYWLrpMbh4LjDMHDGDLs4Q
 oLszXzoK/rMgJ2Wgt9cHewiQ7GX07oYvgwzTaBfw6p8uCHVRmakY4ANOT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="438973566"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="438973566"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861709835"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="861709835"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:21:04 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 28 Aug 2023 09:20:35 +0300
Message-Id: <20230828062035.6906-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828062035.6906-1-vinod.govindapillai@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/lnl: FBC is supported with per
 pixel alpha
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For LNL onwards, FBC can be supported on planes with per
pixel alpha

Bspec: 69560
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 62f59630d410..f36eb8652d3c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1224,7 +1224,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
+	if (DISPLAY_VER(i915) < 20 &&
+	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
 	    fb->format->has_alpha) {
 		plane_state->no_fbc_reason = "per-pixel alpha not supported";
 		return 0;
-- 
2.34.1

