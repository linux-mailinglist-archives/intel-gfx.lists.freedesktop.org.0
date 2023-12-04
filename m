Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C0D803F42
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 21:26:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E100210E1CF;
	Mon,  4 Dec 2023 20:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0926B10E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 20:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701721512; x=1733257512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T6ktD71lKcqPmFIeNvBmtDL3hDwcbrV4r1zW/o8jsGs=;
 b=KDs+u5VWS1A+o3iOW+2Uqp+sI1qZAsr7d9u8EC+lWAC8rUUbEdHt1kRz
 ITA1eMuRirUJFK9FiGkxuhl4BqRbb/8hT/eRC46U0a2P5I+swVLOQWGDk
 8etndBpZZSrgZR9PvTHPPZ8e8cP7PcyjrSBKW4kKfH++/iVqR01iJmCIE
 mWa0HOGGwSmDMkoMXroOo/RAAtkyywOIpW07P0Tq9zImm5D7d8blQrjSF
 bbMKP7nXtMcyURkwSE8d717BZTEDhZsK+Vpq5Doqo3PczLvnliAtV3shH
 JH+A/6/3Ft1M3VuEMEfXgcQ9FBKYQKRJnKp5+0IjNszBhqEtdjH5eqeUK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="373238264"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="373238264"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 12:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="764081698"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="764081698"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 04 Dec 2023 12:24:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Dec 2023 22:24:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 22:24:43 +0200
Message-ID: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix ADL+ tiled plane stride when the
 POT stride is smaller than the original
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

plane_view_scanout_stride() currently assumes that we had to pad the
mapping stride with dummy pages in order to align it. But that is not
the case if the original fb stride exceeds the aligned stride used
to populate the remapped view, which is calculated from the user
specified framebuffer width rather than the user specified framebuffer
stride.

Ignore the original fb stride in this case and just stick to the POT
aligned stride. Getting this wrong will cause the plane to fetch the
wrong data, and can lead to fault errors if the page tables at the
bogus location aren't even populated.

TODO: figure out if this is OK for CCS, or if we should instead increase
the width of the view to cover the entire user specified fb stride
instead...

Cc: Imre Deak <imre.deak@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 33a693460420..ab634a4c86d1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1381,7 +1381,8 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	unsigned int stride_tiles;
 
-	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
+	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+	    src_stride_tiles < dst_stride_tiles)
 		stride_tiles = src_stride_tiles;
 	else
 		stride_tiles = dst_stride_tiles;
-- 
2.41.0

