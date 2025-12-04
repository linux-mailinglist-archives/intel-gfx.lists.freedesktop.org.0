Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05578CA35A5
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A7310E959;
	Thu,  4 Dec 2025 10:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qfms3rko";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3042510E932;
 Thu,  4 Dec 2025 10:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845981; x=1796381981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LOktGYqKx3Nx8MvZ+WGnitpL5SbjKCEbM85k9+7B6Bs=;
 b=Qfms3rkonj/j1RHZszQJMnDMgIW48ladfAr7irVNdbIUupJmqErX0D54
 klr++bq9vUS7b7d5EV+22cuwfBwQqXZGT3BHeCEqcQqhEKc3zeHGB2ZDA
 Rb56+3DeHx7kH8VMSyFl4kflSZNwKzQAcoSrIgbBKJ6fDXw6Yst14I/jo
 8zGZ0lovQN57Li3dcSBkPv2PWwZ2N+f0guB6OU2Xz+qCGcp+QXzlAU3Zw
 CZGHpjJpx3kddM8cTMlNjkBR+KoAx3UpFWSha1tdHE+2J9PDOEw7k9/C9
 KMSORuQh1Hxr9kQhrJE0hpwr76VoieVjg76csZ5Y7vi8jW+fZfx8UOJlH A==;
X-CSE-ConnectionGUID: MCaG1aqsTYCssjys0xqywg==
X-CSE-MsgGUID: 7e8oWKTSR6qjDb30pCZ1xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327068"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327068"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:41 -0800
X-CSE-ConnectionGUID: AWh2+BRBSUmOX3taOSmp9Q==
X-CSE-MsgGUID: UnMELEdyQtuOaSXArfD6jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064765"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 19/25] drm/vblank: add drm_crtc_from_vblank() helper
Date: Thu,  4 Dec 2025 12:57:47 +0200
Message-ID: <53a69066dfb1977083b6797e1d7a751118c05aed.1764845757.git.jani.nikula@intel.com>
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

We have a handful of places where we need to get the crtc from the
vblank. Add a small helper for it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index ad44fea4ff67..d43165ee594a 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -188,6 +188,11 @@ drm_crtc_vblank_crtc(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_crtc);
 
+static struct drm_crtc *drm_crtc_from_vblank(struct drm_vblank_crtc *vblank)
+{
+	return drm_crtc_from_index(vblank->dev, vblank->pipe);
+}
+
 static void drm_vblank_crtc_store(struct drm_vblank_crtc *vblank,
 				  u32 vblank_count_inc,
 				  ktime_t t_vblank, u32 last)
@@ -1608,7 +1613,7 @@ static int drm_vblank_crtc_queue_event(struct drm_vblank_crtc *vblank,
 	e->event.vbl.user_data = vblwait->request.signal;
 	e->event.vbl.crtc_id = 0;
 	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
-		struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+		struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 
 		if (crtc)
 			e->event.vbl.crtc_id = crtc->base.id;
@@ -1858,7 +1863,7 @@ static void drm_vblank_crtc_handle_events(struct drm_vblank_crtc *vblank)
 {
 	struct drm_device *dev = vblank->dev;
 	unsigned int pipe = vblank->pipe;
-	struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
+	struct drm_crtc *crtc = drm_crtc_from_vblank(vblank);
 	bool high_prec = false;
 	struct drm_pending_vblank_event *e, *t;
 	ktime_t now;
-- 
2.47.3

