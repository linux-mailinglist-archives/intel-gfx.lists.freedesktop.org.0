Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ECFC778EE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 07:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E933D10E03C;
	Fri, 21 Nov 2025 06:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3rlTo3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1AD710E03C;
 Fri, 21 Nov 2025 06:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763706221; x=1795242221;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GoLSboSB3eZ4+sO71IwglbWskBhy1seRAn9FCd4ruFY=;
 b=S3rlTo3i2PP56PtGbYbqDIrqdn6UsdsD6974HygIeF7pfsLf8dsYSO2T
 k/NdApg5QN6YTlY8dEb9JSrjimEGtdVU77XoA6EiJ8HIUbI4b6yP0UbJU
 WSICxap7sMNcicDeCVQrt6K3pDHQDydhZaelCu/KmAx04VAcELwUVRIBY
 uGTZfeDf8hp1xF8f/V7ykJWCgsOFCf1ugiHrl1EAAv+DubywDrnEqCJgY
 vuuKuKsCWcM+X7Abz1q8wuxtqcuioxrwO9wHCs+It62TlNDv2ySJMhXvE
 0gfJMDj6AfHHTVvTGEo0JG9vNXQfL/VJ+vQ4eXnds1nry2e3jGQmFYYsQ Q==;
X-CSE-ConnectionGUID: dW5NVKHKR9ekN3K3HhihVQ==
X-CSE-MsgGUID: 1kKvZq3FQkqEX0QKmVHYpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="77155362"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="77155362"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 22:23:40 -0800
X-CSE-ConnectionGUID: 3B7THCDwTvWoXOeohXklGQ==
X-CSE-MsgGUID: fjiaith8Q7qg53RIOICLjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191296376"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 20 Nov 2025 22:23:39 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH] fbcon: Reschedule cursor worker if try lock fails
Date: Fri, 21 Nov 2025 11:36:46 +0530
Message-Id: <20251121060646.283332-1-chaitanya.kumar.borah@intel.com>
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

[1] commit 3b0fb6ab25dd ("fbcon: Use delayed work for cursor")
[2] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/re-mtlp-11/igt@kms_fbcon_fbt@fbc-suspend.html

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/video/fbdev/core/fbcon.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 9771134beb8a..96e81f15af90 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -401,8 +401,11 @@ static void fb_flashcursor(struct work_struct *work)
 	/* instead we just fail to flash the cursor if we can't get
 	 * the lock instead of blocking fbcon deinit */
 	ret = console_trylock();
-	if (ret == 0)
+	if (ret == 0) {
+		queue_delayed_work(system_power_efficient_wq, &ops->cursor_work,
+				   ops->cur_blink_jiffies);
 		return;
+	}
 
 	/* protected by console_lock */
 	info = par->info;
-- 
2.25.1

