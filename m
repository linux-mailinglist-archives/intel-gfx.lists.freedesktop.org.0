Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E557D753EDC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 17:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AE710E8B2;
	Fri, 14 Jul 2023 15:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66FEB10E8B1;
 Fri, 14 Jul 2023 15:30:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5965CAADE0;
 Fri, 14 Jul 2023 15:30:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4224050899137771467=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 14 Jul 2023 15:30:29 -0000
Message-ID: <168934862931.13874.14468497345955007954@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230714123456.19153-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230714123456.19153-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Start_using_plane_scale_factor_for_relative_data_rate?=
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

--===============4224050899137771467==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Start using plane scale factor for relative data rate
URL   : https://patchwork.freedesktop.org/series/120767/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13385_full -> Patchwork_120767v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120767v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120767v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120767v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@extended-modeset-hang-newfb@pipe-a:
    - shard-snb:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.html

  * igt@kms_busy@extended-modeset-hang-newfb@pipe-b:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_120767v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4338]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#8411])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][54] -> [FAIL][55] ([i915#7742])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8414]) +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@feature_discovery@display-4x:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#1839])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@feature_discovery@display-4x.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4873])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_caching@writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#3555] / [i915#5325])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#5325])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][61] -> [FAIL][62] ([i915#6268])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-snb:          NOTRUN -> [DMESG-WARN][63] ([i915#8841]) +14 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([fdo#109314])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#8555])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#1099]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#280])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg2:          [PASS][68] -> [FAIL][69] ([fdo#103375])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-7/igt@gem_eio@in-flight-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#4525])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2846])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][73] -> [FAIL][74] ([i915#2842])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][75] ([i915#2842]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][76] -> [FAIL][77] ([i915#2842])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4473])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-3/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][79] ([i915#2842])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4812]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#7697]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#3281]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3281]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4860]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#4613]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4613]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#4613]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@gem_lmem_swapping@random.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#3282])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8289])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#284])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4083]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_mmap@short-mmap.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][93] ([i915#2658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#4270])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4270]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3282])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#8428]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4079])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#4077]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#3297]) +5 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_userptr_blits@access-control.html

  * igt@gen3_render_linear_blits:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([fdo#109289]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][102] -> [ABORT][103] ([i915#5566])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#2856]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#2527] / [i915#2856])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         NOTRUN -> [ABORT][106] ([i915#8489] / [i915#8668])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-apl:          NOTRUN -> [FAIL][107] ([i915#7036])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3361])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][109] -> [SKIP][110] ([i915#4281])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#1937])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
    - shard-rkl:          [PASS][112] -> [SKIP][113] ([i915#1937])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#8430])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([fdo#109289]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-tglu:         [PASS][116] -> [FAIL][117] ([i915#7940]) +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-2/igt@i915_pm_rpm@cursor-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([fdo#109293])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][119] -> [SKIP][120] ([i915#1397]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#1397])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][122] -> [SKIP][123] ([i915#1397])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#6621])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#6188])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#6645])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][127] ([i915#8247]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-b-dp-2:
    - shard-dg2:          NOTRUN -> [FAIL][128] ([i915#8247]) +3 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-12/igt@kms_async_flips@crc@pipe-b-dp-2.html

  * igt@kms_async_flips@crc@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][129] ([i915#8247]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_async_flips@crc@pipe-c-dp-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([fdo#111615] / [i915#5286]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][131] -> [FAIL][132] ([i915#5138])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#5286])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([fdo#111614]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [FAIL][135] ([i915#3743])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([fdo#111615]) +4 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([fdo#111615]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([fdo#110723]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#2705])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#3886] / [i915#6095]) +6 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#5354] / [i915#6095]) +4 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_mtl_rc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#5354] / [i915#6095]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3689] / [i915#5354] / [i915#6095]) +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#3886]) +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3886]) +7 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#6095]) +15 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#5354]) +6 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#4087]) +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4087]) +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([fdo#111827]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([fdo#111827])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#7828]) +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#7828]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#7828]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#7118]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3299])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#3555])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-glk:          NOTRUN -> [SKIP][160] ([fdo#109271]) +163 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_cursor_crc@cursor-random-max-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#8814]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3546])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          NOTRUN -> [SKIP][163] ([fdo#109271] / [fdo#111767]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#8827])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3555] / [i915#3840])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3840]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#111825]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([fdo#111767] / [i915#3637])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#3637]) +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][170] -> [ABORT][171] ([i915#180])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#8810])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#2587] / [i915#2672])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#2672])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#1825]) +22 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3023]) +4 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([fdo#111825] / [i915#1825]) +8 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([fdo#110189]) +3 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][179] ([fdo#109271]) +434 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#8708]) +7 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([fdo#109280]) +5 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8228])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4816])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([fdo#109289])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3582]) +3 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#6953])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5176]) +7 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#5176]) +7 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#5176]) +3 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5235]) +3 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#5235]) +3 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#658])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
    - shard-apl:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#658])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#658]) +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072]) +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#4235])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#5289])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][198] ([i915#5465]) +1 similar issue
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#8809])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-c-query-forked-busy:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#4070] / [i915#6768])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_vblank@pipe-c-query-forked-busy.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#4070] / [i915#533] / [i915#6768]) +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][202] ([fdo#109271] / [i915#533])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#8807])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@most-busy-idle-check-all@bcs0:
    - shard-dg2:          [PASS][204] -> [FAIL][205] ([i915#5234])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all@bcs0.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all@bcs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#3708])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#3708] / [i915#4077])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@prime_vgem@coherency-gtt.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([fdo#109307])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_get_param@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#2575]) +4 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@v3d/v3d_get_param@get-bad-flags.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([fdo#109315] / [i915#2575])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@v3d/v3d_submit_cl@bad-multisync-extension:
    - shard-apl:          NOTRUN -> [SKIP][211] ([fdo#109271]) +104 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@v3d/v3d_submit_cl@bad-multisync-extension.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([fdo#109315]) +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#7711]) +3 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#7711])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_purgeable_bo@mark-willneed:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#2575]) +1 similar issue
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@vc4/vc4_purgeable_bo@mark-willneed.html

  
#### Possible fixes ####

  * igt@gem_create@hog-create@smem0:
    - shard-dg2:          [FAIL][216] ([i915#5892] / [i915#8758]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-5/igt@gem_create@hog-create@smem0.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-6/igt@gem_create@hog-create@smem0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][218] ([i915#2842]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][220] ([i915#7975] / [i915#8213]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [TIMEOUT][222] ([i915#7392]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][224] ([i915#5493]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - {shard-dg1}:        [TIMEOUT][226] ([i915#5493]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][228] ([i915#1397]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-3/igt@i915_pm_rpm@dpms-lpsp.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - {shard-dg1}:        [FAIL][230] ([i915#7940]) -> [PASS][231] +1 similar issue
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][232] ([i915#1397]) -> [PASS][233] +1 similar issue
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-3/igt@i915_pm_rpm@modeset-lpsp.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - {shard-dg1}:        [SKIP][234] ([i915#1397]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglu:         [FAIL][236] ([i915#7940]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-tglu-2/igt@i915_pm_rpm@system-suspend-devices.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-tglu-6/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][238] ([i915#2521]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-WARN][240] ([i915#1982]) -> [PASS][241] +1 similar issue
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-edp-1.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         [FAIL][242] ([i915#3743]) -> [PASS][243] +1 similar issue
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-mtlp:         [FAIL][244] ([i915#2346]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][246] ([i915#79]) -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [ABORT][248] ([i915#180]) -> [PASS][249]
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-dp1:
    - shard-apl:          [FAIL][250] ([i915#2122]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-apl4/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-apl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][252] ([i915#2122]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [FAIL][254] ([i915#6880]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-dg2:          [FAIL][256] ([fdo#103375]) -> [PASS][257] +7 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-dg2-10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-mtlp:         [FAIL][258] ([fdo#103375]) -> [PASS][259] +3 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rps@reset:
    - shard-snb:          [DMESG-FAIL][260] ([i915#8319]) -> [INCOMPLETE][261] ([i915#7790])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/igt@i915_pm_rps@reset.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][262] ([i915#2346]) -> [DMESG-FAIL][263] ([i915#2017] / [i915#5954])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][264] ([fdo#110189] / [i915#3955]) -> [SKIP][265] ([i915#3955])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][266] ([fdo#109285] / [i915#4098]) -> [SKIP][267] ([fdo#109285])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][268] ([i915#4070] / [i915#4816]) -> [SKIP][269] ([i915#4816])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8319]: https://gitlab.freedesktop.org/drm/intel/issues/8319
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
  [i915#8807]: https://gitlab.freedesktop.org/drm/intel/issues/8807
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8827]: https://gitlab.freedesktop.org/drm/intel/issues/8827
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841


Build changes
-------------

  * Linux: CI_DRM_13385 -> Patchwork_120767v1

  CI-20190529: 20190529
  CI_DRM_13385: f8be3c363790b79801f7be6bd40062219e3789bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7386: 54dc25efaf10d87962f95be9b1d1a8f0f907912b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120767v1: f8be3c363790b79801f7be6bd40062219e3789bc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/index.html

--===============4224050899137771467==
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
<tr><td><b>Series:</b></td><td>drm/i915: Start using plane scale factor for=
 relative data rate</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/120767/">https://patchwork.freedesktop.org/series/120767/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_120767v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13385_full -&gt; Patchwork_120767v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120767v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_120767v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
120767v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb@pipe-a:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_120767v1/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.h=
tml">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb@pipe-b:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_120767v1/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.h=
tml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120767v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13385/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13385/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13385/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13385/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385=
/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13385/shard-snb4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-sn=
b2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb2/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3385/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13385/shard-snb1/boot.html">PASS=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4338">i91=
5#4338</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_120767v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shar=
d-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_120767v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1207=
67v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_120767v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard=
-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_120767v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12076=
7v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-snb4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb4/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_120767v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-=
snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_120767v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767=
v1/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_120767v1/shard-snb1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-snb1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_120767v1/shard-snb1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
20767v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742=
</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@drm_fdinfo@most-busy-chec=
k-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@feature_discovery@display=
-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_caching@writes.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4873">=
i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12076=
7v1/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@gem_ctx_isolation@preservat=
ion-s3@rcs0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8841">i915#8841</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb4/igt@gem_ctx_persistence@legacy-=
engines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-7/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/sh=
ard-dg2-5/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/=
shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120=
767v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_fair@basic-none@r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
120767v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-3/igt@gem_exec_fair@basic-pace-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-glk6/igt@gem_exec_fair@basic-pace@rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_exec_fence@concurrent=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4812">i915#4812</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_exec_gttfill@multigpu=
-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_exec_reloc@basic-concu=
rrent16.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4860">i915#4860</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-mu=
lti.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_madvise@dontneed-befo=
re-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_mmap@short-mmap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083"=
>i915#4083</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8428">i915#8428</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gem_set_tiling_vs_pwrite.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@gem_tiled_swapping@non-th=
readed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@gen3_render_linear_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-apl6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/s=
hard-apl3/igt@gen9_exec_parse@allowed-all.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8489">i915#8489</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@i915_pipe_stress@stress-xrg=
b8888-ytiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_dc@dc6-psr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">=
i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-t=
glu-6/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-hdmi-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1937">i915#1937</a>)</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13385/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
120767v1/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1=
937</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_lpsp@screens-disa=
bled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_rc6_residency@med=
ia-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-2/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/sha=
rd-tglu-6/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13385/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1=
/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 simi=
lar issue</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_120767v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@i915_suspend@basic-s3-wit=
hout-i915.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-12/igt@kms_async_flips@crc@pipe-=
b-dp-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_async_flips@crc@pipe-c-=
dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8247">i915#8247</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
120767v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_fb@linear-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_big_joiner@invalid-mo=
deset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_ccs@pipe-a-bad-aux-st=
ride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-f=
ormat-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-b-crc-primar=
y-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-b-crc-primar=
y-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_ccs@pipe-c-bad-pixel-=
format-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-glk6/igt@kms_ccs@pipe-c-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +7 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_ccs@pipe-d-ccs-on-ano=
ther-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4087">i915#4087</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4087">i915#4087</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-g=
reen-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_chamelium_color@ctm-re=
d-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_chamelium_edid@dp-edi=
d-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7828">i915#7828</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onsc=
reen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_cursor_crc@cursor-random=
-max-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +163 similar issues</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8814">i915#8814</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-long=
-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb2/igt@kms_cursor_legacy@cursorb-v=
s-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8827">i915#8827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3840">i915#3840</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v=
1/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#881=
0</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +22 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +8 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb5/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +434 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +7 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-3/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@kms_pipe_b_c_ivb@disable-=
pipe-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_plane_lowres@tiling-4=
@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3582">i915#3582</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-2/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_plane_scaling@plane-do=
wnscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-11/igt@kms_plane_scaling@plane-d=
ownscale-with-modifiers-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_plane_scaling@plane-d=
ownscale-with-modifiers-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-2/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_psr@psr2_sprite_mmap_c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1072">i915#1072</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-forked-busy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_vblank@pipe-c-query-fo=
rked-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@kms_vblank@pipe-d-ts-conti=
nuation-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/6768">i915#6768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8807">i915#8807</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all@bcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_120767v1/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all@bcs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5234">i=
915#5234</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109307">fdo#109307</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-4/igt@v3d/v3d_get_param@get-bad=
-flags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@v3d/v3d_submit_cl@bad-bo.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-extension:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-apl2/igt@v3d/v3d_submit_cl@bad-multi=
sync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +104 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-mul=
tisync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109315">fdo#109315</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-mtlp-7/igt@vc4/vc4_purgeable_bo@acce=
ss-purged-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-rkl-6/igt@vc4/vc4_purgeable_bo@mark-=
unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-willneed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_120767v1/shard-tglu-4/igt@vc4/vc4_purgeable_bo@mark=
-willneed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-5/igt@gem_create@hog-create@smem0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5892">i915#5892</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8758">i915#=
8758</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_120767v1/shard-dg2-6/igt@gem_create@hog-create@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_120767v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/797=
5">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_120767v1/shard-tglu-4/igt@gem_exec_suspend@basic-s4-device=
s@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7392">i915#7392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_120767v1/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts=
-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13385/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i91=
5#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_120767v1/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a></p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13385/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i91=
5#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_120767v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-3/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/=
shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7940">i=
915#7940</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_120767v1/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-3/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767=
v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
20767v1/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-tglu-2/igt@i915_pm_rpm@system-suspend-devices.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7940">i91=
5#7940</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_120767v1/shard-tglu-6/igt@i915_pm_rpm@system-suspend-devices.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pi=
pe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_120767v1/shard-mtlp-1/igt@kms_async_flips@alternat=
e-sync-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-edp-=
1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-2/igt@kms_atomic_transition@plane-use-after-nonblo=
cking-unbind@pipe-a-edp-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-5/igt@kms=
_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-edp-1.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-m=
ax-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tran=
sitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_120767v1/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
0767v1/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-apl4/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_120767v1/shard-apl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-h=
dmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_120767v1/shard-glk1/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6880">i=
915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_120767v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspe=
nd.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_120767v1/shard-dg2-10/igt@kms_vblank@pipe-c-ts-continua=
tion-dpms-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-6/igt@kms_vblank@pipe-c-ts-continuation-suspend.ht=
ml">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103=
375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_120767v1/shard-mtlp-5/igt@kms_vblank@pipe-c-ts-continuation-s=
uspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-snb7/igt@i915_pm_rps@reset.html">DMESG-FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8319">i915#8319</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120767v1=
/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tran=
sitions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_120767v1/shard-mtlp-2/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5=
954</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_120767v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13385/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_120767v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-=
max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13385 -&gt; Patchwork_120767v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13385: f8be3c363790b79801f7be6bd40062219e3789bc @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7386: 54dc25efaf10d87962f95be9b1d1a8f0f907912b @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120767v1: f8be3c363790b79801f7be6bd40062219e3789bc @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4224050899137771467==--
