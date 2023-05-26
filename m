Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 431EF712ACA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9090C10E825;
	Fri, 26 May 2023 16:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FED10E823
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119123; x=1716655123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=52uNhEEU5HtYv8tjmbZ5TJgOJL4buyKJUl9qg8xCQ/c=;
 b=NKyQkt+TKYwTkHBK3Id15KaIEsqSH4XdKQA5MojcEg6cVAUMWxw/Odrq
 L+N89epHhVeGHnz0Xz60W1+kK4Dd/aI6kCcApp6MF/iMiCJXmgf/DQeS2
 L4ns5bzVCWRv9/wIKdf0qP+iFenaKt7C2Bfkxbhr70pMSxpaJ3arlAA5Z
 mj19kN0Jgt0ofJz+Mf+rztcfOiq9TpKRZButLzJgeD2PTLdP/ITLkpGij
 mRT303emiUccNgJq+iGpcErvO/9rWMHzKbn2GmuNHpr314SbsTLXkgg1D
 2iiMNr+QuhYmffpHqaCd+wl/Ar6C4OlGj45M9npYaC2BwRAzhVuJ8SUH+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="354261235"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="354261235"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="699468248"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="699468248"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:59 +0300
Message-Id: <ce7a5cb06c562a3399206c521a24f5091a3e7c23.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/fb: drop unused but set variable
 cpp
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 0d27a98dcbbe..446bbf7986b6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1601,7 +1601,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 	for (i = 0; i < num_planes; i++) {
 		struct fb_plane_view_dims view_dims;
 		unsigned int width, height;
-		unsigned int cpp, size;
+		unsigned int size;
 		u32 offset;
 		int x, y;
 		int ret;
@@ -1618,7 +1618,6 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 				return -EINVAL;
 		}
 
-		cpp = fb->base.format->cpp[i];
 		intel_fb_plane_dims(fb, i, &width, &height);
 
 		ret = convert_plane_offset_to_xy(fb, i, width, &x, &y);
-- 
2.39.2

