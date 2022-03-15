Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015A4D9C2E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14EC10E422;
	Tue, 15 Mar 2022 13:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC34310E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350890; x=1678886890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YI2sB0jzL1ZnYBCpNsiBweWs2kyTYCYja22mDGDehOQ=;
 b=ae4G617ka/vqJKqlBkvbGFYG94z6jf5tmwQD5yh0QfDN7TrFltXXEsBv
 Qfhsm3YQEWYPGH4W8jTwNOKyJiN+qyB1HUWLNoWt5L5ulFQdsCwyxTU8S
 gsT6HyPw2D+vSDUA+BDbJfdaeX5WmCjfZMnrpPmQJgii+a9Rttn/8eFQl
 M/Hl8a7Quilizx6VsSW4vrEWlM10yY+XmTkYHr7d7vb+6wATOk3690Bhz
 QAd4faBj4OAF2pADE1X0mrKMb0moChZjeCpxKd0itKX7wAERvxXqKf2Gp
 gWUMy7Y9WybLSLDohPbSVArP8xVk3UB+Y6fDJb3hcWUGTfFdJCqe5zDGW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="317019029"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="317019029"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="540434849"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 15 Mar 2022 06:28:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:48 +0200
Message-Id: <20220315132752.11849-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Don't cancel/schedule drrs work
 if the pipe wasn't affected
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

Skip all the DRRS work cancel/schedule stuff if the pipe's
frontbuffer bits were not among those affected by the frontbuffer
rendering.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 91aab77c495c..f36394fd85be 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -278,32 +278,31 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		unsigned int frontbuffer_bits;
 
-		cancel_delayed_work(&crtc->drrs.work);
-
 		mutex_lock(&crtc->drrs.mutex);
 
-		if (!intel_drrs_is_enabled(crtc)) {
+		frontbuffer_bits = all_frontbuffer_bits & crtc->drrs.frontbuffer_bits;
+		if (!frontbuffer_bits) {
 			mutex_unlock(&crtc->drrs.mutex);
 			continue;
 		}
 
-		frontbuffer_bits = all_frontbuffer_bits & crtc->drrs.frontbuffer_bits;
 		if (invalidate)
 			crtc->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
 		else
 			crtc->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
 
 		/* flush/invalidate means busy screen hence upclock */
-		if (frontbuffer_bits)
-			intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
+		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
 
 		/*
 		 * flush also means no more activity hence schedule downclock, if all
 		 * other fbs are quiescent too
 		 */
-		if (!invalidate && !crtc->drrs.busy_frontbuffer_bits)
-			schedule_delayed_work(&crtc->drrs.work,
-					      msecs_to_jiffies(1000));
+		if (!crtc->drrs.busy_frontbuffer_bits)
+			mod_delayed_work(system_wq, &crtc->drrs.work,
+					 msecs_to_jiffies(1000));
+		else
+			cancel_delayed_work(&crtc->drrs.work);
 
 		mutex_unlock(&crtc->drrs.mutex);
 	}
-- 
2.34.1

