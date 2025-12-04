Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3987CA35AF
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 12:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657B410E972;
	Thu,  4 Dec 2025 10:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKYihPbB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C1F10E96C;
 Thu,  4 Dec 2025 10:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845993; x=1796381993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YWMkYEWbsvURBZNeBnwmbtzmHaf41+KL5j+6Prh1dtY=;
 b=TKYihPbBwgqLHmE5xv2IbONdBPX6AfpTbmGYCLZ3Sv7b5H1+NLoSH3uR
 x6my6vracKIp38c5Gsp4DMwLavHClAWsNPtnK4G5j43ebf+R5UvRw9gKW
 TTreR4hD/XDJX1I4AzpRkhm7iOgkK5vMhEBSSESK7PNOh6o5Jn9J2epU3
 iBT/vNXNqdsv22xLIa8jTdu+m0zEdmix7pMMpqa45QGwZobr0IDPlHgA7
 8px+UaEyeFDHMaWrF0Hrtx78dy0VjHUM4lSjhQyQd+fe8Wla9ltthC0Wp
 00aItEFyFSt939VeMduIFcfhpZYGFMxq7E63FUvRL/PaF5hRN9hCUd5Va g==;
X-CSE-ConnectionGUID: PZod086QQMC4FHUkq9+m2g==
X-CSE-MsgGUID: DjEDyRgDTGKliOtxasqsgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327088"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327088"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:52 -0800
X-CSE-ConnectionGUID: X/3X8nJEQ7OWaAlNuBJ45A==
X-CSE-MsgGUID: c6YwLBzPTXqokQoEVU63dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064776"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 21/25] drm/vblank: pass vblank to __{enable,
 disable}_vblank()
Date: Thu,  4 Dec 2025 12:57:49 +0200
Message-ID: <8d5e2e1052a0790535b5b8624e6f72192f79025b.1764845757.git.jani.nikula@intel.com>
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

Use the vblank pointer instead of a dev, pipe pair to simplify code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 04c75cdbb916..52fa4ca361e3 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -443,10 +443,12 @@ u64 drm_crtc_accurate_vblank_count(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_accurate_vblank_count);
 
-static void __disable_vblank(struct drm_device *dev, unsigned int pipe)
+static void __disable_vblank(struct drm_vblank_crtc *vblank)
 {
+	struct drm_device *dev = vblank->dev;
+
 	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
-		struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+		struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 
 		if (drm_WARN_ON(dev, !crtc))
 			return;
@@ -491,7 +493,7 @@ void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
 	 * between drm_crtc_vblank_on() and drm_crtc_vblank_off().
 	 */
 	drm_vblank_crtc_update_count(vblank, false);
-	__disable_vblank(dev, pipe);
+	__disable_vblank(vblank);
 	vblank->enabled = false;
 
 out:
@@ -1155,10 +1157,12 @@ void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 }
 EXPORT_SYMBOL(drm_crtc_send_vblank_event);
 
-static int __enable_vblank(struct drm_device *dev, unsigned int pipe)
+static int __enable_vblank(struct drm_vblank_crtc *vblank)
 {
+	struct drm_device *dev = vblank->dev;
+
 	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
-		struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+		struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 
 		if (drm_WARN_ON(dev, !crtc))
 			return 0;
@@ -1188,7 +1192,7 @@ static int drm_vblank_enable(struct drm_vblank_crtc *vblank)
 		 * timestamps. Filtercode in drm_handle_vblank() will
 		 * prevent double-accounting of same vblank interval.
 		 */
-		ret = __enable_vblank(dev, pipe);
+		ret = __enable_vblank(vblank);
 		drm_dbg_core(dev, "enabling vblank on crtc %u, ret: %d\n",
 			     pipe, ret);
 		if (ret) {
-- 
2.47.3

