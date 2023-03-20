Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACD56C22C8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E55710E66A;
	Mon, 20 Mar 2023 20:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5632510E66A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344438; x=1710880438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q9LvSDM3KEDIi484U9HCGMRHUqrWBW2Jwp+dbFg5CQ4=;
 b=NKfdCGOpBhXWNrWATpipunzuyxhHMpY8hYlKKQ+aFFh/Z7UoU/Wrg4+c
 EOgOne3OMDHAKKuPGwyIqsiEc6WJ//+Rk5YZuya/If/0wTzacA2AaKtnk
 jL+QNFU9nflX88CIOZPLbL632kl63FjwPLXSfw96G2UxWmpYH5DKkg5Vq
 qaSiyPYmN5lJKFYUSXEHwzuJF+mU2o5tCYkbs8nxh/yVUxYmFMlWTIcHN
 xRQsQZfduTfFrT5vUmPyyCASqEs4rD9hEmJBW1HtGe42jzwDhVPjEr4lj
 gA4NzAVFrT1rFXNMEp53HsTmlgUtAmWm6eWLT7cuIf2Hht4vwzkg0iZF5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148249"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148249"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:33:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339158"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339158"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:33:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:33:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:47 +0200
Message-Id: <20230320203352.19515-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Generalize planes_{enabling,
 disabling}()
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

I want to use the same logic that planes_{enabling,disabling}()
are using for other features as well. Generlize the thing
into a pair of macros.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 121990ba2a28..3356b0724e1e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1069,20 +1069,28 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
 }
 
+#define is_enabling(feature, old_crtc_state, new_crtc_state) \
+	((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)) && \
+	 (new_crtc_state)->feature)
+#define is_disabling(feature, old_crtc_state, new_crtc_state) \
+	((old_crtc_state)->feature && \
+	 (!(new_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)))
+
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
-	return (!old_crtc_state->active_planes || intel_crtc_needs_modeset(new_crtc_state)) &&
-		new_crtc_state->active_planes;
+	return is_enabling(active_planes, old_crtc_state, new_crtc_state);
 }
 
 static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state)
 {
-	return old_crtc_state->active_planes &&
-		(!new_crtc_state->active_planes || intel_crtc_needs_modeset(new_crtc_state));
+	return is_disabling(active_planes, old_crtc_state, new_crtc_state);
 }
 
+#undef is_disabling
+#undef is_enabling
+
 static void intel_post_plane_update(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-- 
2.39.2

