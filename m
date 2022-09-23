Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBE95E752B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 09:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A697B10E491;
	Fri, 23 Sep 2022 07:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2615C10E491;
 Fri, 23 Sep 2022 07:48:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C723A0099;
 Fri, 23 Sep 2022 07:48:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8705150979532328435=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 23 Sep 2022 07:48:45 -0000
Message-ID: <166391932510.30118.14381190496031064302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220922201209.1446343-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220922201209.1446343-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgREcy?=
 =?utf-8?q?_fix_for_CCS_starvation?=
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

--===============8705150979532328435==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DG2 fix for CCS starvation
URL   : https://patchwork.freedesktop.org/series/108919/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12168_full -> Patchwork_108919v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108919v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108919v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108919v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb7/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb8/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  
Known issues
------------

  Here are the changes found in Patchwork_108919v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#4525])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109313])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][60] -> [SKIP][61] ([i915#2190])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gem_lmem_swapping@basic.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#4270]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#768]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109312])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#3297]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@huge-split:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#3376])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl7/igt@gem_userptr_blits@huge-split.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl3/igt@gem_userptr_blits@huge-split.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#3318])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2856]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#658]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#3989] / [i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110892])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#5286]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110723])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [i915#3886]) +6 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][83] ([i915#1319])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#3116])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109300] / [fdo#111066])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#3359])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#2346])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#4103])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109274]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#2122])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2587] / [i915#2672]) +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][94] -> [SKIP][95] ([i915#3555]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2672] / [i915#3555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109285])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         [PASS][99] -> [FAIL][100] ([i915#1888] / [i915#2546])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109280]) +22 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][102] -> [DMESG-WARN][103] ([i915#180]) +4 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_hdr@static-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#3555]) +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#5176]) +5 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][106] -> [SKIP][107] ([i915#5235]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#5235]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#6524])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109441]) +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +116 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][115] -> [SKIP][116] ([i915#5519])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-iclb:         [PASS][117] -> [SKIP][118] ([i915#5519])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#5030]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b.html

  * igt@kms_vblank@pipe-d-wait-forked:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278]) +23 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_vblank@pipe-d-wait-forked.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2437])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#2530]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109291]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2994]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][125] ([i915#5784]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb2/igt@gem_eio@kms.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][127] ([i915#4525]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][129] ([i915#2842]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][131] ([i915#2842]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][133] ([i915#2842]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][135] ([i915#180]) -> [PASS][136] +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@gem_workarounds@suspend-resume.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
    - shard-glk:          [FAIL][137] ([i915#2521]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][139] ([i915#3555]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][143] ([i915#2920]) -> [SKIP][144] ([i915#658])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][145] ([fdo#111068] / [i915#658]) -> [SKIP][146] ([i915#2920])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][147] ([i915#2920]) -> [SKIP][148] ([fdo#111068] / [i915#658]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][149] ([i915#658]) -> [SKIP][150] ([i915#2920])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([i915#180] / [i915#3002] / [i915#4312])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl1/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768


Build changes
-------------

  * Linux: CI_DRM_12168 -> Patchwork_108919v1

  CI-20190529: 20190529
  CI_DRM_12168: fea329811a7bc341aac5f51ab66ec41a3d0844af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108919v1: fea329811a7bc341aac5f51ab66ec41a3d0844af @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/index.html

--===============8705150979532328435==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>DG2 fix for CCS starvation</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108919/">https://patchwork.freedesktop.org/series/108919/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108919v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108919v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12168_full -&gt; Patchwork_108919v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108919v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108919v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108919v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_universal_plane@universal-plane-pipe-b-functional:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-tglb7/igt@kms_universal_plane@universal-plane-pipe-b-fu=
nctional.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108919v1/shard-tglb8/igt@kms_universal_plane@universal-pla=
ne-pipe-b-functional.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108919v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12168/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12168/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12168/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12168/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12168/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2168/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
919v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108919v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108919v1/shard-glk1/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8919v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108919v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108919v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8919v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108919v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108919v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08919v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_fair@basic-pace-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1089=
19v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gem_lmem_swapping@basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/46=
13">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/768">i915#768</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-apl7/igt@gem_userptr_blits@huge-split.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/=
shard-apl3/igt@gem_userptr_blits@huge-split.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3376">i915#3376</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen3_render_linear_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary=
-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_chamelium@dp-mode-timi=
ngs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_content_protection@atom=
ic.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_flip@2x-wf_vblank-ts-c=
heck.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@=
kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-d=
efault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptra=
ck-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108919v1/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +22 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108919v1/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919=
v1/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr@psr2_sprite_plane_o=
noff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12168/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108919v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12168/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108919v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_vblank@pipe-d-wait-for=
ked.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@nouveau_crc@pipe-c-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@prime_nv_pcopy@test3_2.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-tglb2/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb=
3/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108919v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108919v1/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108919v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108919v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-apl8/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108919v1/shard-apl8/igt@gem_workarounds@suspend-resume.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_async_flips@alternate=
-sync-async-flip@pipe-c-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a=
-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10891=
9v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-iclb7/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108919v1/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12168/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12168/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12168/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl6/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108919v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108919v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard=
-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12168 -&gt; Patchwork_108919v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12168: fea329811a7bc341aac5f51ab66ec41a3d0844af @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108919v1: fea329811a7bc341aac5f51ab66ec41a3d0844af @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8705150979532328435==--
