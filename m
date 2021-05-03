Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3C8372027
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 21:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A416EA18;
	Mon,  3 May 2021 19:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D46136EA14;
 Mon,  3 May 2021 19:11:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCA9BA00C9;
 Mon,  3 May 2021 19:11:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Mon, 03 May 2021 19:11:05 -0000
Message-ID: <162006906580.13679.5111761757817624256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_correct_downstream_caps_for_check_Src-Ctl_mode_for?=
 =?utf-8?q?_PCON?=
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
Content-Type: multipart/mixed; boundary="===============1821427921=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1821427921==
Content-Type: multipart/alternative;
 boundary="===============7696085609391863559=="

--===============7696085609391863559==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use correct downstream caps for check Src-Ctl mode for PCON
URL   : https://patchwork.freedesktop.org/series/89639/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10027_full -> Patchwork_20030_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20030_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][1] -> ([FAIL][2], [FAIL][3]) ([i915#1888] / [i915#3160])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk8/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk6/igt@gem_create@create-clear.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk7/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-iclb:         [PASS][5] -> ([DMESG-WARN][6], [PASS][7]) ([i915#2867])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@blt:
    - shard-kbl:          [PASS][8] -> ([PASS][9], [FAIL][10]) ([i915#2410])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@bsd2:
    - shard-tglb:         [PASS][11] -> ([FAIL][12], [PASS][13]) ([i915#2410]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@render:
    - shard-iclb:         [PASS][14] -> ([FAIL][15], [PASS][16]) ([i915#2410])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@render.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-hostile@render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-hostile@render.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> ([SKIP][17], [SKIP][18]) ([fdo#109271] / [i915#1099])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#1099]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb5/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          NOTRUN -> ([INCOMPLETE][20], [INCOMPLETE][21]) ([i915#3316])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@gem_ctx_ringsize@active@bcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][24] -> ([PASS][25], [TIMEOUT][26]) ([i915#2369] / [i915#3063])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][27] -> ([FAIL][28], [PASS][29]) ([i915#2846])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][30] -> ([PASS][31], [FAIL][32]) ([i915#2842])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][33] -> ([FAIL][34], [FAIL][35]) ([i915#2842])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [PASS][36] -> ([FAIL][37], [FAIL][38]) ([i915#2842]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][39] -> ([PASS][40], [FAIL][41]) ([i915#2842])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#2842])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][44] ([i915#2389])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [PASS][45] -> ([PASS][46], [INCOMPLETE][47]) ([i915#1895])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][48] -> ([FAIL][49], [PASS][50]) ([i915#307])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [PASS][51] -> ([PASS][52], [FAIL][53]) ([i915#307]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
    - shard-iclb:         [PASS][54] -> ([PASS][55], [FAIL][56]) ([i915#307]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][57] -> ([PASS][58], [FAIL][59]) ([i915#2428])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-snb:          NOTRUN -> ([SKIP][60], [SKIP][61]) ([fdo#109271]) +144 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@gem_render_copy@y-tiled-ccs-to-linear.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][62] ([i915#3324])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][63] ([i915#2724])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][64] ([i915#3318])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_hangman@engine-error@rcs0:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +119 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@i915_hangman@engine-error@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][66] -> [DMESG-WARN][67] ([i915#3389])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][68] -> ([PASS][69], [INCOMPLETE][70]) ([i915#2782])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][71] -> ([PASS][72], [INCOMPLETE][73]) ([i915#198])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][74] -> ([INCOMPLETE][75], [PASS][76]) ([i915#155])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglb:         NOTRUN -> ([SKIP][77], [SKIP][78]) ([fdo#111615])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_big_fb@yf-tiled-addfb.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> ([SKIP][79], [SKIP][80]) ([fdo#109271] / [fdo#111304])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-random-ccs-data:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271]) +397 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@kms_ccs@pipe-c-random-ccs-data.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-skl:          NOTRUN -> ([SKIP][82], [SKIP][83]) ([fdo#109271] / [fdo#111827]) +9 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_chamelium@dp-frame-dump.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-glk:          NOTRUN -> ([SKIP][84], [SKIP][85]) ([fdo#109271] / [fdo#111827]) +4 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_chamelium@hdmi-crc-single.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> ([SKIP][86], [SKIP][87]) ([fdo#109271] / [fdo#111827]) +13 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_chamelium@vga-hpd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [PASS][88] -> ([PASS][89], [DMESG-WARN][90]) ([i915#1982])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@kms_color@pipe-c-ctm-green-to-red.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@kms_color@pipe-c-ctm-green-to-red.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-tglb:         NOTRUN -> ([SKIP][92], [SKIP][93]) ([fdo#109284] / [fdo#111827])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_color_chamelium@pipe-a-gamma.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-75:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl3/igt@kms_color_chamelium@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> ([SKIP][97], [SKIP][98]) ([fdo#109271] / [fdo#111827]) +8 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][99] ([i915#1319]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> ([TIMEOUT][100], [TIMEOUT][101]) ([i915#1319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> ([SKIP][102], [SKIP][103]) ([i915#3319])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +7 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-dpms.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-kbl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +71 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [PASS][107] -> ([FAIL][108], [PASS][109]) ([i915#2122])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][110] -> ([PASS][111], [DMESG-WARN][112]) ([i915#180]) +5 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][115] ([i915#180])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][116] -> ([PASS][117], [INCOMPLETE][118]) ([i915#146] / [i915#198])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([fdo#109271] / [i915#2672])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2672])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> ([SKIP][122], [SKIP][123]) ([fdo#109271]) +115 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> ([SKIP][124], [SKIP][125]) ([fdo#109271]) +28 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> ([FAIL][126], [FAIL][127]) ([i915#1188])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> ([SKIP][128], [SKIP][129]) ([fdo#109271] / [i915#533]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> ([SKIP][130], [SKIP][131]) ([fdo#109271] / [i915#533])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#533])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-glk:          NOTRUN -> ([SKIP][133], [SKIP][134]) ([fdo#109271] / [i915#533])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> ([FAIL][135], [FAIL][136]) ([i915#265])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][137] ([i915#265])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][138] -> ([FAIL][139], [PASS][140]) ([fdo#108145] / [i915#265])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][141] ([fdo#108145] / [i915#265]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> ([FAIL][142], [FAIL][143]) ([fdo#108145] / [i915#265])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> ([PASS][144], [FAIL][145]) ([fdo#108145] / [i915#265])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> ([FAIL][146], [FAIL][147]) ([i915#265])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][148] ([i915#265])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-glk:          NOTRUN -> ([FAIL][149], [FAIL][150]) ([fdo#108145] / [i915#265])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2733])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#658]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#658]) +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-glk:          NOTRUN -> ([SKIP][154], [SKIP][155]) ([fdo#109271] / [i915#658])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> ([SKIP][156], [SKIP][157]) ([fdo#109271] / [i915#658]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
    - shard-skl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#658])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/sh

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/index.html

--===============7696085609391863559==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use correct downstream caps for check Src-Ctl mode for PCON</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89639/">https://patchwork.freedesktop.org/series/89639/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10027_full -&gt; Patchwork_20030_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20030_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk8/igt@gem_create@create-clear.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk6/igt@gem_create@create-clear.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk7/igt@gem_create@create-clear.html">FAIL</a>) ([i915#1888] / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a>) ([i915#2867])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@blt:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html">FAIL</a>) ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@bsd2:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html">PASS</a>) ([i915#2410]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-hostile@render.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-hostile@render.html">PASS</a>) ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a>) ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb5/igt@gem_ctx_persistence@process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a>) ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl6/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a>) ([i915#2369] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a>) ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a>) ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>) ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a>) ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPLETE</a>) ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a>) ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a>) ([i915#307]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a>) ([i915#307]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a>) ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@gem_render_copy@y-tiled-ccs-to-linear.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-linear.html">SKIP</a>) ([fdo#109271]) +144 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@i915_hangman@engine-error@rcs0.html">SKIP</a> ([fdo#109271]) +119 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> ([i915#3389])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a>) ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl8/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a>) ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl7/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl1/igt@i915_suspend@sysfs-reader.html">PASS</a>) ([i915#155])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a>) ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a>) ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@kms_ccs@pipe-c-random-ccs-data.html">SKIP</a> ([fdo#109271]) +397 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_chamelium@dp-frame-dump.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_chamelium@dp-frame-dump.html">SKIP</a>) ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_chamelium@hdmi-crc-single.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_chamelium@hdmi-crc-single.html">SKIP</a>) ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_chamelium@vga-hpd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_chamelium@vga-hpd.html">SKIP</a>) ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@kms_color@pipe-c-ctm-green-to-red.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@kms_color@pipe-c-ctm-green-to-red.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_color@pipe-c-ctm-green-to-red.html">DMESG-WARN</a>) ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_color_chamelium@pipe-a-gamma.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_color_chamelium@pipe-a-gamma.html">SKIP</a>) ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl3/igt@kms_color_chamelium@pipe-c-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html">SKIP</a>) ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl1/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a>) ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html">SKIP</a>) ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> ([fdo#109271]) +71 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">PASS</a>) ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a>) ([i915#180]) +5 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a>) ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a>) ([fdo#109271] / [i915#2672])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a>) ([fdo#109271]) +115 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a>) ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a>) ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a>) ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a>) ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a>) ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a>) ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a>) ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a>) ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a>) ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a>) ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a>) ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk8/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a>) ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a>) ([fdo#109271] / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20030/sh">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7696085609391863559==--

--===============1821427921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1821427921==--
