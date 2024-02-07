Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54E384C1EB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 02:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDA811303A;
	Wed,  7 Feb 2024 01:33:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9hayxVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337E611303A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 01:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707269626; x=1738805626;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vufCbI5r45YUdGPUGItwn773jhRNvz9Fh50rKUd5RKs=;
 b=Q9hayxVPnS/CvSzm/v/BJtPKgJEzQ/NtlMTBjOvb5+BhgCyb4wz3o6+o
 GRKs7qtreA8aeAsGFsfbkDtY9lbKdhiYdBvllR/BYYUM+OZXyeptuXzHw
 tj8oxsTepxe4OvbJBb8racHn/y0QWpEXtV/KvQaGrhmfRs5J1yyDe0dD5
 GObYIQb2kUtaaklW2ZaIg0JUfVO+vqeG/Yc7hQMGDYPl3qVrOVWQ+KgfV
 dw64G0j1f2vKZHJeu9ujkew/B7vF4RRLyugkK+uuOZCsbTCavQEGu3Xf+
 CZUkTLbGPiFeSJ6Un2xrznADe0jmtzlPDjyrnkKB4IKRY+4i8PK8W4FzU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18399583"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="18399583"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 17:33:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="824353998"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="824353998"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 06 Feb 2024 17:33:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 03:33:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/cdclk: Remove the hardcoded divider from
 cdclk_compute_crawl_and_squash_midpoint()
Date: Wed,  7 Feb 2024 03:33:33 +0200
Message-ID: <20240207013334.29606-4-ville.syrjala@linux.intel.com>
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

cdclk_compute_crawl_and_squash_midpoint() was still assuming
that cd2x divider == 1 (ie. full divider == 2). Remove that
assumption by computing the dividers properly.

We'll also toss in a WARN in case the divider someone ends
up different between the old and new cdclk configs. That should
never happen given we have div==2 in all the cdclk table entries
for the affected platforms.

If in the future we need a config where the divider also needs
to be changed then we likely need to add an extra step into the
cdclk programming sequence to make sure things stay within
legal limits throughout the process.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a0013e37d53c..ca00586fdbc8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1846,7 +1846,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 						    struct intel_cdclk_config *mid_cdclk_config)
 {
 	u16 old_waveform, new_waveform, mid_waveform;
-	int div = 2;
+	int old_div, new_div, mid_div;
 
 	/* Return if PLL is in an unknown state, force a complete disable and re-enable. */
 	if (cdclk_pll_is_unknown(old_cdclk_config->vco))
@@ -1865,6 +1865,18 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	    old_waveform == new_waveform)
 		return false;
 
+	old_div = cdclk_divider(old_cdclk_config->cdclk,
+				old_cdclk_config->vco, old_waveform);
+	new_div = cdclk_divider(new_cdclk_config->cdclk,
+				new_cdclk_config->vco, new_waveform);
+
+	/*
+	 * Should not happen currently. We might need more midpoint
+	 * transitions if we need to also change the cd2x divider.
+	 */
+	if (drm_WARN_ON(&i915->drm, old_div != new_div))
+		return false;
+
 	*mid_cdclk_config = *new_cdclk_config;
 
 	/*
@@ -1877,15 +1889,17 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 
 	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
 		mid_cdclk_config->vco = old_cdclk_config->vco;
+		mid_div = old_div;
 		mid_waveform = new_waveform;
 	} else {
 		mid_cdclk_config->vco = new_cdclk_config->vco;
+		mid_div = new_div;
 		mid_waveform = old_waveform;
 	}
 
 	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
 						    mid_cdclk_config->vco,
-						    cdclk_squash_len * div);
+						    cdclk_squash_len * mid_div);
 
 	/* make sure the mid clock came out sane */
 
-- 
2.43.0

