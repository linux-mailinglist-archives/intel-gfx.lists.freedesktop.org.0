Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1DC712BAF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D165410E1DB;
	Fri, 26 May 2023 17:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF2B10E1DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685121745; x=1716657745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1mGmi0IVeEykfBkWIDLNSpgMSU34bwQmvSk+BpmnjHs=;
 b=oAou+QUYExDzbBwHaj+fVNzZndxRArboxIOWtGg+jaFKJUwQdvBxhkoP
 jx2sdLtOzzGyFw2IUF2r1SfB9tzK0RFr9VKY8H5amGrRQ/RnRQ/IdB7fG
 HA0W1aWzuy7fhBuvznzI9dwVYS1jZkkEKSKhOwk40yTaI9pK3dYCbrVlS
 imrV7v9GSEuqHfMwcC7w9eTr6e2TnXcg+5BL+dzIGpI0doCbmuLU9tL4g
 y4yq+xPkGGVb+mELPpX7eQ+dZOVG2aXxbDPiBarcBIZpzPYgDhKXi0qbT
 gMTHimfHbR2HnX9N9xKl8F9aBzTkWlqNrDWAslMLtMC1WqVm6RI1H9dUf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="354270801"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="354270801"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="849629155"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="849629155"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:22:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 20:22:18 +0300
Message-Id: <20230526172218.1597394-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
References: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/plane: warn on non-zero plane offset
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

We assume the plane offset is 0. Warn if it's not. This also fixes a
warn on unused but set variable offset.

v2: initialize offset on the gen2/3 path (Ville)

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 3 +++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 616654adbfb8..b10488324457 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1033,10 +1033,13 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 					       DSPLINOFF(i9xx_plane));
 		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
+		offset = 0;
 		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
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

