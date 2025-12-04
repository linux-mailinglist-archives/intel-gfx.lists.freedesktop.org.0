Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAD3CA3596
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BF610E950;
	Thu,  4 Dec 2025 10:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EULyf1XG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A3DB10E94D;
 Thu,  4 Dec 2025 10:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845965; x=1796381965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g6oW3202SVA7O8J8qqCzNrJiNxAY1IGglv9YFNhBk4c=;
 b=EULyf1XG/ZDmlqOblP/HCYZqiXYDmyHdPH2pKOO4O+qkdGzt1Oj4MDPW
 CqTnnvkb8tbhXQuamSQISMWBcPdmaP/k9xS+nrmqN0UDTGZjlvoBdvaGW
 7InDnUA/C35nN9gc6+SeAzB82vlKm+AdeRhlFi8RfrQgfAZ9AzHablxJi
 VW9ljfaImjhXusMSCIGDhsMkMHLZuDG5sLmgthcFxKSWePGchyHO8D4X9
 737PiF/++qKw+8YSyGoinhRjbwvxbYvrNsettpTtRadB8sKePPo5/u0+a
 5uTtaIJ/73e79NbGhfWM/PpSYSY5bjNHU6dHv9s6PvR1akBQZL3wNrvyi g==;
X-CSE-ConnectionGUID: jNCaHHz1SwequxhGRGj9cQ==
X-CSE-MsgGUID: mshYAmfWRmuTkq0K0q9/WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="69456193"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="69456193"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:25 -0800
X-CSE-ConnectionGUID: sCEuZHCsRiOdxBjD5JspwA==
X-CSE-MsgGUID: 7B9gvqYJTrGOteL1Lw55Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225627576"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 16/25] drm/vblank: pass vblank to store_vblank()
Date: Thu,  4 Dec 2025 12:57:44 +0200
Message-ID: <5397e90ef5a66947a004f08dae20cfac3f215521.1764845757.git.jani.nikula@intel.com>
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
code. Rename to drm_vblank_crtc_store().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index ed4a589c408f..81224946df9d 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -188,11 +188,11 @@ drm_crtc_vblank_crtc(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_crtc);
 
-static void store_vblank(struct drm_device *dev, unsigned int pipe,
-			 u32 vblank_count_inc,
-			 ktime_t t_vblank, u32 last)
+static void drm_vblank_crtc_store(struct drm_vblank_crtc *vblank,
+				  u32 vblank_count_inc,
+				  ktime_t t_vblank, u32 last)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_device *dev = vblank->dev;
 
 	assert_spin_locked(&dev->vblank_time_lock);
 
@@ -277,7 +277,7 @@ static void drm_vblank_crtc_reset_timestamp(struct drm_vblank_crtc *vblank)
 	 * +1 to make sure user will never see the same
 	 * vblank counter value before and after a modeset
 	 */
-	store_vblank(dev, pipe, 1, t_vblank, cur_vblank);
+	drm_vblank_crtc_store(vblank, 1, t_vblank, cur_vblank);
 
 	spin_unlock(&dev->vblank_time_lock);
 }
@@ -384,7 +384,7 @@ static void drm_vblank_crtc_update_count(struct drm_vblank_crtc *vblank,
 	if (!rc && !in_vblank_irq)
 		t_vblank = 0;
 
-	store_vblank(dev, pipe, diff, t_vblank, cur_vblank);
+	drm_vblank_crtc_store(vblank, diff, t_vblank, cur_vblank);
 }
 
 u64 drm_vblank_crtc_count(struct drm_vblank_crtc *vblank)
@@ -395,8 +395,8 @@ u64 drm_vblank_crtc_count(struct drm_vblank_crtc *vblank)
 
 	/*
 	 * This read barrier corresponds to the implicit write barrier of the
-	 * write seqlock in store_vblank(). Note that this is the only place
-	 * where we need an explicit barrier, since all other access goes
+	 * write seqlock in drm_vblank_crtc_store(). Note that this is the only
+	 * place where we need an explicit barrier, since all other access goes
 	 * through drm_vblank_crtc_count_and_time(), which already has the
 	 * required read barrier curtesy of the read seqlock.
 	 */
-- 
2.47.3

