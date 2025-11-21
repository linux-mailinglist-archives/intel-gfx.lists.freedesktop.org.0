Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF90C77FB4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 09:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A7010E7EC;
	Fri, 21 Nov 2025 08:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ezq1SOME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3047B10E7EC;
 Fri, 21 Nov 2025 08:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763714916; x=1795250916;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=skPdEAb/6Imu9ZEn+UjYDXK6l7rlLY8/RWjHoMs+6Yc=;
 b=Ezq1SOMEO6vMjsIZnVwKWZu8bZ5NivFvBYqu3AQ4PepurmIXIsKC/BHR
 Bk25T+hITeQQXv87SBPJx02B6VfYtdyAhGqeN6PyMAPt+dA4sgBpj8LGT
 y8DPxvFiW+8dUoLMGGT6AnWTp2H+RDTzZN2szF1BpWMeTwRkzaMb7nQuk
 Yi0EViWFI+4duQ4kBsTQWc8t9KZPUXLY4A6dXxCBa2zd3SmWOv1RXFGOv
 oz4uo4RL0tw5dH0MDmJbnK1atpvhXO+DmEiLhR//PV81wbCK859AohluI
 eS8btkuADssCKDD0sBalbSftcIgU1cOrSHA0H5rJCPtoaBCw2BkG/Gk6l A==;
X-CSE-ConnectionGUID: fLCOuCipTqW1ubPNTeTriw==
X-CSE-MsgGUID: ktfO5L+PQ6GPAhwpRPYA1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65737047"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65737047"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:48:32 -0800
X-CSE-ConnectionGUID: dFbYbMK6SlqvvaYQLjICXQ==
X-CSE-MsgGUID: EwJGR2h/TEiCWQ3DbqNDaA==
X-ExtLoop1: 1
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 21 Nov 2025 00:48:31 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH] fbcon: Reschedule cursor worker if try lock fails
Date: Fri, 21 Nov 2025 14:01:38 +0530
Message-Id: <20251121083138.468339-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

With the removal of timer implementation for cursor work[1],
the cursor delayed work does not get rescheduled if it fails
to acquire the console lock.

This has been found to cause issue during the resume sequence
of the IGT test kms_fbcon_fbt@fbc-suspend[2]. The test expects
cursor blinking to start after the system resumes from suspend
state.

 fbcon_resumed()
	 redraw_screen()
		 set_cursor()
			 fb_flashcursor()

But the cursor work fails to acuire the lock and it never gets
rescheduled unless some other function comes in and invokes
fbcon_add_cursor_work() which adds the worker to the queue.
From empirical evidence this happens if we tweak the console
log level.

Push the cursor work to the queue if we fail to acquire the lock.

v2:
 - s/opt/par

[1] commit 3b0fb6ab25dd ("fbcon: Use delayed work for cursor")
[2] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/re-mtlp-11/igt@kms_fbcon_fbt@fbc-suspend.html

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/video/fbdev/core/fbcon.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 9771134beb8a..6ee993db9995 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -401,8 +401,11 @@ static void fb_flashcursor(struct work_struct *work)
 	/* instead we just fail to flash the cursor if we can't get
 	 * the lock instead of blocking fbcon deinit */
 	ret = console_trylock();
-	if (ret == 0)
+	if (ret == 0) {
+		queue_delayed_work(system_power_efficient_wq, &par->cursor_work,
+				   par->cur_blink_jiffies);
 		return;
+	}
 
 	/* protected by console_lock */
 	info = par->info;
-- 
2.25.1

