Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77D8D1968
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197651120E7;
	Tue, 28 May 2024 11:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/Cl2p6C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A7F112172
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716895754; x=1748431754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ttBRv4YBl05C6t49B4+cpoTdPE0YTPIM83n7IlyqAU4=;
 b=l/Cl2p6CcJxsf8y1CdxnOa54aEkVN965hJIp6yjiHpxeGP0tRIk5zfJl
 fK0+GpyDzDS3ivDY0myN+2H2K8zm+r54krx8mpGiIMbxoymkwZdRl/Vy1
 R+zSgBqagNxaXsKSfKbyPVQKHeSHBOopTSh3YdBsBHYU+J1e+RlwpQ0JY
 V0sU6U1r3auUtKmDuEokkF9V5DQj3JY45bWDd9883iimuAUbC3Nxjj9q0
 OcZmbm7fJaGZwoygNykdVuyAG7GDg7g39s0s4fmM4uT/rd7hrmUyuPZow
 JaFpmLyDMTP0SJYjpTaHxOs2kxhexUlPxe0FscR9Y2CPqVhEftYrTLOgj A==;
X-CSE-ConnectionGUID: dUhQcO9aTCGf04QvofgZMA==
X-CSE-MsgGUID: 3al3rpDQQLa1ezfrB6UyEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13078577"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13078577"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:14 -0700
X-CSE-ConnectionGUID: pXvZKWzHSNSYDs9oxmkQbw==
X-CSE-MsgGUID: 7AJxIgmaQo6AXWRwKRp/cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="34962283"
Received: from dgoldx-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.249.36.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:13 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com
Subject: [PATCH 2/2] drm/i915: move uapi.event outside spinlock in
 intel_crtc_vblank_work
Date: Tue, 28 May 2024 14:29:01 +0300
Message-Id: <20240528112901.476068-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528112901.476068-1-luciano.coelho@intel.com>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
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

In intel_crtc_vblank_work(), we access uapi.event before grabbing the
event_lock spinlock, but modify it inside the spinlock block.  This
causes some static analyzers to get confused and issue a warning.

The uapi.event value is not protected by the event_lock, so we can
safely move it out of the protected block to prevent false positives.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index ca6dc1dc56c8..bf6e74e99f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -411,8 +411,8 @@ static void intel_crtc_vblank_work(struct kthread_work *base)
 	if (crtc_state->uapi.event) {
 		spin_lock_irq(&crtc->base.dev->event_lock);
 		drm_crtc_send_vblank_event(&crtc->base, crtc_state->uapi.event);
-		crtc_state->uapi.event = NULL;
 		spin_unlock_irq(&crtc->base.dev->event_lock);
+		crtc_state->uapi.event = NULL;
 	}
 
 	trace_intel_crtc_vblank_work_end(crtc);
-- 
2.39.2

