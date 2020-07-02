Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1C6212426
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5526E22E;
	Thu,  2 Jul 2020 13:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 679366E22D;
 Thu,  2 Jul 2020 13:08:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53849A0118;
 Thu,  2 Jul 2020 13:08:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 13:08:22 -0000
Message-ID: <159369530231.5657.183108777044370650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_drm/i915=3A_Drop_vm=2Eref_for_dup?=
 =?utf-8?q?licate_vma_on_construction?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/23] drm/i915: Drop vm.ref for duplicate vma on construction
URL   : https://patchwork.freedesktop.org/series/79037/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8692_full -> Patchwork_18065_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18065_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18065_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18065_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb5/igt@gem_bad_reloc@negative-reloc-bltcopy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb5/igt@gem_bad_reloc@negative-reloc-bltcopy.html
    - shard-kbl:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl1/igt@gem_bad_reloc@negative-reloc-bltcopy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl3/igt@gem_bad_reloc@negative-reloc-bltcopy.html
    - shard-skl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl5/igt@gem_bad_reloc@negative-reloc-bltcopy.html

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][6] -> [FAIL][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk2/igt@gem_close@many-handles-one-vma.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk1/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][8] -> [FAIL][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl3/igt@gem_close@many-handles-one-vma.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl8/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl9/igt@gem_close@many-handles-one-vma.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl8/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb5/igt@gem_close@many-handles-one-vma.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb8/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw4/igt@gem_close@many-handles-one-vma.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw7/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-snb2/igt@gem_close@many-handles-one-vma.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-snb6/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb6/igt@gem_close@many-handles-one-vma.html

  * igt@gem_sync@basic-many-each:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb6/igt@gem_sync@basic-many-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb3/igt@gem_sync@basic-many-each.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb8/igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb8/igt@kms_vblank@pipe-d-ts-continuation-dpms-rpm.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-not-uint-uvec3 (NEW):
    - pig-glk-j5005:      NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/pig-glk-j5005/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-not-uint-uvec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8692_full and Patchwork_18065_full:

### New Piglit tests (1) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-not-uint-uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_18065_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#93] / [i915#95]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-skl:          [PASS][28] -> [TIMEOUT][29] ([i915#1958] / [i915#2119]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl7/igt@gem_userptr_blits@readonly-unsync.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl6/igt@gem_userptr_blits@readonly-unsync.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#198] / [i915#2110])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl2/igt@i915_selftest@mock@requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl9/igt@i915_selftest@mock@requests.html
    - shard-hsw:          [PASS][32] -> [INCOMPLETE][33] ([i915#2110])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw6/igt@i915_selftest@mock@requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw8/igt@i915_selftest@mock@requests.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982]) +13 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#198])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          [PASS][40] -> [SKIP][41] ([fdo#109271]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-iclb:         [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb7/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb8/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][52] -> [FAIL][53] ([i915#31])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl6/igt@kms_setmode@basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][54] -> [INCOMPLETE][55] ([i915#155] / [i915#794])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#1820])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl2/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@perf_pmu@semaphore-busy@vcs0:
    - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#1820]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl1/igt@perf_pmu@semaphore-busy@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl1/igt@perf_pmu@semaphore-busy@vcs0.html

  * igt@perf_pmu@semaphore-wait@rcs0:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#1635] / [i915#95]) +25 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl8/igt@perf_pmu@semaphore-wait@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl4/igt@perf_pmu@semaphore-wait@rcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#1731])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk6/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-tglb:         [FAIL][64] ([i915#1930]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-glk:          [FAIL][66] ([i915#1930]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][68] ([i915#1930]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl3/igt@gem_exec_reloc@basic-concurrent0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][70] ([i915#1930]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl7/igt@gem_exec_reloc@basic-concurrent0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-hsw:          [FAIL][72] ([i915#1930]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw4/igt@gem_exec_reloc@basic-concurrent0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-iclb:         [FAIL][74] ([i915#1930]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb3/igt@gem_exec_reloc@basic-concurrent0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-skl:          [FAIL][76] ([i915#1930]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl6/igt@gem_exec_reloc@basic-concurrent0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][78] ([i915#1930]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][80] ([i915#1958]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb7/igt@gem_exec_reloc@basic-concurrent16.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb1/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-hsw:          [TIMEOUT][82] ([i915#1958] / [i915#2119]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw1/igt@gem_exec_reloc@basic-concurrent16.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][84] ([i915#1958]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl10/igt@gem_exec_reloc@basic-concurrent16.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][86] ([i915#1958]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl7/igt@gem_exec_reloc@basic-concurrent16.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl7/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][88] ([i915#1635] / [i915#1958]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl3/igt@gem_exec_reloc@basic-concurrent16.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl6/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][90] ([i915#1958]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb2/igt@gem_exec_reloc@basic-concurrent16.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][92] ([i915#1958] / [i915#58] / [k.org#198133]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk1/igt@gem_exec_reloc@basic-concurrent16.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rpm@i2c:
    - shard-skl:          [DMESG-WARN][94] ([i915#1982]) -> [PASS][95] +6 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl1/igt@i915_pm_rpm@i2c.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl5/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][96] ([i915#1635] / [i915#2110]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl1/igt@i915_selftest@mock@requests.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl2/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][98] ([i915#69]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][100] ([i915#118] / [i915#95]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +3 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-a-forked-move:
    - shard-apl:          [DMESG-WARN][104] ([i915#1635] / [i915#95]) -> [PASS][105] +18 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl1/igt@kms_cursor_legacy@pipe-a-forked-move.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl8/igt@kms_cursor_legacy@pipe-a-forked-move.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [DMESG-WARN][106] ([i915#1982]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb2/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][108] ([i915#1928]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][110] ([i915#1188]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl3/igt@kms_hdr@bpc-switch.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-tglb:         [DMESG-WARN][112] ([i915#402]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb3/igt@kms_properties@crtc-properties-atomic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb3/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][116] ([i915#31]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw7/igt@kms_setmode@basic.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw8/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-tglb:         [FAIL][118] ([i915#1542]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb6/igt@perf@blocking-parameterized.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb7/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@enable-race@bcs0:
    - shard-glk:          [DMESG-WARN][120] ([i915#118] / [i915#95]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-glk6/igt@perf_pmu@enable-race@bcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-glk4/igt@perf_pmu@enable-race@bcs0.html

  
#### Warnings ####

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          [SKIP][122] ([fdo#109271] / [fdo#111827]) -> [SKIP][123] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl3/igt@kms_chamelium@vga-edid-read.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][124] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][125] ([i915#1149] / [i915#402])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-tglb2/igt@kms_color@pipe-a-ctm-0-75.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-tglb7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][126] ([i915#1319] / [i915#2119]) -> [TIMEOUT][127] ([i915#1319] / [i915#1958] / [i915#2119])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          [SKIP][128] ([fdo#109271] / [i915#1635]) -> [SKIP][129] ([fdo#109271]) +12 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-hsw:          [TIMEOUT][130] ([i915#1958] / [i915#2119]) -> [SKIP][131] ([fdo#109271]) +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][132] ([i915#93] / [i915#95]) -> [DMESG-WARN][133] ([i915#180] / [i915#93] / [i915#95])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          [SKIP][134] ([fdo#109271]) -> [SKIP][135] ([fdo#109271] / [i915#1635]) +7 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-apl4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][136] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][137] ([i915#1982])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][138] ([i915#2110]) -> [FAIL][139] ([i915#1436] / [i915#2110])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/shard-hsw6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/shard-hsw8/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8692 -> Patchwork_18065

  CI-20190529: 20190529
  CI_DRM_8692: e30abe29fd5407631a61d48f93bad5fdeba8080d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18065: 6f377648e7f5e352bf1600ef1f8954ec04781765 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
