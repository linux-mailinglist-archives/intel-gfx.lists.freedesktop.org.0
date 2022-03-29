Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC094EA5C4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 05:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BB110E18A;
	Tue, 29 Mar 2022 03:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6E5310E18A;
 Tue, 29 Mar 2022 03:11:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A70DBAADDC;
 Tue, 29 Mar 2022 03:11:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0821649352346854237=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 29 Mar 2022 03:11:13 -0000
Message-ID: <164852347367.5799.9605839851994670189@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328172551.43309-1-matthew.auld@intel.com>
In-Reply-To: <20220328172551.43309-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/gt=3A_Explicitly_clea?=
 =?utf-8?q?r_BB=5FOFFSET_for_new_contexts?=
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

--===============0821649352346854237==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
URL   : https://patchwork.freedesktop.org/series/101899/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11415_full -> Patchwork_22705_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22705_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [FAIL][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-glk:          [PASS][51] -> [INCOMPLETE][52] ([i915#5441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/igt@api_intel_bb@blit-reloc-purge-cache.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@core_hotunplug@unbind-rebind:
    - shard-apl:          NOTRUN -> [INCOMPLETE][53] ([i915#1373] / [i915#5441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl2/igt@core_hotunplug@unbind-rebind.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#1099])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][56] ([i915#5076])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#4525])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][58] ([i915#5076])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][60] ([i915#2842]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][61] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][62] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fence@syncobj-invalid-flags:
    - shard-skl:          [PASS][63] -> [DMESG-WARN][64] ([i915#1982])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl4/igt@gem_exec_fence@syncobj-invalid-flags.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl8/igt@gem_exec_fence@syncobj-invalid-flags.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109283])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_schedule@u-semaphore-user:
    - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271]) +63 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-snb7/igt@gem_exec_schedule@u-semaphore-user.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl1/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2190])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][73] ([i915#5441])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl4/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][74] ([i915#2658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb7/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][75] ([i915#2658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl6/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#4270]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#768]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][78] ([i915#5441]) +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb1/igt@gem_tiled_partial_pwrite_pread@writes.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][79] ([i915#5441])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl6/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3323])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3323])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#3297])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3297]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-iclb:         NOTRUN -> [FAIL][84] ([i915#3318])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen3_render_linear_blits:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109289]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2856])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#1937])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#111644] / [i915#1397] / [i915#2411])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#5286]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#5286]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-snb:          [PASS][93] -> [INCOMPLETE][94] ([i915#5441])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-snb4/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-snb4/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-kbl:          [PASS][95] -> [INCOMPLETE][96] ([i915#1373] / [i915#5441])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl1/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         [PASS][97] -> [INCOMPLETE][98] ([i915#2828] / [i915#5441])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-kbl:          [PASS][100] -> [INCOMPLETE][101] ([i915#5441]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-apl:          [PASS][102] -> [INCOMPLETE][103] ([i915#5441]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3777])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-snb:          NOTRUN -> [INCOMPLETE][105] ([i915#5441]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-tglb:         [PASS][106] -> [INCOMPLETE][107] ([i915#5441]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][108] ([i915#5441]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][109] ([i915#5441])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#3777]) +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#3777]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         [PASS][112] -> [INCOMPLETE][113] ([i915#5441]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#111615]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [INCOMPLETE][115] ([i915#5441]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#110723])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#3886]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#111615] / [i915#3689])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#3886]) +4 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278] / [i915#3886]) +4 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#3689] / [i915#3886]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#3886]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#3689])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_chamelium@dp-mode-timings.html
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_chamelium@dp-mode-timings.html
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb4/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][128] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271]) +48 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +19 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.html
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109278] / [i915#1149])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109300] / [fdo#111066])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#3319])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109278]) +33 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#109279] / [i915#3359]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#3359]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#533])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_cursor_legacy@pipe-d-single-bo.html
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#533])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#533])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#5287])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][144] ([i915#5287]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-tglb:         NOTRUN -> [SKIP][145] ([fdo#109274] / [fdo#111825]) +5 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109274]) +6 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#2587])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109285])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109280]) +14 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109280] / [fdo#111825]) +10 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([i915#5438])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271]) +107 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-apl2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-snb:          [PASS][153] -> [SKIP][154] ([fdo#109271])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-snb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/index.html

--===============0821649352346854237==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915/gt: E=
xplicitly clear BB_OFFSET for new contexts</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101899/">https://patchwork.freedesktop.org/series/101899/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22705/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11415_full -&gt; Patchwork_22705_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22705_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11415/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11415/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11415/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11415/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11415/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11415/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11415/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1415/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11415/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11415/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22705/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22705/shard-glk9/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-glk6/igt@api_intel_bb@blit-reloc-purge-cache.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
705/shard-glk3/igt@api_intel_bb@blit-reloc-purge-cache.html">INCOMPLETE</a>=
 ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl2/igt@core_hotunplug@unbind-rebind.h=
tml">INCOMPLETE</a> ([i915#1373] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@feature_discovery@psr2.html">=
SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-kbl3/igt@gem_exec_balancer@parallel.htm=
l">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_exec_balancer@parallel-ba=
lancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@gem_exec_balancer@parallel-ke=
ep-in-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk3/igt@gem_exec_fair@basic-none-rrul@r=
cs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@=
rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl1/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-invalid-flags:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-skl4/igt@gem_exec_fence@syncobj-invalid-flags.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2705/shard-skl8/igt@gem_exec_fence@syncobj-invalid-flags.html">DMESG-WARN</=
a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-user:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-snb7/igt@gem_exec_schedule@u-semaphore-=
user.html">SKIP</a> ([fdo#109271]) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl1/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk6/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl6/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl7/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@gem_lmem_swapping@parallel-ra=
ndom-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_lmem_swapping@verify-rand=
om.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-kbl4/igt@gem_ppgtt@blt-vs-render-ctxn.h=
tml">DMESG-FAIL</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-tglb7/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-skl6/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-tglb1/igt@gem_tiled_partial_pwrite_pread=
@writes.html">INCOMPLETE</a> ([i915#5441]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl6/igt@gem_tiled_partial_pwrite_pread@=
writes.html">INCOMPLETE</a> ([i915#5441])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk3/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb4/igt@gem_userptr_blits@invalid-mma=
p-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb7/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@gem_userptr_blits@vma-merge.h=
tml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22705/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html">DMESG-WA=
RN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gen3_render_linear_blits.html=
">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@gen9_exec_parse@bb-oversize.h=
tml">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@4-tiled-64bpp-rota=
te-0.html">SKIP</a> ([i915#5286]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-snb4/igt@kms_big_fb@linear-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2270=
5/shard-snb4/igt@kms_big_fb@linear-8bpp-rotate-180.html">INCOMPLETE</a> ([i=
915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
705/shard-kbl1/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">INCOMPLETE</a>=
 ([i915#1373] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2705/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">INCOMPLETE</=
a> ([i915#2828] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@x-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-=
0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22705/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-=
0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22705/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-=
32bpp-rotate-0-async-flip.html">INCOMPLETE</a> ([i915#5441]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">INCOMPLETE</a> ([i915#5441]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
705/shard-tglb6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">INCOMPLETE</a>=
 ([i915#5441]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rota=
te-90.html">INCOMPLETE</a> ([i915#5441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">INCOMPLETE</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +4 simil=
ar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simil=
ar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-iclb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22705/shard-iclb6/igt@kms_big_fb@y-tiled-max-=
hw-stride-64bpp-rotate-180-hflip-async-flip.html">INCOMPLETE</a> ([i915#544=
1]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">INCOMPLETE</a> ([i915#5441]) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_ccs@pipe-a-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-bu=
ffer-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl6/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-iclb4/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +4 simila=
r issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar=
 issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_ccs@pipe-c-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_ccs@pipe-d-bad-pixel-form=
at-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_chamelium@dp-hpd-after-su=
spend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_chamelium@dp-mode-timings.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_chamelium@dp-mode-timings.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-iclb4/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-snb7/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_color@pipe-d-ctm-max.html"=
>SKIP</a> ([fdo#109271]) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-kbl1/igt@kms_color@pipe-d-ctm-negative.h=
tml">SKIP</a> ([fdo#109271]) +19 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_color@pipe-d-ctm-negative.=
html">SKIP</a> ([fdo#109278] / [i915#1149])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_content_protection@atomic=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-offscreen.html">SKIP</a> ([fdo#109278]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-onscreen.html">SKIP</a> ([i915#3359]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_cursor_legacy@2x-long-cur=
sor-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-glk3/igt@kms_cursor_legacy@pipe-d-single=
-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22705/shard-apl7/igt@kms_cursor_legacy@pipe-d-single=
-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-skl9/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb=
2101010-mmap-cpu-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb=
8888-mmap-gtt-4tiled.html">SKIP</a> ([i915#5287]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb7/igt@kms_flip@2x-flip-vs-blocking-=
wf-vblank.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-inte=
rruptible.html">SKIP</a> ([fdo#109274]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb5/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +14 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-tglb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111825])=
 +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-tiling-4.html">SKIP</a> ([i915#5438])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22705/shard-apl2/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-render.html">SKIP</a> ([fdo#109271]) +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11415/shard-snb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
w">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0821649352346854237==--
