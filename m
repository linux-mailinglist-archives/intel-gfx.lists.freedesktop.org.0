Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A192D30CDD5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 22:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C958E6E99C;
	Tue,  2 Feb 2021 21:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85AB96E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 21:20:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23777328-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Feb 2021 21:20:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Feb 2021 21:20:09 +0000
Message-Id: <20210202212011.28814-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] *** HAX FOR CI *** Revert "rtc: mc146818:
 Detect and handle broken RTCs"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jani Nikula <jani.nikula@intel.com>

This reverts commit 211e5db19d15a721b2953ea54b8f26c2963720eb.
---
 drivers/rtc/rtc-cmos.c         | 8 --------
 drivers/rtc/rtc-mc146818-lib.c | 7 -------
 2 files changed, 15 deletions(-)

diff --git a/drivers/rtc/rtc-cmos.c b/drivers/rtc/rtc-cmos.c
index 68a9ac6f2fe1..51e80bc70d42 100644
--- a/drivers/rtc/rtc-cmos.c
+++ b/drivers/rtc/rtc-cmos.c
@@ -805,14 +805,6 @@ cmos_do_probe(struct device *dev, struct resource *ports, int rtc_irq)
 
 	spin_lock_irq(&rtc_lock);
 
-	/* Ensure that the RTC is accessible. Bit 0-6 must be 0! */
-	if ((CMOS_READ(RTC_VALID) & 0x7f) != 0) {
-		spin_unlock_irq(&rtc_lock);
-		dev_warn(dev, "not accessible\n");
-		retval = -ENXIO;
-		goto cleanup1;
-	}
-
 	if (!(flags & CMOS_RTC_FLAGS_NOFREQ)) {
 		/* force periodic irq to CMOS reset default of 1024Hz;
 		 *
diff --git a/drivers/rtc/rtc-mc146818-lib.c b/drivers/rtc/rtc-mc146818-lib.c
index f83c13818af3..972a5b9a629d 100644
--- a/drivers/rtc/rtc-mc146818-lib.c
+++ b/drivers/rtc/rtc-mc146818-lib.c
@@ -21,13 +21,6 @@ unsigned int mc146818_get_time(struct rtc_time *time)
 
 again:
 	spin_lock_irqsave(&rtc_lock, flags);
-	/* Ensure that the RTC is accessible. Bit 0-6 must be 0! */
-	if (WARN_ON_ONCE((CMOS_READ(RTC_VALID) & 0x7f) != 0)) {
-		spin_unlock_irqrestore(&rtc_lock, flags);
-		memset(time, 0xff, sizeof(*time));
-		return 0;
-	}
-
 	/*
 	 * Check whether there is an update in progress during which the
 	 * readout is unspecified. The maximum update time is ~2ms. Poll
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
