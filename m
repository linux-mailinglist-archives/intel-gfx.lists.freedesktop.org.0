Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A424B7B71EC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8E410E314;
	Tue,  3 Oct 2023 19:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FCE10E07F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362194; x=1727898194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mSkBGjsuTNdnhJbt4OcZvL8Sz4JWdPh32TXnAY1zCu8=;
 b=cWRG73kvnle+JxuJPLMxK3/h8awFT4hr2U9gUHNHCR1SyWjTvIUzliiF
 XBqmDcHS6BAfinWStm3x3W3UzK8VEmh7ImGPgCZQAfHeeH5dXLQsPkcTy
 xbfcxBQWREFQ4Vt0UYJqheyFtMPeQlFvRCo0yPsVr6/gtppz+mJ5kmAVf
 Asg7/D9vYyjGIqfyCPjmTCE5gO4/9aUIsB/xLsnLH8Gftfg74bwszhKBR
 esnF5v8cGl0is+uPQXv45qfaPrSqP3OKrmvLDSxSYeRUPj2qs1VkYEK6r
 xyREzc2fC7jxiaO4O2odRijYoLGpGxBjfaczCwR2hz80mFoBpVxeYSFXJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238207"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238207"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623224"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623224"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:42:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:51 +0300
Message-ID: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915/fbc: Remove ancient 16k plane
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
i965gm, and no explicit limit has been specified since (g4x+).
So let's assume the max plane stride itself is a suitable limit
also for the more recent FBC hardware.

In fact even for i965gm the max X-tiled stride is also 16k so
technically we don't need the check there either, but let's
keep it there anyway since it's explicitly mentioned in the
spec. Gen2/3 have more strict limits checked separately.

Reviewed-by: Swati Sharma <swati2.sharma@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 5f13c6776c7d..f12ea170b748 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -871,7 +871,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
 		return stride == 4096 || stride == 8192;
 
-	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
+	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
+	    (stride < 2048 || stride > 16384))
 		return false;
 
 	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
@@ -879,9 +880,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
 		return false;
 
-	if (stride > 16384)
-		return false;
-
 	return true;
 }
 
-- 
2.41.0

