Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2284007BB
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 00:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C7D6E8E6;
	Fri,  3 Sep 2021 22:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E23C6E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 22:05:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="217665958"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="217665958"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="544130166"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri,  3 Sep 2021 15:10:36 -0700
Message-Id: <20210903221036.34770-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210903221036.34770-1-jose.souza@intel.com>
References: <20210903221036.34770-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: Prepare DRRS for
 frontbuffer rendering drop
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

Frontbuffer rendering will be dropped for modern platforms but
before that we to prepare DRRS for it.

intel_drrs_flush and intel_drrs_invalidate will not be called
for platforms that will not support frontbuffer rendering so DRRS
needs another way to be notified about to page flips so it can change
between high and low refresh rates as needed.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 drivers/gpu/drm/i915/display/intel_drrs.c    | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h    | 4 ++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1f447ba776c79..134c792e1dbda 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -52,6 +52,7 @@
 #include "display/intel_dp_mst.h"
 #include "display/intel_dpll.h"
 #include "display/intel_dpll_mgr.h"
+#include "display/intel_drrs.h"
 #include "display/intel_dsi.h"
 #include "display/intel_dvo.h"
 #include "display/intel_fb.h"
@@ -2379,6 +2380,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		hsw_enable_ips(new_crtc_state);
 
 	intel_fbc_post_update(state, crtc);
+	intel_drrs_page_flip(state, crtc);
 
 	if (needs_nv12_wa(old_crtc_state) &&
 	    !needs_nv12_wa(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 15e5f91cf331d..c1439fcb5a959 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -378,6 +378,15 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
+void intel_drrs_page_flip(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	unsigned int frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+
+	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
+}
+
 /**
  * intel_drrs_init - Init basic DRRS work and mutex.
  * @connector: eDP connector
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 73be7e9a43691..9ec9c447211af 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_connector;
 struct intel_dp;
@@ -23,6 +25,8 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
+void intel_drrs_page_flip(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc);
 void intel_drrs_compute_config(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *pipe_config,
 			       int output_bpp, bool constant_n);
-- 
2.33.0

