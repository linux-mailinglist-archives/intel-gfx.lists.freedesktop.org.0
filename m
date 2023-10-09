Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 681547BDEB8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA3B10E103;
	Mon,  9 Oct 2023 13:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F9A10E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696857733; x=1728393733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E8hQTs0QFjk0o6aQxxfKH0gVIXIZiK2xO7RnagGGpYI=;
 b=Eo0VXj9sUsT4P9CF435ugC5nvR8Kyui6o+9VxbdWvg8Fnki/3ti8/MKt
 OE7jK43CLrVeL//vLgWHfCBvWNq7iUgHNOjm4bXDw+Y2S7ad0mrhyqpLc
 7+o7GTrbD53LRXT+9vU9JoFvTYOQqly/lFL37txHt7MHHjIKX2k+hAUsg
 HRZ4wx5ZDqGrNxf3dvWdk4ghQ0QGxeXs8I4Huud0hf02mT2NpH3AUmvjm
 OYlVJw0DRGyLPXHcNt59XA7qVg0zrUkUzU9KS8kgn6Zoff//cWA9GPYLS
 jy6C4S5C2xoHfd13wiDfebnBGZR7JjZlK+k6P5NZ44Wec16RZj++meeck Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384014477"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="384014477"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788162069"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788162069"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 09 Oct 2023 06:22:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 16:22:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 16:22:03 +0300
Message-ID: <20231009132204.15098-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dsb: Re-instate DSB for LUT updates
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

With all the known issues sorted out we can start to use
DSB to load the LUTs.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4f92fc31059f..40b04aa7d98c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1895,9 +1895,6 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	/* FIXME DSB has issues loading LUTs, disable it for now */
-	return;
-
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state))
 		return;
-- 
2.41.0

