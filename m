Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB58C43BD70
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093C26E4CA;
	Tue, 26 Oct 2021 22:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FD96E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203167"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203167"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574320"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:10 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 01:50:59 +0300
Message-Id: <20211026225105.2783797-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/fb: Fix rounding error in
 subsampled plane size calculation
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

For NV12 FBs with odd main surface tile-row height the CCS surface
height was incorrectly calculated 1 less than the actual value. Fix this
by rounding up the result of divison. For consistency do the same for
the CCS surface width calculation.

Fixes: b3e57bccd68a ("drm/i915/tgl: Gen-12 render decompression")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9ce1d273dc7e1..c3fb7d7366f58 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -816,8 +816,8 @@ static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_pl
 	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, &fb->base, main_plane);
 	intel_fb_plane_get_subsampling(&hsub, &vsub, &fb->base, color_plane);
 
-	*w = main_width / main_hsub / hsub;
-	*h = main_height / main_vsub / vsub;
+	*w = DIV_ROUND_UP(main_width, main_hsub * hsub);
+	*h = DIV_ROUND_UP(main_height, main_vsub * vsub);
 }
 
 static u32 intel_adjust_tile_offset(int *x, int *y,
-- 
2.27.0

