Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08B233DBB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 05:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A626A6E993;
	Fri, 31 Jul 2020 03:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DE526E992;
 Fri, 31 Jul 2020 03:38:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26A57A9932;
 Fri, 31 Jul 2020 03:38:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 31 Jul 2020 03:38:49 -0000
Message-ID: <159616672911.10473.14392901269958764413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200730230212.55945-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200730230212.55945-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWxs?=
 =?utf-8?q?ow_privileged_user_to_map_the_OA_buffer_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============0431588104=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0431588104==
Content-Type: multipart/alternative;
 boundary="===============0580004517069456063=="

--===============0580004517069456063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Allow privileged user to map the OA buffer (rev7)
URL   : https://patchwork.freedesktop.org/series/79460/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8817_full -> Patchwork_18279_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18279_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18279_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18279_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@i915_suspend@debugfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb8/igt@perf_pmu@module-unload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@perf_pmu@module-unload.html
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@perf_pmu@module-unload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl4/igt@perf_pmu@module-unload.html
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb8/igt@perf_pmu@module-unload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb4/igt@perf_pmu@module-unload.html
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@perf_pmu@module-unload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk8/igt@perf_pmu@module-unload.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb4/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][13] ([i915#1982]) -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@perf_pmu@module-unload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl3/igt@perf_pmu@module-unload.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8817_full and Patchwork_18279_full:

### New IGT tests (9) ###

  * igt@perf@closed-fd-and-unmapped-access:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.32] s

  * igt@perf@invalid-map-oa-buffer:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.17] s

  * igt@perf@map-oa-buffer:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.31] s

  * igt@perf@non-privileged-access-vaddr:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@perf@non-privileged-map-oa-buffer:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@perf@oa-regs-not-whitelisted:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.21] s

  * igt@perf@oa-regs-whitelisted:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.26] s

  * igt@perf@triggered-oa-reports-paranoid-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.60] s

  * igt@perf@triggered-oa-reports-paranoid-1:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.27] s

  

Known issues
------------

  Here are the changes found in Patchwork_18279_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#1930])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-cpu-wc:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl2/igt@gem_exec_reloc@basic-cpu-wc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl6/igt@gem_exec_reloc@basic-cpu-wc.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1436] / [i915#1635] / [i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][21] -> [DMESG-FAIL][22] ([i915#118] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#1635] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl7/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl4/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - shard-skl:          [PASS][35] -> [SKIP][36] ([fdo#109271]) +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb3/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1982]) +63 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl8/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [PASS][45] -> [INCOMPLETE][46] ([i915#1635])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@perf_pmu@module-unload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl4/igt@perf_pmu@module-unload.html

  * igt@syncobj_wait@invalid-signal-zero-handles:
    - shard-snb:          [PASS][47] -> [TIMEOUT][48] ([i915#1958] / [i915#2119]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb4/igt@syncobj_wait@invalid-signal-zero-handles.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@syncobj_wait@invalid-signal-zero-handles.html

  
#### Possible fixes ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-iclb:         [FAIL][49] ([i915#2247]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@core_setmaster@master-drop-set-user.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb1/igt@core_setmaster@master-drop-set-user.html
    - shard-kbl:          [FAIL][51] ([i915#2247]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@core_setmaster@master-drop-set-user.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@core_setmaster@master-drop-set-user.html
    - shard-snb:          [FAIL][53] ([i915#2247]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb2/igt@core_setmaster@master-drop-set-user.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb6/igt@core_setmaster@master-drop-set-user.html
    - shard-tglb:         [FAIL][55] ([i915#2247]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb2/igt@core_setmaster@master-drop-set-user.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb7/igt@core_setmaster@master-drop-set-user.html
    - shard-skl:          [FAIL][57] ([i915#2247]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@core_setmaster@master-drop-set-user.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl5/igt@core_setmaster@master-drop-set-user.html
    - shard-apl:          [FAIL][59] ([i915#1635] / [i915#2247]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl8/igt@core_setmaster@master-drop-set-user.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl7/igt@core_setmaster@master-drop-set-user.html
    - shard-glk:          [FAIL][61] ([i915#2247]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk7/igt@core_setmaster@master-drop-set-user.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk4/igt@core_setmaster@master-drop-set-user.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@render:
    - shard-skl:          [FAIL][63] ([i915#2158]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed@render.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [FAIL][65] ([i915#1528] / [i915#1635]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@gem_ctx_persistence@processes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl8/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [FAIL][67] ([i915#2079]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@gem_exec_balancer@bonded-early.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb5/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-skl:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +53 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][71] ([i915#118] / [i915#95]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk7/igt@gem_exec_whisper@basic-forked.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][73] ([i915#155]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [SKIP][75] ([fdo#109271]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-apl:          [FAIL][77] ([i915#1635] / [i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-snb:          [TIMEOUT][79] ([i915#1958] / [i915#2119]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][81] ([i915#1982]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
    - shard-apl:          [DMESG-WARN][83] ([i915#1635] / [i915#1982]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [DMESG-WARN][87] ([i915#1982]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][95] ([i915#198]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_psr@suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl3/igt@kms_psr@suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][97] ([i915#1542]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb1/igt@perf@blocking-parameterized.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb8/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][99] ([i915#2036]) -> [WARN][100] ([i915#2021])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][101] ([i915#1515]) -> [FAIL][102] ([i915#1515])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][103] ([i915#1319] / [i915#2119]) -> [TIMEOUT][104] ([i915#1319] / [i915#1958] / [i915#2119])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_content_protection@atomic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-snb:          [TIMEOUT][105] ([i915#1958] / [i915#2119]) -> [SKIP][106] ([fdo#109271])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_frontbuffer_tracking@fbcpsr-badstride:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [TIMEOUT][108] ([i915#1958] / [i915#2119]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-skl:          [DMESG-WARN][109] ([i915#1982]) -> [SKIP][110] ([fdo#109271]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][111] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][112] ([fdo#108145] / [i915#1982])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          [SKIP][113] ([fdo#109271]) -> [FAIL][114] ([fdo#108145] / [i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][115] ([fdo#108145] / [i915#1982]) -> [FAIL][116] ([fdo#108145] / [i915#265]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2158]: https://gitlab.freedesktop.org/drm/intel/issues/2158
  [i915#2247]: https://gitlab.freedesktop.org/drm/intel/issues/2247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5752 -> IGTPW_4832
  * Linux: CI_DRM_8817 -> Patchwork_18279

  CI-20190529: 20190529
  CI_DRM_8817: 9694a4caf26c3c4f3d50f335415218c709029450 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4832: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4832/index.html
  IGT_5752: 3ecf9d88803a686354394ea60164551646235273 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18279: 1644e5a269cdc5ed7361903f234ab9425bbade71 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/index.html

--===============0580004517069456063==
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
<tr><td><b>Series:</b></td><td>Allow privileged user to map the OA buffer (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79460/">https://patchwork.freedesktop.org/series/79460/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8817_full -&gt; Patchwork_18279_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18279_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18279_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18279_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl10/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@perf_pmu@module-unload.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl4/igt@perf_pmu@module-unload.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb8/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb4/igt@perf_pmu@module-unload.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk8/igt@perf_pmu@module-unload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb4/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@perf_pmu@module-unload:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl3/igt@perf_pmu@module-unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8817_full and Patchwork_18279_full:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@perf@closed-fd-and-unmapped-access:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-map-oa-buffer:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@perf@map-oa-buffer:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@perf@non-privileged-access-vaddr:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@perf@non-privileged-map-oa-buffer:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@perf@oa-regs-not-whitelisted:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@perf@oa-regs-whitelisted:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@perf@triggered-oa-reports-paranoid-0:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.60] s</li>
</ul>
</li>
<li>
<p>igt@perf@triggered-oa-reports-paranoid-1:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.27] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18279_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl2/igt@gem_exec_reloc@basic-cpu-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl6/igt@gem_exec_reloc@basic-cpu-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl7/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl4/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-none:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb3/igt@kms_psr@no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb1/igt@kms_psr@no_drrs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/173">i915#173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl8/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl4/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-signal-zero-handles:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb4/igt@syncobj_wait@invalid-signal-zero-handles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@syncobj_wait@invalid-signal-zero-handles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb1/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb2/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb6/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb2/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb7/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl8/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl5/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl8/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl7/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk7/igt@core_setmaster@master-drop-set-user.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2247">i915#2247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk4/igt@core_setmaster@master-drop-set-user.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed@render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2158">i915#2158</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed@render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl7/igt@gem_ctx_persistence@processes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1528">i915#1528</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl8/igt@gem_ctx_persistence@processes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb5/igt@gem_exec_balancer@bonded-early.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">PASS</a> +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk2/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk7/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl6/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl1/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-glk6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-apl4/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl9/igt@kms_psr@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl3/igt@kms_psr@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb1/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb8/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2036">i915#2036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2021">i915#2021</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-kbl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-badstride:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8817/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18279/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5752 -&gt; IGTPW_4832</li>
<li>Linux: CI_DRM_8817 -&gt; Patchwork_18279</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8817: 9694a4caf26c3c4f3d50f335415218c709029450 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4832: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4832/index.html<br />
  IGT_5752: 3ecf9d88803a686354394ea60164551646235273 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18279: 1644e5a269cdc5ed7361903f234ab9425bbade71 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0580004517069456063==--

--===============0431588104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0431588104==--
