Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F5CBEA8BE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E98A10EC7B;
	Fri, 17 Oct 2025 16:14:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXFDMXDH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0C010EC7B;
 Fri, 17 Oct 2025 16:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717678; x=1792253678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fBnTn4MuZooVIzvS5mdWr5djIeK1Rs8AaKuApoTRUpo=;
 b=hXFDMXDHDmWxKA/OrOAOUd8IIR4mg2GEX+siAVVk5zwII5shoNbrI6tj
 k2q3mHQsIQhuv3G8QekMFUiJaL01Ij1FkNb21IjXezNIEWyvN+/IwwkA6
 lZK05RhX5sAzSGmGXvwSkeHHOF7/Q6EElM1hO4tR6jA617wLiW4VnwF5u
 3zuNQP1i68NHCEQzJ5/+aMU1y+RToRBqmsdjw62SUkcAg0r6EKwZBJktS
 bIOXlLYOcE0YtRYh211oco676KU1ODKT/iJy471mJVyFdlYxCxZbQYoAq
 IQyZNl8wt1fMRBSiIgXvjRXyQuK0nO5NBOPRJNN3FNSD4liNxgWauhPe5 g==;
X-CSE-ConnectionGUID: yD4DsTfESs2vZnMCTXnlmA==
X-CSE-MsgGUID: WEexUUyZQSmNZpS1zv+jpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="62142228"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62142228"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:37 -0700
X-CSE-ConnectionGUID: 8xd0aVC8S1+RZmBtL7/mEw==
X-CSE-MsgGUID: ovNbPExXTBylt09HrkQouw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="188062873"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:36 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Introduce a new intel_atomic_check_crtcs()
Date: Fri, 17 Oct 2025 19:14:12 +0300
Message-ID: <20251017161417.4399-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

Add a new intel_atomic_check_crtcs() that gets called fairly
early during intel_atomic_check() and start collecting stuff
into it from elsewhere. For now we can suck in the
intel_crtc_min_cdclk() stiff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 89f63c3b1ecd..211761c5b72a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5746,6 +5746,18 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
+static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
+{
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+
+	return 0;
+}
+
 static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -6449,8 +6461,9 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+	ret = intel_atomic_check_crtcs(state);
+	if (ret)
+		goto fail;
 
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
-- 
2.49.1

