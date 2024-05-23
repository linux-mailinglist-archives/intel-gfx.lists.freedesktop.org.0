Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBE48CD9F0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B6B10F186;
	Thu, 23 May 2024 18:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AqWuHf2r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20B110F133
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 18:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488907; x=1748024907;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7Ji1YNCgII/Ac2F6sdAamf3GeuspatGPahl5Rl0FcjM=;
 b=AqWuHf2rcEc6MXrG9C0v9hr9yG87P9p0LkOdZheMczOHWfV6wfXQ3/ww
 GXELp/MGudmsSVMZIsRnzUQVTSD5N7Jub6+VIxxXHcsWT/PS81vfbALfy
 lgXBuzUnsPiMIcO6x/itVmXoKHl6VXb7FWf7VD08Bt4u51hll4BADbGLh
 P5tLHPOTWa2sqDGqoSAd162xt47uX4YXVSjapAFX8PVK+lIVTKCvzGmn7
 2z3ExYe6VfaEf5PeGZ03ZkfSktOzJVsuF/BNW9Yq1lpXMqpMmiYwOMm8I
 TnU/uQz/v35OYlmst58Ns+mM1okDj3ABrSzz7F0zVCqChN3UuEzwCYtLE Q==;
X-CSE-ConnectionGUID: UgweVoVBQ0O9uhy1zzn1MQ==
X-CSE-MsgGUID: 55Ttb2jtTZa8DPkVdqM8SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12665088"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12665088"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:28:27 -0700
X-CSE-ConnectionGUID: CVqLzQEvTwmmk+0ninMW+g==
X-CSE-MsgGUID: G69PkUqeQM6hmkdflZ6xBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33730541"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 11:28:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 21:28:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Hide the intel_crtc_needs_color_update() inside
 intel_color_check()
Date: Thu, 23 May 2024 21:28:17 +0300
Message-ID: <20240523182818.15382-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
References: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Move the intel_crtc_needs_color_update() into intel_color_check()
so that the caller doesn't have to care about this. This will
also enable us to hide the c8_planes_changed() thing better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 5 +++++
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++-----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ede628b58a5c..a2ddce100fcc 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1986,6 +1986,11 @@ int intel_color_check(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!intel_crtc_needs_color_update(new_crtc_state))
+		return 0;
 
 	return i915->display.funcs.color->color_check(state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3b2765b371f8..84f46370c88d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4254,11 +4254,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (c8_planes_changed(crtc_state))
 		crtc_state->uapi.color_mgmt_changed = true;
 
-	if (intel_crtc_needs_color_update(crtc_state)) {
-		ret = intel_color_check(state, crtc);
-		if (ret)
-			return ret;
-	}
+	ret = intel_color_check(state, crtc);
+	if (ret)
+		return ret;
 
 	ret = intel_compute_pipe_wm(state, crtc);
 	if (ret) {
-- 
2.44.1

