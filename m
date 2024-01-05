Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA71E8254D6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C60410E5FF;
	Fri,  5 Jan 2024 14:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1162B10E5FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463568; x=1735999568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xtJtJ9IM815/vn59HG8z/E2F9IASAa12T4dn41adfCo=;
 b=oKhs+S8eZf1rcGMeBNfQhC2oNzlSBUewNcDRVtuuWhv1Gv8JyuO0wiiD
 jSpAu1JKdmXBdWFmmR41o7NSVLgqEACT4i+sYNxycjMdKQ/kCzVjKWHCm
 8nrJpsep8Q/ZAjcwlJH0t04ZAy17xpTe2oCTSjrDxU5deEJGmNX4WsETE
 LtjE4vUGGzTW/WSm6PKKy6mSz7dzmcBk7Ni0tujOVYEkXQJJ2ljsvRO0l
 2v4P7dkElhuh3HZ8Kd8UJklWFDA1PqE+77+3I1JBWqU6dAtl9qPT1EKIv
 FiWlu+Vd1PG+ib2abUqgvc8QNu2UY0JCpyS9npYs2F/W3rDVLZkgW1dqB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10878625"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="10878625"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="780777954"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="780777954"
Received: from clspence-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.15])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:06 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/4] drm/i915/xe2lpd: Update bxt_sanitize_cdclk()
Date: Fri,  5 Jan 2024 11:05:35 -0300
Message-ID: <20240105140538.183553-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240105140538.183553-1-gustavo.sousa@intel.com>
References: <20240105140538.183553-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With Xe2_LPD, there were changes to the way CDCLK_CTL must be
programmed. Those were reflected on _bxt_set_cdclk() with commit
3d3696c0fed1 ("drm/i915/lnl: Start using CDCLK through PLL"), but
bxt_sanitize_cdclk() was left out.

This was causing some issues when loading the driver with a pre-existing
active display configuration: the driver would mistakenly take the
current value of CDCLK_CTL as wrong and the sanitization would be
triggered.

In a scenario where the display was already configured with a high
CDCLKC and had plane(s) enabled, FIFO underrun errors were reported,
because the current sanitization code selects the minimum possible
CDCLK.

Fix that by updating bxt_sanitize_cdclk() to match the changes made in
_bxt_set_cdclk(). Ideally, we would have a common function to derive the
value for CDCLK_CTL, but that can be done in a future change.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c5fecde7afa8..0012e3171f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2071,7 +2071,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	if (vco != dev_priv->display.cdclk.hw.vco)
 		goto sanitize;
 
-	expected = skl_cdclk_decimal(cdclk);
+	if (DISPLAY_VER(dev_priv) >= 20)
+		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
+	else
+		expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
 	if (HAS_CDCLK_SQUASH(dev_priv))
-- 
2.43.0

