Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD6154DE6B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCFE113D65;
	Thu, 16 Jun 2022 09:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE82113DCB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372937; x=1686908937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y2C2lPagmjdo3PqAOHOMcO+SptQwcHroRHwlsE97hfk=;
 b=ODjAWrPDB3d0bBr3TlKewm1qcKJ3J3neoGXvtHoaozUSiK2DXUtgdEp1
 lcVVd4TxuSXeIIXcD2uFANjIKEsGvlNd/wr0iclsAcD2BUiNnuAtvFSlk
 68cutC5ZXOCWNHI68Nfwq7xD6NgqhGqXC8oDgnWV9ScLCwFUR34CLrhC7
 iUxGKG9nb9v5qpdankGgouMmNLxR4Gu9X7wZCCATqIViwxq0pWeIeywmI
 c1gHPl7/ZIYrOH56AvxxAootwrYg4ZCU8xUiYh9C9piPVA8A73K/YTPL7
 T9t5CMJjJ1jba/nAPhfphy+9+mFRDu9nJjK4otJE3xUvQxrZOpelWp2Y+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="340867157"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="340867157"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="831489309"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:17 +0300
Message-Id: <c7d671279fb7d99eaf882bcb88c5c1d653755fb1.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915/display: change who adds []
 around crtc state dump context string
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the brackets [] around crtc state dump context string in
intel_crtc_state_dump() so the callers don't have to.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c         | 6 +++---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c  | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 188509837926..35c627721199 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -154,7 +154,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	char buf[64];
 	int i;
 
-	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s %s\n",
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
 		    crtc->base.base.id, crtc->base.name,
 		    str_yes_no(pipe_config->hw.enable), context);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 224bae57264a..3e014bd08188 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7091,7 +7091,7 @@ static int intel_atomic_check(struct drm_device *dev,
 
 		intel_crtc_state_dump(new_crtc_state, state,
 				      intel_crtc_needs_modeset(new_crtc_state) ?
-				      "[modeset]" : "[fastset]");
+				      "modeset" : "fastset");
 	}
 
 	return 0;
@@ -7106,7 +7106,7 @@ static int intel_atomic_check(struct drm_device *dev,
 	 */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i)
-		intel_crtc_state_dump(new_crtc_state, state, "[failed]");
+		intel_crtc_state_dump(new_crtc_state, state, "failed");
 
 	return ret;
 }
@@ -9586,7 +9586,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 			to_intel_crtc_state(crtc->base.state);
 
 		intel_sanitize_crtc(crtc, ctx);
-		intel_crtc_state_dump(crtc_state, NULL, "[setup_hw_state]");
+		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
 	}
 
 	intel_modeset_update_connector_atomic_state(dev);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 0e2ed0726459..a91586d77cb6 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -217,8 +217,8 @@ verify_crtc_state(struct intel_crtc *crtc,
 	if (!intel_pipe_config_compare(new_crtc_state,
 				       pipe_config, false)) {
 		I915_STATE_WARN(1, "pipe state doesn't match!\n");
-		intel_crtc_state_dump(pipe_config, NULL, "[hw state]");
-		intel_crtc_state_dump(new_crtc_state, NULL, "[sw state]");
+		intel_crtc_state_dump(pipe_config, NULL, "hw state");
+		intel_crtc_state_dump(new_crtc_state, NULL, "sw state");
 	}
 }
 
-- 
2.30.2

