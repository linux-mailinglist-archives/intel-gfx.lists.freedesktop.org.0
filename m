Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA53CB1CA15
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F1F10E7AD;
	Wed,  6 Aug 2025 16:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oG2o3i1A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA2E10E7B1;
 Wed,  6 Aug 2025 16:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499345; x=1786035345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WEUl+szcpU0Bdq9ns74rq15kn28pwta5FPVObGYzpzQ=;
 b=oG2o3i1AbztClrtLVSEoD5Kz1WXosE6J1yCXz3at/fu/f7ppbdONxtfb
 Gk6XtZnDRTvSbWZJaOFeix3AQAmKcsaL++yGhqScTRmU98v3w8jZtKTCp
 ROGwrZAUxH+7mn1UNA+lHJQwOSYl0MVbrNnLAY0tTwK6RufSYHnEurzXL
 kcN4jk1k+nKn+o7xGMPVyR9gsRCcexHbQ3WXI8elteNjsGJzyQIMdW9hg
 gNXxrNkswMgjjQaPtKVWtzTMJL7P3Ld4GDRaHXvq67/uNS2HzzIHEz6xl
 lHgQfmQN4c2axCbTcjQLClk7A46lRqRRVcFUAvTTyRPcYa/AhhmB3spwQ A==;
X-CSE-ConnectionGUID: u1+hqDm+SjeKPhjCMWbuNA==
X-CSE-MsgGUID: gSxWVVmCQu6JTWWLu+y/Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199683"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199683"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:45 -0700
X-CSE-ConnectionGUID: 3UdVKDevSOu9yUgvzkSI+g==
X-CSE-MsgGUID: r+Huk//fTrWYScssrsOOQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659313"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/15] drm/i915/clockgating: pass display to DSPCNTR and
 DSPSURF register macros
Date: Wed,  6 Aug 2025 19:55:06 +0300
Message-Id: <014410b59845b401950faff992540ea9b32ac213.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Underneath, the macros expect struct intel_display. Switch to it in
preparation for removing the transitional __to_intel_display() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index bd919fa3bee5..e501f4937510 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -136,13 +136,13 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	for_each_pipe(display, pipe) {
-		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(dev_priv, pipe),
+		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(display, pipe),
 				 0, DISP_TRICKLE_FEED_DISABLE);
 
-		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(dev_priv, pipe),
+		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(display, pipe),
 				 0, 0);
 		intel_uncore_posting_read(&dev_priv->uncore,
-					  DSPSURF(dev_priv, pipe));
+					  DSPSURF(display, pipe));
 	}
 }
 
-- 
2.39.5

