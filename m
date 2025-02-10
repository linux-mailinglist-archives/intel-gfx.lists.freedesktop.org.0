Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988F6A2F62E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3BC10E377;
	Mon, 10 Feb 2025 17:58:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e9MccIlh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8D410E5D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210331; x=1770746331;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zOLduP6qYbbG6mikOiwT3nY3ZvZD5bPac75GCUvySRc=;
 b=e9MccIlhdWrsh2Ji67a4oDkiVveUAS5sVZFv878ybAeZQ0drTVF1yu2z
 hsjX1R4a4UUq/SGxaSjHSWsT+375QThhFygkiPz+l3IW1w8C6nRkgx6qC
 Mrv9sa1AhjPo+H7dswbim8v/hhOL0ZSGjJfmUOvQUCH7wpUk7PV42Ydjv
 aRdA81KzdaX0qKfmxVyHfLaJbSHP0qh2QFVdyPRDmTgK7nnKJx8Qb5uLu
 I+XnHWBYPXCBMIvpNxaYn8s5gqlATVxMpjy+lhd7vF564FKzmGoMfnYFu
 tLRoJimzpuH4kMbfB6A/hpm3oumyE8u+ZFG8z4kJiotsNZ0vu8lSO19Sq Q==;
X-CSE-ConnectionGUID: EMcXLe1RTC24BZGRGktA9g==
X-CSE-MsgGUID: A4vz4lTeSFibIWk91Ad3DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39003007"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39003007"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:50 -0800
X-CSE-ConnectionGUID: X1hrOIZHSXaLUFyqISU5pQ==
X-CSE-MsgGUID: +v8pLgzWRceJirpzeosmQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 4/7] sna/video/sprite: Use kgem_bo_replace()
Date: Mon, 10 Feb 2025 19:58:33 +0200
Message-ID: <20250210175836.30984-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
References: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
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

Replace the hand rolled bo unref+ref stuff with
kgem_bo_replace().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna_video_sprite.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index db3865b9ffae..ce09d890af71 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -115,9 +115,7 @@ static int sna_video_sprite_stop(ddStopVideo_ARGS)
 			xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
 				   "failed to disable plane\n");
 
-		if (video->bo[index])
-			kgem_bo_destroy(&video->sna->kgem, video->bo[index]);
-		video->bo[index] = NULL;
+		kgem_bo_replace(&video->sna->kgem, &video->bo[index], NULL);
 	}
 
 	sna_window_set_port((WindowPtr)draw, NULL);
@@ -468,18 +466,13 @@ sna_video_sprite_show(struct sna *sna,
 
 	if (drmIoctl(sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s)) {
 		DBG(("SET_PLANE failed: ret=%d\n", errno));
-		if (video->bo[index]) {
-			kgem_bo_destroy(&sna->kgem, video->bo[index]);
-			video->bo[index] = NULL;
-		}
+		kgem_bo_replace(&sna->kgem, &video->bo[index], NULL);
 		return false;
 	}
 
 	__kgem_bo_clear_dirty(frame->bo);
 
-	if (video->bo[index])
-		kgem_bo_destroy(&sna->kgem, video->bo[index]);
-	video->bo[index] = kgem_bo_reference(frame->bo);
+	kgem_bo_replace(&sna->kgem, &video->bo[index], frame->bo);
 	return true;
 }
 
-- 
2.45.3

