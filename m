Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C8282EA71
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9153710E435;
	Tue, 16 Jan 2024 07:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0C510E435
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391845; x=1736927845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K+6qgVUBNtRTkiebyrnLpQa9mzmDZ/Ji7dFTmUOAOo0=;
 b=dPRI+bH8Qn25IBKEtM2F3580C5tKfsk0YIDBhbBrO0uy1MGyULl4w5f7
 WFiffguEdf+BnUl1yLQsqeLIUxNS0mjwrSRslJLwAVjILPMs50uQgw5hB
 8Ftt51ereBDP51ZhBvDqVEDTIcPvE4FMVIWc0jCMiRJHv0oVQFjJBbkFJ
 aRBzhHlQAvhlymWOgTwI+qJ306TVnHFtJcjfLGfcAK2yNdaT/sL+ePqpp
 RLVUbNoe4MKLEULKY9DopIFgcaHbLtDbIM5HQNJaikVnb6UyurLjWd9gG
 99YZkt+eh6O4+8xbI4hpeQPGeCSc6fVwld1dQ/dXFU6/OZr2POkh3Dp5n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948726"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948726"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947045"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947045"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 13/16] drm/i915/fbdev: Fix smem_start for LMEMBAR stolen
 objects
Date: Tue, 16 Jan 2024 09:56:33 +0200
Message-ID: <20240116075636.6121-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The "io" address of an object is its dma address minus the
region.start. Subtract the latter to make smem_start correct.
The current code happens to work for genuine LMEM objects
as LMEM region.start==0, but for LMEMBAR stolen objects
region.start!=0.

TODO: perhaps just set smem_start=0 always as our .fb_mmap()
implementation no longer depends on it? Need to double check
it's not needed for anything else...

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 1ac05d90b2e8..0665f943f65f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -79,7 +79,8 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
 		/* Use fbdev's framebuffer from lmem for discrete */
 		info->fix.smem_start =
 			(unsigned long)(mem->io.start +
-					i915_gem_object_get_dma_address(obj, 0));
+					i915_gem_object_get_dma_address(obj, 0) -
+					mem->region.start);
 		info->fix.smem_len = obj->base.size;
 	} else {
 		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
-- 
2.41.0

