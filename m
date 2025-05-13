Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF672AB4FC1
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684BE10E54D;
	Tue, 13 May 2025 09:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWQUH4MZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3AA10E548;
 Tue, 13 May 2025 09:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128539; x=1778664539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUaw6pMutWwVeDe5B+LmmZBNJKkFYBrySlFH3+pJzpE=;
 b=YWQUH4MZP/ttSdOEltQYsidRigPmQ6F6lMmcDHPCw5Vp7VNlVZL0lfS8
 n3tmAFK0VdbmbOTy1ADcLOPJEGfYTJzVhfQfCThx3yJk08rcdUQfEM4mn
 7U3q11kUzcxrliiukHh4xhCA8tB9dW2YlZDDrmRQHxeTyRoRMykMArYu2
 OjElXsFI+sLxZWc7fKSzeIymXwnHqtPikae8jocRQHljj2YLd/V2I2lE8
 7BT+ydeALCFev4/SCtY24+pxSyV43jc48dGXmPuf7haErinabc9CX54jH
 z6g5AnP3BTgTDtjrrrR5gYjN7BdIrlNwbB8RRQYsamB6SJnWMxmokFugr A==;
X-CSE-ConnectionGUID: 2izX1smMTOyciarGbv0deg==
X-CSE-MsgGUID: QuznKQoyQjG/ZGp4avPRjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59194647"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="59194647"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:59 -0700
X-CSE-ConnectionGUID: Rc9P1CATSzikt6TfB+GhSA==
X-CSE-MsgGUID: H6lyrx5jRvKlodSoEtK18A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137511679"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/rps: pass struct intel_display to DISPLAY_VER()
Date: Tue, 13 May 2025 12:28:42 +0300
Message-Id: <5e97ee7675b32397163eb4fba17184fc1c5a04cd.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
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

Avoid passing drm_i915_private to DISPLAY_VER().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_rps.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 678b24115951..0f1c95d70843 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -45,12 +45,13 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
 void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 					  struct dma_fence *fence)
 {
+	struct intel_display *display = to_intel_display(crtc->dev);
 	struct wait_rps_boost *wait;
 
 	if (!dma_fence_is_i915(fence))
 		return;
 
-	if (DISPLAY_VER(to_i915(crtc->dev)) < 6)
+	if (DISPLAY_VER(display) < 6)
 		return;
 
 	if (drm_crtc_vblank_get(crtc))
-- 
2.39.5

