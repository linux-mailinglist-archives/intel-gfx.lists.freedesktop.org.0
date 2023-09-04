Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BAF79168C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 13:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF7110E200;
	Mon,  4 Sep 2023 11:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D38DD10E200;
 Mon,  4 Sep 2023 11:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693828560; x=1725364560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rYjuDHSs2XLGaWwzMSPtadryxwjYWm6Gs4cz1KtjuQo=;
 b=LyMNZV30oEn1YsODqJaWQ+M1aujiS7zmyHacs5wtgBEBLRu7ENcjjU7L
 8ZfeQqeETnz3HTLwco4t7W/X8+bJ0sQQPuNfb8G+eHkgUSHgD9K87RGKk
 TfkWdF1pgF6bOD8Zr9SMf+g+KbVHlnuC/QOOkIlQdBEp+rOs+G69wlZ+k
 36cVk04bj2O9B6U9q3BsgZBO4ksKaENC+drPI/ITEKNE2NWRDr4e09kQq
 pcnV1F+kBTmI254G+HW2ty6UXimN4zxmPxxNed0TPRG8FP0h2M8mUmrA6
 /+19rwiM4X4f5ijU49soBkB/8BuSBNqNZ+SPhpyWUrrEoqzeBV2HQ+065 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="440549094"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="440549094"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 04:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="810882583"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="810882583"
Received: from bagbokpo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.215.150])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 04:55:52 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon,  4 Sep 2023 14:55:17 +0300
Message-Id: <20230904115517.458662-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230904115517.458662-1-vinod.govindapillai@intel.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with per
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
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
index a3999ad95a19..c0e4caec03ea 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
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

