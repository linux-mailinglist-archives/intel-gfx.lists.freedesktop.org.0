Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C0F9DA203
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 07:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B151110E41A;
	Wed, 27 Nov 2024 06:11:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m0n9QRko";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016A310E2F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687888; x=1764223888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+y1wepGF0Yyc1ONrPPjR0wKx63tw+RSWs1nLpt7ZxtY=;
 b=m0n9QRko8Hc8MG3V59kSYqbi46iw/rXpJYGnATtr9xKORH38VpRkPUF4
 EYKeR9XpSLmJYwhg6lqqK7ixINtG1Os2DCG5oCTUTP9ZVNRO0zL/Po02N
 +CnCRif27nkLIqkqLtzws3hVzXsyfXyZznmbSEEONpMUFWEbHV0XkDLTC
 uouKjkhDgIcDry2qQ1tgOBQPFqnI90BXqMmUZoZeDOalFvz5Mmr+lkphG
 EOQnfp2RRsi7geepUUaIA+SClDkuXz6sVM6dP42pfNH3uubY4ZvqKCGQZ
 UK5kk4M3kt0/PeGeo+8PwYp3WA0SgTVOr0esurpBLIdv208btL+xmdEPT A==;
X-CSE-ConnectionGUID: qOCPbfCrTueoFWsqMbfA4A==
X-CSE-MsgGUID: F0464S+rRdOmS2jI6kLVhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33125379"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33125379"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 22:11:28 -0800
X-CSE-ConnectionGUID: fc0krJHtTGGIss3Z2etmMg==
X-CSE-MsgGUID: MsTen081S5G2efYPHDPWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91982041"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 22:11:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 08:11:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 2/4] drm/i915: Intruduce display.wq.cleanup
Date: Wed, 27 Nov 2024 08:11:15 +0200
Message-ID: <20241127061117.25622-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
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

Introduce a dedicated workqueue for the commit cleanup work.
In the future we'll need this to guarantee all the cleanup
works have finished at a specific point during suspend.

Cc: Brian Geffon <bgeffon@google.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h   | 3 +++
 drivers/gpu/drm/i915/display/intel_display_driver.c | 3 +++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5260f6eafaf8..4805bf682d43 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7937,7 +7937,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * down.
 	 */
 	INIT_WORK(&state->cleanup_work, intel_atomic_cleanup_work);
-	queue_work(system_highpri_wq, &state->cleanup_work);
+	queue_work(dev_priv->display.wq.cleanup, &state->cleanup_work);
 }
 
 static void intel_atomic_commit_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 62b0597aa91e..554870d2494b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -554,6 +554,9 @@ struct intel_display {
 
 		/* unbound hipri wq for page flips/plane updates */
 		struct workqueue_struct *flip;
+
+		/* hipri wq for commit cleanups */
+		struct workqueue_struct *cleanup;
 	} wq;
 
 	/* Grouping using named structs. Keep sorted. */
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 2a6301b8674a..286d6f893afa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -242,6 +242,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
 	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
 						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
+	i915->display.wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
 
 	intel_mode_config_init(i915);
 
@@ -571,6 +572,7 @@ void intel_display_driver_remove(struct drm_i915_private *i915)
 
 	flush_workqueue(i915->display.wq.flip);
 	flush_workqueue(i915->display.wq.modeset);
+	flush_workqueue(i915->display.wq.cleanup);
 
 	/*
 	 * MST topology needs to be suspended so we don't have any calls to
@@ -613,6 +615,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	destroy_workqueue(i915->display.wq.flip);
 	destroy_workqueue(i915->display.wq.modeset);
+	destroy_workqueue(i915->display.wq.cleanup);
 
 	intel_fbc_cleanup(&i915->display);
 }
-- 
2.45.2

