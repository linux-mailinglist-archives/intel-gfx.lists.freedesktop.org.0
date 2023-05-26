Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD64712AC2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FFC210E816;
	Fri, 26 May 2023 16:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C768210E816
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119096; x=1716655096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vk5C689FFftka3Qp6e/wlKz6bY3Lyj0znNDFbxynLZM=;
 b=HphMGXCqNaI3L5ydYfteH6CXvUiFvdxtQyQuHCaBuBNT9WOC2qdK9oOi
 aEZ28ciVPsmm4qCPuYACHAJWRKrWNh+Hzx//+8vdtP6NgyA1X7QaoLsal
 eeHO4t3IVmYoRtS7tSEfqq+Y9+ckdzufVSnMTiFgwWYbwORW7rxYVCVpC
 c2O1KThktN9/BsEZB87WhLxhr4NbqLlVKTm7a680NiB5/ILEZu+wcLjHm
 34kyrWF/ZZhcY3C0ZtcpB0axk0iP098FoHUKcrPePHNKO6rInsNaNlIA3
 nMUdshNgAZN0r8IUoM6iVEJLw4kBVprnoEcp4m3k4BFeO7DC+gqMqvA3n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="417730897"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="417730897"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682770153"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682770153"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:54 +0300
Message-Id: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero plane
 offset
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

We assume the plane offset is 0. Warn if it's not. This also fixes a
warn on unused but set variable offset.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 616654adbfb8..b52a681ca85e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1037,6 +1037,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	}
 	plane_config->base = base;
 
+	drm_WARN_ON(&dev_priv->drm, offset != 0);
+
 	val = intel_de_read(dev_priv, PIPESRC(pipe));
 	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
 	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 36070d86550f..6b01a0b68b97 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2529,6 +2529,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	plane_config->base = base;
 
 	offset = intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
+	drm_WARN_ON(&dev_priv->drm, offset != 0);
 
 	val = intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
 	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
-- 
2.39.2

