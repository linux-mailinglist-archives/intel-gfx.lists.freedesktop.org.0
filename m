Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF1BA8B052
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4439B10E83A;
	Wed, 16 Apr 2025 06:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SE7QRXaP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3277C10E839
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784992; x=1776320992;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CM3GYAH/cfUAONuDoyr9Y9yeQYo0Sk5lv9kAciPYKbA=;
 b=SE7QRXaPYtaUBgOAj5ug1/4wq7V7VuSSnsYY4PseXKIapucSHmqQchxD
 /apOdc+RqzmOR/CFNFNPQZxJstY4AT88ouFtA3lam+ARGJSjftST11P4E
 Pq5DY/Qjls6uS2b87EIwjlGPQA1zCQ8PL57+RYeTlzQeYuzAtZhtTi4wv
 ihTygBWge6bpr2umDvGkoZWHtRJy7jN2AGf251E59v5tMCw3Rm6SvqjSK
 egcRE+iUUTxQqXTlrFIQCR5kbT7AA+hzdxLzryNoUXOo9tAqPWotxumSP
 D8V1BcrbF6nCLi5+9fd2NdAeSwblxcp3q0SAoePxJf3VEBfmVNKk/8JPt A==;
X-CSE-ConnectionGUID: SFunMnQgT0mStVw1pwvOHw==
X-CSE-MsgGUID: /MCT/yrXQ4iVe1ELtmyXdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710252"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710252"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:52 -0700
X-CSE-ConnectionGUID: HcIKjINaRMufWfMmKYfS1g==
X-CSE-MsgGUID: wNLJbuNgTqW9N87FbfNvYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880198"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:51 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 5/8] drm/i915: Extract vrr_vblank_start()
Date: Wed, 16 Apr 2025 11:57:34 +0530
Message-ID: <20250416062737.1766703-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Initialise delayed vblank position for evasion logic.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 139fa5deba80..680013f00fc0 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -642,6 +642,14 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 	return pre_commit_crtc_state(old_crtc_state, new_crtc_state);
 }
 
+static int vrr_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_vrr_is_push_sent(crtc_state))
+		return intel_vrr_vmin_vblank_start(crtc_state);
+	else
+		return intel_vrr_vmax_vblank_start(crtc_state);
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
@@ -668,10 +676,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
 			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
-		if (intel_vrr_is_push_sent(crtc_state))
-			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		else
-			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+		evade->vblank_start = vrr_vblank_start(crtc_state);
 
 		vblank_delay = intel_vrr_vblank_delay(crtc_state);
 	} else {
-- 
2.48.1

