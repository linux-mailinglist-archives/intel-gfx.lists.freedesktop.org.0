Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5E215394
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 09:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235E56E303;
	Mon,  6 Jul 2020 07:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E77086E2E1;
 Mon,  6 Jul 2020 07:55:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1360A47EB;
 Mon,  6 Jul 2020 07:55:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jul 2020 07:55:38 -0000
Message-ID: <159402213889.17684.17038486827694808711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915=3A_Preallocate_stashes_f?=
 =?utf-8?q?or_vma_page-directories?=
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

Series: series starting with [01/20] drm/i915: Preallocate stashes for vma page-directories
URL   : https://patchwork.freedesktop.org/series/79129/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18082_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18082_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18082_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18082_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk5/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk7/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl1/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl7/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb1/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl2/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw2/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-hsw7/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb6/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-snb6/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb1/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb4/igt@gem_close@many-handles-one-vma.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl4/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@bcs0:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl5/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk2/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk1/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl8/igt@gem_exec_schedule@pi-shared-iova@bcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@rcs0:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl3/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * igt@gem_exec_schedule@pi-shared-iova@vcs1:
    - shard-tglb:         [PASS][24] -> [DMESG-WARN][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@gem_exec_schedule@pi-shared-iova@vcs1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb5/igt@gem_exec_schedule@pi-shared-iova@vcs1.html

  * igt@gem_exec_schedule@pi-shared-iova@vecs0:
    - shard-iclb:         [PASS][26] -> [DMESG-WARN][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova@vecs0.html

  * igt@gem_sync@basic-store-each:
    - shard-skl:          [PASS][28] -> [FAIL][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@gem_sync@basic-store-each.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl4/igt@gem_sync@basic-store-each.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-skl:          NOTRUN -> [DMESG-WARN][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl9/igt@kms_psr@sprite_plane_onoff.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8708_full and Patchwork_18082_full:

### New IGT tests (1) ###

  * igt@i915_selftest@mock@acquire:
    - Statuses : 2 pass(s)
    - Exec time: [0.86, 1.76] s

  

Known issues
------------

  Here are the changes found in Patchwork_18082_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@replace@bcs0:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#2092])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@replace@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl10/igt@gem_ctx_persistence@replace@bcs0.html

  * igt@gem_ringfill@basic-all:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_ringfill@basic-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk8/igt@gem_ringfill@basic-all.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#93] / [i915#95]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl1/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-skl:          [PASS][37] -> [TIMEOUT][38] ([i915#1958] / [i915#2119]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl8/igt@gem_userptr_blits@readonly-unsync.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl8/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1635] / [i915#95]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@gen9_exec_parse@bb-start-out.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl4/igt@gen9_exec_parse@bb-start-out.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1982]) +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl1/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#198])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#1928])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-tglb:         [PASS][51] -> [DMESG-WARN][52] ([i915#1982]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-iclb:         [PASS][53] -> [INCOMPLETE][54] ([CI#80] / [i915#1185])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_vblank@crtc-id:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl4/igt@kms_vblank@crtc-id.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl3/igt@kms_vblank@crtc-id.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#1542])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb7/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#1820])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@perf_pmu@semaphore-busy@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk8/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@perf_pmu@semaphore-busy@vcs0:
    - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#1820]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@perf_pmu@semaphore-busy@vcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl3/igt@perf_pmu@semaphore-busy@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][63] ([i915#1528]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [DMESG-WARN][65] ([i915#118] / [i915#95]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk6/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-tglb:         [FAIL][67] ([i915#1930]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][69] ([i915#1930]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@gem_exec_reloc@basic-concurrent0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][71] ([i915#1930]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@gem_exec_reloc@basic-concurrent0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl3/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-hsw:          [FAIL][73] ([i915#1930]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw5/igt@gem_exec_reloc@basic-concurrent0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-hsw4/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-iclb:         [FAIL][75] ([i915#1930]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@gem_exec_reloc@basic-concurrent0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-skl:          [FAIL][77] ([i915#1930]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@gem_exec_reloc@basic-concurrent0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][79] ([i915#1930]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [INCOMPLETE][81] ([i915#1958]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb7/igt@gem_exec_reloc@basic-concurrent16.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [INCOMPLETE][83] ([i915#1958]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl10/igt@gem_exec_reloc@basic-concurrent16.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl9/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-kbl:          [INCOMPLETE][85] ([i915#1958]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@gem_exec_reloc@basic-concurrent16.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][87] ([i915#1635] / [i915#1958]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl4/igt@gem_exec_reloc@basic-concurrent16.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-tglb:         [INCOMPLETE][89] ([i915#1958]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb7/igt@gem_exec_reloc@basic-concurrent16.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][91] ([i915#1958] / [i915#58] / [k.org#198133]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-skl:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94] +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl2/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-hsw:          [TIMEOUT][95] ([i915#1958] / [i915#2119]) -> [PASS][96] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@reads.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-kbl:          [DMESG-WARN][97] ([i915#93] / [i915#95]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][99] ([i915#198] / [i915#2110]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@i915_selftest@mock@requests.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl9/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][101] ([i915#118] / [i915#95]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][103] ([i915#750]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][105] ([i915#54]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][107] ([i915#1635] / [i915#95]) -> [PASS][108] +9 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][109] ([i915#1185]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][111] ([i915#79]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][115] ([i915#456]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][117] ([i915#1982]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][119] ([i915#1188]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-skl:          [FAIL][121] ([i915#53]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][123] ([fdo#108145] / [i915#265]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][125] ([i915#588]) -> [SKIP][126] ([i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][127] ([i915#1515]) -> [FAIL][128] ([i915#1515])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-apl:          [SKIP][129] ([fdo#109271]) -> [SKIP][130] ([fdo#109271] / [i915#1635]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl1/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][131] ([fdo#109271] / [fdo#111827]) -> [SKIP][132] ([fdo#109271] / [fdo#111827] / [i915#1635]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl4/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][133] ([fdo#110321] / [i915#95]) -> [TIMEOUT][134] ([i915#1319] / [i915#2119])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_content_protection@atomic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][135] ([i915#46]) -> [DMESG-WARN][136] ([i915#1982])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-hsw:          [INCOMPLETE][137] ([CI#80]) -> [SKIP][138] ([fdo#109271])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-hsw1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-hsw:          [TIMEOUT][139] ([i915#1958] / [i915#2119]) -> [SKIP][140] ([fdo#109271])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-hsw1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-apl:          [SKIP][141] ([fdo#109271] / [i915#1635]) -> [SKIP][142] ([fdo#109271]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl1/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][143], [FAIL][144]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> ([FAIL][145], [FAIL][146]) ([i915#1610] / [i915#1635] / [i915#2110])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl8/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-apl2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][147], [FAIL][148]) ([i915#2110] / [i915#69]) -> ([FAIL][149], [FAIL][150]) ([i915#69])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl8/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl5/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/shard-skl9/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2092]: https://gitlab.freedesktop.org/drm/intel/issues/2092
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Partici

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
