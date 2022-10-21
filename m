Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD227607C21
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB4D10E523;
	Fri, 21 Oct 2022 16:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1936010E510
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666369495; x=1697905495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iw23MK7YT++psRavNvWHz3dgfPU4snNkZ/2hZAM3PAw=;
 b=Mcl8kkQL66GaqK1+kyWiv7zUkqPsIoXtpN5BTbfx7zf4ryo740yOu/kQ
 N/qrOUVSIpPWsAuE8d6xR4BryaIfCb7Srcf7ECogMD6gWwD79WqxO5H84
 ggfW0L/k5K1SdZYU+677cl7iVWHQisBn88aDrCzdtj2I7epl2igFWfCE3
 psWww+jVMPwg817bFmIwfIRJTjRL1qxuykpKTKjvuIQiSZlJvg1Fo2TMG
 5ZpJ7IQQgttZ29MGUc6iF3SdrGXru6C2eMxu9xepqrvY+6ZGXwDnHvS3a
 AOx2LxY39O3/53Rv4CQgish3Bg0ssefLHM5Ibi1is69Fq6eU6c3MiSKu/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294440737"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="294440737"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="625403852"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="625403852"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 21 Oct 2022 09:24:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Oct 2022 19:24:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 19:24:41 +0300
Message-Id: <20221021162442.27283-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
References: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Don't flag both full modeset
 and fastset at the same time
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Be consistent in whether we flag a full modeset or a
fastset for the pipe. intel_modeset_all_pipes() would
seem to be the only codepath not getting this right.

The other case is when we flag the fastset initially,
currently we just clear the mode_changed flag and set
the update_pipe flag. But we could still have
connectors_changed==true or active_changed==true forcing
a full modeset anyway. So check for that after clearing
the mode_changed flag.

And let's add a WARN to make sure we did get it right.

v2: Deal with {connectors,active}_changed

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b6004b3e6684..119a6f92adad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5974,6 +5974,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    crtc->base.base.id, crtc->base.name, reason);
 
 		crtc_state->uapi.mode_changed = true;
+		crtc_state->update_pipe = false;
 
 		ret = drm_atomic_add_affected_connectors(&state->base,
 							 &crtc->base);
@@ -6149,7 +6150,8 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		return;
 
 	new_crtc_state->uapi.mode_changed = false;
-	new_crtc_state->update_pipe = true;
+	if (!intel_crtc_needs_modeset(new_crtc_state))
+		new_crtc_state->update_pipe = true;
 }
 
 static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
@@ -6925,6 +6927,11 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (ret)
 			goto fail;
 
+		/* Either full modeset or fastset (or neither), never both */
+		drm_WARN_ON(&dev_priv->drm,
+			    intel_crtc_needs_modeset(new_crtc_state) &&
+			    intel_crtc_needs_fastset(new_crtc_state));
+
 		if (!intel_crtc_needs_modeset(new_crtc_state) &&
 		    !intel_crtc_needs_fastset(new_crtc_state))
 			continue;
-- 
2.35.1

