Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3AF51BCEC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E945D10E705;
	Thu,  5 May 2022 10:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C33610E809;
 Thu,  5 May 2022 10:14:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2394A01BB;
 Thu,  5 May 2022 10:14:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1363417083789343286=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 May 2022 10:14:15 -0000
Message-ID: <165174565595.7659.7874523481573091158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_=28rev7=29?=
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

--===============1363417083789343286==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling (rev7)
URL   : https://patchwork.freedesktop.org/series/101496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11607_full -> Patchwork_101496v7_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_101496v7_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_101496v7_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_101496v7_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         [SKIP][1] ([i915#4613]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb2/igt@gem_lmem_swapping@heavy-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb4/igt@gem_lmem_swapping@heavy-random.html

  
Known issues
------------

  Here are the changes found in Patchwork_101496v7_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4338]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@suspend-resume:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#5327])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#1099])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-iclb:         NOTRUN -> [FAIL][55] ([i915#5099])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         NOTRUN -> [FAIL][56] ([i915#5784])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][57] ([i915#5076] / [i915#5614])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][58] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#2842]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-snb:          [PASS][65] -> [SKIP][66] ([fdo#109271]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/igt@gem_exec_flush@basic-wb-ro-default.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#4613])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_lmem_swapping@random.html

  * igt@gem_media_vme:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#284])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_media_vme.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4270])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#768]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#3297])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2527] / [i915#2856])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2856])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_hangman@engine-engine-hang:
    - shard-snb:          NOTRUN -> [SKIP][76] ([fdo#109271]) +79 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@i915_hangman@engine-engine-hang.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][77] -> [FAIL][78] ([i915#454])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111644] / [i915#1397] / [i915#2411])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][80] -> [INCOMPLETE][81] ([i915#3921])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#2521])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#5286]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5286])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111614])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#110723])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#111615] / [i915#3689])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [i915#3886]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3689])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3689] / [i915#3886]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3742])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-audio:
    - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@kms_chamelium@dp-audio.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color@pipe-a-deep-color:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3555])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_color@pipe-a-deep-color.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#3116] / [i915#3299])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278]) +10 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][104] -> [DMESG-WARN][105] ([i915#180]) +8 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#3359])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +99 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][109] -> [FAIL][110] ([i915#2346])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#5287])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109274]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][114] -> [FAIL][115] ([i915#2122])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][116] -> [DMESG-WARN][117] ([i915#180]) +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][118] -> [FAIL][119] ([i915#4911])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109280]) +8 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][122] -> [FAIL][123] ([i915#1188])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][124] ([i915#1188])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109289]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][126] ([i915#265])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][127] -> [FAIL][128] ([fdo#108145] / [i915#265])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#3536])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([fdo#111615] / [fdo#112054]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-yf.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([i915#5235]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#1836])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#658])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#111068] / [i915#658])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][137] -> [SKIP][138] ([fdo#109642] / [fdo#111068] / [i915#658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][139] ([i915#132] / [i915#3467])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][140] -> [SKIP][141] ([fdo#109441]) +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109441])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([i915#3555])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271]) +55 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#2530])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2530])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][147] -> [INCOMPLETE][148] ([i915#5213])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-glk1/igt@perf@oa-exponents.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][149] -> [FAIL][150] ([i915#5639])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb7/igt@perf@polling-parameterized.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109291])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@prime_nv_pcopy@test1_macro.html

  * igt@prime_nv_pcopy@test1_micro:
    - shard-tglb:         NOTRUN -> [SKIP][152] ([fdo#109291])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@prime_nv_pcopy@test1_micro.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][153] ([i915#5098])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#2994])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-50:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([i915#2994]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@drm_import_export@import-close-race-prime:
    - {shard-rkl}:        [INCOMPLETE][156] -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-5/igt@drm_import_export@import-close-race-prime.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-4/igt@drm_import_export@import-close-race-prime.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][158] ([i915#3063]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-tglu-8/igt@gem_eio@unwedge-stress.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglu-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@nop:
    - {shard-rkl}:        [INCOMPLETE][160] ([i915#5080]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-5/igt@gem_exec_balancer@nop.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-5/igt@gem_exec_balancer@nop.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][162] ([i915#180]) -> [PASS][163] +3 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][164] ([i915#5566] / [i915#716]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][166] ([fdo#109308]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - {shard-rkl}:        [SKIP][168] ([i915#1845] / [i915#4098]) -> [PASS][169] +9 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - {shard-rkl}:        [SKIP][170] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-5/igt@kms_color@pipe-b-ctm-green-to-red.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - {shard-rkl}:        [SKIP][172] ([fdo#112022] / [i915#4070]) -> [PASS][173] +2 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - {shard-rkl}:        [SKIP][174] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - {shard-rkl}:        [SKIP][176] ([fdo#111825] / [i915#4070]) -> [PASS][177] +2 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][178] -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - {shard-rkl}:        [SKIP][180] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][181] +1 similar issue
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][182] ([i915#79]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][184] ([i915#2122]) -> [PASS][185] +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl5/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl6/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][186] ([i915#1849] / [i915#4098]) -> [PASS][187] +11 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][188] ([fdo#108145] / [i915#265]) -> [PASS][189] +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][190] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][192] ([i915#5235]) -> [PASS][193] +2 similar issues
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][194] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb4/igt@kms_psr2_su@page_flip-xrgb8888.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@primary_page_flip:
    - {shard-rkl}:        [SKIP][196] ([i915#1072]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_psr@primary_page_flip.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_psr@primary_page_flip.html

  * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
    - {shard-rkl}:        [SKIP][198] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-tglb:         [INCOMPLETE][200] -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-tglb8/igt@kms_vblank@pipe-d-query-idle-hang.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_vblank@pipe-d-query-idle-hang.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][202] ([i915#4525]) -> [DMESG-WARN][203] ([i915#5614])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][204] ([i915#588]) -> [SKIP][205] ([i915#658])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][206] ([fdo#111068] / [i915#658]) -> [SKIP][207] ([i915#2920])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11607 -> Patchwork_101496v7

  CI-20190529: 20190529
  CI_DRM_11607: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6465: f6bb4399881a806fbff75ce3df89b60286d55917 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_101496v7: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/index.html

--===============1363417083789343286==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling (re=
v7)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101496/">https://patchwork.freedesktop.org/series/101496/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_101496v7/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_101496v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11607_full -&gt; Patchwork_101496v=
7_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_101496v7_full need to be ver=
ified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_101496v7_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
101496v7_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@gem_lmem_swapping@heavy-random:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb2/igt@gem_lmem_swapping@heavy-random.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#461=
3</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
101496v7/shard-iclb4/igt@gem_lmem_swapping@heavy-random.html">INCOMPLETE</a=
></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_101496v7_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11607/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11607/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11607/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11607/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11607/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607=
/shard-snb5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11607/shard-snb4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1607/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11607/shard-snb2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_101496v7/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_101496v7/shard-snb7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v=
7/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_101496v7/shard-snb6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_101496v7/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_101496v7/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_101496v7/shard-snb4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_101496v7/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_101496v7/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_101496v7/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_101496v7/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-snb2/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/532=
7">i915#5327</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@gem_ctx_persistence@legacy-=
engines-hostile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_ctx_persistence@smoket=
est.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5099">i915#5099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_eio@unwedge-stress.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/578=
4">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_exec_balancer@parallel=
-bb-first.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7=
/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11607/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
1496v7/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11607/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101=
496v7/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-snb7/igt@gem_exec_flush@basic-wb-ro-default.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101=
496v7/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl1/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_lmem_swapping@random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#28=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_render_copy@linear-to-=
vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/768">i915#768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@i915_hangman@engine-engine-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-icl=
b3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@i915_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1397">i915#1397</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/=
shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_101496v7/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@kms_big_fb@linear-16bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111614">fdo#111614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-snb2/igt@kms_chamelium@dp-audio.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_chamelium@dp-hpd-storm=
-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_chamelium@hdmi-aspect-r=
atio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-deep-color:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_color@pipe-a-deep-colo=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_color_chamelium@pipe-a-=
ctm-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_color_chamelium@pipe-c=
-ctm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
01496v7/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_cursor_crc@pipe-c-curs=
or-32x10-sliding.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@kms_cursor_crc@pipe-d-curso=
r-64x21-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_cursor_legacy@cursora-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_101496v7/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_draw_crc@draw-method-x=
rgb8888-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_101496v7/shard-glk1/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_101496v7/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4911">i915#4911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl5/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_101496v7/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-d=
pms-edp-1-pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_hdr@bpc-switch@bpc-swit=
ch-edp-1-pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_pipe_b_c_ivb@pipe-b-do=
uble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_101496v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_plane_lowres@pipe-b-ti=
ling-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_plane_lowres@pipe-d-ti=
ling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111615">fdo#111615</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D112054">fdo#112054</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard=
-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe=
-a-edp-1-planes-upscale-downscale.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_prime@basic-crc@first-=
to-second.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1836">i915#1836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl8/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_psr2_sf@overlay-plane-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1014=
96v7/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#11=
1068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">=
i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@kms_psr@psr2_no_drrs.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">=
i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v=
7/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_c=
pu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-skl1/igt@nouveau_crc@ctx-flip-thresh=
old-reset-after-capture.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@nouveau_crc@pipe-b-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@nouveau_crc@pipe-c-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-glk1/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-glk8/=
igt@perf@oa-exponents.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb7/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/s=
hard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@prime_nv_pcopy@test1_macro=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_micro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb2/igt@prime_nv_pcopy@test1_micro=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-tglb7/igt@syncobj_timeline@transfer-=
timeline-point.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-apl4/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_101496v7/shard-iclb8/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@import-close-race-prime:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-5/igt@drm_import_export@import-close-race-prime.htm=
l">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_101496v7/shard-rkl-4/igt@drm_import_export@import-close-race-pri=
me.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-tglu-8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1014=
96v7/shard-tglu-1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-5/igt@gem_exec_balancer@nop.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5080">i915#5080</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101=
496v7/shard-rkl-5/igt@gem_exec_balancer@nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_101496v7/shard-apl1/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-apl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_101496v7/shard-apl1/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v=
7/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_101496v7/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html">PASS<=
/a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-5/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#=
1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to=
-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscree=
n.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D112022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cu=
rsor-256x256-offscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edg=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_edge_walk@p=
ipe-b-128x128-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_cursor_legacy@fli=
p-vs-cursor-atomic-transitions.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_101496v7/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_draw_crc@draw-metho=
d-rgb565-blt-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_101496v7/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl5/igt@kms_flip@wf_vblank-ts-check-interruptible@c-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_101496v7/shard-skl6/igt@kms_flip@wf_vblank-ts-check-interr=
uptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a>=
 +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_101496v7/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-cover=
age-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
1496v7/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downsca=
le-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">PASS</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb4/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_101496v7/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10149=
6v7/shard-rkl-6/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-sanity:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sa=
nity.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_101496v7/shard-rkl-6/igt@kms_universal_plane=
@universal-plane-pipe-a-sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle-hang:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-tglb8/igt@kms_vblank@pipe-d-query-idle-hang.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_101496v7/shard-tglb2/igt@kms_vblank@pipe-d-query-idle-hang.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1014=
96v7/shard-iclb1/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
01496v7/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11607/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_101496v7/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11607 -&gt; Patchwork_101496v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11607: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6465: f6bb4399881a806fbff75ce3df89b60286d55917 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_101496v7: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1363417083789343286==--
