Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AE07E7611
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 01:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBBE10E393;
	Fri, 10 Nov 2023 00:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4BD210E393;
 Fri, 10 Nov 2023 00:52:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A20EEAADD5;
 Fri, 10 Nov 2023 00:52:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1878644506778454679=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Fri, 10 Nov 2023 00:52:43 -0000
Message-ID: <169957756361.31677.5726761135132577420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231109112148.309669-1-mika.kahola@intel.com>
In-Reply-To: <20231109112148.309669-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_C20_state_verification_=28rev4=29?=
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

--===============1878644506778454679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: C20 state verification (rev4)
URL   : https://patchwork.freedesktop.org/series/125855/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13856_full -> Patchwork_125855v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125855v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125855v4_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/index.html

Participating hosts (10 -> 10)
------------------------------

  Additional (1): shard-tglu0 
  Missing    (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125855v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_125855v4_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#8293]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8414])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@nullptr:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#2582])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@fbdev@nullptr.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][54] -> [SKIP][55] ([i915#2582])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@fbdev@pan.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@fbdev@pan.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-mtlp:         [PASS][57] -> [ABORT][58] ([i915#9414]) +2 other tests abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#1099])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][61] -> [FAIL][62] ([i915#5784])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-15/igt@gem_eio@kms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-15/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][63] ([i915#8898])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#4525])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#9591])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][69] ([i915#2842]) +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-rkl:          [PASS][70] -> [FAIL][71] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][72] -> [SKIP][73] ([i915#3281]) +6 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3281])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][75] -> [ABORT][76] ([i915#7975] / [i915#8213])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4860]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#4613]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4077]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4083])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          [PASS][83] -> [SKIP][84] ([i915#3282]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][85] ([i915#2658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_pread@exhaustion.html

  * igt@gem_pread@self:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3282])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_pread@self.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][87] ([i915#2658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#4270])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#4270])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#768]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-snb:          NOTRUN -> [SKIP][91] ([fdo#109271]) +54 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [PASS][92] -> [SKIP][93] ([i915#8411])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3297])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3297] / [i915#4880])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-glk:          NOTRUN -> [FAIL][96] ([i915#3318])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#109289])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#2527] / [i915#2856])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          [PASS][99] -> [SKIP][100] ([i915#2527])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_hangman@detector@vcs0:
    - shard-mtlp:         [PASS][102] -> [ABORT][103] ([i915#9262])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@i915_hangman@detector@vcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-7/igt@i915_hangman@detector@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [PASS][104] -> [WARN][105] ([i915#2681])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#6621])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#4387])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([fdo#109302])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4212]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][110] ([i915#8247]) +3 other tests fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([fdo#111615] / [i915#5286])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][112] -> [FAIL][113] ([i915#5138])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([fdo#111614])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][115] -> [SKIP][116] ([i915#1845] / [i915#4098]) +24 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][117] -> [FAIL][118] ([i915#3743])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][119] ([i915#3743])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([fdo#111615]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4538] / [i915#5190]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#2705])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium_color@degamma:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([fdo#111827]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#7828]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#7828])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#7828]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_color@ctm-0-75@pipe-b:
    - shard-rkl:          [PASS][127] -> [SKIP][128] ([i915#4098]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_color@ctm-0-75@pipe-b.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_color@ctm-0-75@pipe-b.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#6944] / [i915#7116] / [i915#7118])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][131] ([i915#1339])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3359])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([fdo#109274] / [i915#5354]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#1845] / [i915#4098]) +36 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([fdo#109274])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][136] -> [DMESG-WARN][137] ([i915#2017])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#9227])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#9226] / [i915#9261]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4098]) +11 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#3840])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([fdo#110189] / [i915#3955])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#109274]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#111825]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([fdo#111767] / [fdo#111825])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([fdo#109274] / [i915#3637])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3637] / [i915#4098]) +9 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3555]) +9 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2672])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#2587] / [i915#2672]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#2672]) +4 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][152] -> [FAIL][153] ([i915#6880]) +2 other tests fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-rkl:          [PASS][154] -> [SKIP][155] ([i915#1849] / [i915#4098]) +11 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#8708]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#1849] / [i915#4098]) +15 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#5354]) +7 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][159] ([fdo#109271]) +43 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#5439])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([fdo#109280]) +7 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3458]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#3555] / [i915#8228])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3555] / [i915#4098]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([fdo#109289])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [PASS][167] -> [INCOMPLETE][168] ([i915#180] / [i915#9392])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#4098] / [i915#8825])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#8825])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][171] ([i915#4573]) +1 other test fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#6953])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][173] -> [FAIL][174] ([i915#8292])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-9/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][175] ([i915#8292])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3555] / [i915#4098] / [i915#8152])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#6953] / [i915#8152])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#5235]) +7 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#5235]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#8152]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5235]) +11 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [PASS][183] -> [SKIP][184] ([i915#1849])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][185] ([fdo#109271] / [i915#658])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#658])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#658]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@cursor_mmap_cpu:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([fdo#110189]) +6 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@cursor_plane_onoff:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#1072])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#1072])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][191] ([fdo#109271]) +107 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-rkl:          [PASS][192] -> [INCOMPLETE][193] ([i915#8875] / [i915#9569])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#5190]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3555]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3555] / [i915#4098])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][197] -> [FAIL][198] ([i915#9196]) +1 other test fail
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#3555]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_vrr@negative-basic.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [PASS][200] -> [SKIP][201] ([fdo#109289])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][202] -> [FAIL][203] ([i915#7484])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2435])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [PASS][205] -> [SKIP][206] ([fdo#109295] / [i915#3708] / [i915#4098])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [PASS][207] -> [SKIP][208] ([fdo#109295] / [i915#3291] / [i915#3708])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@prime_vgem@basic-read.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([fdo#109295] / [i915#3708])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-tglu:         NOTRUN -> [FAIL][210] ([i915#9583])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-dg2:          NOTRUN -> [FAIL][211] ([i915#9583])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - shard-tglu:         NOTRUN -> [FAIL][212] ([i915#9582])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2575]) +2 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([fdo#109315] / [i915#2575]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#109315]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#7711]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#2575]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@used-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#7711]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@vc4/vc4_wait_bo@used-bo-1ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][219] ([i915#8411]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][221] ([i915#5784]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-17/igt@gem_eio@reset-stress.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [FAIL][223] ([i915#2842]) -> [PASS][224] +1 other test pass
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-rkl:          [SKIP][225] ([i915#3281]) -> [PASS][226] +7 other tests pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@gem_exec_reloc@basic-wc-cpu.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][227] ([i915#5493]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [SKIP][229] ([fdo#111656]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [SKIP][231] ([i915#3282]) -> [PASS][232] +5 other tests pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_pread@snoop.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_pread@snoop.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][233] ([i915#2527]) -> [PASS][234] +3 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][235] ([i915#9588]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-mtlp:         [FAIL][237] -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@i915_pm_rpm@system-suspend-devices.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][239] ([i915#7790]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-snb6/igt@i915_pm_rps@reset.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-mtlp:         [FAIL][241] ([fdo#103375]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@i915_suspend@basic-s2idle-without-i915.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-5/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][243] ([fdo#103375]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][245] ([i915#5138]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][247] ([i915#3743]) -> [PASS][248] +1 other test pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg1:          [DMESG-WARN][249] ([i915#4423]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html

  * {igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][251] ([i915#4098]) -> [PASS][252] +6 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][253] -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [SKIP][255] ([i915#1845] / [i915#4098]) -> [PASS][256] +11 other tests pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [FAIL][257] ([i915#6880]) -> [PASS][258] +1 other test pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][259] ([i915#1849] / [i915#4098]) -> [PASS][260] +6 other tests pass
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * {igt@kms_pm_rpm@dpms-non-lpsp}:
    - shard-rkl:          [SKIP][261] ([i915#9519]) -> [PASS][262] +1 other test pass
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html

  * {igt@kms_pm_rpm@modeset-lpsp}:
    - shard-dg1:          [SKIP][263] ([i915#9519]) -> [PASS][264] +1 other test pass
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp.html

  * {igt@kms_pm_rpm@system-suspend-modeset}:
    - shard-rkl:          [SKIP][265] ([fdo#109308]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
    - shard-rkl:          [FAIL][267] ([i915#9196]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html

  * {igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4}:
    - shard-dg1:          [FAIL][269] ([i915#9196]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-rkl:          [SKIP][271] ([fdo#109289]) -> [PASS][272]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][273] ([i915#4349]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][275] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [WARN][277] ([i915#2658]) -> [SKIP][278] ([i915#3282])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_pread@exhaustion.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@gem_pread@exhaustion.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][279] ([i915#8247]) -> [DMESG-FAIL][280] ([i915#8561]) +3 other tests dmesg-fail
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][281] ([i915#1769] / [i915#3555]) -> [SKIP][282] ([i915#1845] / [i915#4098])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][283] ([i915#5286]) -> [SKIP][284] ([i915#1845] / [i915#4098]) +5 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][285] ([i915#1845] / [i915#4098]) -> [SKIP][286] ([i915#5286]) +3 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][287] ([fdo#111614] / [i915#3638]) -> [SKIP][288] ([i915#1845] / [i915#4098]) +5 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][289] ([i915#1845] / [i915#4098]) -> [SKIP][290] ([fdo#111614] / [i915#3638]) +3 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][291] ([fdo#110723]) -> [SKIP][292] ([i915#1845] / [i915#4098]) +2 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-rkl:          [SKIP][293] ([i915#1845] / [i915#4098]) -> [SKIP][294] ([fdo#110723]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][295] ([fdo#111615]) -> [SKIP][296] ([i915#1845] / [i915#4098])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][297] ([i915#3555]) -> [SKIP][298] ([i915#9608])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_color@deep-color.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][299] ([i915#1845] / [i915#4098]) -> [SKIP][300] ([i915#3116])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          [SKIP][301] ([i915#7118]) -> [SKIP][302] ([i915#1845] / [i915#4098])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_content_protection@lic.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][303] ([i915#7118]) -> [SKIP][304] ([i915#7118] / [i915#7162])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-1/igt@kms_content_protection@type1.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][305] ([fdo#109279] / [i915#3359]) -> [SKIP][306] ([i915#1845] / [i915#4098])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][307] ([i915#1845] / [i915#4098]) -> [SKIP][308] ([fdo#109279] / [i915#3359])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][309] ([i915#1845] / [i915#4098]) -> [SKIP][310] ([i915#3555]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][311] ([i915#3555]) -> [SKIP][312] ([i915#1845] / [i915#4098]) +4 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][313] ([i915#1845] / [i915#4098]) -> [SKIP][314] ([i915#3359])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][315] ([i915#3359]) -> [SKIP][316] ([i915#1845] / [i915#4098])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][317] ([fdo#111767] / [fdo#111825]) -> [SKIP][318] ([i915#1845] / [i915#4098]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][319] ([i915#1845] / [i915#4098]) -> [SKIP][320] ([fdo#111825]) +1 other test skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-rkl:          [SKIP][321] ([fdo#111825]) -> [SKIP][322] ([i915#1845] / [i915#4098]) +3 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][323] ([i915#1845] / [i915#4098]) -> [SKIP][324] ([i915#4103])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][325] ([i915#4098]) -> [SKIP][326] ([i915#8588])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][327] ([i915#3555] / [i915#3840]) -> [SKIP][328] ([i915#1845] / [i915#4098])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][329] ([fdo#110189] / [i915#3955]) -> [SKIP][330] ([i915#3955])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][331] ([fdo#109285] / [i915#4098]) -> [SKIP][332] ([fdo#109285])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][333] ([fdo#111825] / [i915#1825]) -> [SKIP][334] ([i915#1849] / [i915#4098]) +31 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][335] ([i915#3023]) -> [SKIP][336] ([i915#1849] / [i915#4098]) +24 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          [SKIP][337] ([i915#1849] / [i915#4098]) -> [SKIP][338] ([fdo#111825] / [i915#1825]) +21 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][339] ([fdo#111825]) -> [SKIP][340] ([i915#1849] / [i915#4098]) +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][341] ([i915#1849] / [i915#4098]) -> [SKIP][342] ([i915#3023]) +10 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][343] ([i915#3555] / [i915#8228]) -> [SKIP][344] ([i915#1845] / [i915#4098])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][345] ([i915#4070] / [i915#4816]) -> [SKIP][346] ([i915#1839] / [i915#4070] / [i915#4816])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][347] ([fdo#111825]) -> [SKIP][348] ([fdo#111825] / [i915#8152])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][349] ([i915#5289]) -> [SKIP][350] ([i915#1845] / [i915#4098])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][351] ([i915#1845] / [i915#4098]) -> [SKIP][352] ([fdo#111615] / [i915#5289])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/intel/issues/8825
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
  [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9582]: https://gitlab.freedesktop.org/drm/intel/issues/9582
  [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
  [i915#9588]: https://gitlab.freedesktop.org/drm/intel/issues/9588
  [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591
  [i915#9608]: https://gitlab.freedesktop.org/drm/intel/issues/9608
  [i915#9638]: https://gitlab.freedesktop.org/drm/intel/issues/9638


Build changes
-------------

  * Linux: CI_DRM_13856 -> Patchwork_125855v4

  CI-20190529: 20190529
  CI_DRM_13856: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7580: 847ee1e7d365e2fb08bf4198d3bf5ee8a852649f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125855v4: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/index.html

--===============1878644506778454679==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: C20 state verification (rev4)<=
/td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125855/">https://patchwork.freedesktop.org/series/125855/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125855v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125855v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13856_full -&gt; Patchwork_125855v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125855v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125855v4_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v=
4/index.html</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>Additional (1): shard-tglu0 <br />
  Missing    (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125855v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-idle@rcs0:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5855v4/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">INCOMPLETE<=
/a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125855v4_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13856/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13856/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13856/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13856/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13856/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13856/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk1/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3856/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13856/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13856/shard-glk3/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-g=
lk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125855v4/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v=
4/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125855v4/shard-glk6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125855v4/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125855v4/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125855v4/shard-glk4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125855v4/shard-glk3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125855v4/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125855v4/shard-glk2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125855v4/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-glk1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125855v4/shard-glk1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@drm_fdinfo@virtual-busy-i=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@fbdev@nullptr.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2=
582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@fbdev@pan.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@fb=
dev@pan.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@render:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-pro=
cess@render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125855v4/shard-mtlp-2/igt@gem_ctx_persistence@legacy-en=
gines-mixed-process@render.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9414">i915#9414</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_ctx_persistence@process=
es.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-15/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-dg1-15/ig=
t@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_eio@reset-stress.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8898">=
i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_exec_endless@dispatch@=
bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9591">i915#9591</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13856/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
55v4/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)=
</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_exec_fair@basic-none-sol=
o@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v=
4/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25855v4/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_exec_reloc@basic-wc-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@gem_lmem_swapping@parallel-=
multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-d=
isplay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125855v4/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-aft=
er-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_pread@self.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915=
#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_pxp@create-regular-con=
text-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/768">i915#768</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-snb1/igt@gem_render_copy@y-tiled-to-=
vebox-x-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125855v4/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#84=
11</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-glk8/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gen7_exec_parse@batch-wit=
hout-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@gen9_exec_parse@batch-wit=
hout-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4=
/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-3/igt@i915_hangman@detector@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-mtlp-7/igt@i915_hangman@detector@vcs0.html">ABORT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25855v4/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@i915_query@query-topology=
-unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_addfb_basic@clobberre=
d-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-18/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125855v4/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@linear-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
855v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-7/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_big_joiner@invalid-mo=
deset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_chamelium_color@degam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_chamelium_frames@hdmi=
-cmp-planar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_color@ctm-0-75@pipe-b.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/sh=
ard-rkl-5/igt@kms_color@ctm-0-75@pipe-b.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-6/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_cursor_legacy@2x-long=
-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +36 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125855v4/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">f=
do#110189</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip@flip-vs-expired-v=
blank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) +2 other tests fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracki=
ng@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +11 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8708">i915#8708</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +15 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +43 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_invalid_mode@bad-htota=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_pipe_b_c_ivb@pipe-b-dp=
ms-off-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125855v4/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9392">i915#9392</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane@plane-panning-to=
p-left.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane@plane-position-h=
ole.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-2/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-tglu-9/igt@kms_plane_scaling@intel-max-src-size@pipe-a-=
hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125855v4/shard-tglu-4/igt@kms_plane_scaling@intel-max-src-=
size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-17/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-19/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125855v4/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-apl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_psr2_sf@primary-plane=
-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_psr@cursor_mmap_cpu.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
0189">fdo#110189</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_psr@cursor_plane_onof=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_psr@psr2_primary_mmap_=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-glk2/igt@kms_psr@psr2_sprite_blt.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +107 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125855v4/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x=
-0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8875">i915#8875</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9569">i915#9569</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125855v4/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-d-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125855v4/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-hand=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-=
rkl-7/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted-signaled.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@syncobj_timeline@invalid-=
multi-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@syncobj_timeline@invalid-=
single-wait-available-unsubmitted.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/9582">i915#9582</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-bo.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@v3d/v3d_submit_cl@bad-mul=
tisync-pad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@v3d/v3d_submit_csd@bad-fla=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg2-11/igt@vc4/vc4_purgeable_bo@acce=
ss-purged-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-tglu-6/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@vc4/vc4_wait_bo@used-bo-1n=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i9=
15#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125855v4/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
855v4/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html">PASS</a> +7 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125855v4/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855=
v4/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-=
rkl-5/igt@gem_pread@snoop.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125855v4/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a> +3 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9588">i=
915#9588</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125855v4/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-3/igt@i915_pm_rpm@system-suspend-devices.html">FAI=
L</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25855v4/shard-mtlp-5/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-snb6/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4=
/shard-snb1/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-3/igt@i915_suspend@basic-s2idle-without-i915.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375=
">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125855v4/shard-mtlp-5/igt@i915_suspend@basic-s2idle-without-i915=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo=
#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125855v4/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125855v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125855v4/shard-tglu-9/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125855v4/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-gen1=
2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_ccs@pipe-a-crc-prima=
ry-basic-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-glk6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.=
html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125855v4/shard-glk8/igt@kms_cursor_crc@cursor-suspend@pipe-a-=
hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_cursor_legacy@ba=
sic-flip-after-cursor-varying-size.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mul=
tidraw.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125855v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-=
1p-pri-indfb-multidraw.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_frontbuffer_tra=
cking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855=
v4/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855=
v4/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@system-suspend-modeset}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#=
109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125855v4/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_universal_plane@cursor-fb-=
leak@pipe-b-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125855v4/shard-dg1-15/igt@kms_universal_plane@cursor-f=
b-leak@pipe-d-hdmi-a-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125855v4/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-s=
ample-oa.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125855v4/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125855v4/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-rkl-7/igt@gem_pread@exhaustion.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>) +3 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@=
kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#=
5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_big_fb@4-tiled-ma=
x-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125855v4/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125855v4/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614=
">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fd=
o#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125855v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i=
915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125855v4/shard-rkl-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1107=
23">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
855v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/=
shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/9608">i915#9608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125855v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_content_protection@lic.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
55v4/shard-rkl-5/igt@kms_content_protection@lic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-dg2-1/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5855v4/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109279=
">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3359">i915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-5=
12x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125855v4/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x1=
70.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125855v4/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-max-=
size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-3=
2x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-mo=
vement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359">i=
915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125855v4/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs=
-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tra=
nsitions-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-1/igt@kms_curs=
or_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#11182=
5</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125855v4/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7=
/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-var=
ying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125855v4/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-=
negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915=
#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125855v4/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125855v4/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer=
_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +31 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3023">=
i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +=
21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_frontbuffer_tra=
cking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +10 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i91=
5#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125855v4/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125855v4/shard-rkl-5/igt@kms_multipipe_modeset@basic-=
max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1839">i915#1839</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825"=
>fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125855v4/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125855v4/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-ref=
lect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13856/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125855v4/shard-rkl-7/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13856 -&gt; Patchwork_125855v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13856: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7580: 847ee1e7d365e2fb08bf4198d3bf5ee8a852649f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125855v4: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ git://anon=
git.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1878644506778454679==--
