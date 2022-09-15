Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE1E5BA04B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 19:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02D910EB96;
	Thu, 15 Sep 2022 17:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C9B210EB96;
 Thu, 15 Sep 2022 17:18:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 247B9A47EB;
 Thu, 15 Sep 2022 17:18:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 15 Sep 2022 17:18:37 -0000
Message-ID: <166326231714.11974.9605218795159277066@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220915165210.193197-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20220915165210.193197-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gem=3A_Really_move_i915=5Fgem=5Fcontext=2Elink_under_re?=
 =?utf-8?q?f_protection_=28rev3=29?=
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

Series: drm/i915/gem: Really move i915_gem_context.link under ref protection (rev3)
URL   : https://patchwork.freedesktop.org/series/105975/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_context.o
drivers/gpu/drm/i915/gem/i915_gem_context.c: In function ‘i915_gem_context_release_work’:
drivers/gpu/drm/i915/gem/i915_gem_context.c:1272:43: error: ‘flags’ undeclared (first use in this function); did you mean ‘class’?
  spin_lock(&ctx->i915->gem.contexts.lock, flags);
                                           ^~~~~
                                           class
drivers/gpu/drm/i915/gem/i915_gem_context.c:1272:43: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/gem/i915_gem_context.c:1272:2: error: too many arguments to function ‘spin_lock’
  spin_lock(&ctx->i915->gem.contexts.lock, flags);
  ^~~~~~~~~
In file included from ./include/linux/wait.h:9,
                 from ./include/linux/wait_bit.h:8,
                 from ./include/linux/fs.h:6,
                 from ./include/linux/highmem.h:5,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.c:67:
./include/linux/spinlock.h:347:29: note: declared here
 static __always_inline void spin_lock(spinlock_t *lock)
                             ^~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_context.c:1274:2: error: too many arguments to function ‘spin_unlock’
  spin_unlock(&ctx->i915->gem.contexts.lock, flags);
  ^~~~~~~~~~~
In file included from ./include/linux/wait.h:9,
                 from ./include/linux/wait_bit.h:8,
                 from ./include/linux/fs.h:6,
                 from ./include/linux/highmem.h:5,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.c:67:
./include/linux/spinlock.h:387:29: note: declared here
 static __always_inline void spin_unlock(spinlock_t *lock)
                             ^~~~~~~~~~~
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_context.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_context.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1852: recipe for target 'drivers' failed
make: *** [drivers] Error 2


