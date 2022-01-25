Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8DE49B780
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 16:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B883010E437;
	Tue, 25 Jan 2022 15:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 158F210E3E3;
 Tue, 25 Jan 2022 15:22:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10FC5A0169;
 Tue, 25 Jan 2022 15:22:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3215753499577173348=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zou Wei" <zou_wei@huawei.com>
Date: Tue, 25 Jan 2022 15:22:21 -0000
Message-ID: <164312414102.27371.16900690974776840009@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1643099964-13905-1-git-send-email-zou_wei@huawei.com>
In-Reply-To: <1643099964-13905-1-git-send-email-zou_wei@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Convert_list=5Ffor=5Feach_to_entry_variant?=
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

--===============3215753499577173348==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Convert list_for_each to entry variant
URL   : https://patchwork.freedesktop.org/series/99314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11132_full -> Patchwork_22099_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22099_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22099_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22099_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@insert:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl1/igt@drm_mm@all@insert.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl2/igt@drm_mm@all@insert.html

  * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-snb7/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html

  
Known issues
------------

  Here are the changes found in Patchwork_22099_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [FAIL][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#4386]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#1839])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@feature_discovery@display-3x.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][56] ([i915#4991])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          NOTRUN -> [TIMEOUT][57] ([i915#3063])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [PASS][58] -> [TIMEOUT][59] ([i915#3063])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-tglb2/igt@gem_eio@in-flight-immediate.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb2/igt@gem_eio@in-flight-immediate.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4525])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109283])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@gem_exec_params@no-blt.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@gem_lmem_swapping@smem-oom.html
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][75] ([i915#2658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         NOTRUN -> [WARN][76] ([i915#2658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4270]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#768])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@huge-split:
    - shard-kbl:          [PASS][79] -> [FAIL][80] ([i915#3376])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl6/igt@gem_userptr_blits@huge-split.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl6/igt@gem_userptr_blits@huge-split.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][81] ([i915#4990])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl10/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2856]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][84] ([i915#2684])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][86] ([i915#3743])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][88] -> [DMESG-WARN][89] ([i915#118]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3777]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#110723]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +5 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [i915#3886]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +6 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3742])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#3116] / [i915#3299])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb1/igt@kms_content_protection@dp-mst-type-0.html
    - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#3116])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109274] / [fdo#109278]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#426])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109274]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][109] -> [DMESG-WARN][110] ([i915#180]) +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][111] -> [SKIP][112] ([i915#3701])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271]) +162 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109280]) +14 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +63 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-skl:          [PASS][117] -> [DMESG-WARN][118] ([i915#1982]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][119] -> [FAIL][120] ([i915#1188])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#533])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][124] ([i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][125] -> [FAIL][126] ([fdo#108145] / [i915#265]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109278]) +21 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#3536])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109642] / [fdo#111068] / [i915#658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#658])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#658]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][134] -> [SKIP][135] ([fdo#109441]) +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109441])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][137] -> [FAIL][138] ([i915#31])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/igt@kms_setmode@basic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][139] -> [FAIL][140] ([i915#31])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-glk7/igt@kms_setmode@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271]) +138 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#533]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#533]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#2437]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_writeback@writeback-check-output.html
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#2437])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl6/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2530]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109289])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([fdo#109291]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109291]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#3301])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109295])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@prime_vgem@fence-write-hang.html

  * igt@runner@aborted:
    - shard-skl:          NOTRUN -> ([FAIL][152], [FAIL][153]) ([i915#1814] / [i915#3002] / [i915#4312])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl10/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl9/igt@runner@aborted.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#2994]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl4/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#2994])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-kbl1/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#2994])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([i915#2994])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][158] ([i915#232]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-tglb8/igt@gem_eio@kms.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/index.html

--===============3215753499577173348==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Convert list_for_each to entry=
 variant</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99314/">https://patchwork.freedesktop.org/series/99314/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22099/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11132_full -&gt; Patchwork_22099_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22099_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22099_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22099_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl1/igt@drm_mm@all@insert.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-skl2/igt=
@drm_mm@all@insert.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-snb7/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22099/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.ht=
ml">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22099_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11132/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11132/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11132/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11132/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11132/shard-apl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1132/shard-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11132/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11132/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22099/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@feature_discovery@display-3x.=
html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@gem_eio@in-flight-1us.html">TI=
MEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-tglb2/igt@gem_eio@in-flight-immediate.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/sha=
rd-tglb2/igt@gem_eio@in-flight-immediate.html">TIMEOUT</a> ([i915#3063])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2099/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_exec_balancer@parallel-ke=
ep-submit-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/sh=
ard-apl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/sh=
ard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
099/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_exec_fair@basic-pace-solo=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@gem_exec_params@no-blt.html">=
SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_lmem_swapping@heavy-verif=
y-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-apl3/igt@gem_lmem_swapping@smem-oom.html=
">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-skl6/igt@gem_lmem_swapping@smem-oom.html=
">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-iclb1/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-tglb1/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_pxp@verify-pxp-stale-ctx-=
execution.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl6/igt@gem_userptr_blits@huge-split.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/sha=
rd-kbl6/igt@gem_userptr_blits@huge-split.html">FAIL</a> ([i915#3376])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl10/igt@gem_userptr_blits@input-check=
ing.html">DMESG-WARN</a> ([i915#4990])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulati=
on.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-str=
ide-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2209=
9/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_ccs@pipe-b-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl8/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_cdclk@mode-transition.htm=
l">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_color_chamelium@pipe-a-ct=
m-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_color_chamelium@pipe-d-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-tglb1/igt@kms_content_protection@dp-mst-=
type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_content_protection@dp-mst-=
type-0.html">SKIP</a> ([i915#3116])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-v=
s-hang.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22099/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/s=
hard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22099/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +162 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +14 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-tglb1/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl6/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +63 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-=
wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22099/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mm=
ap-wc.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shar=
d-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-=
alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22099/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2209=
9/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl9/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/sh=
ard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@kms_psr@psr2_no_drrs.html">SK=
IP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11132/shard-apl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-apl2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11132/shard-glk7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-glk3/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl6/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +138 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-skl6/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-apl3/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-skl6/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.=
html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@perf@gen12-unprivileged-singl=
e-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-tglb1/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22099/shard-iclb1/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb5/igt@prime_vgem@fence-write-hang.h=
tml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22099/shard-skl10/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shar=
d-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#3002] / [i91=
5#4312])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-skl4/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-kbl1/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-apl3/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22099/shard-iclb8/igt@sysfs_clients@split-25.html">=
SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11132/shard-tglb8/igt@gem_eio@kms.html">FAIL</a> ([i915#232]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22099/shard-=
tglb7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3215753499577173348==--
