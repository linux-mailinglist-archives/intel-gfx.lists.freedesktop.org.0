Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1EE42E9E6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA096ECEB;
	Fri, 15 Oct 2021 07:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594716ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:17:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="215029807"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="215029807"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="492357204"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 15 Oct 2021 00:16:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:25 +0300
Message-Id: <20211015071625.593-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Introduce lpt_pch_disable()
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

Let's add lpt_pch_disable() as the counterpart to
lpt_pch_enable().

Note that unlike the ilk+ code the fdi_link_train()
and fdi_disable() calls are still left directly in
intel_crt.c. If we wanted to move those we'd need to
add lpt_pch_pre_enable(). But the two fdi direct fdi
calls are pretry symmetric so it doesn't seem too bad
to just keep them as is.

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c         |  5 ++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_pch_display.h |  4 ++--
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index db27ae2a8406..f0f28572dfdc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -46,7 +46,6 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
-#include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
@@ -247,6 +246,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -261,8 +261,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 
 	pch_post_disable_crt(state, encoder, old_crtc_state, old_conn_state);
 
-	lpt_disable_pch_transcoder(dev_priv);
-	lpt_disable_iclkip(dev_priv);
+	lpt_pch_disable(state, crtc);
 
 	hsw_fdi_disable(encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index f40bdb387a68..32f2319021f3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -470,6 +470,16 @@ void lpt_pch_enable(struct intel_atomic_state *state,
 	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
 }
 
+void lpt_pch_disable(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	lpt_disable_pch_transcoder(dev_priv);
+
+	lpt_disable_iclkip(dev_priv);
+}
+
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index a983f4d5a3b6..2c387fe3a467 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -6,7 +6,6 @@
 #ifndef _INTEL_PCH_DISPLAY_H_
 #define _INTEL_PCH_DISPLAY_H_
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -19,9 +18,10 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 void ilk_pch_get_config(struct intel_crtc_state *crtc_state);
 
-void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
 void lpt_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc);
+void lpt_pch_disable(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc);
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
 
 #endif
-- 
2.32.0

