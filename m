Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1576E9B6E65
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 22:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA2710E802;
	Wed, 30 Oct 2024 21:07:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/HnXUdP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD46710E802
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 21:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730322474; x=1761858474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iyugDT8KwE3v90s8BHydvH0MvQMrAVgSaemFzpK91IE=;
 b=a/HnXUdPvhV/XnV9g1e5QW4SD5a004eP/gIjds3rofJoPyJzV2QMQrqQ
 JxPleiIOfFvZJT4bLb6HiuwfCKHbXmPivuaoHHbI2eVvVsDb8bpZc5bV5
 Y+iGgGH7zOw2kDv2p5hJdiuzvs2+v1EMa0vcMAA44ZfwM+iFzNqlxH8dh
 wMuAwmSpPL+i2hDQ6I13o1yE7W6Ku7zUkrUdRKUdXGInDdzbC/putWUSg
 iMZcGVGyNuqGKBQn15e6rWETW4Qaq1Ce+vHKVwkqefHdX91CFFKV+2ARK
 1KWXvOTuU+8zcQ5Uy5VlfwM50ZBYAD3qhMp6ulld13hgu8sMrHhuHxQvK g==;
X-CSE-ConnectionGUID: 1sHCGjVRQ/SgSQwAwRo3AQ==
X-CSE-MsgGUID: G/EK6N9FTgOoEXUh/dJw2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="29490597"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="29490597"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 14:07:53 -0700
X-CSE-ConnectionGUID: Yy0i89OwRJCBnWB8QphNOg==
X-CSE-MsgGUID: w7XGJw3cQWi0mBcM4lLHLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82550507"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Oct 2024 14:07:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Oct 2024 23:07:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH] drm/i915/color: Stop using non-posted DSB writes for legacy
 LUT
Date: Wed, 30 Oct 2024 23:07:50 +0200
Message-ID: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently using non-posted DSB writes to update the legacy
LUT can cause CPU MMIO accesses to fail on TGL. Stop using
them for the legacy LUT updates, and instead switch to using
the double write approach (which is the other empirically
found workaround for the issue of DSB failing to correctly
update the legacy LUT).

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12494
Fixes: 25ea3411bd23 ("drm/i915/dsb: Use non-posted register writes for legacy LUT")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 174753625bca..aa50ecaf368d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1357,19 +1357,19 @@ static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 	lut = blob->data;
 
 	/*
-	 * DSB fails to correctly load the legacy LUT
-	 * unless we either write each entry twice,
-	 * or use non-posted writes
+	 * DSB fails to correctly load the legacy LUT unless
+	 * we either write each entry twice, or use non-posted
+	 * writes. However using non-posted writes can cause
+	 * CPU MMIO accesses to fail on TGL, so we choose to
+	 * use the double write approach.
 	 */
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_nonpost_start(crtc_state->dsb_color_vblank);
-
-	for (i = 0; i < 256; i++)
+	for (i = 0; i < 256; i++) {
 		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
 			      i9xx_lut_8(&lut[i]));
-
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_nonpost_end(crtc_state->dsb_color_vblank);
+		if (crtc_state->dsb_color_vblank)
+			ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
+				      i9xx_lut_8(&lut[i]));
+	}
 }
 
 static void ilk_load_lut_10(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

