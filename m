Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B023805CCA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 19:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD56810E592;
	Tue,  5 Dec 2023 18:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E81610E592
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 18:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701799393; x=1733335393;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N63hUVEMiXkMeVDi3jmn5XzDhdK3VWUTL5/CDAzOWfE=;
 b=mYSePFFmCVd5LIHBL7xamRHhkVcGYw6rhpKLYPR4Ciscw2Bce63akgWb
 9FQ44nkGoBRkQbVnI4sFqMz6YENgkM6H/UPQ7N39OQeTn6PXJ1HREbMni
 rUZTTvebwqKQp7SHgDBG2DB0uJjo8V03wbgvC4ghIGgjN9jb04I0tmUrh
 Ea+w3hFol7c42aQwMDufFDUsIn/CxxBrbwIzxa5Rf7VMCvGXdBbqL6F1a
 967XDBK01FgBXldPJuuk0XaF5N5EL3LObj7YWKPLra/2GymdXs0KERnfP
 OrcQfwONKxrkXGiNtl/LVX8NExkPFzebD15u8vsyRlOImLkm/8b36SzJK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="991327"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="991327"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 10:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="764413479"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764413479"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 05 Dec 2023 10:03:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Dec 2023 20:03:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 20:03:08 +0200
Message-ID: <20231205180308.7505-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix remapped stride with CCS on ADL+
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

On ADL+ the hardware automagically calculates the CCS AUX surface
stride from the main surface stride, so when remapping we can't
really play a lot of tricks with the main surface stride, or else
the AUX surface stride would get miscalculated and no longer
match the actual data layout in memory.

Supposedly we could remap in 256 main surface tile units
(AUX page(4096)/cachline(64)*4(4x1 main surface tiles per
AUX cacheline)=256 main surface tiles), but the extra complexity
is probably not worth the hassle.

So let's just make sure our mapping stride is calculated from
the full framebuffer stride (instead of the framebuffer width).
This way the stride we program into PLANE_STRIDE will be the
original framebuffer stride, and thus there will be no change
to the AUX stride/layout.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index ab634a4c86d1..9f35bdce3eb8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1509,8 +1509,20 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 
 			size += remap_info->size;
 		} else {
-			unsigned int dst_stride = plane_view_dst_stride_tiles(fb, color_plane,
-									      remap_info->width);
+			unsigned int dst_stride;
+
+			/*
+			 * The hardware automagically calculates the CCS AUX surface
+			 * stride from the main surface stride so can't really remap a
+			 * smaller subset (unless we'd remap in whole AUX page units).
+			 */
+			if (intel_fb_needs_pot_stride_remap(fb) &&
+			    intel_fb_is_ccs_modifier(fb->base.modifier))
+				dst_stride = remap_info->src_stride;
+			else
+				dst_stride = remap_info->width;
+
+			dst_stride = plane_view_dst_stride_tiles(fb, color_plane, dst_stride);
 
 			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
 			color_plane_info->mapping_stride = dst_stride *
-- 
2.41.0

