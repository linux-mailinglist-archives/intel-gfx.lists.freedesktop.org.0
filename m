Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014A0672342
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FD110E047;
	Wed, 18 Jan 2023 16:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A3310E047
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059454; x=1705595454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KKXn+6gdLZJCQ9N66HUYoYErX+Va6Mg/QhIHy3S3MQE=;
 b=VTEngZzwg2f6SHva0OM/mxKF4N+uyrVAwYM7f7Q7ZB5G16VUZrYcNfBW
 8HylMXHi+9if26q/HRKEUtrQvEk0eHhOpYeoEwkMsCDAcfPxqEMbODe2x
 MIb8a1gHSY16zniIVC2X96gSj0AcG+oy1NY3nLA2eICH274SZENFb2y9v
 7TbIcHFiuZ2gUqP8+zSbjWd5vKsAbkRtIiM9RdNm7aTtKfEL06lvsdXST
 dkcRUYrMS6wxXFG2miB33UDBpt4BxFZXgcZooCLoKSlu92ygWjdfR4P/v
 kbP52gqY4djmssOyFZy1YsInJZ2k3Lv0hN2YGxLMkpYPtZ1ATJJ6WdvYv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289750"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289750"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060423"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:29 +0200
Message-Id: <20230118163040.29808-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Pimp debug/error prints
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

Print the crtc/DSB id information to make it clear which DSB engine
we're talking about.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 96bc117fd6a0..f41146fc84d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -88,7 +88,8 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 
 	/* each instruction is 2 dwords */
 	return !drm_WARN(&i915->drm, dsb->free_pos > dsb->size - 2,
-			 "DSB buffer overflow\n");
+			 "[CRTC:%d:%s] DSB %d buffer overflow\n",
+			 crtc->base.base.id, crtc->base.name, dsb->id);
 }
 
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
@@ -232,7 +233,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		return;
 
 	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm, "DSB engine is busy.\n");
+		drm_err(&dev_priv->drm, "[CRTC:%d:%s] DSB %d is busy\n",
+			crtc->base.base.id, crtc->base.name, dsb->id);
 		goto reset;
 	}
 
@@ -250,7 +252,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 
 	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
 		drm_err(&dev_priv->drm,
-			"Timed out waiting for DSB workload completion.\n");
+			"[CRTC:%d:%s] DSB %d timed out waiting for idle\n",
+			crtc->base.base.id, crtc->base.name, dsb->id);
 
 reset:
 	dsb->free_pos = 0;
@@ -325,7 +328,8 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
 	kfree(dsb);
 out:
 	drm_info_once(&i915->drm,
-		      "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
+		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
+		      crtc->base.base.id, crtc->base.name, DSB1);
 
 	return NULL;
 }
-- 
2.38.2

