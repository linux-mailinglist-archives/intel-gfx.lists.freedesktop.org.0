Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB910440655
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 02:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A036EA97;
	Sat, 30 Oct 2021 00:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCA36EA97
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Oct 2021 00:11:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="231041031"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="231041031"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 17:11:39 -0700
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="487763100"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 17:11:39 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Karthik B S <karthik.b.s@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 29 Oct 2021 17:18:01 -0700
Message-Id: <20211030001801.237548-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Exit PSR when doing async
 flips
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

Changing the buffer in the middle of the scanout then entering an
period of flip idleness will cause part of the previous buffer being
diplayed to user when PSR is enabled.

So here disabling and scheduling activation after a few milliseconds
when async flip is enabled in the state.

The async flip check that we had in PSR compute is not executed at
every flip so it was not doing anything useful and is also being
dropped here.

Cc: Karthik B S <karthik.b.s@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d589d471e335..d1301e2729553 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -731,12 +731,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (crtc_state->uapi.async_flip) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 sel fetch not enabled, async flip enabled\n");
-		return false;
-	}
-
 	/* Wa_14010254185 Wa_14010103792 */
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1780,6 +1774,11 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
 
+		if (psr->enabled && crtc_state->uapi.async_flip) {
+			intel_psr_exit(intel_dp);
+			schedule_work(&intel_dp->psr.work);
+		}
+
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.33.1

