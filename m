Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6B364E549
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10DE310E0C9;
	Fri, 16 Dec 2022 00:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD50A10E5B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151154; x=1702687154;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mBPz3QzahoH/pvngDCVfYdu7fTgf7DmJ/3HdSXN4crI=;
 b=nvMDRcFYCgaoKN9qs27qSukRQTJr//P30KTLhmm1ss2FbUatMHucke7c
 K6rYxVy+86ycD5eH/Rkt8/HP+tNNFKfDBarNTJ6QJevCVYhh6X/cVXPT2
 aBE70JpwRy8w/mx7SmBmxvRB0AM7HswFIegiiYGCJNqiLywFGGau+nq+e
 +2w2u19CAqXhOg0UWbA5N2hp+XWcsC0fz6CPPkb2CkUAqdbEnqdA1Kxav
 VwkIvTRVahd8IWYV0iZJonUi0/6mqHlb9PWAJLT/JNOLdmOszCaqTmKq7
 2h+ARtZwKvVARGmfrW9VDjsR3jdquqZE6cILa2omM+7XjIZZEl7fxpm84 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103894"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100230"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100230"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:10 +0200
Message-Id: <20221216003810.13338-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/dsb: Pimp debug/error prints
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
2.37.4

