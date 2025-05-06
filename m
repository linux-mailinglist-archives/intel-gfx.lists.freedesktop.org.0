Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE61AAAC1D1
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53A410E649;
	Tue,  6 May 2025 10:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/hULtbF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF2010E653;
 Tue,  6 May 2025 10:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746529048; x=1778065048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=53MJKKr1orwrsNud3wfOa1p9ujOvUn9jOOBXkrQGJn8=;
 b=c/hULtbF/a753n8QmQItcfUJMEu6edxoNttp13+iXnQ4j0wTjcg56grv
 xwW0RuBJGHuYAq5FSUCClQKY3IJDpTLpKZqeo8fidMb9NxMBQ8X/AQCBU
 B6oFxAp3+eO6ri+uYSMBQLXEmrGQA0jOSKDZ1jUMTw3pF2pT6fKV+Mr5H
 DzfCZwnwT5IJUSnPW0QMV7KIaJWnoG6B86ObgNcpRLxZ7pfNEKC4sKthk
 VC27YV9UcrabJfowxKWK9VFM2aodlINVI0Vpz84e5WR0uCu4i/Xf81+CR
 mTRyFeoyWkWl7J0K70MyieH+astd7vi+ZKx3jy5g0mGLRcZI9q06x28pu A==;
X-CSE-ConnectionGUID: 7w4vcME0TwCuXzzTGanOKg==
X-CSE-MsgGUID: +TT2s0SdSXyHAwyB+6keOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59580292"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59580292"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:28 -0700
X-CSE-ConnectionGUID: pJjuvnJ5TvqitAEMpkvMqA==
X-CSE-MsgGUID: RvjrEsImSW6L1vu81m3DtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="139636353"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/dsi: remove dependency on i915_drv.h
Date: Tue,  6 May 2025 13:57:16 +0300
Message-Id: <2cee3cd9d7d9bec8dfe9c21fe5d172b1843b3d97.1746529001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746529001.git.jani.nikula@intel.com>
References: <cover.1746529001.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Remove final references to struct drm_i915_private and drop dependency
on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 403151175a87..a8f012119165 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -4,8 +4,9 @@
  */
 
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_dsi.h"
 #include "intel_panel.h"
 
@@ -116,14 +117,14 @@ struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
 enum drm_panel_orientation
 intel_dsi_get_panel_orientation(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	enum drm_panel_orientation orientation;
 
 	orientation = connector->panel.vbt.dsi.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
-	orientation = dev_priv->display.vbt.orientation;
+	orientation = display->vbt.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
-- 
2.39.5

