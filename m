Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA338389E3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6500910E1B7;
	Tue, 23 Jan 2024 09:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0576310E1B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706000479; x=1737536479;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OOSGTPFRrcILRFgNZlNoReNxG5uraq9Y3Ml4mpDNZZA=;
 b=ZHQeKhbhcbrg3ilg8E0QolDuckTgDmOQ/vm8vU6WX7LzNoqQ8kixoOlL
 iDOhTd6uc4vzOhQT5Ue0GlPcmdY0CbiqKO5ldSRE3UYP+31Ok31QcXai8
 4tPNVfK4F+aH3N+3nVNBBNBaHnI3xSrOZQB3X6fKR/gyrNprPN7z+krrz
 fHGC3sWPy8Bl9oV8Ho7HFcFaul3kc29qFvgGCbiMFvTxCgIYew7rRRizb
 lthJn3EHN6kTfk9xtlr6Y1vrN6Nly0zu22/YgWzxeC415z4s/xH33MJzJ
 iayvwNFYg5DWgGepYGxdlI/dZU9vBnysqxq62CAJciN7xAi9B85EU4XhO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="391882494"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="391882494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:00:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820019931"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820019931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 01:00:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 11:00:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/fbc: Don't use a fence for a plane if FBC is not
 possible
Date: Tue, 23 Jan 2024 11:00:50 +0200
Message-ID: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

No point in wasting a fence on a plane if it can't do FBC anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92e959c8ac7..96a31d73f869 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -533,7 +533,7 @@ bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 
 	return DISPLAY_VER(dev_priv) < 4 ||
-		(plane->fbc &&
+		(plane->fbc && !plane_state->no_fbc_reason &&
 		 plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
 }
 
-- 
2.43.0

