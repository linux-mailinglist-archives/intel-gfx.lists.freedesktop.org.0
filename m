Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540998AA88
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8AC10E560;
	Mon, 30 Sep 2024 17:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bi8Llrxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3F310E560;
 Mon, 30 Sep 2024 17:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715868; x=1759251868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bE2An1tHfKaJl5g8Hui9r0NTPNtCL7jUHwSE7EjGZ6I=;
 b=bi8Llrxp3GE4lEQcRsm/ML1qMvGEIxAQwMv5H91+f9JGf35mP4ecFPnS
 wi5/SmQqBnvbe+TsUYpSoX8k4ZkcA8Xy8W7EpE+J9GPAy1v2ch/fgNsbz
 WXWit08seiVK7Wy1pxD7Ln/tu8oKoCWeqs/BMNB8CDv03Y0xlpoRWi5jH
 FnSNi1eCMGNXBbWvv7YKdKX59xvWAhP4MjuRIpR0okR7AhzEBRXMKMPgJ
 uNkiZ9E90gvNCB4hRpF6k/koQAq30auoUg3qr8O3KMpC6F4589Ha6r+1U
 g1wdnGNaB2zA7Exex6qIbM652tw6C0Ivc9cEQYbDVR7EoDg9s2nomBvwS Q==;
X-CSE-ConnectionGUID: szdbm/6tQp+2VnA4ckiIiw==
X-CSE-MsgGUID: iC8OqNIpRf2xrxuoo9kRSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276955"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276955"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:28 -0700
X-CSE-ConnectionGUID: bPJomCwaTqCDOFD2FFw/kA==
X-CSE-MsgGUID: v7KGXoedQHyTVv2OPrSjQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490925"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 03/13] drm/i915/dsb: Generate the DSB buffer in
 commit_tail()
Date: Mon, 30 Sep 2024 20:04:05 +0300
Message-ID: <20240930170415.23841-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Once we start using DSB for plane updates we'll need to defer
generating the DSB buffer until the clear color has been
read out. So we need to move at some of the DSB stuff into
commit_tail(). That is perhaps a better place for it anyway
as the ioctl thread can move on immediately without spending
time building the DSB commands.

We always have the MMIO fallback (in case the DSB buffer
allocation fails), so there's no real reason to keep any
of this in the synchronous part of the ioctl.

Because the DSB LUT programming doesn't depend on the plane
clear color we can still do that part before waiting for
fences/etc. which should help paralleize things a bit more.
The DSB plane programming will need to happen after those
however as that depends on the clear color.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++-----------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 283e0214c4a3..40a4957d805d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6770,17 +6770,12 @@ int intel_atomic_check(struct drm_device *dev,
 
 static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 {
-	struct intel_crtc_state __maybe_unused *crtc_state;
-	struct intel_crtc *crtc;
-	int i, ret;
+	int ret;
 
 	ret = drm_atomic_helper_prepare_planes(state->base.dev, &state->base);
 	if (ret < 0)
 		return ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-		intel_color_prepare_commit(state, crtc);
-
 	return 0;
 }
 
@@ -7371,6 +7366,12 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 	}
 }
 
+static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	intel_color_prepare_commit(state, crtc);
+}
+
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
@@ -7381,6 +7382,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_wakeref_t wakeref = 0;
 	int i;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		intel_atomic_dsb_prepare(state, crtc);
+
 	intel_atomic_commit_fence_wait(state);
 
 	intel_td_flush(dev_priv);
@@ -7692,13 +7696,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 		ret = intel_atomic_swap_state(state);
 
 	if (ret) {
-		struct intel_crtc_state *new_crtc_state;
-		struct intel_crtc *crtc;
-		int i;
-
-		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-			intel_color_cleanup_commit(new_crtc_state);
-
 		drm_atomic_helper_unprepare_planes(dev, &state->base);
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
-- 
2.45.2

