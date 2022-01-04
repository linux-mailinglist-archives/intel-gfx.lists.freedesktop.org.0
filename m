Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EAB484921
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 21:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CBC89491;
	Tue,  4 Jan 2022 20:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96ABD89458;
 Tue,  4 Jan 2022 20:17:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 908EFA0099;
 Tue,  4 Jan 2022 20:17:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3996439653987104174=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 04 Jan 2022 20:17:01 -0000
Message-ID: <164132742155.30366.4325379579584134371@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220104173100.32342-1-matthew.brost@intel.com>
In-Reply-To: <20220104173100.32342-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_return_intel=5Fcontext=5Ftimeline=5Flock_of_in_e?=
 =?utf-8?q?b=5Fpin=5Ftimeline?=
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

--===============3996439653987104174==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Check return intel_context_timeline_lock of in eb_pin_timeline
URL   : https://patchwork.freedesktop.org/series/98477/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11046_full -> Patchwork_21916_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21916_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21916_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21916_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_engines@independent@all:
    - {shard-dg1}:        NOTRUN -> [FAIL][3] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-dg1-17/igt@gem_ctx_engines@independent@all.html

  * igt@gem_ctx_persistence@smoketest:
    - {shard-tglu}:       NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglu-7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_mmap_gtt@close-race:
    - {shard-dg1}:        NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-dg1-17/igt@gem_mmap_gtt@close-race.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - {shard-tglu}:       NOTRUN -> [SKIP][6] +41 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@testdisplay:
    - {shard-tglu}:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-tglu-1/igt@testdisplay.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglu-6/igt@testdisplay.html

  
Known issues
------------

  Here are the changes found in Patchwork_21916_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33]) ([i915#4392]) -> ([PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk8/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][58] ([i915#3002])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_create@create-massive.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#280])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][62] ([i915#4547])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl1/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][63] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2842]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#2849])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][70] -> [DMESG-WARN][71] ([i915#118])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk7/igt@gem_exec_whisper@basic-normal-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2190])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html
    - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][76] ([i915#3002])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#3318])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl4/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109289])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gen3_render_mixed_blits.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][80] -> [INCOMPLETE][81] ([i915#3921])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +103 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111614])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3777]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#111615])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][86] ([i915#3743]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +9 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +313 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl9/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-glk:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][98] ([i915#1319])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3319])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109279] / [i915#3359])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +15 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3359])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][104] ([i915#2346])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][105] -> [FAIL][106] ([i915#2346])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][107] -> [INCOMPLETE][108] ([i915#180] / [i915#636])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#111825]) +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][110] ([i915#3701])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [PASS][111] -> [SKIP][112] ([i915#3701]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271]) +40 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [PASS][114] -> [FAIL][115] ([i915#2546])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#1839])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533]) +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-apl:          [PASS][119] -> [DMESG-WARN][120] ([i915#180]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][121] ([i915#265])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][124] -> [FAIL][125] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#3536])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][129] -> [SKIP][130] ([fdo#109441]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][131] ([i915#132] / [i915#3467])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][132] ([IGT#2])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2437])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#2530])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][135] -> [FAIL][136] ([i915#1722])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-skl4/igt@perf@polling-small-buf.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl8/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#109291])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109295])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +3 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl6/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2994])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][141] ([i915#658]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb4/igt@feature_discovery@psr2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][143] ([i915#4525]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [INCOMPLETE][145] ([i915#4547]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-skl2/igt@gem_exec_capture@pi@bcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl1/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][147] ([i915#2842]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [FAIL][149] ([i915#2842]) -> [PASS][150] +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][151] ([i915#118]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][153] -> [PASS][154] +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_userptr_blits@stress-mm:
    - {shard-rkl}:        [INCOMPLETE][155] -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-rkl-5/igt@gem_userptr_blits@stress-mm.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-rkl-1/igt@gem_userptr_blits@stress-mm.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][157] ([i915#180]) -> [PASS][158] +3 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][159] ([i915#402]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/index.html

--===============3996439653987104174==
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
<tr><td><b>Series:</b></td><td>drm/i915: Check return intel_context_timelin=
e_lock of in eb_pin_timeline</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98477/">https://patchwork.freedesktop.org/series/98477/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21916/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21916/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11046_full -&gt; Patchwork_21916_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21916_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21916_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21916_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.=
html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_engines@independent@all:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-dg1-17/igt@gem_ctx_engines@independent@=
all.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglu-7/igt@gem_ctx_persistence@smoketes=
t.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-dg1-17/igt@gem_mmap_gtt@close-race.html=
">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglu-8/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-tglu-1/igt@testdisplay.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-tglu-6/igt@t=
estdisplay.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21916_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11046/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11046/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11046/shard-glk7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11046/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk9/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11046/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11046/shard-glk1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046=
/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11046/shard-glk2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1046/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shard-glk4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11046/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11046/shard-glk5/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21916/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21916/shard-glk1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_ctx_sseu@invalid-sseu.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21916/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (=
[i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl1/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_exec_fair@basic-none-rrul=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
916/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/sh=
ard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
16/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-glk7/igt@gem_exec_whisper@basic-normal-all.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2191=
6/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl5/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21916/shard-skl7/igt@gem_lmem_swapping@heavy-verify-=
multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21916/shard-glk6/igt@gem_lmem_swapping@heavy-verify-=
multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl4/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@gen3_render_mixed_blits.html"=
>SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/sha=
rd-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_big_fb@linear-16bpp-rotate=
-90.html">SKIP</a> ([fdo#109271]) +103 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl5/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +313 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl9/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_color_chamelium@pipe-d-ct=
m-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1916/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21916/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-=
kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_flip@2x-blocking-absolute=
-wf_vblank.html">SKIP</a> ([fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21916/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +40 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21916/shard-iclb6/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-wc.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_multipipe_modeset@basic-m=
ax-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-glk6/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21916/shard-apl8/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21916/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_plane_lowres@pipe-a-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl4/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/s=
hard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@kms_psr@psr2_sprite_mmap_gtt.=
html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@nouveau_crc@pipe-d-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-skl4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21916/shard-skl=
8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_import_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@prime_nv_api@nv_i915_import_t=
wice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-tglb5/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-skl6/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21916/shard-glk6/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1916/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21916/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-skl2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21916/shard-skl1/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21916/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21916/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.h=
tml">DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21916/shard-glk2/igt@gem_exec_whisper@basic-conte=
xts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21916/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-rkl-5/igt@gem_userptr_blits@stress-mm.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
16/shard-rkl-1/igt@gem_userptr_blits@stress-mm.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21916/shard-apl6/igt@gem_workarounds@suspend-resume-con=
text.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11046/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMES=
G-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patch">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============3996439653987104174==--
