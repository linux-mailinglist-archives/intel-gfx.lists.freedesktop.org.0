Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3872317560F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 09:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2856E120;
	Mon,  2 Mar 2020 08:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2AB36E116
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 08:35:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20409162-1500050 
 for multiple; Mon, 02 Mar 2020 08:35:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 08:35:26 +0000
Message-Id: <20200302083526.4134680-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] efi/x86: Protect rtc_lock from interrupts
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

commit 83a0a2ea0b991927e42984be220329e776ce7137
Author: Ard Biesheuvel <ardb@kernel.org>
Date:   Fri Jul 20 10:47:18 2018 +0900

    efi/x86: Prevent reentrant firmware calls in mixed mode

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 arch/x86/platform/efi/efi_64.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index fa8506e76bbe..8e2d23938aa3 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -572,16 +572,16 @@ static efi_status_t efi_thunk_get_time(efi_time_t *tm, efi_time_cap_t *tc)
 	u32 phys_tm, phys_tc;
 	unsigned long flags;
 
-	spin_lock(&rtc_lock);
-	spin_lock_irqsave(&efi_runtime_lock, flags);
+	spin_lock_irqsave(&rtc_lock, flags);
+	spin_lock(&efi_runtime_lock);
 
 	phys_tm = virt_to_phys_or_null(tm);
 	phys_tc = virt_to_phys_or_null(tc);
 
 	status = efi_thunk(get_time, phys_tm, phys_tc);
 
-	spin_unlock_irqrestore(&efi_runtime_lock, flags);
-	spin_unlock(&rtc_lock);
+	spin_unlock(&efi_runtime_lock);
+	spin_unlock_irqrestore(&rtc_lock, flags);
 
 	return status;
 }
@@ -592,15 +592,15 @@ static efi_status_t efi_thunk_set_time(efi_time_t *tm)
 	u32 phys_tm;
 	unsigned long flags;
 
-	spin_lock(&rtc_lock);
-	spin_lock_irqsave(&efi_runtime_lock, flags);
+	spin_lock_irqave(&rtc_lock, flags);
+	spin_lock(&efi_runtime_lock);
 
 	phys_tm = virt_to_phys_or_null(tm);
 
 	status = efi_thunk(set_time, phys_tm);
 
-	spin_unlock_irqrestore(&efi_runtime_lock, flags);
-	spin_unlock(&rtc_lock);
+	spin_unlock(&efi_runtime_lock);
+	spin_unlock_irqrestore(&rtc_lock, flags);
 
 	return status;
 }
@@ -613,8 +613,8 @@ efi_thunk_get_wakeup_time(efi_bool_t *enabled, efi_bool_t *pending,
 	u32 phys_enabled, phys_pending, phys_tm;
 	unsigned long flags;
 
-	spin_lock(&rtc_lock);
-	spin_lock_irqsave(&efi_runtime_lock, flags);
+	spin_lock_irqsave(&rtc_lock, flags);
+	spin_lock(&efi_runtime_lock);
 
 	phys_enabled = virt_to_phys_or_null(enabled);
 	phys_pending = virt_to_phys_or_null(pending);
@@ -623,8 +623,8 @@ efi_thunk_get_wakeup_time(efi_bool_t *enabled, efi_bool_t *pending,
 	status = efi_thunk(get_wakeup_time, phys_enabled,
 			     phys_pending, phys_tm);
 
-	spin_unlock_irqrestore(&efi_runtime_lock, flags);
-	spin_unlock(&rtc_lock);
+	spin_unlock(&efi_runtime_lock);
+	spin_unlock_irqrestore(&rtc_lock, flags);
 
 	return status;
 }
@@ -636,15 +636,15 @@ efi_thunk_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm)
 	u32 phys_tm;
 	unsigned long flags;
 
-	spin_lock(&rtc_lock);
-	spin_lock_irqsave(&efi_runtime_lock, flags);
+	spin_lock_irqsave(&rtc_lock, flags);
+	spin_lock(&efi_runtime_lock);
 
 	phys_tm = virt_to_phys_or_null(tm);
 
 	status = efi_thunk(set_wakeup_time, enabled, phys_tm);
 
-	spin_unlock_irqrestore(&efi_runtime_lock, flags);
-	spin_unlock(&rtc_lock);
+	spin_unlock(&efi_runtime_lock);
+	spin_unlock_irqrestore(&rtc_lock, flags);
 
 	return status;
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
