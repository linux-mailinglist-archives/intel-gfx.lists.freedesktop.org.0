Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A18284C1E8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 02:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DE110E7D9;
	Wed,  7 Feb 2024 01:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzCafa/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CC210E7D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 01:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707269621; x=1738805621;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hw7d60lBWupY6KnQJqJYzj3sp/KQ9oWyZfLXYAiecF0=;
 b=FzCafa/+XId82hz/NuJ8rHal47wpADMcLxJvnyoEbxcjUWQqn4/f7Rmm
 FwXrxPblTRrSxw9NviBfRN7ilDj6RTwXA6RQYX3bXIkzbx6+Vr4cBqvQz
 MLKD1G6D41b2nTmjrJ+sMSVZRc+j4TRea9vhCNFWrxJNGd0KZ+PAxK/OE
 ja/PFUJI6FLWZWXIMnHkL3D+ROzP8/vbqVhoqZ/ylvCtcYXq5R7uWAT+l
 CQlF82L7UJCAkSK6tkEkFEVvHDrHfRONJOHHoYopGiUbjtAMqMizVAxCI
 vTcjCw4gp9a1pFRYwX1TKepsrzXBGzJAVXqBPjfVb3ZR6FO/eWJTogX+S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18399566"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="18399566"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 17:33:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="824353985"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="824353985"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 06 Feb 2024 17:33:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 03:33:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/cdclk: Extract cdclk_divider()
Date: Wed,  7 Feb 2024 03:33:31 +0200
Message-ID: <20240207013334.29606-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
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

Extract the cdclk divider calculation into a helper. We'll have
more users of this soon. We can now also get rid of the intermediate
'unsquashed_cdclk' variable.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 31 ++++++++++++----------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 26200ee3e23f..d79485e17ed1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1406,6 +1406,20 @@ static const struct intel_cdclk_vals lnl_cdclk_table[] = {
 	{}
 };
 
+static const int cdclk_squash_len = 16;
+
+static int cdclk_squash_divider(u16 waveform)
+{
+	return hweight16(waveform ?: 0xffff);
+}
+
+static int cdclk_divider(int cdclk, int vco, u16 waveform)
+{
+	/* 2 * cd2x divider */
+	return DIV_ROUND_CLOSEST(vco * cdclk_squash_divider(waveform),
+				 cdclk * cdclk_squash_len);
+}
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -1744,10 +1758,10 @@ static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe
 }
 
 static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
-				  int cdclk, int vco)
+				  int cdclk, int vco, u16 waveform)
 {
 	/* cdclk = vco / 2 / div{1,1.5,2,4} */
-	switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
+	switch (cdclk_divider(cdclk, vco, waveform)) {
 	default:
 		drm_WARN_ON(&dev_priv->drm,
 			    cdclk != dev_priv->display.cdclk.hw.bypass);
@@ -1826,13 +1840,6 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
-static const int cdclk_squash_len = 16;
-
-static int cdclk_squash_divider(u16 waveform)
-{
-	return hweight16(waveform ?: 0xffff);
-}
-
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -1906,16 +1913,12 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
 {
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
-	int unsquashed_cdclk;
 	u16 waveform;
 	u32 val;
 
 	waveform = cdclk_squash_waveform(i915, cdclk);
 
-	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
-					     cdclk_squash_divider(waveform));
-
-	val = bxt_cdclk_cd2x_div_sel(i915, unsquashed_cdclk, vco) |
+	val = bxt_cdclk_cd2x_div_sel(i915, cdclk, vco, waveform) |
 		bxt_cdclk_cd2x_pipe(i915, pipe);
 
 	/*
-- 
2.43.0

