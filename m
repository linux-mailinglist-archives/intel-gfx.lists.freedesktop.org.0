Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6F48958BB
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162E510FE0E;
	Tue,  2 Apr 2024 15:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8Ftem/u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66DA910FE0E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073029; x=1743609029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Izt1Exx0uaYCaQ4bGZTipVtNyTNlKvGVD76M8CZPAC0=;
 b=O8Ftem/uBraygE/YZnATaFea+inK1IizhC7RqnG26wSCEX0eBZbXHFiE
 NyBEvAua6RJoXidS8tMONzkRhHc/wVFjEodjBJzVW5Feh+reDCB1Czqbc
 2l8j9jsYmJ80cnf3WlOzyB8yZZ3jQsV7X9X/qTL5pFo2OhjQz7xYUqM8u
 BgHsJc8jmgH1qqsJM9SA3GMlJlGa/qKTopnlUpkuRrsJBWUXvCpSij2Eu
 5S444onUBB1BjkMb5wh5qYo3kRv8dpmbxrUjnPtXnXGTKs5v7MckrR92L
 VDneXfwi5MO4KN+7X9vZh7m5IVVbUHCP91dw2fsWeeJryuML3INw9e05q A==;
X-CSE-ConnectionGUID: HX0ysb0hRZ6285tb686z/A==
X-CSE-MsgGUID: 0VYFyUFYQoSXVImV+dpZ5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980815"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980815"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789465"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 03/14] drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
Date: Tue,  2 Apr 2024 18:50:05 +0300
Message-ID: <20240402155016.13733-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

No one ever figured out why bumping the cdclk helped
with whatever issue we were having at the time.
Remove the hacks and start from scratch so that we
can actually see if any problems still remain.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 131721b08819..8d937e77f91a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2814,25 +2814,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->dsc.compression_enable)
 		min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
-	/*
-	 * HACK. Currently for TGL/DG2 platforms we calculate
-	 * min_cdclk initially based on pixel_rate divided
-	 * by 2, accounting for also plane requirements,
-	 * however in some cases the lowest possible CDCLK
-	 * doesn't work and causing the underruns.
-	 * Explicitly stating here that this seems to be currently
-	 * rather a Hack, than final solution.
-	 */
-	if (IS_TIGERLAKE(dev_priv) || IS_DG2(dev_priv)) {
-		/*
-		 * Clamp to max_cdclk_freq in case pixel rate is higher,
-		 * in order not to break an 8K, but still leave W/A at place.
-		 */
-		min_cdclk = max_t(int, min_cdclk,
-				  min_t(int, crtc_state->pixel_rate,
-					dev_priv->display.cdclk.max_cdclk_freq));
-	}
-
 	return min_cdclk;
 }
 
-- 
2.43.2

