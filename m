Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095C4CA35B0
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 12:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5C810E970;
	Thu,  4 Dec 2025 10:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KL7dprqR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BE310E932;
 Thu,  4 Dec 2025 10:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845998; x=1796381998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ko6ZQurNZtmpu8xFOtoWwYzV31EkMFCAsX6j4+XtDas=;
 b=KL7dprqRBBMHUkp2X8Bul5rfmeGcPunswuzlpIs+MHBla8Ec9Lm0tBTe
 XV2TBxDAqVylH75WnPDalo8tkNJekcNtOnkKMW5Mg/vxavHePblWi3QMS
 8/6yugXZnnqFnhTE0J8y6KLvdHCwJdSBWqA5d+gcpVrgMdx9uVGEHf/W1
 TQozNMXNbNfGXwMK438arvbWRe6v7N/y10hbNcK+YvczCRIcA0K5JILcy
 klLUF626ynuHf2fDSgXGk2Zx6reWGZS/fdTPOyzsYbS4p91tpla08SAqA
 9dMJl4avPeJQrnhizhenEa88RuV2JWKka4QsK0CgH6+z//7wUgZTbhEZK g==;
X-CSE-ConnectionGUID: sRnJbKY6TGmXjiIsx1fQMg==
X-CSE-MsgGUID: sYjwq8taSg2oQ8eOwth/wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327095"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327095"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:57 -0800
X-CSE-ConnectionGUID: fdlsq6bxRdWxrRHU7dWFSA==
X-CSE-MsgGUID: 3XCYtu0fQJeBIGqB41qv0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064784"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 22/25] drm/vblank: pass vblank to
 drm_get_last_vbltimestamp()
Date: Thu,  4 Dec 2025 12:57:50 +0200
Message-ID: <f9e883f661a7a61dca6d343dc05e44a32bda9435.1764845757.git.jani.nikula@intel.com>
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
code. Rename to drm_vblank_crtc_get_last_timestamp().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 52fa4ca361e3..4a88cdea086d 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -162,9 +162,8 @@
  */
 #define DRM_REDUNDANT_VBLIRQ_THRESH_NS 1000000
 
-static bool
-drm_get_last_vbltimestamp(struct drm_device *dev, unsigned int pipe,
-			  ktime_t *tvblank, bool in_vblank_irq);
+static bool drm_vblank_crtc_get_last_timestamp(struct drm_vblank_crtc *vblank,
+					       ktime_t *tvblank, bool in_vblank_irq);
 
 static unsigned int drm_timestamp_precision = 20;  /* Default to 20 usecs. */
 
@@ -253,7 +252,6 @@ static u32 drm_vblank_crtc_get_counter(struct drm_vblank_crtc *vblank)
 static void drm_vblank_crtc_reset_timestamp(struct drm_vblank_crtc *vblank)
 {
 	struct drm_device *dev = vblank->dev;
-	unsigned int pipe = vblank->pipe;
 	u32 cur_vblank;
 	bool rc;
 	ktime_t t_vblank;
@@ -267,7 +265,7 @@ static void drm_vblank_crtc_reset_timestamp(struct drm_vblank_crtc *vblank)
 	 */
 	do {
 		cur_vblank = drm_vblank_crtc_get_counter(vblank);
-		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
+		rc = drm_vblank_crtc_get_last_timestamp(vblank, &t_vblank, false);
 	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	/*
@@ -325,7 +323,7 @@ static void drm_vblank_crtc_update_count(struct drm_vblank_crtc *vblank,
 	 */
 	do {
 		cur_vblank = drm_vblank_crtc_get_counter(vblank);
-		rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, in_vblank_irq);
+		rc = drm_vblank_crtc_get_last_timestamp(vblank, &t_vblank, in_vblank_irq);
 	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	if (max_vblank_count) {
@@ -911,11 +909,10 @@ drm_crtc_get_last_vbltimestamp(struct drm_crtc *crtc, ktime_t *tvblank,
 	return ret;
 }
 
-static bool
-drm_get_last_vbltimestamp(struct drm_device *dev, unsigned int pipe,
-			  ktime_t *tvblank, bool in_vblank_irq)
+static bool drm_vblank_crtc_get_last_timestamp(struct drm_vblank_crtc *vblank,
+					       ktime_t *tvblank, bool in_vblank_irq)
 {
-	struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+	struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 
 	return drm_crtc_get_last_vbltimestamp(crtc, tvblank, in_vblank_irq);
 }
@@ -1555,7 +1552,6 @@ EXPORT_SYMBOL(drm_crtc_vblank_on);
 void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 {
 	struct drm_device *dev = crtc->dev;
-	unsigned int pipe = drm_crtc_index(crtc);
 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	ktime_t t_vblank;
 	int framedur_ns;
@@ -1578,7 +1574,7 @@ void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 
 	do {
 		cur_vblank = drm_vblank_crtc_get_counter(vblank);
-		drm_get_last_vbltimestamp(dev, pipe, &t_vblank, false);
+		drm_vblank_crtc_get_last_timestamp(vblank, &t_vblank, false);
 	} while (cur_vblank != drm_vblank_crtc_get_counter(vblank) && --count > 0);
 
 	diff_ns = ktime_to_ns(ktime_sub(t_vblank, vblank->time));
-- 
2.47.3

