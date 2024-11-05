Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1129BC6BF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA3A10E52C;
	Tue,  5 Nov 2024 07:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X9dn2y91";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC9110E52C;
 Tue,  5 Nov 2024 07:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790986; x=1762326986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9OnB7Sd4Ju5Fe1Hy7SP+4/uZKrlSOzRWEaovjpD2Q0=;
 b=X9dn2y915Pcc4eJwCsntW0ly5/yDc8BiHp2w/FFEBdYu8WzvxdZ9KMbE
 eo0ohrkjZKVUz0QrApN3VWnz0RQoiYNvF2mbqSK5MSYGt4h0k1Us8YeSt
 qtE1S5bJdYwNpzGaD//wice8P1Pe+Kb+HEERvNFMzRX+Zb7B7aEv7a+SZ
 1qpELHLtxt32Xgn67+rDJJch4xYqbR/a5hNdmupqY+P/dGdWCNLMnU3W6
 fORoUKfzMqeQA7A0giYMc/mAb1eILDSCU9rcf7xSwtaDky9wAAW+GBv2o
 +cQcH2vTVgOXlBiefD5fUrzBnI6b01vtyvDam+WDOeTkp6rf7SBatQUyh g==;
X-CSE-ConnectionGUID: YzgdIY+yRxeFRVrRts2D+g==
X-CSE-MsgGUID: tKwNeNfuRguZIjHsLWoBtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449546"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449546"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:26 -0800
X-CSE-ConnectionGUID: JgGPsmg+RrKBQ/GFEzR/qw==
X-CSE-MsgGUID: 44rkb5xzSOem4CtkFGKyZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835569"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:25 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 3/8] drm/i915/display: update use_minimal_wm0_only to use
 intel_display
Date: Tue,  5 Nov 2024 09:15:55 +0200
Message-Id: <20241105071600.235338-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid using struct drm_i915_private reference and use intel_display
instead. This is in preparation for the rest of the patches in this
series where hw support for the minimum and interim ddb allocations
for async flip is added

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2afc95e7533c..2018abc35c8a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1372,9 +1372,9 @@ static bool
 use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 		     struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
-	return DISPLAY_VER(i915) >= 13 &&
+	return DISPLAY_VER(display) >= 13 &&
 	       crtc_state->uapi.async_flip &&
 	       plane->async_flip;
 }
-- 
2.34.1

