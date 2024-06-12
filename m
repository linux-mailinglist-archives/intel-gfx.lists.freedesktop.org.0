Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C0904B0E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 07:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1670B10E78B;
	Wed, 12 Jun 2024 05:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1kDj6nh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7BA510E795
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2024 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718171514; x=1749707514;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g/DTyUpuyruLw81xOHOolYKXPYQPIls5uUGjWaebvhE=;
 b=P1kDj6nhTCC1nFd9Fel2wfY4OumqaiMGeuiu36HQ8wFChT22fa1pQsS/
 pchLwgHh2J4JNIj1YbIMdAeEiIXz06w35K5qYO7g2AXc6Cv9cXrzC7h49
 sz41HqYkjaiS+e+55wl501zjpGMv0e4tNTmRDRtC8RhJ+KXhOGiQpiETb
 Yc0I0pUOQM/ZLEmoq+6aJtpHP4RTBdlJNYhfvny87m36c5RUFZw/LkWd0
 foIShw7oEqWEnTZEDemozmC9V4oi/tF8ZvMikBDcrs8VOYIQWrDFfBVTY
 kVr8lRG4Tgzs+xlbNwU2uJJZpKnIL82+UbMZMmkJ7VfI1r9udBSPLo3QN A==;
X-CSE-ConnectionGUID: O430iXXnS/Wvh1+sLBi0/w==
X-CSE-MsgGUID: lwtbXDGxR5SOFbd9Lx80Zw==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="14750493"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="14750493"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 22:51:53 -0700
X-CSE-ConnectionGUID: xGE1029vS7OY/CwQGjUS+w==
X-CSE-MsgGUID: a5YL3ydMRy6Aq/YPekVRdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="44583429"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 11 Jun 2024 22:51:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Update vtotal math to address 32b build
Date: Wed, 12 Jun 2024 11:22:03 +0530
Message-ID: <20240612055203.270550-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Fix vtotal division calculation which works for 32b systems.

Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05f67dc9d98d..1e37383e14e7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -149,7 +149,8 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 
 	crtc_state->cmrr.cmrr_n =
 		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
-	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
+	vtotal = DIV_ROUND_UP_ULL(adjusted_mode->crtc_clock * 1000 * multiplier_n,
+				  crtc_state->cmrr.cmrr_n);
 	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
 	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
 
-- 
2.45.2

