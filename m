Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879D8A56FE9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96AC10EC24;
	Fri,  7 Mar 2025 18:02:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e30ORECN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1930C10EC24;
 Fri,  7 Mar 2025 18:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370529; x=1772906529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FhdoxY8E312uBoQ0r21lLo4T7uUyn+c98JsMy6Pl0J4=;
 b=e30ORECNLlTkh55Z1FPcVRcNs6biyNsORABI/2qRIVBNCp2bkXsBNeDP
 iDDirJT7BB9SMimPnizd9cTKoy413FeV5wtJevyAb0+i7YFicF7zugUI+
 yWB4FmP4W6uWqBLX33PtHKT9J2mxF75ULe+7zvPnszEfU/eHT2ppf5TW6
 DJleaJ/IM0b5oZfFVtX9ogeyRn9J6Te4oCoYmYccDC6dtRrugrybQxfdL
 3BjkbVTEmMGJxt3Bat9nvq9eDwf14t3loVNkQeI2u3pc7doyF8HH6U1om
 WeVokY/CcFjsXt6vBjNSzbb+6b2e4QfDt6kB08tDSje8B/Bo0MiHXNXfE Q==;
X-CSE-ConnectionGUID: /Vv3r5XJSn2/eWLLuzhFmA==
X-CSE-MsgGUID: QIBmY9+AQuqY49eP2xzw/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637155"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637155"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:09 -0800
X-CSE-ConnectionGUID: QenJTAdCRSeN6/f7Aif7Aw==
X-CSE-MsgGUID: HepZ/j91QrufR8PBrkWw8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621163"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/14] drm/i915: Flag even inactive crtcs as "inherited"
Date: Fri,  7 Mar 2025 20:01:32 +0200
Message-ID: <20250307180139.15744-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

I want to use the crtc_state->inherited flag to clean up some
of the early SAGV handling. To make that work nicely I need to
flag even the inactive crtcs as "inherited".

Since we can't expect user space to perform any real commits
on inactive crtcs we'll clear the flag already during
initial_commit().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
 .../drm/i915/display/intel_modeset_setup.c    | 22 +++++++++----------
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..1d7a396bc4ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8081,6 +8081,9 @@ int intel_initial_commit(struct intel_display *display)
 			goto out;
 		}
 
+		if (!crtc_state->hw.active)
+			crtc_state->inherited = false;
+
 		if (crtc_state->hw.active) {
 			struct intel_encoder *encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 312b21b1ab59..e495f717b168 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -821,18 +821,18 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
 
-		if (crtc_state->hw.active) {
-			/*
-			 * The initial mode needs to be set in order to keep
-			 * the atomic core happy. It wants a valid mode if the
-			 * crtc's enabled, so we do the above call.
-			 *
-			 * But we don't set all the derived state fully, hence
-			 * set a flag to indicate that a full recalculation is
-			 * needed on the next commit.
-			 */
-			crtc_state->inherited = true;
+		/*
+		 * The initial mode needs to be set in order to keep
+		 * the atomic core happy. It wants a valid mode if the
+		 * crtc's enabled, so we do the above call.
+		 *
+		 * But we don't set all the derived state fully, hence
+		 * set a flag to indicate that a full recalculation is
+		 * needed on the next commit.
+		 */
+		crtc_state->inherited = true;
 
+		if (crtc_state->hw.active) {
 			intel_crtc_update_active_timings(crtc_state,
 							 crtc_state->vrr.enable);
 
-- 
2.45.3

