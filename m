Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05889809172
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F4010E970;
	Thu,  7 Dec 2023 19:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD98510E977
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977709; x=1733513709;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jirQKXvMYIDM/qXfUX3ZLObKxjofFI9gJebTI0eAdzE=;
 b=NmuviqG6s2ZBF4gXNxQQewcfW8cJDwwXjxzZqLVLTtX6ERntCgOVGpv+
 /oNsk5pnq8pop2crzdA4BRC26QANgtMwtGC1W34xunGIefndCJzj4u7JL
 AG3tjUet7dDBmGeZlFxI7JLGHzUMzFGiepdZuvnlE5IZ5dOYGwbYvm1Hv
 n19OtU7sduNA2Z6YgUrGBVnUMMRrsiON+oT1YMomL1uIjCTnLkZrGFvBy
 mq9cgyk4dHkJArY4aHW/yb3Wgm6kbyVE9+xsxqIWye9DJU8/9Ad7PHW+J
 uMK7Z+rZWitc9vpbI6NJsZSccq66I3nFvTJKSmAZ+XUW924VMA/nKbm4d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694399"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694399"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:35:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213221"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213221"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:35:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:35:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915/tv: Drop redundant null checks
Date: Thu,  7 Dec 2023 21:34:41 +0200
Message-ID: <20231207193441.20206-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
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

Neither 'tv_mode' or 'color_conversion' can be NULL,
so drop the pointless checks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 2ee4f0d95851..d4386cb3569e 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1417,9 +1417,6 @@ set_tv_mode_timings(struct drm_i915_private *dev_priv,
 static void set_color_conversion(struct drm_i915_private *dev_priv,
 				 const struct color_conversion *color_conversion)
 {
-	if (!color_conversion)
-		return;
-
 	intel_de_write(dev_priv, TV_CSC_Y,
 		       (color_conversion->ry << 16) | color_conversion->gy);
 	intel_de_write(dev_priv, TV_CSC_Y2,
@@ -1454,9 +1451,6 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 	int xpos, ypos;
 	unsigned int xsize, ysize;
 
-	if (!tv_mode)
-		return;	/* can't happen (mode_prepare prevents this) */
-
 	tv_ctl = intel_de_read(dev_priv, TV_CTL);
 	tv_ctl &= TV_CTL_SAVE;
 
-- 
2.41.0

