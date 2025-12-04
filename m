Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D6ACA3584
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EAB10E947;
	Thu,  4 Dec 2025 10:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U2VPt8iO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E252B10E947;
 Thu,  4 Dec 2025 10:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845943; x=1796381943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y607yhnQ0xH1aRutVczl2st3u2HHIL1JhpM0UouuCLU=;
 b=U2VPt8iObCQEA4VipxMHsxQVuYtNuGWa9z3SoOSfEvapecJUWDDsj3iH
 Msn6dL/s6TRiog4H3Z4S5ye0ZH6REMRTpHTXmXHaU15LPkZXK0DNkeohL
 AKtlXblQO9pbrsxo8xrllRZgqRd/3dn/ljQ87J+D4xc5vrXb7v2lzeO0u
 2hlpdLedTZPZpSuNjCWTHP0IFCoAKdQDfpW88fuPWQQ7Bb786iup3tWx8
 YuIaC/HJIaLZC0eDPuW9hkVgq0n9ulQRJHXxNfA2uelx/40xACW9FN1rl
 8wkd0IlVTYhPBt4wKwuCuFC9uxdY8HGCVLcADcyEqAbReRoW7Yfp1NDfi A==;
X-CSE-ConnectionGUID: HSvKRLLmQP653PipPky+yw==
X-CSE-MsgGUID: ODUtWuohQRCTJO7D1jwsQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856907"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856907"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:03 -0800
X-CSE-ConnectionGUID: rOC5LoqCRgi8j2sNhN4wgg==
X-CSE-MsgGUID: lLNNg60lTD2TbW2yT+R2Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904374"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/25] drm/vblank: pass vblank to drm_queue_vblank_event()
Date: Thu,  4 Dec 2025 12:57:40 +0200
Message-ID: <f8ccb5d4e590edc32292a0bb96b596a96ae9e4ed.1764845757.git.jani.nikula@intel.com>
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
code. Rename to drm_vblank_crtc_queue_event().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index d0460cd5d345..6be354415529 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1599,12 +1599,13 @@ void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_restore);
 
-static int drm_queue_vblank_event(struct drm_device *dev, unsigned int pipe,
-				  u64 req_seq,
-				  union drm_wait_vblank *vblwait,
-				  struct drm_file *file_priv)
+static int drm_vblank_crtc_queue_event(struct drm_vblank_crtc *vblank,
+				       u64 req_seq,
+				       union drm_wait_vblank *vblwait,
+				       struct drm_file *file_priv)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_device *dev = vblank->dev;
+	unsigned int pipe = vblank->pipe;
 	struct drm_pending_vblank_event *e;
 	ktime_t now;
 	u64 seq;
@@ -1825,7 +1826,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 		/* must hold on to the vblank ref until the event fires
 		 * drm_vblank_crtc_put will be called asynchronously
 		 */
-		return drm_queue_vblank_event(dev, pipe, req_seq, vblwait, file_priv);
+		return drm_vblank_crtc_queue_event(vblank, req_seq, vblwait, file_priv);
 	}
 
 	if (req_seq != seq) {
-- 
2.47.3

