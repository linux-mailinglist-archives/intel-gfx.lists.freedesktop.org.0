Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5FB822DF2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 14:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D451510E2B3;
	Wed,  3 Jan 2024 13:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615BA10E059;
 Wed,  3 Jan 2024 13:04:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7854982842273293168=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Add_workaround_?=
 =?utf-8?q?14019877138?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Wed, 03 Jan 2024 13:04:31 -0000
Message-ID: <170428707138.12.14350273163649171374@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240103053111.763172-1-tejas.upadhyay@intel.com>
In-Reply-To: <20240103053111.763172-1-tejas.upadhyay@intel.com>
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

--===============7854982842273293168==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add workaround 14019877138
URL   : https://patchwork.freedesktop.org/series/128143/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14072_full -> Patchwork_128143v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128143v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128143v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/index.html

Participating hosts (8 -> 9)
------------------------------

  Additional (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128143v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][1] -> ([INCOMPLETE][2], [PASS][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-10/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-6/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b:
    - shard-mtlp:         [PASS][4] -> ([ABORT][5], [PASS][6])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe-b.html

  * igt@prime_busy@hang-wait@vecs0:
    - shard-glk:          [PASS][7] -> ([PASS][8], [INCOMPLETE][9])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/igt@prime_busy@hang-wait@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/igt@prime_busy@hang-wait@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/igt@prime_busy@hang-wait@vecs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14072_full and Patchwork_128143v1_full:

### New IGT tests (5) ###

  * igt@kms_flip@flip-vs-expired-vblank@a-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.92] s

  * igt@kms_flip@flip-vs-expired-vblank@b-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.76] s

  * igt@kms_flip@flip-vs-panning-interruptible@a-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.84] s

  * igt@kms_flip@flip-vs-panning-interruptible@b-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.79] s

  * igt@kms_psr:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_128143v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [FAIL][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#8293])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#8411]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> ([SKIP][78], [SKIP][79]) ([i915#7701])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@device_reset@unbind-cold-reset-rebind.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> ([SKIP][80], [SKIP][81]) ([i915#8414]) +10 other tests ( 2 skip )
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@drm_fdinfo@busy@ccs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8414]) +19 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#8414])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@pan:
    - shard-snb:          [PASS][84] -> ([PASS][85], [FAIL][86]) ([i915#4435])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb4/igt@fbdev@pan.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb1/igt@fbdev@pan.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@fbdev@pan.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> ([SKIP][87], [SKIP][88]) ([i915#3281]) +3 other tests ( 2 skip )
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#9323])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][90] -> ([INCOMPLETE][91], [PASS][92]) ([i915#7297])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][93] -> [INCOMPLETE][94] ([i915#7297])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> ([SKIP][95], [SKIP][96]) ([i915#7697])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7697])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> ([SKIP][98], [SKIP][99]) ([i915#6335])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_create@create-ext-cpu-access-big.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         NOTRUN -> [FAIL][100] ([i915#8758])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([fdo#109314])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> ([SKIP][102], [SKIP][103]) ([i915#8555])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-hang.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#8555])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> ([SKIP][106], [SKIP][107]) ([fdo#109271] / [i915#1099])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_ctx_persistence@legacy-engines-hostile.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#280])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#280])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> ([SKIP][110], [SKIP][111]) ([i915#280])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> ([PASS][112], [ABORT][113]) ([i915#7975] / [i915#8213])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_eio@hibernate.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][114] ([i915#5784])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4771])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4812]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> ([SKIP][117], [SKIP][118]) ([i915#4525])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([i915#6334]) +1 other test ( 2 skip )
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> ([SKIP][121], [SKIP][122]) ([fdo#109271] / [i915#6334])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@gem_exec_capture@capture-invisible@smem0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6334])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3539] / [i915#4852])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none:
    - shard-snb:          NOTRUN -> ([SKIP][125], [SKIP][126]) ([fdo#109271]) +70 other tests ( 2 skip )
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_exec_fair@basic-none.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> ([SKIP][127], [SKIP][128]) ([i915#3539] / [i915#4852]) +3 other tests ( 2 skip )
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [PASS][129] -> ([PASS][130], [FAIL][131]) ([i915#2842])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][132] -> ([FAIL][133], [PASS][134]) ([i915#2842])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-mtlp:         NOTRUN -> ([SKIP][135], [SKIP][136]) ([i915#4473] / [i915#4771])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_exec_fair@basic-sync.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          NOTRUN -> ([FAIL][137], [FAIL][138]) ([i915#2842])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> ([SKIP][139], [SKIP][140]) ([i915#4812])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_exec_fence@submit.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg1:          NOTRUN -> ([SKIP][141], [SKIP][142]) ([i915#3539] / [i915#4852])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> ([SKIP][143], [SKIP][144]) ([i915#3539])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> ([SKIP][145], [SKIP][146]) ([i915#3281]) +4 other tests ( 2 skip )
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3281])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> ([SKIP][148], [SKIP][149]) ([i915#3281]) +3 other tests ( 2 skip )
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3281]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#3281])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> ([SKIP][152], [SKIP][153]) ([i915#3281]) +1 other test ( 2 skip )
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_reloc@basic-write-cpu-active.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3281]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4537] / [i915#4812])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][156] -> ([ABORT][157], [ABORT][158]) ([i915#7975] / [i915#8213])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][159] -> ([ABORT][160], [PASS][161]) ([i915#7975] / [i915#8213])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-tglu:         [PASS][162] -> ([PASS][163], [INCOMPLETE][164]) ([i915#6755] / [i915#7392] / [i915#9857])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-8/igt@gem_exec_whisper@basic-fds-forked-all.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> ([SKIP][165], [SKIP][166]) ([i915#4860])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#4860])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> ([SKIP][168], [SKIP][169]) ([fdo#109271] / [i915#2190])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_huc_copy@huc-copy.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> ([SKIP][170], [SKIP][171]) ([i915#4613]) +1 other test ( 2 skip )
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-multi.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#4613])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> ([SKIP][173], [SKIP][174]) ([fdo#109271] / [i915#4613]) +1 other test ( 2 skip )
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_lmem_swapping@random.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_lmem_swapping@random.html
    - shard-mtlp:         NOTRUN -> ([SKIP][175], [SKIP][176]) ([i915#4613])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_lmem_swapping@random.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap_gtt@basic:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4077]) +8 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_mmap_gtt@basic.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#4077]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> ([SKIP][179], [SKIP][180]) ([i915#4077]) +11 other tests ( 2 skip )
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#4077]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> ([SKIP][182], [SKIP][183]) ([i915#4077]) +3 other tests ( 2 skip )
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-19/igt@gem_mmap_gtt@zero-extend.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-mtlp:         NOTRUN -> ([SKIP][184], [SKIP][185]) ([i915#4083])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_mmap_wc@write-prefaulted.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#4083]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][187], [SKIP][188]) ([i915#4083]) +2 other tests ( 2 skip )
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#4083]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> ([SKIP][190], [SKIP][191]) ([i915#3282]) +3 other tests ( 2 skip )
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_partial_pwrite_pread@reads-uncached.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#3282])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#4270])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4270]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> ([SKIP][195], [SKIP][196]) ([i915#4270]) +1 other test ( 2 skip )
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> ([SKIP][197], [SKIP][198]) ([i915#4270])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@new-obj:
    - shard-dg1:          NOTRUN -> ([SKIP][199], [SKIP][200]) ([i915#3282])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@gem_readwrite@new-obj.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-19/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-glk:          NOTRUN -> [SKIP][201] ([fdo#109271]) +56 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
    - shard-mtlp:         NOTRUN -> ([SKIP][202], [SKIP][203]) ([i915#8428]) +1 other test ( 2 skip )
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][204], [SKIP][205]) ([i915#4079])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([fdo#109312])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> ([SKIP][207], [SKIP][208]) ([i915#3282]) +1 other test ( 2 skip )
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> ([SKIP][209], [SKIP][210]) ([i915#3297])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_userptr_blits@coherency-unsync.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#3282])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> ([SKIP][212], [SKIP][213]) ([i915#3297] / [i915#4880])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3297] / [i915#4880])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#3297]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2:          NOTRUN -> ([SKIP][216], [SKIP][217]) ([i915#3297])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#3297])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-mtlp:         NOTRUN -> ([SKIP][219], [SKIP][220]) ([fdo#109289])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gen7_exec_parse@basic-allocation.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-dg2:          NOTRUN -> ([SKIP][221], [SKIP][222]) ([fdo#109289]) +5 other tests ( 2 skip )
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gen7_exec_parse@batch-without-end.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> ([SKIP][223], [SKIP][224]) ([fdo#109289])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gen7_exec_parse@chained-batch.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gen7_exec_parse@chained-batch.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([fdo#109289])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][226], [PASS][227]) ([i915#5566])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> ([SKIP][228], [SKIP][229]) ([i915#2527])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#2527])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#2856]) +2 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> ([SKIP][232], [SKIP][233]) ([i915#2856]) +2 other tests ( 2 skip )
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#2527])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-mtlp:         NOTRUN -> ([SKIP][235], [SKIP][236]) ([i915#2856]) +1 other test ( 2 skip )
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gen9_exec_parse@valid-registers.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> ([SKIP][237], [SKIP][238]) ([i915#6227])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][239] -> ([PASS][240], [INCOMPLETE][241]) ([i915#9849])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][242] -> ([INCOMPLETE][243], [INCOMPLETE][244]) ([i915#9200])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-dg1:          NOTRUN -> ([SKIP][245], [SKIP][246]) ([fdo#109289])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][247] -> [FAIL][248] ([i915#3591])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> ([SKIP][249], [SKIP][250]) ([fdo#109293] / [fdo#109506])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> ([SKIP][251], [SKIP][252]) ([i915#6621])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@i915_pm_rps@basic-api.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> ([SKIP][253], [SKIP][254]) ([i915#6621])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#6621])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> ([SKIP][256], [SKIP][257]) ([i915#6188])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> ([SKIP][258], [SKIP][259]) ([fdo#109303])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_query@query-topology-known-pci-ids.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> ([DMESG-WARN][260], [DMESG-WARN][261]) ([i915#9311])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_selftest@mock@memory_region.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> ([DMESG-WARN][262], [DMESG-WARN][263]) ([i915#9311])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@i915_selftest@mock@memory_region.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][264] -> ([PASS][265], [FAIL][266]) ([fdo#103375])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#4212])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> ([PASS][268], [FAIL][269]) ([i915#2521])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#8709]) +11 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([FAIL][271], [FAIL][272]) ([i915#8247]) +3 other tests ( 2 fail )
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][273] ([i915#8247]) +3 other tests fail
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#3555])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> ([SKIP][275], [SKIP][276]) ([i915#9531])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> ([SKIP][277], [SKIP][278]) ([fdo#109271] / [i915#1769])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#1769] / [i915#3555])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> ([SKIP][280], [SKIP][281]) ([i915#5286]) +1 other test ( 2 skip )
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> ([SKIP][282], [SKIP][283]) ([fdo#111614]) +1 other test ( 2 skip )
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#4538] / [i915#5286])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#5286]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> ([SKIP][286], [SKIP][287]) ([fdo#111614]) +1 other test ( 2 skip )
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([fdo#111614]) +2 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][289] -> ([PASS][290], [FAIL][291]) ([i915#3743]) +2 other tests ( 1 fail, 1 pass )
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][292], [SKIP][293]) ([i915#5190]) +10 other tests ( 2 skip )
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#5190]) +8 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> ([SKIP][295], [SKIP][296]) ([fdo#111614] / [i915#3638]) +1 other test ( 2 skip )
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#6187]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#4538] / [i915#5190]) +2 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([fdo#110723])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][300] ([i915#4538])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> ([SKIP][301], [SKIP][302]) ([fdo#111615])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> ([SKIP][303], [SKIP][304]) ([fdo#111615]) +2 other tests ( 2 skip )
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][305], [SKIP][306]) ([i915#4538] / [i915#5190]) +3 other tests ( 2 skip )
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([fdo#111615])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> ([SKIP][308], [SKIP][309]) ([fdo#110723])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> ([SKIP][310], [SKIP][311]) ([i915#5354] / [i915#6095]) +7 other tests ( 2 skip )
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][312], [SKIP][313]) ([i915#5354] / [i915#6095]) +8 other tests ( 2 skip )
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][314], [SKIP][315]) ([i915#5354] / [i915#6095]) +4 other tests ( 2 skip )
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][316], [SKIP][317]) ([i915#5354]) +60 other tests ( 2 skip )
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#5354] / [i915#6095]) +4 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#5354]) +7 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#5354] / [i915#6095]) +6 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> ([SKIP][321], [SKIP][322]) ([i915#5354]) +5 other tests ( 2 skip )
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#5354] / [i915#6095]) +7 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#5354]) +37 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#4087] / [i915#7213]) +3 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][326] ([i915#4087]) +3 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> ([SKIP][327], [SKIP][328]) ([fdo#111827])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_chamelium_color@ctm-blue-to-red.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-rkl:          NOTRUN -> ([SKIP][329], [SKIP][330]) ([fdo#111827])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_chamelium_color@ctm-red-to-blue.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#7828]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#7828]) +1 other test ( 2 skip )
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-mtlp:         NOTRUN -> ([SKIP][334], [SKIP][335]) ([i915#7828]) +1 other test ( 2 skip )
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_chamelium_edid@hdmi-edid-read.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#7828]) +3 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-rkl:          NOTRUN -> ([SKIP][337], [SKIP][338]) ([i915#7828])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][339], [SKIP][340]) ([i915#7828]) +4 other tests ( 2 skip )
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][341] ([i915#7828])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][342] ([i915#7828])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][343] ([i915#7118])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg1:          NOTRUN -> ([SKIP][344], [SKIP][345]) ([i915#3299])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_content_protection@dp-mst-lic-type-0.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> ([SKIP][346], [SKIP][347]) ([i915#3299]) +1 other test ( 2 skip )
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> ([SKIP][348], [SKIP][349]) ([i915#7118]) +1 other test ( 2 skip )
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@legacy.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][350] ([i915#7173])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-128x42:
    - shard-mtlp:         NOTRUN -> ([SKIP][351], [SKIP][352]) ([i915#8814]) +1 other test ( 2 skip )
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-128x42.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-128x42.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][353] ([fdo#109279] / [i915#3359])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> ([SKIP][354], [SKIP][355]) ([i915#3555]) +2 other tests ( 2 skip )
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#3359]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#8814]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> ([SKIP][358], [SKIP][359]) ([i915#3555]) +2 other tests ( 2 skip )
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> ([SKIP][360], [SKIP][361]) ([i915#9809])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-snb:          [PASS][363] -> ([SKIP][364], [SKIP][365]) ([fdo#109271] / [fdo#111767])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][366] ([fdo#111825]) +3 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][367], [SKIP][368]) ([i915#4103])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][369] ([i915#9809]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> ([SKIP][370], [SKIP][371]) ([fdo#109274] / [i915#5354]) +4 other tests ( 2 skip )
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
    - shard-dg1:          NOTRUN -> ([SKIP][372], [SKIP][373]) ([fdo#111825]) +6 other tests ( 2 skip )
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
    - shard-snb:          [PASS][375] -> ([SKIP][376], [PASS][377]) ([fdo#109271]) +3 other tests ( 1 pass, 1 skip )
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-mtlp:         NOTRUN -> ([SKIP][378], [SKIP][379]) ([fdo#111767])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][380] -> [FAIL][381] ([i915#2346])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][382] -> ([PASS][383], [FAIL][384]) ([i915#2346])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][385] ([i915#9067])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> ([SKIP][386], [SKIP][387]) ([i915#4103] / [i915#4213])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-dg1:          NOTRUN -> ([SKIP][388], [SKIP][389]) ([i915#4103] / [i915#4213])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> ([SKIP][390], [SKIP][391]) ([i915#9723])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#9723])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][393], [SKIP][394]) ([i915#9227])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][395], [SKIP][396]) ([i915#9723])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][397] ([i915#9833])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][398] ([i915#9841]) +3 other tests fail
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          NOTRUN -> [SKIP][399] ([i915#3555])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> ([SKIP][400], [SKIP][401]) ([i915#3555]) +4 other tests ( 2 skip )
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> ([SKIP][402], [SKIP][403]) ([i915#3555] / [i915#3840])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][404] ([i915#3469])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> ([SKIP][405], [SKIP][406]) ([i915#1839])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_feature_discovery@display-2x.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][407] ([i915#1839])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][408] ([i915#658])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][409] ([fdo#111767] / [i915#3637])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
    - shard-dg2:          NOTRUN -> ([SKIP][410], [SKIP][411]) ([fdo#109274] / [fdo#111767])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][412] ([fdo#109274]) +2 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][413], [SKIP][414]) ([fdo#109274]) +5 other tests ( 2 skip )
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][415] ([i915#3637])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-mtlp:         NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#3637]) +3 other tests ( 2 skip )
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-rkl:          NOTRUN -> ([SKIP][418], [SKIP][419]) ([fdo#111825]) +4 other tests ( 2 skip )
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_flip@2x-nonexisting-fb-interruptible.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          NOTRUN -> ([SKIP][420], [SKIP][421]) ([fdo#111825] / [i915#9934])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][422] ([i915#8381])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> ([SKIP][423], [SKIP][424]) ([i915#2672]) +1 other test ( 2 skip )
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][425], [SKIP][426]) ([i915#2672]) +1 other test ( 2 skip )
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> ([SKIP][427], [SKIP][428]) ([i915#2587] / [i915#2672]) +1 other test ( 2 skip )
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][429] ([i915#2672])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][430] ([i915#2672])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][431] ([i915#2672] / [i915#3555])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> ([SKIP][432], [SKIP][433]) ([i915#5274])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_force_connector_basic@prune-stale-modes.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> ([SKIP][434], [SKIP][435]) ([i915#8708])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-snb:          [PASS][436] -> ([SKIP][437], [SKIP][438]) ([fdo#109271]) +5 other tests ( 2 skip )
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][439] ([i915#1825]) +4 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][440], [SKIP][441]) ([i915#8708]) +13 other tests ( 2 skip )
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][442] ([i915#8708]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-dg2:          [PASS][443] -> ([PASS][444], [FAIL][445]) ([i915#6880])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> ([SKIP][446], [SKIP][447]) ([i915#3023]) +5 other tests ( 2 skip )
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> ([SKIP][448], [SKIP][449]) ([i915#3458]) +7 other tests ( 2 skip )
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
    - shard-dg1:          NOTRUN -> ([SKIP][450], [SKIP][451]) ([i915#3458]) +2 other tests ( 2 skip )
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][452] ([i915#8708]) +8 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][453] ([i915#8708])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][454] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> ([SKIP][455], [SKIP][456]) ([fdo#109271]) +98 other tests ( 2 skip )
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> ([SKIP][457], [SKIP][458]) ([i915#5439])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> ([SKIP][459], [SKIP][460]) ([i915#9653])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
    - shard-dg1:          NOTRUN -> ([SKIP][461], [SKIP][462]) ([i915#9653])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][463] ([i915#3458])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> ([SKIP][464], [SKIP][465]) ([fdo#111825] / [i915#1825]) +4 other tests ( 2 skip )
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> ([SKIP][466], [SKIP][467]) ([i915#1825]) +7 other tests ( 2 skip )
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][468] ([fdo#111825]) +6 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][469] ([i915#3458]) +15 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> ([SKIP][470], [SKIP][471]) ([i915#8708]) +4 other tests ( 2 skip )
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][472] ([i915#3023]) +4 other tests skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][473] ([i915#3555] / [i915#8228])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> ([SKIP][474], [SKIP][475]) ([i915#3555] / [i915#8228]) +1 other test ( 2 skip )
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@kms_hdr@static-toggle.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_hdr@static-toggle.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][476], [SKIP][477]) ([i915#6301])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_panel_fitting@legacy.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][478] ([fdo#109289])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][479] -> [INCOMPLETE][480] ([i915#9878])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-4/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][481] ([i915#8292])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][482] ([i915#9423]) +11 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][483] ([i915#9423]) +11 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][484], [SKIP][485]) ([i915#9423]) +1 other test ( 2 skip )
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-1.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][486] ([i915#9423]) +3 other tests skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][487] ([i915#5176]) +1 other test skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][488], [SKIP][489]) ([i915#9423]) +11 other tests ( 2 skip )
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][490] ([i915#5235]) +1 other test skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][491], [SKIP][492]) ([i915#5235]) +7 other tests ( 2 skip )
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][493] ([i915#5235] / [i915#9423]) +23 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][494], [SKIP][495]) ([i915#5235]) +3 other tests ( 2 skip )
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d-edp-1.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][496], [SKIP][497]) ([i915#5235]) +1 other test ( 2 skip )
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/index.html

--===============7854982842273293168==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add workaround 14019877138</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/128143/">https://patchwork.freedesktop.org/series/128143/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14072_full -&gt; Patchwork_128143v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128143v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_128143v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v=
1/index.html</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
128143v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-10/igt@kms_flip@flip-vs-suspend-interruptible@d-hd=
mi-a1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-tglu-6/igt@kms_flip@flip-vs-suspend-interrupt=
ible@d-hdmi-a1.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_flip@flip-vs-suspend-=
interruptible@d-hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-=
b.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping=
@pipe-b.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-8/igt@kms_plane@pixel-format-source-clampin=
g@pipe-b.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk9/igt@prime_busy@hang-wait@vecs0.html">PASS</a> -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/s=
hard-glk8/igt@prime_busy@hang-wait@vecs0.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/igt@prime_b=
usy@hang-wait@vecs0.html">INCOMPLETE</a>)</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14072_full and Patchwork_1=
28143v1_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@b-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128143v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14072/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14072/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14072/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14072/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14072/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4072/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/s=
hard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk1/boot.html">PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@device_reset@unbind-cold=
-reset-rebind.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-mtlp-1/igt@device_reset@unbind-cold-reset-r=
ebind.html">SKIP</a>) ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@drm_fdinfo@busy@ccs0.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-dg2-7/igt@drm_fdinfo@busy@ccs0.html">SKIP</a>) ([i915#8414])=
 +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@drm_fdinfo@most-busy-idle=
-check-all@vecs1.html">SKIP</a> ([i915#8414]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@drm_fdinfo@virtual-busy-i=
dle.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb4/igt@fbdev@pan.html">PASS</a> -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb1/igt@fbd=
ev@pan.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-snb7/igt@fbdev@pan.html">FAIL</a>) ([i915#4435])</=
li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html">=
SKIP</a>) ([i915#3281]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@gem_ccs@suspend-resume@=
linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@g=
em_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a>=
) ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-com=
pfmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ccs@suspend-resume@x=
major-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_close_race@multigpu-=
basic-process.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_close_race@multigpu-basic-pro=
cess.html">SKIP</a>) ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_create@create-ext-cp=
u-access-big.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-=
big.html">SKIP</a>) ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_create@hog-create@sme=
m0.html">FAIL</a> ([i915#8758])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_ctx_persistence@hear=
tbeat-hang.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-hang.=
html">SKIP</a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-host=
ile.html">SKIP</a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_ctx_persistence@legacy=
-engines-hostile.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-snb4/igt@gem_ctx_persistence@legacy-engi=
nes-hostile.html">SKIP</a>) ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>) ([i915#28=
0])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_eio@hibernate.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128=
143v1/shard-dg2-5/igt@gem_eio@hibernate.html">ABORT</a>) ([i915#7975] / [i9=
15#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_eio@kms.html">FAIL</a=
> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_balancer@paralle=
l-contexts.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.=
html">SKIP</a>) ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_capture@capture-invisi=
ble@lmem0.html">SKIP</a>) ([i915#6334]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_exec_capture@capture-invisibl=
e@smem0.html">SKIP</a>) ([fdo#109271] / [i915#6334])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_fair@basic-deadli=
ne.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_exec_fair@basic-none.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_128143v1/shard-snb4/igt@gem_exec_fair@basic-none.html">SKIP</a>) ([fdo#10=
9271]) +70 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_fair@basic-none=
-share.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html">SKI=
P</a>) ([i915#3539] / [i915#4852]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a>) ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_exec_fair@basic-sync=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-mtlp-1/igt@gem_exec_fair@basic-sync.html">SKIP</a>) ([i9=
15#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_fair@basic-throt=
tle@rcs0.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html=
">FAIL</a>) ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_exec_fence@submit.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-dg2-3/igt@gem_exec_fence@submit.html">SKIP</a>) ([i915#4812]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_flush@basic-bat=
ch-kernel-default-uc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_flush@basic-batc=
h-kernel-default-uc.html">SKIP</a>) ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-s=
et-default.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.=
html">SKIP</a>) ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-norelo=
c.html">SKIP</a>) ([i915#3281]) +4 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt=
-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html=
">SKIP</a>) ([i915#3281]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-w=
c-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-r=
ead-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_reloc@basic-wri=
te-cpu-active.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-cpu-a=
ctive.html">SKIP</a>) ([i915#3281]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_reloc@basic-writ=
e-read-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"=
>ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABOR=
T</a>) ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS<=
/a>) ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-8/igt@gem_exec_whisper@basic-fds-forked-all.html">=
PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_128143v1/shard-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12814=
3v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE=
</a>) ([i915#6755] / [i915#7392] / [i915#9857])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.ht=
ml">SKIP</a>) ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_huc_copy@huc-copy.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk3/igt@gem_huc_copy@huc-copy.html">SKIP</a>) ([fdo#109271] =
/ [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</=
a>) ([i915#4613]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_lmem_swapping@massive=
.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_lmem_swapping@random.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_128143v1/shard-glk7/igt@gem_lmem_swapping@random.html">SKIP</a>) ([fdo#10=
9271] / [i915#4613]) +1 other test ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_lmem_swapping@random=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-mtlp-1/igt@gem_lmem_swapping@random.html">SKIP</a>) ([i9=
15#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_mmap_gtt@basic.html">=
SKIP</a> ([i915#4077]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-xy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.ht=
ml">SKIP</a>) ([i915#4077]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-19/igt@gem_mmap_gtt@zero-extend=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-dg1-17/igt@gem_mmap_gtt@zero-extend.html">SKIP</a>) ([i9=
15#4077]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_mmap_wc@write-prefau=
lted.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-mtlp-7/igt@gem_mmap_wc@write-prefaulted.html">SKIP</=
a>) ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_mmap_wc@write-read-dis=
tinct.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read=
-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</=
a>) ([i915#4083]) +2 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_mmap_wc@write-wc-read=
-gtt.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-=
uncached.html">SKIP</a>) ([i915#3282]) +3 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a>) ([i915#4270]) +1 other test ( 2 skip =
)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_pxp@verify-pxp-execu=
tion-after-suspend-resume.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_pxp@verify-pxp-ex=
ecution-after-suspend-resume.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@gem_readwrite@new-obj.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-dg1-19/igt@gem_readwrite@new-obj.html">SKIP</a>) ([i915#328=
2])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_render_copy@y-tiled-to-=
vebox-y-tiled.html">SKIP</a> ([fdo#109271]) +56 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-=
to-vebox-y-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-ve=
box-y-tiled.html">SKIP</a>) ([i915#8428]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-=
tiled.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_tiled_partial_pwri=
te_pread@writes-after-reads.html">SKIP</a>) ([i915#3282]) +1 other test ( 2=
 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.ht=
ml">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed=
-invalidate-busy.html">SKIP</a>) ([i915#3297] / [i915#4880])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@unsync-=
overlap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_userptr_blits@unsync-unma=
p-after-close.html">SKIP</a>) ([i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gen7_exec_parse@basic-al=
location.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-1/igt@gen7_exec_parse@basic-allocation.html=
">SKIP</a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gen7_exec_parse@batch-wit=
hout-end.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-10/igt@gen7_exec_parse@batch-without-end.htm=
l">SKIP</a>) ([fdo#109289]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gen7_exec_parse@chained-b=
atch.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-rkl-1/igt@gen7_exec_parse@chained-batch.html">SKIP</=
a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gen7_exec_parse@load-regi=
ster-reg.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gen9_exec_parse@allowed-si=
ngle.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html">=
PASS</a>) ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gen9_exec_parse@bb-start=
-cmd.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</=
a>) ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@unaligne=
d-access.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html"=
>SKIP</a>) ([i915#2856]) +2 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@unaligned=
-access.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gen9_exec_parse@valid-re=
gisters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-mtlp-1/igt@gen9_exec_parse@valid-registers.html">=
SKIP</a>) ([i915#2856]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@i915_module_load@load.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-rkl-4/igt@i915_module_load@load.html">SKIP</a>) ([i915#6227]=
)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-inject=
ion.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_128143v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injectio=
n.html">INCOMPLETE</a>) ([i915#9849])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-tglu-8/igt@i915_module_load@reload-with-fault-inje=
ction.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-tglu-2/igt@i915_module_load@reload-with-fault=
-injection.html">INCOMPLETE</a>) ([i915#9200])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_pm_rc6_residency@me=
dia-rc6-accuracy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@i915_pm_rc6_residency@media-r=
c6-accuracy.html">SKIP</a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-=
stress-pc8.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.h=
tml">SKIP</a>) ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@i915_pm_rps@basic-api.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-mtlp-7/igt@i915_pm_rps@basic-api.html">SKIP</a>) ([i915#662=
1])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-conf=
ig-idle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html">S=
KIP</a>) ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_query@query-topolog=
y-coherent-slice-mask.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a>) ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_query@query-topolog=
y-known-pci-ids.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@i915_query@query-topology-known=
-pci-ids.html">SKIP</a>) ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_selftest@mock@memor=
y_region.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_selftest@mock@memory_region=
.html">DMESG-WARN</a>) ([i915#9311])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@i915_selftest@mock@memor=
y_region.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_selftest@mock@memory_regio=
n.html">DMESG-WARN</a>) ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a>) ([fdo#103375=
])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_async_flips@alternate-=
sync-async-flip@pipe-a-hdmi-a-2.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@kms_async_flips@=
alternate-sync-async-flip@pipe-a-hdmi-a-2.html">FAIL</a>) ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@crc@pipe-=
a-hdmi-a-3.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.=
html">FAIL</a>) ([i915#8247]) +3 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a>) ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt=
@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels=
.html">SKIP</a>) ([fdo#109271] / [i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-=
rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html=
">SKIP</a>) ([i915#5286]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@4-tiled-16bpp=
-rotate-90.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.h=
tml">SKIP</a>) ([fdo#111614]) +1 other test ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_big_fb@linear-8bpp-r=
otate-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@linear-8bpp-rotate-270.ht=
ml">SKIP</a>) ([fdo#111614]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> ([fdo#111614]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_big_fb@x=
-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a>) ([i915#3743]=
) +2 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-=
rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.htm=
l">SKIP</a>) ([i915#5190]) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-=
rotate-180.html">SKIP</a> ([i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.ht=
ml">SKIP</a>) ([fdo#111614] / [i915#3638]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#6187]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-0.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb=
-size-overflow.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-o=
verflow.html">SKIP</a>) ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-m=
ax-hw-stride-32bpp-rotate-0.html">SKIP</a>) ([fdo#111615]) +2 other tests (=
 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max=
-hw-stride-64bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5190]) +3 ot=
her tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_bi=
g_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>)=
 ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_ccs@pipe-a-bad-aux-s=
tride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe-a-bad=
-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) ([i915#5354] / [i915#6095=
]) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-rotat=
ion-90-4-tiled-dg2-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_ccs@pipe-a-bad-r=
otation-90-4-tiled-dg2-mc-ccs.html">SKIP</a>) ([i915#5354] / [i915#6095]) +=
8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primar=
y-rotation-180-4-tiled-dg2-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_ccs@pipe-=
a-crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html">SKIP</a>) ([i915#5354] =
/ [i915#6095]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_ccs@pipe-a-crc-sprite=
-planes-basic-yf-tiled-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_ccs@pipe-a-crc-s=
prite-planes-basic-yf-tiled-ccs.html">SKIP</a>) ([i915#5354]) +60 other tes=
ts ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary=
-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-c-bad-pixel-f=
ormat-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#5354]) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe-c-crc-primar=
y-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +6=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_ccs@pipe-c-crc-primar=
y-rotation-180-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_ccs@pi=
pe-c-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) ([i915#=
5354]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_ccs@pipe-d-ccs-on-ano=
ther-bo-yf-tiled-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_ccs@pipe-d-missing-cc=
s-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#5354]) +37 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-d-dp-4.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.=
html">SKIP</a>) ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_chamelium_color@ctm-r=
ed-to-blue.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@kms_chamelium_color@ctm-red-to-blue.=
html">SKIP</a>) ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_chamelium_edid@dp-edid=
-read.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_edid@hdmi-=
edid-change-during-suspend.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_chamelium_edid@=
hdmi-edid-change-during-suspend.html">SKIP</a>) ([i915#7828]) +1 other test=
 ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_chamelium_edid@hdmi-=
edid-read.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.ht=
ml">SKIP</a>) ([i915#7828]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hp=
d-after-suspend.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-afte=
r-suspend.html">SKIP</a>) ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd=
-with-enabled-mode.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )<=
/li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_content_protection@d=
p-mst-lic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a>) ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@d=
p-mst-lic-type-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@dp-mst-=
lic-type-1.html">SKIP</a>) ([i915#3299]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@le=
gacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg2-1/igt@kms_content_protection@legacy.html">SKIP</=
a>) ([i915#7118]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-of=
fscreen-128x42.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen=
-128x42.html">SKIP</a>) ([i915#8814]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_crc@cursor-on=
screen-32x32.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32=
x32.html">SKIP</a>) ([i915#3555]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-sli=
ding-128x42.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.=
html">SKIP</a>) ([i915#3555]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@2x-cur=
sor-vs-flip-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-cursor=
-vs-flip-legacy.html">SKIP</a>) ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354]=
)</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128143v1/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">S=
KIP</a>) ([fdo#109271] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> ([fdo#111825]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_legacy=
@basic-busy-flip-before-cursor-legacy.html">SKIP</a>) ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a>) ([fdo#109274] / [i915#5354]) +4 other tests ( =
2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs=
-flipb-atomic.html">SKIP</a>) ([fdo#111825]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a> ([fdo#109274] / [i915#5354]) +2 other tests=
 skip</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">PASS=
</a>) ([fdo#109271]) +3 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@cursor=
b-vs-flipb-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs=
-flipb-toggle.html">SKIP</a>) ([fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_cu=
rsor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>) =
([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@short-=
busy-flip-before-cursor-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legac=
y@short-busy-flip-before-cursor-toggle.html">SKIP</a>) ([i915#4103] / [i915=
#4213])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_legacy@short-=
busy-flip-before-cursor-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_lega=
cy@short-busy-flip-before-cursor-toggle.html">SKIP</a>) ([i915#4103] / [i91=
5#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP=
</a>) ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-1.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-3.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a=
-hdmi-a-3.html">SKIP</a>) ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-=
ioctl@a-hdmi-a-4.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl=
@a-hdmi-a-4.html">SKIP</a>) ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@kms_display_modes@extended-=
mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1.html">FAIL</a> ([i915#9841]) +3 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">=
SKIP</a>) ([i915#3555]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a>) ([i915#3555]=
 / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_feature_discovery@di=
splay-2x.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html"=
>SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_feature_discovery@psr=
1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a> ([fdo#111767] / [i915#3637])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-exp=
ired-vblank-interruptible.html">SKIP</a>) ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([fdo#109274]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblan=
k-interruptible.html">SKIP</a>) ([fdo#109274]) +5 other tests ( 2 skip )</l=
i>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-=
fb.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128143v1/shard-mtlp-1/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a>) =
([i915#3637]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_flip@2x-nonexisting-f=
b-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_flip@2x-nonexisting-fb-inte=
rruptible.html">SKIP</a>) ([fdo#111825]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_flip@2x-single-buffe=
r-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@km=
s_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKI=
P</a>) ([fdo#111825] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143=
v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2r=
cccs-upscaling@pipe-a-default-mode.html">SKIP</a>) ([i915#2672]) +1 other t=
est ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip=
-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-do=
wnscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +1 other test ( 2=
 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip=
-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-d=
ownscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2587] / [i915#2672]) +1=
 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_force_connector_basic@p=
rune-stale-modes.html">SKIP</a>) ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_frontbuffer_tracking=
@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_frontbuff=
er_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>) ([i915#8708])</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-blt.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc=
-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@kms_frontbuffer_=
tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a>) ([fdo#109271]) =
+5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#1825]) +4 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_fro=
ntbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (=
[i915#8708]) +13 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-sc=
aledprimary.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-shrfb-=
scaledprimary.html">FAIL</a>) ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP<=
/a>) ([i915#3023]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>=
) ([i915#3458]) +7 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a=
>) ([i915#3458]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +8 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-rte.html">SKIP</a> ([fdo#111825] / [i915#1825]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_fro=
ntbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a>)=
 ([fdo#109271]) +98 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr=
-tiling-4.html">SKIP</a>) ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_frontbuffer_tracking@=
plane-fbc-rte.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@plane-f=
bc-rte.html">SKIP</a>) ([i915#9653])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking=
@plane-fbc-rte.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_frontbuffer_tracking@plane-=
fbc-rte.html">SKIP</a>) ([i915#9653])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_fro=
ntbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (=
[fdo#111825] / [i915#1825]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_frontbuffer_tracking=
@psr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_frontbuf=
fer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a>) ([i915#1825])=
 +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +15 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-19/igt@kms_frontbuffer_tracking=
@psr-rgb101010-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@kms_frontbuffer_t=
racking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a>) ([i915#8708]) +4 other =
tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> ([i915#3023]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html">S=
KIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@kms_hdr@static-toggle.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-dg2-1/igt@kms_hdr@static-toggle.html">SKIP</a>) ([i915#3555]=
 / [i915#8228]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_panel_fitting@legacy.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_128143v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a>) ([i915=
#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@enable-p=
ipe-c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-4/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-rkl-4/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.htm=
l">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#9=
423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d-d=
p-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-d-dp-4.html">SKIP</a> ([i915#9423])=
 +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-h=
dmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-7=
/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdm=
i-a-1.html">SKIP</a>) ([i915#9423]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> ([i9=
15#5176]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_plane_scaling@plane-=
upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-16/igt@km=
s_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html">SKI=
P</a>) ([i915#9423]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#52=
35]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_plane_scaling@planes=
-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-=
0-25@pipe-c-hdmi-a-4.html">SKIP</a>) ([i915#5235]) +7 other tests ( 2 skip =
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> ([i915=
#5235] / [i915#9423]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_plane_scaling@planes=
-downscale-factor-0-5-upscale-factor-0-25@pipe-d-edp-1.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mt=
lp-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@=
pipe-d-edp-1.html">SKIP</a>) ([i915#5235]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt">SKIP</a>, [SKIP][497]) (=
[i915#5235]) +1 other test ( 2 skip )</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7854982842273293168==--
