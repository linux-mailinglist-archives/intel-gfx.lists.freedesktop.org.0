Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3200CA35AB
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B87D10E95C;
	Thu,  4 Dec 2025 10:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dnZcTtlO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E725B10E95E;
 Thu,  4 Dec 2025 10:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845987; x=1796381987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iwiaNxt2e1l1dyrTVD2fb9uBfT9zeHcJKO7OEClS8YA=;
 b=dnZcTtlOtQw8qyYDMS//CMbbp2YiJHEhnpXgCf6B82bxKEQrtVnl93Is
 ehe5vWAeDyPeuKdQ+Tuc91aoUeJaAKKFNnV3A7tu5xC287B1svxL6s8/v
 d/j9cMCaxUOM85RDw00yRzDGebi7edto5jlF4p2OpYZ7aOjaBvAuxxFan
 SF9mFQi7uVrYQCWybPLYONs2m7xn+5nx+se34N2cL8J1Mt+pV4yALmfqR
 VIq3qXmZ0EFM7xxqWVuIoUNutPFH2XNa+5K1ZFrnemosz+ZovNZ1a9xbx
 m86TjivOh5ap10Evhes3hiXxu44B3KC8TEWJrgIifcibaEP9peb5j84iz w==;
X-CSE-ConnectionGUID: no1RzKZwSHK6/3TPH8zbmw==
X-CSE-MsgGUID: qsZWkrryT3CnS16AL6t3Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327083"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327083"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:47 -0800
X-CSE-ConnectionGUID: T8aIlHSJRqqM7Vk16rrPVg==
X-CSE-MsgGUID: 4j13yPwBQZ2gJ85F7Ll1Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064772"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 20/25] drm/vblank: pass vblank to __get_vblank_counter()
 and drm_max_vblank_count()
Date: Thu,  4 Dec 2025 12:57:48 +0200
Message-ID: <ccd91db44381513e0fd13e32826abd7842044c4d.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Use the vblank pointer instead of a dev, pipe pair to simplify
code. Rename the functions to drm_vblank_crtc_get_counter() and
drm_vblank_crtc_max_count().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index d43165ee594a..04c75cdbb916 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -209,27 +209,27 @@ static void drm_vblank_crtc_store(struct drm_vblank_crtc *vblank,
 	write_sequnlock(&vblank->seqlock);
 }
 
-static u32 drm_max_vblank_count(struct drm_device *dev, unsigned int pipe)
+static u32 drm_vblank_crtc_max_count(struct drm_vblank_crtc *vblank)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
-
-	return vblank->max_vblank_count ?: dev->max_vblank_count;
+	return vblank->max_vblank_count ?: vblank->dev->max_vblank_count;
 }
 
 /*
  * "No hw counter" fallback implementation of .get_vblank_counter() hook,
  * if there is no usable hardware frame counter available.
  */
-static u32 drm_vblank_no_hw_counter(struct drm_device *dev, unsigned int pipe)
+static u32 drm_vblank_crtc_no_hw_counter(struct drm_vblank_crtc *vblank)
 {
-	drm_WARN_ON_ONCE(dev, drm_max_vblank_count(dev, pipe) != 0);
+	drm_WARN_ON_ONCE(vblank->dev, drm_vblank_crtc_max_count(vblank) != 0);
 	return 0;
 }
 
-static u32 __get_vblank_counter(struct drm_device *dev, unsigned int pipe)
+static u32 drm_vblank_crtc_get_counter(struct drm_vblank_crtc *vblank)
 {
+	struct drm_device *dev = vblank->dev;
+
 	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
-		struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+		struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 
 		if (drm_WARN_ON(dev, !crtc))
 			return 0;
@@ -238,7 +238,7 @@ static u32 __get_vblank_counter(struct drm_device *dev, unsigned int pipe)
 			return crtc->funcs->get_vblank_counter(crtc);
 	}
 
-	return drm_vblank_no_hw_counter(dev, pipe);
+	return drm_vblank_crtc_no_hw_counter(vblank);
 }
 
 /*
@@ -266,9 +266,9 @@ static void drm_vblank_crtc_reset_timestamp(struct drm_vblank_crtc *vblank)
 	 * when drm_vblank_enable() applies the diff
 	 */
 	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
+		cur_vblank = drm_vblank_crtc_get_counter(vblank);
 		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	/*
 	 * Only reinitialize corresponding vblank timestamp if high-precision query
@@ -309,7 +309,7 @@ static void drm_vblank_crtc_update_count(struct drm_vblank_crtc *vblank,
 	ktime_t t_vblank;
 	int count = DRM_TIMESTAMP_MAXRETRIES;
 	int framedur_ns = vblank->framedur_ns;
-	u32 max_vblank_count = drm_max_vblank_count(dev, pipe);
+	u32 max_vblank_count = drm_vblank_crtc_max_count(vblank);
 
 	/*
 	 * Interrupts were disabled prior to this call, so deal with counter
@@ -324,9 +324,9 @@ static void drm_vblank_crtc_update_count(struct drm_vblank_crtc *vblank,
 	 * corresponding vblank timestamp.
 	 */
 	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
+		cur_vblank = drm_vblank_crtc_get_counter(vblank);
 		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, in_vblank_irq);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	if (max_vblank_count) {
 		/* trust the hw counter when it's around */
@@ -1558,7 +1558,7 @@ void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 	u64 diff_ns;
 	u32 cur_vblank, diff = 1;
 	int count = DRM_TIMESTAMP_MAXRETRIES;
-	u32 max_vblank_count = drm_max_vblank_count(dev, pipe);
+	u32 max_vblank_count = drm_vblank_crtc_max_count(vblank);
 
 	drm_WARN_ON_ONCE(dev, !crtc->funcs->get_vblank_timestamp);
 	drm_WARN_ON_ONCE(dev, vblank->inmodeset);
@@ -1573,9 +1573,9 @@ void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 	framedur_ns = vblank->framedur_ns;
 
 	do {
-		cur_vblank = __get_vblank_counter(dev, pipe);
+		cur_vblank = drm_vblank_crtc_get_counter(vblank);
 		drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
-	} while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);
+	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	diff_ns = ktime_to_ns(ktime_sub(t_vblank, vblank->time));
 	if (framedur_ns)
-- 
2.47.3

