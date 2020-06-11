Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37791F67E8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 14:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E4C6E158;
	Thu, 11 Jun 2020 12:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D146E158
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 12:34:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21464495-1500050 
 for multiple; Thu, 11 Jun 2020 13:34:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 13:34:47 +0100
Message-Id: <20200611123447.92171-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200611123038.91855-1-chris@chris-wilson.co.uk>
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/vblank: Estimate sample time
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we have a precise start/end time for the sample, the actual time
the HW was read back is within that interval, and more likely closer to
the mean of the interval. Use the mean sample time when estimating the
vblank time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/drm_vblank.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index da7b0b0c1090..a7043d268cca 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -710,15 +710,18 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
+	/* Estimate when the sample was taken */
+	stime += (etime - stime) >> 1;
+
 	/* Subtract time delta from raw timestamp to get final
 	 * vblank_time timestamp for end of vblank.
 	 */
-	*vblank_time = ktime_sub_ns(etime, delta_ns);
+	*vblank_time = ktime_sub_ns(stime, delta_ns);
 
 	if (!drm_debug_enabled(DRM_UT_VBL))
 		return true;
 
-	ts_etime = ktime_to_timespec64(etime);
+	ts_etime = ktime_to_timespec64(stime);
 	ts_vblank_time = ktime_to_timespec64(*vblank_time);
 
 	DRM_DEBUG_VBL("crtc %u : v p(%d,%d)@ %lld.%06ld -> %lld.%06ld [e %d us, %d rep]\n",
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
