Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DEA498CA8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1292810EA4A;
	Mon, 24 Jan 2022 19:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0970110EA4A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052408; x=1674588408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k4QsCa3SmorP4fsNxkFJCvQpwgr/rMsIjfjkl3Uv1j8=;
 b=NN5xyDJ0AmxSlBlM08EOuZ2OxMORfqghgVtAlAQRohqUMwbWFCUDYFhL
 iXEICer/uTH60CcXEW5nMqA7g9UBQdyiYvxiWJDJ/3zVBC+ldUWiy6Hqq
 GVEEqJ1nwq7D2QApWo2ChmlSRioh+0SHYkNZakAYzgzbx+/RjFFh3OuP2
 iKY6JAcXUk16n/4QhXqAzIPn3ZyPFlEIY61Zac+jw4wzJHyo0vcItjNII
 w99GZDtuasVmDC7Oqdcpw5FomBok6mJcAigwDX0rV61S1j3TOj7S8GVBH
 pxCcJaYI5f6cXGGMXYw/Tn4+8pUDKrJAQEYA6qvjP9Amj9Idnfj+bQRUY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246074037"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="246074037"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:26:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534376858"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 24 Jan 2022 11:26:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:26:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:26:36 +0200
Message-Id: <20220124192638.26262-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Use per-device debugs for
 bigjoiner stuff
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

Specify which device we're talking about when spewing
bigjoiner debugs.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e32a7a1e7ba0..c23c854f212f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7600,6 +7600,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 					struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *new_crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
 	struct intel_crtc *slave_crtc, *master_crtc;
 
@@ -7617,9 +7618,10 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 
 	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
 	if (!slave_crtc) {
-		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
-			      "CRTC + 1 to be used, doesn't exist\n",
-			      crtc->base.base.id, crtc->base.name);
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Big joiner configuration requires "
+			    "CRTC + 1 to be used, doesn't exist\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -7633,16 +7635,18 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	if (slave_crtc_state->uapi.enable)
 		goto claimed;
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
-		      slave_crtc->base.base.id, slave_crtc->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "[CRTC:%d:%s] Used as slave for big joiner\n",
+		    slave_crtc->base.base.id, slave_crtc->base.name);
 
 	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
 
 claimed:
-	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
-		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
-		      slave_crtc->base.base.id, slave_crtc->base.name,
-		      master_crtc->base.base.id, master_crtc->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
+		    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
+		    slave_crtc->base.base.id, slave_crtc->base.name,
+		    master_crtc->base.base.id, master_crtc->base.name);
 	return -EINVAL;
 }
 
-- 
2.34.1

