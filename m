Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FED750B56
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 16:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A5410E559;
	Wed, 12 Jul 2023 14:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE38710E559;
 Wed, 12 Jul 2023 14:46:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6A39AADD2;
 Wed, 12 Jul 2023 14:46:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 12 Jul 2023 14:46:54 -0000
Message-ID: <168917321480.17977.16347151977118359671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230712114605.519432-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230712114605.519432-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?RM_cgroup_controller_with_scheduling_control_and_memory_stats?=
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

Series: DRM cgroup controller with scheduling control and memory stats
URL   : https://patchwork.freedesktop.org/series/120604/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
drivers/gpu/drm/i915/i915_driver.c:1834:3: error: ‘const struct drm_driver’ has no member named ‘cg_ops’
 1834 |  .cg_ops = PTR_IF(IS_ENABLED(CONFIG_CGROUP_DRM), &i915_drm_cgroup_ops),
      |   ^~~~~~
In file included from ./arch/x86/include/asm/percpu.h:27,
                 from ./arch/x86/include/asm/preempt.h:6,
                 from ./include/linux/preempt.h:79,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:7,
                 from ./include/linux/slab.h:16,
                 from ./include/linux/resource_ext.h:11,
                 from ./include/linux/acpi.h:13,
                 from drivers/gpu/drm/i915/i915_driver.c:30:
drivers/gpu/drm/i915/i915_driver.c:1834:51: error: ‘i915_drm_cgroup_ops’ undeclared here (not in a function); did you mean ‘drm_cgroup_ops’?
 1834 |  .cg_ops = PTR_IF(IS_ENABLED(CONFIG_CGROUP_DRM), &i915_drm_cgroup_ops),
      |                                                   ^~~~~~~~~~~~~~~~~~~
./include/linux/kernel.h:58:38: note: in definition of macro ‘PTR_IF’
   58 | #define PTR_IF(cond, ptr) ((cond) ? (ptr) : NULL)
      |                                      ^~~
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/i915_driver.o] Error 1
make[5]: *** [scripts/Makefile.build:477: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:477: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:477: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:477: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2020: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


