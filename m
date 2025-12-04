Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126CCA3587
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18F010E94B;
	Thu,  4 Dec 2025 10:59:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hp4O2JTb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BC010E94A;
 Thu,  4 Dec 2025 10:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845949; x=1796381949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4srJyTlany9p6WErCWLsXvkxk3Slyy7H3smgisgH8iI=;
 b=Hp4O2JTbHitjtwyFbqfoShyBZqX1niXKRufz7rvRn7wdYcxs4WyNSPQI
 5075STPs9asIs1SE1EGLT6zr7vlEoQK90opT8KWPpJ5sVeHYNn9QBK6s1
 KUunNXCD/FyuwzObnV6cOQzkqMd9ancIneja6lwJcZWcii06/T4kAurar
 QvykZcTG3cGk1+Qe+aSkAjeTbVV2hfp97b6zULCHkdoxZLTLJb2jHE+5A
 mMlTprYDZtVOBPbMRkpX/sYLSC8FeszUsopgFGIh6ob802vYqFc13gSvO
 NMB2HvYuRZLuZIOdTQOf3ipGZLpzlxdZuJGglkQDN7c4CrmSCJl/RdLSx Q==;
X-CSE-ConnectionGUID: HQBK8T3fSy6EgIFN8dLppw==
X-CSE-MsgGUID: +DajZ21xT6SDIsNaPwpUsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="69456173"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="69456173"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:08 -0800
X-CSE-ConnectionGUID: 9hMftcz7QJCDs5hq5YeZYQ==
X-CSE-MsgGUID: 5VAPcZj/TtOAy+nif5zTcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225627532"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 13/25] drm/vblank: pass vblank to drm_wait_vblank_reply()
Date: Thu,  4 Dec 2025 12:57:41 +0200
Message-ID: <fe308477c344fae1bc4deec3829306866008a0f2.1764845757.git.jani.nikula@intel.com>
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
code. Rename to drm_vblank_crtc_wait_reply().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 6be354415529..233c60860c78 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1705,18 +1705,18 @@ static u64 widen_32_to_64(u32 narrow, u64 near)
 	return near + (s32) (narrow - near);
 }
 
-static void drm_wait_vblank_reply(struct drm_device *dev, unsigned int pipe,
-				  struct drm_wait_vblank_reply *reply)
+static void drm_vblank_crtc_wait_reply(struct drm_vblank_crtc *vblank,
+				       struct drm_wait_vblank_reply *reply)
 {
 	ktime_t now;
 	struct timespec64 ts;
 
 	/*
-	 * drm_wait_vblank_reply is a UAPI structure that uses 'long'
+	 * drm_vblank_crtc_wait_reply is a UAPI structure that uses 'long'
 	 * to store the seconds. This is safe as we always use monotonic
 	 * timestamps since linux-4.15.
 	 */
-	reply->sequence = drm_vblank_count_and_time(dev, pipe, &now);
+	reply->sequence = drm_vblank_count_and_time(vblank->dev, vblank->pipe, &now);
 	ts = ktime_to_timespec64(now);
 	reply->tval_sec = (u32)ts.tv_sec;
 	reply->tval_usec = ts.tv_nsec / 1000;
@@ -1788,7 +1788,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	if (vblank->config.disable_immediate &&
 	    drm_wait_vblank_is_query(vblwait) &&
 	    READ_ONCE(vblank->enabled)) {
-		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
+		drm_vblank_crtc_wait_reply(vblank, &vblwait->reply);
 		return 0;
 	}
 
@@ -1855,7 +1855,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	}
 
 	if (ret != -EINTR) {
-		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
+		drm_vblank_crtc_wait_reply(vblank, &vblwait->reply);
 
 		drm_dbg_core(dev, "crtc %d returning %u to client\n",
 			     pipe, vblwait->reply.sequence);
-- 
2.47.3

