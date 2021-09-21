Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA9841361F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 17:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8796EA2E;
	Tue, 21 Sep 2021 15:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA196EA23
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 15:25:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="202888188"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="202888188"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 08:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="613050010"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 21 Sep 2021 08:25:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Sep 2021 18:25:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Tue, 21 Sep 2021 18:25:17 +0300
Message-Id: <20210921152517.803-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210921152517.803-1-ville.syrjala@linux.intel.com>
References: <20210921152517.803-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/fbc: Allow higher compression
 limits on FBC1
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

On FBC1 we can specify an arbitrary cfb stride. The hw will
simply throw away any compressed line that would exceed the
specified limit and keep using the uncompressed data instead.
Thus we can allow arbitrary compression limits.

The one thing we have to keep in mind though is that the cfb
stride is specified in units of 32B (gen2) or 64B (gen3+).
Fortunately X-tile is already 128B (gen2) or 512B (gen3+) wide
so as long as we limit outselves to the same 4x compression
limit that FBC2 has we are guaranteed to have a sufficiently
aligned cfb stride.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1e7d86f04fe9..e8c6c917c5c3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -163,15 +163,13 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
 
 static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
+	struct intel_fbc *fbc = &dev_priv->fbc;
+	const struct intel_fbc_reg_params *params = &fbc->params;
 	int cfb_pitch;
 	int i;
 	u32 fbc_ctl;
 
-	/* Note: fbc.limit == 1 for i8xx */
-	cfb_pitch = params->cfb_size / FBC_LL_SIZE;
-	if (params->fb.stride < cfb_pitch)
-		cfb_pitch = params->fb.stride;
+	cfb_pitch = params->cfb_stride / fbc->limit;
 
 	/* FBC_CTL wants 32B or 64B units */
 	if (DISPLAY_VER(dev_priv) == 2)
@@ -517,18 +515,14 @@ static int intel_fbc_min_limit(int fb_cpp)
 
 static int intel_fbc_max_limit(struct drm_i915_private *dev_priv)
 {
-	/*
-	 * FIXME: FBC1 can have arbitrary cfb stride,
-	 * so we could support different compression ratios.
-	 */
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-		return 1;
-
 	/* WaFbcOnly1to1Ratio:ctg */
 	if (IS_G4X(dev_priv))
 		return 1;
 
-	/* FBC2 can only do 1:1, 1:2, 1:4 */
+	/*
+	 * FBC2 can only do 1:1, 1:2, 1:4, we limit
+	 * FBC1 to the same out of convenience.
+	 */
 	return 4;
 }
 
-- 
2.32.0

