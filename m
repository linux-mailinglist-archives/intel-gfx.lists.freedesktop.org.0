Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A562C7AE52F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 07:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F07A10E34D;
	Tue, 26 Sep 2023 05:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52E6010E34C;
 Tue, 26 Sep 2023 05:43:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C6C2A7DFB;
 Tue, 26 Sep 2023 05:43:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8603637056099984711=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "liuhaoran" <liuhaoran14@163.com>
Date: Tue, 26 Sep 2023 05:43:28 -0000
Message-ID: <169570700817.20981.6704364075713234021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230923173525.46759-1-liuhaoran14@163.com>
In-Reply-To: <20230923173525.46759-1-liuhaoran14@163.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_error_handling_in_intel=5Ftimeline=5Fpin=28=29_?=
 =?utf-8?b?KHJldjIp?=
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

--===============8603637056099984711==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Add error handling in intel_timeline_pin() (rev2)
URL   : https://patchwork.freedesktop.org/series/124189/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13677_full -> Patchwork_124189v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124189v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124189v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124189v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglu:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-tglu-4/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a3.html

  
Known issues
------------

  Here are the changes found in Patchwork_124189v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414]) +20 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][5] -> [INCOMPLETE][6] ([i915#7297])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-1/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglu:         [PASS][7] -> [FAIL][8] ([i915#5099])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-tglu-4/igt@gem_ctx_persistence@smoketest.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][9] -> [FAIL][10] ([i915#5784])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-12/igt@gem_eio@reset-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#4812]) +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglu:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-10/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3539] / [i915#4852]) +2 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#7697])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3281]) +5 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_schedule@noreorder@ccs0:
    - shard-mtlp:         [PASS][19] -> [DMESG-FAIL][20] ([i915#8962] / [i915#9121])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-7/igt@gem_exec_schedule@noreorder@ccs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder@ccs0.html

  * igt@gem_exec_schedule@noreorder@rcs0:
    - shard-mtlp:         [PASS][21] -> [DMESG-FAIL][22] ([i915#9121])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-7/igt@gem_exec_schedule@noreorder@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4537] / [i915#4812])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4860])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@gem_lmem_evict@dontneed-evict-race.html
    - shard-dg1:          [PASS][26] -> [DMESG-WARN][27] ([i915#4391] / [i915#4423])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-16/igt@gem_lmem_evict@dontneed-evict-race.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-16/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][28] -> [TIMEOUT][29] ([i915#5493])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4077]) +6 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4083]) +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_mmap_wc@bad-object.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3282]) +3 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4079])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3297])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen3_render_mixed_blits:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([fdo#109289]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#2856]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@detector@ccs0:
    - shard-mtlp:         [PASS][38] -> [ABORT][39] ([i915#9262]) +2 other tests abort
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-2/igt@i915_hangman@detector@ccs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-4/igt@i915_hangman@detector@ccs0.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#7091])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglu:         NOTRUN -> [SKIP][41] ([fdo#109289])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [PASS][42] -> [FAIL][43] ([i915#3591])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([fdo#109506])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271]) +10 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-dg1:          [PASS][46] -> [SKIP][47] ([i915#1397])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][48] -> [INCOMPLETE][49] ([i915#7790])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-snb5/igt@i915_pm_rps@reset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb6/igt@i915_pm_rps@reset.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][50] ([i915#8247]) +3 other tests fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][51] ([i915#8247]) +3 other tests fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-17/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([fdo#111614])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#5286])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([fdo#111615] / [i915#5286])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([fdo#111614])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#5190]) +6 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([fdo#111615]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4538] / [i915#5190]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#5354]) +28 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3689] / [i915#3886] / [i915#5354]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3886])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#5354] / [i915#6095]) +6 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3689] / [i915#5354]) +8 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4087]) +3 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([fdo#111827])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([fdo#111827])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#7828]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#7828]) +3 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#3116] / [i915#3299])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#7118]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3359])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#3359])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][76] ([i915#8841]) +4 other tests dmesg-warn
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb5/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1:
    - shard-mtlp:         [PASS][77] -> [DMESG-WARN][78] ([i915#9262])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-7/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([fdo#109274] / [i915#5354]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([fdo#109274])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#2346])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#2346])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3555]) +5 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#3555] / [i915#3840])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#109274]) +3 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([fdo#109274] / [i915#3637]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#2672]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#8708]) +8 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([fdo#109280]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          [PASS][92] -> [FAIL][93] ([i915#6880]) +3 other tests fail
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#5460])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3458]) +7 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([fdo#110189]) +4 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3555] / [i915#8228]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3555] / [i915#8228])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#3555] / [i915#8228])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - shard-apl:          [PASS][100] -> [INCOMPLETE][101] ([i915#180] / [i915#9392])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][102] ([i915#8292])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#5176]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#5176]) +19 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-18/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#5235]) +11 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#5235]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#5235]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][108] ([fdo#109271]) +36 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5235]) +19 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@cursor_plane_onoff:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#1072]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5461] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4235]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#3555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
    - shard-apl:          [PASS][116] -> [FAIL][117] ([i915#9196])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-apl1/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl1/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5608] / [i915#8516])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3291] / [i915#3708])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@prime_vgem@basic-fence-read.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#7812] / [i915#8848])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb5/igt@runner@aborted.html

  * igt@v3d/v3d_mmap@mmap-bo:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([fdo#109315] / [i915#2575])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@v3d/v3d_mmap@mmap-bo.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#2575]) +7 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#2575])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#7711]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][128] ([i915#7742]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][130] ([i915#6268]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][132] ([i915#5784]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-12/igt@gem_eio@unwedge-stress.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-15/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs1:
    - shard-mtlp:         [FAIL][134] ([i915#4475] / [i915#7765]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-8/igt@gem_exec_capture@pi@vcs1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-5/igt@gem_exec_capture@pi@vcs1.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-mtlp:         [DMESG-WARN][136] ([i915#5591]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-8/igt@gem_exec_capture@pi@vecs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-5/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][138] ([i915#2842]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][140] ([i915#2842]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][142] ([i915#2842]) -> [PASS][143] +3 other tests pass
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][144] ([i915#5493]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][146] ([i915#3591]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [SKIP][148] ([i915#1397]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html
    - shard-dg2:          [SKIP][150] ([i915#1397]) -> [PASS][151] +1 other test pass
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-10/igt@i915_pm_rpm@dpms-non-lpsp.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-11/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg2:          [FAIL][152] ([i915#8717]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-2/igt@i915_pm_rpm@i2c.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][154] ([i915#5334]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][156] ([fdo#103375]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][158] ([i915#5138]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][160] ([i915#3743]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][162] ([i915#2346]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          [FAIL][164] ([i915#6880]) -> [PASS][165] +1 other test pass
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
    - shard-dg2:          [SKIP][166] ([i915#1937]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-rkl:          [FAIL][168] ([i915#9196]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
    - shard-dg1:          [FAIL][170] ([i915#9196]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-dg2:          [FAIL][172] ([fdo#103375]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [FAIL][174] ([i915#8724]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html

  * igt@perf_pmu@most-busy-idle-check-all@bcs0:
    - shard-dg2:          [FAIL][176] ([i915#5234]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg2-2/igt@perf_pmu@most-busy-idle-check-all@bcs0.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@perf_pmu@most-busy-idle-check-all@bcs0.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-dg1:          [SKIP][178] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095]) -> [SKIP][179] ([i915#3689] / [i915#3886] / [i915#4423] / [i915#5354] / [i915#6095])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-16/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-16/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][180] ([fdo#110189] / [i915#3955]) -> [SKIP][181] ([i915#3955])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-rkl-4/igt@kms_fbcon_fbt@psr.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-dg1:          [SKIP][182] ([i915#1072] / [i915#4078]) -> [SKIP][183] ([i915#1072])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13677/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8848]: https://gitlab.freedesktop.org/drm/intel/issues/8848
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392


Build changes
-------------

  * Linux: CI_DRM_13677 -> Patchwork_124189v2

  CI-20190529: 20190529
  CI_DRM_13677: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7502: ac56ba97248b33668fbe771882360bd7b274cc9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124189v2: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/index.html

--===============8603637056099984711==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Add error handling in intel_tim=
eline_pin() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124189/">https://patchwork.freedesktop.org/series/124189/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124189v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124189v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13677_full -&gt; Patchwork_124189v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124189v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_124189v2_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124189v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-tglu-4/igt@gem_workarounds@suspend-resume-fd.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4189v2/shard-tglu-2/igt@gem_workarounds@suspend-resume-fd.html">ABORT</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@b-hdmi-a3.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124189v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124189v2/shard-dg2-1/igt@gem_ccs@suspend-resume@t=
ile64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-tglu-4/igt@gem_ctx_persistence@smoketest.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189=
v2/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-=
dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_exec_balancer@sliced.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189=
v2/shard-tglu-10/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2=
/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@gem_exec_gttfill@multigpu=
-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_exec_reloc@basic-wc-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-7/igt@gem_exec_schedule@noreorder@ccs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
189v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder@ccs0.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8962">i915#89=
62</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9121">i=
915#9121</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-7/igt@gem_exec_schedule@noreorder@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
189v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder@rcs0.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9121">i915#91=
21</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@gem_lmem_evict@dontneed-evic=
t-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-dg1-16/igt@gem_lmem_evict@dontneed-evict-race.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4189v2/shard-dg1-16/igt@gem_lmem_evict@dontneed-evict-race.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915=
#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423=
">i915#4423</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
189v2/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/408=
3">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_partial_pwrite_pread@=
reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@gen3_render_mixed_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-2/igt@i915_hangman@detector@ccs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/=
shard-mtlp-4/igt@i915_hangman@detector@ccs0.html">ABORT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) +2 other =
tests abort</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@i915_pm_rc6_residency@med=
ia-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124189v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@i915_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v=
2/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb6/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg1-17/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@x-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-b-crc-primar=
y-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-b-missing-cc=
s-buffer-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_ccs@pipe-c-crc-primar=
y-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_ccs@pipe-c-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_ccs@pipe-d-crc-sprite=
-planes-basic-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +6 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_ccs@pipe-d-missing-cc=
s-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +8 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pi=
pe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_chamelium_color@ctm-bl=
ue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_chamelium_color@ctm-l=
imited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edi=
d-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-rkl-2/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_content_protection@me=
i_interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-snb5/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-b-vga-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8841">i915#8841</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-7/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124189v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124189v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124189v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-absol=
ute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledpri=
mary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-s=
caledprimary.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6880">i915#6880</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-rkl-6/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-1/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124189v2/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
b-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9392">i915#9392</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-h=
dmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_plane_scaling@plane-d=
ownscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdm=
i-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg1-18/igt@kms_plane_scaling@plane-u=
pscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +19 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a-=
vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-snb6/igt@kms_plane_scaling@planes-do=
wnscale-factor-0-75-unity-scaling@pipe-a-vga-1.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +36 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-glk5/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr@cursor_plane_onof=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@kms_rotation_crc@sprite-ro=
tation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-apl1/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124189v2/shard-apl1/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196"=
>i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608=
">i915#5608</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_124189v2/shard-snb7/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2=
/shard-snb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-snb7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124189v2/shard-snb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/7812">i915#7812</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/8848">i915#8848</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@v3d/v3d_mmap@mmap-bo.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10931=
5">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@v3d/v3d_submit_csd@bad-fla=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-tglu-6/igt@vc4/vc4_perfmon@create-tw=
o-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124189v2/shard-dg2-7/igt@vc4/vc4_wait_bo@unused-bo-=
1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124189v2/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124189v2/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-12/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v=
2/shard-dg1-15/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-8/igt@gem_exec_capture@pi@vcs1.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#77=
65</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124189v2/shard-mtlp-5/igt@gem_exec_capture@pi@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-8/igt@gem_exec_capture@pi@vecs0.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5=
591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124189v2/shard-mtlp-5/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124189v2/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124189v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124189v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +3 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i91=
5#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124189v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124189v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
9v2/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></p>
</li>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-dg2-10/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
9v2/shard-dg2-11/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 other test=
 pass</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-2/igt@i915_pm_rpm@i2c.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-=
dg2-10/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124189v2/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo=
#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124189v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124189v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124189v2/shard-tglu-10/igt@kms_big_fb@x-tiled-=
max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-apl2/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mma=
p-cpu.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124189v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-=
rgb565-draw-mmap-cpu.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i9=
15#1937</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124189v2/shard-dg2-10/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196=
">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124189v2/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-=
a.html">PASS</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13677/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak-pipe-a.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/919=
6">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124189v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak-pip=
e-a.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspe=
nd.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124189v2/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continua=
tion-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
189v2/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg2-2/igt@perf_pmu@most-busy-idle-check-all@bcs0.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5234">=
i915#5234</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124189v2/shard-dg2-6/igt@perf_pmu@most-busy-idle-check-all@bcs0.htm=
l">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-16/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_til=
ed_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124189v2/shard-dg1-16/igt@k=
ms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">i915=
#3886</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423=
">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5354">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12418=
9v2/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13677/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#=
4078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124189v2/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>=
)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13677 -&gt; Patchwork_124189v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13677: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7502: ac56ba97248b33668fbe771882360bd7b274cc9a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124189v2: d69432c1f5832c5097d4629e61cabd8bdfc027b2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8603637056099984711==--
