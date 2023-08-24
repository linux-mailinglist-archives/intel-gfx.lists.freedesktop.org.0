Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F97786959
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C05D110E4C0;
	Thu, 24 Aug 2023 08:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F8910E4BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864310; x=1724400310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mcF6slEg9cQlQd4esgFah/ofd/jWCE0AHuoSq8VggiM=;
 b=ejA+2s7R4f7S9ci1tjBWYLQZZ7pFtJ9jS98yC884zNZgDa/VIpa1VFM+
 QApuW0HhJ7bI9mqlRc8d7MstiwcYTxBN2ZphLecG0H4KlBAZ63tyiNhDS
 4KnI55GCfWAxwbtyD0tetYezqlIF8SWciC1uM79rbpyQu/aq1pnlrFANZ
 b4UfgysbzceLs2sQqLd0rnFBZgXn7QKTs7Rr/QcosqYyXC2tmJG13tqC9
 IfRg5M6rhBxO1jdM7anmi7nVNroAYDN7MGwWLVyOVZO7TclTuXDb/SqPi
 /nljIEZkjRxxGzPPGNxrDJQ96mvIKJaFPokyc4NogK370sHouRHWJE1s2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345857"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345857"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710294"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:02 +0300
Message-Id: <20230824080517.693621-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/22] drm/i915: Factor out a helper to
 check/compute all the CRTC states
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

Factor out intel_atomic_check_config() to check and compute all the CRTC
states. This will be used by a follow up patch to recompute/check the
state until required by BW limitations between CRTCs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++--------
 1 file changed, 46 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1956b89fd75d..dbf109a2e738f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6206,6 +6206,51 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
+static int intel_atomic_check_config(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int ret;
+	int i;
+
+	ret = intel_bigjoiner_add_affected_crtcs(state);
+	if (ret)
+		return ret;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state)) {
+			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
+			else
+				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
+			continue;
+		}
+
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			drm_WARN_ON(&i915->drm, new_crtc_state->uapi.enable);
+			continue;
+		}
+
+		ret = intel_crtc_prepare_cleared_state(state, crtc);
+		if (ret)
+			break;
+
+		if (!new_crtc_state->hw.enable)
+			continue;
+
+		ret = intel_modeset_pipe_config(state, crtc);
+		if (ret)
+			break;
+
+		ret = intel_atomic_check_bigjoiner(state, crtc);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -6250,41 +6295,10 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
-	ret = intel_bigjoiner_add_affected_crtcs(state);
+	ret = intel_atomic_check_config(state);
 	if (ret)
 		goto fail;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-				copy_bigjoiner_crtc_state_nomodeset(state, crtc);
-			else
-				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
-			continue;
-		}
-
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
-			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
-			continue;
-		}
-
-		ret = intel_crtc_prepare_cleared_state(state, crtc);
-		if (ret)
-			goto fail;
-
-		if (!new_crtc_state->hw.enable)
-			continue;
-
-		ret = intel_modeset_pipe_config(state, crtc);
-		if (ret)
-			goto fail;
-
-		ret = intel_atomic_check_bigjoiner(state, crtc);
-		if (ret)
-			goto fail;
-	}
-
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
-- 
2.37.2

