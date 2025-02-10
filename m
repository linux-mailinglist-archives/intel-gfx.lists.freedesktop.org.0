Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FB1A2F62F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADE410E5D9;
	Mon, 10 Feb 2025 17:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmAz/4B9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A24910E5D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210333; x=1770746333;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BDGIt7KTYIKv972pcJ+JIsakU64sahaLXZNAWKgFyZc=;
 b=GmAz/4B9GrXpzhRm28I4kLodhxKhXpMu4XP4CXteS6BDIZQWjr5+qTGc
 gOBHB237VG0Xhdn2+h69bY9SWc6P2SvhvFpA39wDQC5S5kLOS3d2e6aGt
 S9wnBtaKU4yOxs+3S4hhKopNleU6Z3otXush/y9zrI0eq5dshhYsGDBX6
 rB3j0yPqGfasNl/2uSJrh3M8RCW3EHz7F7w/859AUA4xYXZOrzekchO14
 fVHKnY3ABMaYkbAzfhHk9kFQWCTZj81QnoUBuxY5cmVcnaHs4pTNnUDCY
 1kh/fXu5kZU3yNLIdKpIU2Ly9jgngOXdYcWFndZCvIRjfsEGs7x8/aPV8 w==;
X-CSE-ConnectionGUID: /Vl9qFHCTn6YgHaGvMbSRA==
X-CSE-MsgGUID: gO9e3VxeT5m6H0boHTX/aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39003010"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39003010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:53 -0800
X-CSE-ConnectionGUID: B8BP7bFgSBa3M2YS/GrvJA==
X-CSE-MsgGUID: 5Mv8CZTfSQCNlbBcLAhHBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480693"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 5/7] sna/video/sprite: Plug bo leak
Date: Mon, 10 Feb 2025 19:58:34 +0200
Message-ID: <20250210175836.30984-6-ville.syrjala@linux.intel.com>
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

Looks like we're leaking video->bo[index] if the entire
sprite gets clipped. Let's plug that leak.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna_video_sprite.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index ce09d890af71..e2541e351b3f 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -548,7 +548,7 @@ off:
 				if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
 					xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
 						   "failed to disable plane\n");
-				video->bo[index] = NULL;
+				kgem_bo_replace(&sna->kgem, &video->bo[index], NULL);
 			}
 			continue;
 		}
-- 
2.45.3

