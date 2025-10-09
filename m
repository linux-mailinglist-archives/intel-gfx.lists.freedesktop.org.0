Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E700BCAE37
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C665610EB20;
	Thu,  9 Oct 2025 21:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ev5oazpZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD6E10EB20;
 Thu,  9 Oct 2025 21:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044422; x=1791580422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E7oqMIzad01SB4TCZ7cXGlXyXxqAKz62RQInQhaHKM8=;
 b=ev5oazpZ0/eDdW86yDGsceBzb9XqphepBpFjLHNvXDu+MLNQDRDK7QkM
 0RRved4ZnbHA7KRZ3JoV8VSCv4piWu56YfY7NG83vZRc7nvJjbVJSEVho
 JpNNJ9DmoDeZdPBofEHRuMO8cmqmhoVF0jzSAPXQ96RLY3o0huP61YIzu
 8DVXG1wKcGspkEqrUKIMgiPNDYgnbqplwM3xvVuAgXXyy7e2ZOQ6ZEWme
 ufwHgY6F9pJgZYHxSHxkhPVrmUzhUYyyWmHaOiUMxos245OcuTy2xrBN4
 3ocDBPkIJ24f94AaXz00M3mJC1NwYmKI0iZj0INJYfa8QLvooTPzBzY8z g==;
X-CSE-ConnectionGUID: Nt3mP4ZKQve/tBA3mJIKtg==
X-CSE-MsgGUID: DhtBrFO+R2q3jBsvhsoH+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910106"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910106"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:41 -0700
X-CSE-ConnectionGUID: ZE7vl631RDiFVWNj1FCMRw==
X-CSE-MsgGUID: gm1XN6yVSnGt6m913GIjqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516378"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915: Remove pointless crtc hw.enable check
Date: Fri, 10 Oct 2025 00:13:10 +0300
Message-ID: <20251009211313.30234-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We don't need to check for crtc hw.enable because that would also
imply that the plane is disabled and we would have bailed out already
earlier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8ead07b4b7a7..64b30fad75ee 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1755,8 +1755,7 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	}
 
 	/* Y-tiling is not supported in IF-ID Interlace mode */
-	if (crtc_state->hw.enable &&
-	    crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
+	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
 	    fb->modifier != DRM_FORMAT_MOD_LINEAR &&
 	    fb->modifier != I915_FORMAT_MOD_X_TILED) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

