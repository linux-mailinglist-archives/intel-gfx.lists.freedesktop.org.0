Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4973B847C7A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B716F10F122;
	Fri,  2 Feb 2024 22:44:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CX2ynIVh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D5510F122
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913874; x=1738449874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MTM7GasKa4ke1PKew9Bk65t75LVrciRlYcjpgF1OJiw=;
 b=CX2ynIVh3+FkR1AYgpfPiRFwY3qlRv6tuneQtQf+gQ/eFrvKqyg5aoUK
 WgIrGx5VSmrufNs67mxjzFodVd3rhzZGjP0yUfXvmeqZ6hl3btOY8UH4k
 5ywqwlugwFYF10tOoG1QHcYoSjZj0lWXVNY+JAdCzMX0YEQNEvT5IP9gO
 reAg/eKcr0kVv2s91CnXfGcjL/TtPwKTKroj8/n4mF0M1tDk7k9q6yN71
 Q4VVPoW961aPjiJe84+ifxCpY/fKe2SEaYqmexUMZXoES3qURXZ0CZzJP
 J8eI0CMdFFEHqpX9Ki9Fb6hcQZvlbHp0ls3Sdfhqr6Ggg9YYQl39Hz8qH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153790"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153790"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332067"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332067"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 13/16] drm/i915/fbdev: Fix smem_start for LMEMBAR stolen
 objects
Date: Sat,  3 Feb 2024 00:43:37 +0200
Message-ID: <20240202224340.30647-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
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
2.43.0

