Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA73F4C7F2A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 01:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485F010E11F;
	Tue,  1 Mar 2022 00:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D24B910E11F;
 Tue,  1 Mar 2022 00:27:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C29ABA0096;
 Tue,  1 Mar 2022 00:27:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Linus Torvalds" <torvalds@linux-foundation.org>
Date: Tue, 01 Mar 2022 00:27:24 -0000
Message-ID: <164609444476.8601.6745895802511467815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
In-Reply-To: <20220228110822.491923-1-jakobkoschel@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?emove_usage_of_list_iterator_past_the_loop_body_=28rev2=29?=
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

Series: Remove usage of list iterator past the loop body (rev2)
URL   : https://patchwork.freedesktop.org/series/100822/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_ids.o
In file included from ./include/linux/kernel.h:21,
                 from ./arch/x86/include/asm/percpu.h:27,
                 from ./arch/x86/include/asm/current.h:6,
                 from ./include/linux/mutex.h:14,
                 from drivers/gpu/drm/amd/amdgpu/amdgpu_ids.h:27,
                 from drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:23:
drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c: In function ‘amdgpu_vmid_grab_idle’:
./include/linux/container_of.h:17:41: error: initialization of ‘struct amdgpu_vmid **’ from incompatible pointer type ‘struct amdgpu_vmid *’ [-Werror=incompatible-pointer-types]
 #define container_of(ptr, type, member) ({    \
                                         ^
./include/linux/list.h:520:2: note: in expansion of macro ‘container_of’
  container_of(ptr, type, member)
  ^~~~~~~~~~~~
./include/linux/list.h:531:2: note: in expansion of macro ‘list_entry’
  list_entry((ptr)->next, type, member)
  ^~~~~~~~~~
./include/linux/list.h:638:25: note: in expansion of macro ‘list_first_entry’
  for (typeof(pos) pos = list_first_entry(head, typeof(*pos), member); \
                         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:216:2: note: in expansion of macro ‘list_for_each_entry’
  list_for_each_entry((*idle), &id_mgr->ids_lru, list) {
  ^~~~~~~~~~~~~~~~~~~
cc1: some warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/amd/amdgpu/amdgpu_ids.o' failed
make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_ids.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/amd/amdgpu' failed
make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


