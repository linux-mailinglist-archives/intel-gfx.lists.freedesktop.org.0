Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEC17A02D1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 13:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D1E10E56A;
	Thu, 14 Sep 2023 11:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767C210E264
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 11:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694691550; x=1726227550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bTc01px+lQjTF8f4Z41PJw/cACjmn40BTrdFZEGebQg=;
 b=cS2OwR0Rrka1fubsswNNlAV0mr+cOc9bwP+uNHQjBT60+HmPCWEwRku6
 AYcqmd2vtrL8uD61bRL+fXtGZ1RY/Q64Ix9eHhTu8D88+KM6tT6pRC8OO
 FP1mO4fG2sh2yPe2Ez93LodP89XGag5K2wuGMdYu/HOI7teMy4YEuuySj
 6t2+rDUFyKJlEwzeA8b6MTpKKNRGDjx/S34u8h5PQUGpTULzD+tHcQL5g
 4AVTxzu9oDxfUrqtEt8ldTo2/vrpboEsVIgwShlK35vc0NQONAsMKyfBz
 gIucprQ/LnF04V3qn4gvw6bwugGhaMxVAxlWzsk3+M7NgPaUVv6YIhmIO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="359186736"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="359186736"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="810028946"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="810028946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 14 Sep 2023 04:38:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Sep 2023 14:38:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 14:38:50 +0300
Message-ID: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/fbc: Remove ancient 16k plane
 stride limit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The 16k max plane stride limit seems to be originally from
i965gm, and no limit explicit limit has been specified since (g4x+).
So let's assume the max plane stride itself is a suitable limit
also for the more recent FBC hardware.

In fact even for i965gm the max X-tiled stride is also 16k so
technically we don't need the check there either, but let's
keep it there anyway since it's explicitly mentioned in the
spec. Gen2/3 have more strict limits checked separately.

Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 817e5784660b..1b3358a0fbfb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -866,7 +866,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
 		return stride == 4096 || stride == 8192;
 
-	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
+	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
+	    (stride < 2048 || stride > 16384))
 		return false;
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
@@ -874,9 +875,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
-	if (stride > 16384)
-		return false;
-
 	return true;
 }
 
-- 
2.41.0

