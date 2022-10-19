Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF47604934
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0D710EAEB;
	Wed, 19 Oct 2022 14:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 159B510EAEB;
 Wed, 19 Oct 2022 14:28:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F00DAAA91;
 Wed, 19 Oct 2022 14:28:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 19 Oct 2022 14:28:19 -0000
Message-ID: <166618969903.29708.12522709835021608163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019121007.3229024-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221019121007.3229024-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Selftest_fixes_for_6=2E1?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Selftest fixes for 6.1
URL   : https://patchwork.freedesktop.org/series/109879/
State : warning

== Summary ==

Error: dim checkpatch failed
b6a846cd517f drm/i915/selftests: Fix waiting for threads to start
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'array' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/i915_selftest.h:140:
+#define __igt_start_threads(array, num, cond, flag) \
+({ \
+	unsigned int n; \
+\
+restart: \
+	cond_resched(); \
+	for (n = 0; n < (num); n++) { \
+		if (array[n].cond && !READ_ONCE(array[n].running)) \
+			goto restart; \
+	} \
+})

-:141: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cond' may be better as '(cond)' to avoid precedence issues
#141: FILE: drivers/gpu/drm/i915/i915_selftest.h:140:
+#define __igt_start_threads(array, num, cond, flag) \
+({ \
+	unsigned int n; \
+\
+restart: \
+	cond_resched(); \
+	for (n = 0; n < (num); n++) { \
+		if (array[n].cond && !READ_ONCE(array[n].running)) \
+			goto restart; \
+	} \
+})

-:141: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#141: FILE: drivers/gpu/drm/i915/i915_selftest.h:140:
+#define __igt_start_threads(array, num, cond, flag) \
+({ \
+	unsigned int n; \
+\
+restart: \
+	cond_resched(); \
+	for (n = 0; n < (num); n++) { \
+		if (array[n].cond && !READ_ONCE(array[n].running)) \
+			goto restart; \
+	} \
+})

total: 0 errors, 1 warnings, 2 checks, 439 lines checked
101cf31aff47 drm/i915/selftests: Fix selftests for 6.1 kthread_stop semantics
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a7c01fa93aeb ("signal: break out of wait loops on kthread_stop()")'
#7: 
Since a7c01fa93aeb ("signal: break out of wait loops on kthread_stop()")

-:122: CHECK:LINE_SPACING: Please don't use multiple blank lines
#122: FILE: drivers/gpu/drm/i915/selftests/i915_selftest.c:400:
 
+

total: 1 errors, 0 warnings, 1 checks, 97 lines checked


