Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6C533F998
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 20:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C872897F0;
	Wed, 17 Mar 2021 19:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58D41897F0;
 Wed, 17 Mar 2021 19:57:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51AA5A363B;
 Wed, 17 Mar 2021 19:57:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Wed, 17 Mar 2021 19:57:46 -0000
Message-ID: <161601106630.17368.12328108542562693495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_relocations_for_new_gens_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1182723337=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1182723337==
Content-Type: multipart/alternative;
 boundary="===============1636516100015363252=="

--===============1636516100015363252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop relocations for new gens (rev2)
URL   : https://patchwork.freedesktop.org/series/88047/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9863_full -> Patchwork_19800_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9863_full and Patchwork_19800_full:

### New IGT tests (47) ###

  * igt@api_intel_allocator@alloc-simple:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@api_intel_allocator@execbuf-with-allocator:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@api_intel_allocator@fork-simple-once:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.18] s

  * igt@api_intel_allocator@fork-simple-stress:
    - Statuses : 6 pass(s)
    - Exec time: [5.40, 5.51] s

  * igt@api_intel_allocator@fork-simple-stress-signal:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 6.15] s

  * igt@api_intel_allocator@open-vm:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@random-allocator:
    - Statuses :
    - Exec time: [None] s

  * igt@api_intel_allocator@random-allocator@basic:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@api_intel_allocator@random-allocator@parallel-one:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@api_intel_allocator@random-allocator@print:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@reloc-allocator:
    - Statuses :
    - Exec time: [None] s

  * igt@api_intel_allocator@reloc-allocator@basic:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@api_intel_allocator@reloc-allocator@parallel-one:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@api_intel_allocator@reloc-allocator@print:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@reopen:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@api_intel_allocator@reopen-fork:
    - Statuses : 6 pass(s)
    - Exec time: [3.24, 3.38] s

  * igt@api_intel_allocator@reserve:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@reserve-simple:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@reuse:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@api_intel_allocator@simple-allocator:
    - Statuses :
    - Exec time: [None] s

  * igt@api_intel_allocator@simple-allocator@basic:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@api_intel_allocator@simple-allocator@parallel-one:
    - Statuses : 6 pass(s)
    - Exec time: [0.08, 1.16] s

  * igt@api_intel_allocator@simple-allocator@print:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@simple-allocator@reserve:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@api_intel_allocator@simple-allocator@reuse:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@api_intel_allocator@standalone:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.22] s

  * igt@api_intel_allocator@two-level-inception:
    - Statuses : 6 pass(s)
    - Exec time: [5.41, 5.92] s

  * igt@api_intel_allocator@two-level-inception-interruptible:
    - Statuses : 6 pass(s)
    - Exec time: [5.42, 6.02] s

  * igt@api_intel_bb@add-remove-objects:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.07] s

  * igt@api_intel_bb@bb-with-allocator:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@api_intel_bb@bb-with-vm:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.12] s

  * igt@api_intel_bb@blit-noreloc-keep-cache-random:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@api_intel_bb@destroy-bb:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.09] s

  * igt@api_intel_bb@object-noreloc-keep-cache-random:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@api_intel_bb@object-noreloc-keep-cache-simple:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@api_intel_bb@object-noreloc-purge-cache-random:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@api_intel_bb@object-noreloc-purge-cache-simple:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@api_intel_bb@object-reloc-keep-cache:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@api_intel_bb@object-reloc-purge-cache:
    - Statuses :
    - Exec time: [None] s

  * igt@api_intel_bb@purge-bb:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@api_intel_bb@reset-bb:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_softpin@allocator-basic:
    - Statuses : 6 pass(s)
    - Exec time: [0.07, 0.92] s

  * igt@gem_softpin@allocator-basic-reserve:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@gem_softpin@allocator-fork:
    - Statuses : 5 pass(s)
    - Exec time: [2.20, 3.03] s

  * igt@gem_softpin@allocator-nopin:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.02] s

  * igt@gem_softpin@allocator-nopin-reserve:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_19800_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#3160])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl8/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][3] ([i915#3002]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-skl:          NOTRUN -> [DMESG-WARN][5] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][6] -> [INCOMPLETE][7] ([i915#1895] / [i915#3031])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb8/igt@gem_exec_balancer@hang.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2876])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#2849])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2389])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-snb:          NOTRUN -> [FAIL][21] ([i915#2389]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][22] ([i915#2389]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][23] ([i915#2389]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][24] ([i915#2389]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#2803])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb3/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1610] / [i915#2803])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1610] / [i915#2803])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [PASS][31] -> [DMESG-WARN][32] ([i915#118] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk2/igt@gem_exec_whisper@basic-queues.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#2190])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#307])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#307])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][39] ([i915#2658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][40] ([i915#2658])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109312])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@gem_softpin@evict-snoop.html
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_softpin@evict-snoop.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#1436] / [i915#716])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#112306])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][46] -> [FAIL][47] ([i915#454])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111644] / [i915#1397] / [i915#2411])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#110892])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +218 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#111614])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#111615]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#2705])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@kms_big_joiner@basic.html
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2705])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_big_joiner@basic.html
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#2705])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_big_joiner@basic.html
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2705])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk2/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2705]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk2/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][68] ([i915#1319])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109278] / [fdo#109279])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109279]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-kbl:          [PASS][71] -> [FAIL][72] ([i915#54])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
    - shard-apl:          [PASS][73] -> [FAIL][74] ([i915#54])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#54])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#54])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +111 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271]) +13 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-skl:          [PASS][81] -> [DMESG-WARN][82] ([i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][83] ([fdo#109271]) +313 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#2346] / [i915#533])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][85] ([i915#155] / [i915#180] / [i915#636])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109274]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2642])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2642])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-kbl:          NOTRUN -> [FAIL][89] ([i915#2641])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][90] ([i915#2641])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109280]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +91 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#111825]) +19 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][94] -> [INCOMPLETE][95] ([i915#123])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#1188])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109278]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#533])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][102] -> [INCOMPLETE][103] ([i915#155] / [i915#648])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [PASS][104] -> [SKIP][105] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][107] ([i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - shard-skl:          [PASS][111] -> [SKIP][112] ([fdo#109271]) +11 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl6/igt@kms_plane_cursor@pipe-c-viewport-size-128.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_plane_cursor@pipe-c-viewport-size-128.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658]) +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb2/igt@kms_psr@psr2_basic.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109441])
   [118]: h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html

--===============1636516100015363252==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Drop relocations for new gens (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88047/">https://patchwork.freedesktop.org/series/88047/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9863_full -&gt; Patchwork_19800_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9863_full and Patchwork_19800_full:</p>
<h3>New IGT tests (47)</h3>
<ul>
<li>
<p>igt@api_intel_allocator@alloc-simple:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@execbuf-with-allocator:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@fork-simple-once:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@fork-simple-stress:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.40, 5.51] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@fork-simple-stress-signal:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 6.15] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@open-vm:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@random-allocator:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@random-allocator@basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@random-allocator@parallel-one:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@random-allocator@print:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reloc-allocator:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reloc-allocator@basic:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reloc-allocator@parallel-one:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reloc-allocator@print:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reopen:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reopen-fork:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.24, 3.38] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reserve:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reserve-simple:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@reuse:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator@basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator@parallel-one:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.08, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator@print:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator@reserve:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@simple-allocator@reuse:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@standalone:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@two-level-inception:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.41, 5.92] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_allocator@two-level-inception-interruptible:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.42, 6.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@add-remove-objects:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@bb-with-allocator:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@bb-with-vm:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-noreloc-keep-cache-random:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@destroy-bb:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-noreloc-keep-cache-random:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-noreloc-keep-cache-simple:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-noreloc-purge-cache-random:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-noreloc-purge-cache-simple:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@purge-bb:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@reset-bb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.07, 0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-fork:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.20, 3.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-nopin:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-nopin-reserve:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19800_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl8/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@gem_exec_balancer@bonded-semaphore.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb8/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#3031])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk7/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb3/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk2/igt@gem_exec_whisper@basic-queues.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([fdo#110892])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#109271]) +218 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk2/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb8/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk2/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl2/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html">FAIL</a> ([i915#54])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +111 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk9/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +13 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +313 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109280]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109278]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-glk7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> ([i915#155] / [i915#648])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-skl6/igt@kms_plane_cursor@pipe-c-viewport-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl10/igt@kms_plane_cursor@pipe-c-viewport-size-128.html">SKIP</a> ([fdo#109271]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-skl6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="h">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1636516100015363252==--

--===============1182723337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1182723337==--
