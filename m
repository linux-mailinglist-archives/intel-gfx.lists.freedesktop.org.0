Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D5C40AAE3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 11:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5B86E454;
	Tue, 14 Sep 2021 09:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FDAF6E453;
 Tue, 14 Sep 2021 09:31:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 391DCA01BB;
 Tue, 14 Sep 2021 09:31:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Peter Zijlstra" <peterz@infradead.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 09:31:10 -0000
Message-ID: <163161187021.3455.14427323980906484470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_kernel/locking=3A_Add_context_to_ww=5Fmutex=5Ftrylock=2E_?=
 =?utf-8?b?KHJldjQp?=
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

Series: kernel/locking: Add context to ww_mutex_trylock. (rev4)
URL   : https://patchwork.freedesktop.org/series/94437/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3e5b7ed1e30d kernel/locking: Add context to ww_mutex_trylock.
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
> > + * ww_mutex_trylock - tries to acquire the w/w mutex with optional acquire context

-:144: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#144: FILE: include/linux/ww_mutex.h:340:
+extern int __must_check ww_mutex_trylock(struct ww_mutex *lock,

-:217: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#217: FILE: kernel/locking/test-ww_mutex.c:20:
+#define ww_acquire_init_noinject(a, b) do { \
+		ww_acquire_init((a), (b)); \
+		(a)->deadlock_inject_countdown = ~0U; \
+	} while (0)

-:372: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#372: FILE: kernel/locking/test-ww_mutex.c:625:
+	printk(KERN_INFO "Beginning ww mutex selftests\n");

-:405: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
#405: FILE: kernel/locking/test-ww_mutex.c:665:
+	printk(KERN_INFO "All ww mutex selftests passed\n");

-:457: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 3 warnings, 2 checks, 332 lines checked


