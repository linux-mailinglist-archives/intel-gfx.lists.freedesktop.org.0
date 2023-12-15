Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7958781461B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA38910E9EF;
	Fri, 15 Dec 2023 11:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9539110E9EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638017; x=1734174017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uMTfudmY29qSU1SzGMMXHC9GA8pdaxMQjza1DQOgKas=;
 b=Kfmk9BENn6GWMGtWCmoAZujv3NCdZlTjXu/977DCpE7SJnWpbYU5dQaO
 wj467Ag9OZxCVE/Y+fmbRUhdpaWl1WCOVyeg/NP4lQO4kQlruv42D7TQj
 L8hoPFNPc9X53vvMd6OZjdAEcV227yCXdKN47RxWpF10WioCCXGoqacKJ
 RtDzIZSFecz/EHZLGt56aF2PHwqpZP0QqWXQq5cmfyA1zNN7PrQISM84M
 BrMZ00mvsDmgO46URqeLVCT5EyDn62hdX9iu0kqa3/eLkXaSaqKmU8zZb
 l4Jm/ciyKucWUu0y+GB5YMyJy2pwQ2y8lSDrJZRigc17U3jR+loHfOYI8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136965"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136965"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935286"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935286"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:00:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:00:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 13/15] drm/i915/fbdev: Fix smem_start for LMEMBAR stolen
 objects
Date: Fri, 15 Dec 2023 12:59:27 +0200
Message-ID: <20231215105929.29568-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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

The "io" address of an object is its dma address minus the
region.start. Subtract the latter to make smem_start correct.
The current code happens to work for genuine LMEM objects
as LMEM region.start==0, but for LMEMBAR stolen objects
region.start!=0.

TODO: perhaps just set smem_start=0 always as our .fb_mmap()
implementation no longer depends on it? Need to double check
it's not needed for anything else...

Cc: Paz Zcharya <pazz@chromium.org>
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

