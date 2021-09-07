Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6FC402A40
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 15:54:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D5D89F2A;
	Tue,  7 Sep 2021 13:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A42389F2A;
 Tue,  7 Sep 2021 13:54:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 013D2A363C;
 Tue,  7 Sep 2021 13:54:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 13:54:45 -0000
Message-ID: <163102288597.24494.14968433752910780818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_kernel/locking=3A_Add_context_to_ww=5Fmutex=5Ftrylock=2E?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: kernel/locking: Add context to ww_mutex_trylock.
URL   : https://patchwork.freedesktop.org/series/94437/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9eed33b42bf0 kernel/locking: Add context to ww_mutex_trylock.
-:166: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#166: FILE: kernel/locking/test-ww_mutex.c:20:
+#define ww_acquire_init_noinject(a, b) do { \
+		ww_acquire_init((a), (b)); \
+		(a)->deadlock_inject_countdown = ~0U; \
+	} while (0)

-:321: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#321: FILE: kernel/locking/test-ww_mutex.c:625:
+	printk(KERN_INFO "Beginning ww mutex selftests\n");

-:354: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#354: FILE: kernel/locking/test-ww_mutex.c:665:
+	printk(KERN_INFO "All ww mutex selftests passed\n");

total: 0 errors, 2 warnings, 1 checks, 280 lines checked


