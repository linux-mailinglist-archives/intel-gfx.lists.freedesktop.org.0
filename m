Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2B199E1BC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 10:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410A710E2BA;
	Tue, 15 Oct 2024 08:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F2610E2C5;
 Tue, 15 Oct 2024 08:55:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0721437750667003362=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Remove_unused_u?=
 =?utf-8?q?nderrun_irq/reporting_bits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sai Teja Pottumuttu" <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2024 08:55:09 -0000
Message-ID: <172898250933.1268452.5311793213028691349@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0721437750667003362==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove unused underrun irq/reporting bits (rev2)
URL   : https://patchwork.freedesktop.org/series/139955/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15536_full -> Patchwork_139955v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139955v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139955v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 8)
------------------------------

  Missing    (2): shard-snb-0 shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139955v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) -> ([PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [FAIL][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk1/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15536_full and Patchwork_139955v2_full:

### New IGT tests (5) ###

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_vblank@query-busy-hang@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [14.33] s

  * igt@kms_vblank@query-busy-hang@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [24.92] s

  * igt@kms_vblank@wait-forked-busy-hang@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [13.89] s

  * igt@kms_vblank@wait-forked-busy-hang@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [24.94] s

  

Known issues
------------

  Here are the changes found in Patchwork_139955v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-idle-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#8414]) +6 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@drm_fdinfo@busy-idle-check-all@ccs0.html

  * igt@fbdev@pan:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#2582])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@fbdev@pan.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][74] -> [INCOMPLETE][75] ([i915#12392] / [i915#7297])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#8562])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][77] ([i915#1099])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@gem_ctx_persistence@process.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][78] -> [FAIL][79] ([i915#5784])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-14/igt@gem_eio@reset-stress.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4812])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_exec_balancer@bonded-semaphore.html
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4812])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][82] -> [DMESG-WARN][83] ([i915#12412])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@gem_exec_balancer@nop.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-1/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#4525])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [PASS][85] -> [ABORT][86] ([i915#11713])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-9/igt@gem_exec_big@single.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-10/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#6344])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][88] ([i915#2842]) +1 other test fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][89] -> [FAIL][90] ([i915#2842]) +1 other test fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3539] / [i915#4852])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5107])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3281])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3281])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3281])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][96] ([i915#12296]) +4 other tests fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#4613]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4613])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#4613]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4077]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4077])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [PASS][102] -> [ABORT][103] ([i915#10729])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-1/igt@gem_mmap_offset@clear.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-8/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][104] -> [ABORT][105] ([i915#10029] / [i915#10729])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@write:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4083])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_mmap_wc@write.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4083]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3282]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_pread@snoop.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4270])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4270])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-14/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#4270]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#8411])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#3297] / [i915#4958])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3297])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][115] +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2856])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#2527])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#2527])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-19/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][119], [PASS][120]) -> [ABORT][121] ([i915#9820])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#8399])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6188])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][124] ([i915#9311]) +1 other test dmesg-warn
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg1:          [PASS][125] -> [DMESG-WARN][126] ([i915#4391] / [i915#4423])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#8709]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2:
    - shard-dg2:          [PASS][128] -> [FAIL][129] ([i915#5956]) +1 other test fail
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#5286]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#5286])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#9197]) +7 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#4538] / [i915#5286])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3638])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4538])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#6095]) +77 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#6095]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#10307] / [i915#6095]) +142 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#6095]) +95 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#6095]) +34 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#3742])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3742])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4087]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-snb:          NOTRUN -> [SKIP][145] +101 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb1/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#7828]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7828])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#7828]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#6944] / [i915#9424])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#3116] / [i915#3299])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3116])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3299])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3555]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#8814])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#9809])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][156] +5 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#9723])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [PASS][158] -> [SKIP][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3955])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3637] / [i915#3966])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3637]) +5 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9934])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-18/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3637])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-2/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-snb:          [PASS][165] -> [FAIL][166] ([i915#2122]) +1 other test fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][167] ([i915#4839] / [i915#6113])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][168] ([i915#6113])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [PASS][169] -> [FAIL][170] ([i915#2122])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][171] ([i915#2122]) +1 other test fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          NOTRUN -> [FAIL][172] ([i915#2122]) +2 other tests fail
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][173] ([i915#2122]) +3 other tests fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - shard-tglu:         [PASS][174] -> [FAIL][175] ([i915#2122]) +5 other tests fail
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-10/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][176] -> [SKIP][177] ([i915#3555]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#2672] / [i915#3555]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#2587] / [i915#2672]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#2672]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#2672] / [i915#3555])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#2672])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#5354]) +12 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-snb:          [PASS][185] -> [SKIP][186] +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#1825]) +7 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#8708]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5439])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3458])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#5354]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
    - shard-dg1:          NOTRUN -> [SKIP][192] +5 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3023]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#8708]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#1825]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][196] +44 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8228])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [PASS][198] -> [SKIP][199] ([i915#3555] / [i915#8228])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#12388])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#1839])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#9197]) +37 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][204] -> [SKIP][205] ([i915#8825])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_plane@plane-panning-top-left.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#7294])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@overlay:
    - shard-dg1:          [PASS][208] -> [DMESG-WARN][209] ([i915#4423])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-13/igt@kms_plane_cursor@overlay.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@kms_plane_cursor@overlay.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8806])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [PASS][211] -> [SKIP][212] ([i915#8152] / [i915#9423])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_plane_scaling@invalid-parameters.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][213] -> [SKIP][214] ([i915#12247] / [i915#8152] / [i915#9423])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-dg2:          [PASS][215] -> [SKIP][216] ([i915#6953] / [i915#8152] / [i915#9423])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [PASS][217] -> [SKIP][218] ([i915#12247]) +5 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#12247] / [i915#8152]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#12247] / [i915#6953])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#12247]) +13 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#9812])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3828])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#9519])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][226] -> [SKIP][227] ([i915#9519]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#9519])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][229] -> [SKIP][230] ([i915#9519]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#3547])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_pm_rpm@system-suspend-modeset.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#11520]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#11520]) +4 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> [SKIP][235] ([i915#11520]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#11520])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][237] +19 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#9683])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#9683])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#9683])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr2-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#9688]) +2 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_psr@fbc-psr2-dpms.html

  * igt@kms_psr@pr-cursor-render:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#1072] / [i915#9732]) +4 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_psr@pr-cursor-render.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#9732]) +11 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-primary-render:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#1072] / [i915#9732]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_psr@psr2-primary-render.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#11131])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][246] ([i915#5465]) +2 other tests fail
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [PASS][247] -> [FAIL][248] ([i915#9196]) +1 other test fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#3555] / [i915#9906])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#2437])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@blocking@0-rcs0:
    - shard-tglu:         [PASS][251] -> [FAIL][252] ([i915#10538]) +1 other test fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-2/igt@perf@blocking@0-rcs0.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-9/igt@perf@blocking@0-rcs0.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg2:          NOTRUN -> [SKIP][253]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@perf@per-context-mode-unprivileged.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#9917])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#9917])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
#### Possible fixes ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][256] ([i915#9846]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][258] ([i915#12027]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-10/igt@gem_ctx_engines@invalid-engines.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][260] ([i915#12027]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][262] ([i915#2842]) -> [PASS][263] +1 other test pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][264] ([i915#7975] / [i915#8213]) -> [PASS][265] +1 other test pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html
    - shard-tglu:         [ABORT][266] ([i915#7975] / [i915#8213]) -> [PASS][267] +1 other test pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [INCOMPLETE][268] -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-glk:          ([PASS][270], [INCOMPLETE][271]) -> [PASS][272]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/igt@gem_softpin@noreloc-s3.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/igt@gem_softpin@noreloc-s3.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][273], [ABORT][274]) ([i915#12375] / [i915#5566]) -> [PASS][275]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/igt@gen9_exec_parse@allowed-single.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][276] ([i915#9820]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
    - shard-rkl:          [ABORT][278] ([i915#9820]) -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [ABORT][280] ([i915#9820]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][282] ([i915#3591]) -> [PASS][283] +2 other tests pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][284] ([i915#7984]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@i915_power@sanity.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-1/igt@i915_power@sanity.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][286] ([i915#12216]) -> [PASS][287] +1 other test pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [SKIP][288] ([i915#9197]) -> [PASS][289] +29 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@cursor-offscreen-64x64:
    - shard-snb:          [INCOMPLETE][290] ([i915#2295]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb6/igt@kms_cursor_crc@cursor-offscreen-64x64.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb1/igt@kms_cursor_crc@cursor-offscreen-64x64.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-glk:          ([INCOMPLETE][292], [INCOMPLETE][293]) -> [PASS][294]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([PASS][295], [FAIL][296]) ([i915#2346]) -> [PASS][297]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][298], [FAIL][299]) ([i915#2122]) -> [PASS][300] +6 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][301] ([i915#2122]) -> [PASS][302] +1 other test pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg1:          [FAIL][303] ([i915#2122]) -> [PASS][304] +2 other tests pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-mtlp:         [FAIL][305] ([i915#2122]) -> [PASS][306] +1 other test pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-mtlp:         [FAIL][307] ([i915#12138]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-edp1:
    - shard-mtlp:         [FAIL][309] -> [PASS][310] +2 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-edp1.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-snb:          [SKIP][311] -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [SKIP][313] ([i915#5354]) -> [PASS][314] +16 other tests pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-dg2:          [FAIL][315] ([i915#6880]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][317] ([i915#3555] / [i915#8228]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-dg2:          [SKIP][319] ([i915#3555]) -> [PASS][320] +2 other tests pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          [SKIP][321] ([i915#8825]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane@plane-position-hole.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][323] ([i915#7294]) -> [PASS][324] +1 other test pass
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_multiple@tiling-x:
    - shard-dg1:          [DMESG-WARN][325] ([i915#4423]) -> [PASS][326] +2 other tests pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-12/igt@kms_plane_multiple@tiling-x.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-19/igt@kms_plane_multiple@tiling-x.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [SKIP][327] ([i915#8152] / [i915#9423]) -> [PASS][328] +1 other test pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [SKIP][329] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [SKIP][331] ([i915#12247] / [i915#8152]) -> [PASS][332] +1 other test pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [SKIP][333] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][334] +2 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:
    - shard-dg2:          [SKIP][335] ([i915#12247]) -> [PASS][336] +14 other tests pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][337] ([i915#8152]) -> [PASS][338] +2 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][339] ([i915#9295]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          [SKIP][341] ([i915#1849]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][343] ([i915#9519]) -> [PASS][344] +1 other test pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][345] ([i915#9519]) -> [PASS][346] +2 other tests pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][347] ([i915#11521]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_properties@plane-properties-legacy.html

  * igt@perf_pmu@busy-accuracy-50@vcs1:
    - shard-dg1:          [INCOMPLETE][349] ([i915#9853]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg1-16/igt@perf_pmu@busy-accuracy-50@vcs1.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@perf_pmu@busy-accuracy-50@vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][351] ([i915#12065]) -> [FAIL][352] ([i915#12027])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][353] ([i915#7091]) -> [SKIP][354] ([i915#9197])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][355] ([i915#9531]) -> [SKIP][356] ([i915#9197])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][357] -> [SKIP][358] ([i915#9197]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][359] ([i915#9197]) -> [SKIP][360] +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][361] ([i915#5190] / [i915#9197]) -> [SKIP][362] ([i915#5190]) +1 other test skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][363] ([i915#4538] / [i915#5190]) -> [SKIP][364] ([i915#5190] / [i915#9197]) +6 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][365] ([i915#5190] / [i915#9197]) -> [SKIP][366] ([i915#4538] / [i915#5190]) +3 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][367] ([i915#9197]) -> [SKIP][368] ([i915#12313]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][369] ([i915#12313]) -> [SKIP][370] ([i915#9197]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][371] ([i915#10307] / [i915#6095]) -> [SKIP][372] ([i915#9197]) +10 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:
    - shard-dg2:          [SKIP][373] ([i915#9197]) -> [SKIP][374] ([i915#10307] / [i915#6095]) +8 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][375] ([i915#11616] / [i915#7213]) -> [SKIP][376] ([i915#9197])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_cdclk@mode-transition.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][377] ([i915#9197]) -> [SKIP][378] ([i915#3299])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][379] ([i915#7118] / [i915#9424]) -> [SKIP][380] ([i915#9197])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_content_protection@legacy.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#9424])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][383] ([i915#9424]) -> [SKIP][384] ([i915#9197])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_content_protection@mei-interface.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [TIMEOUT][385] ([i915#7173]) -> [SKIP][386] ([i915#7118])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-10/igt@kms_content_protection@srm.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][387] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][388] ([i915#7118] / [i915#9424])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-10/igt@kms_content_protection@type1.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-dg2:          [SKIP][389] ([i915#3555]) -> [SKIP][390] ([i915#9197])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][391] ([i915#9197]) -> [SKIP][392] ([i915#11453]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] ([i915#5354]) +2 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          [SKIP][395] ([i915#5354]) -> [SKIP][396] ([i915#9197]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][397] ([i915#9197]) -> [SKIP][398] ([i915#4103] / [i915#4213])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][399], [FAIL][400]) ([i915#2122]) -> [FAIL][401] ([i915#2122]) +1 other test fail
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-snb:          [FAIL][402] ([i915#2122]) -> [FAIL][403] ([i915#10826] / [i915#2122])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][404] ([i915#2122]) -> [FAIL][405] ([i915#10826])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][406] ([i915#2672] / [i915#3555]) -> [SKIP][407] ([i915#3555]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][408] ([i915#3555]) -> [SKIP][409] ([i915#2672] / [i915#3555])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][410] ([i915#3555] / [i915#5190]) -> [SKIP][411] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][412] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][413] ([i915#3555] / [i915#5190])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][414] ([i915#5354]) -> [SKIP][415] ([i915#8708]) +12 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][416] ([i915#3458]) -> [SKIP][417] ([i915#5354]) +8 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][418] ([i915#3458]) -> [SKIP][419] ([i915#10433] / [i915#3458]) +2 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][420] ([i915#10433] / [i915#3458]) -> [SKIP][421] ([i915#3458]) +3 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][422] ([i915#5354]) -> [SKIP][423] ([i915#3458]) +14 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][424] ([i915#8708]) -> [SKIP][425] ([i915#5354]) +12 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][426] ([i915#3555] / [i915#8228]) -> [SKIP][427] ([i915#9197]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][428] ([i915#6301]) -> [SKIP][429] ([i915#9197])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_panel_fitting@legacy.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][430] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][431] ([i915#12247] / [i915#9423])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][432] ([i915#12247] / [i915#8152]) -> [SKIP][433] ([i915#12247])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][434] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][435] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][436] ([i915#12247]) -> [SKIP][437] ([i915#12247] / [i915#8152]) +1 other test skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][438] ([i915#4281]) -> [SKIP][439] ([i915#3361])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          ([FAIL][440], [FAIL][441]) ([i915#10959]) -> [SKIP][442]
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/igt@kms_tiled_display@basic-test-pattern.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/igt@kms_tiled_display@basic-test-pattern.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic:
    - shard-dg2:          [SKIP][443] ([i915#9197]) -> [SKIP][444] ([i915#3555]) +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_vrr@flip-basic.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          [SKIP][445] ([i915#9197]) -> [SKIP][446] ([i915#9906])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          [SKIP][447] ([i915#3708] / [i915#9197]) -> [SKIP][448] ([i915#3708])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
  [i915#10159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10159
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12065
  [i915#12138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12138
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12375]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3547]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6117]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6117
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9311]: https://gitlab.free

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html

--===============0721437750667003362==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove unused underrun irq/reporti=
ng bits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/139955/">https://patchwork.freedesktop.org/series/139955/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139955v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139955v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15536_full -&gt; Patchwork_139955v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139955v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_139955v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 8)</h2>
<p>Missing    (2): shard-snb-0 shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
139955v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15536/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15536/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15536/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15536/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15536/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5536/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15536/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15536/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15536/shard-glk4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15536/shard-glk3/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15536/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5536/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15536/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15536/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15536/shard-glk1/boot.html">PASS</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk=
9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139955v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk8/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139955v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-glk7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139955v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk6/boot.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/s=
hard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139955v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39955v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139955v2/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139955v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139955v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9955v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139955v2/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15536_full and Patchwork_1=
39955v2_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy-hang@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [14.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy-hang@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [24.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [13.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [24.94] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139955v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@drm_fdinfo@busy-idle-chec=
k-all@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8414">i915#8414</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@fbdev@pan.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i9=
15#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@gem_ccs@suspend-resume@x=
major-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i=
915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@gem_ctx_persistence@process=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-14/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-=
dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_exec_balancer@bonded-s=
emaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4812">i915#4812</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard=
-mtlp-1/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412">i915#12412</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-9/igt@gem_exec_big@single.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-t=
glu-10/igt@gem_exec_big@single.html">ABORT</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-glk2/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955=
v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842=
</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_exec_reloc@basic-rang=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_exec_reloc@basic-wc-cp=
u-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_reloc@basic-write=
-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_exec_schedule@pi-ringf=
ull@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12296">i915#12296</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_lmem_swapping@random.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gem_mmap_gtt@fault-concur=
rent-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-1/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard=
-mtlp-8/igt@gem_mmap_offset@clear.html">ABORT</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10729">i915#10729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2=
/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029">i915#10029</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072=
9">i915#10729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@gem_mmap_wc@write.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_pread@snoop.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
82">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-14/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@gem_pxp@reject-modify-con=
text-protection-off-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@gem_userptr_blits@sd-prob=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@gen7_exec_parse@cmd-cross=
ing-page.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-19/igt@gen9_exec_parse@unaligned=
-access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15536/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">PAS=
S</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139955v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">=
ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@i915_pm_freq_api@freq-bas=
ic-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free">i915#9311</a>)=
 +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39955v2/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
2:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-3/igt@kms_atomic_trans=
ition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#59=
56</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +7 other tests ski=
p</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-15/igt@kms_ccs@bad-pixel-format-=
4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +77 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_ccs@crc-primary-rotat=
ion-180-yf-tiled-ccs@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +142 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +95 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-snb1/igt@kms_chamelium_color@ctm-0-7=
5.html">SKIP</a> +101 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_chamelium_edid@hdmi-e=
did-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6944">i915#6944</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_cursor_crc@cursor-ons=
creen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-ran=
dom-64x21.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_cursor_legacy@cursorb-=
vs-flipa-varying-size.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/=
shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip@2x-flip-vs-modes=
et.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-18/igt@kms_flip@2x-nonexisting-f=
b-interruptible.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-2/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_=
vblank-interruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@kms_flip@flip-vs-suspend-=
interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@kms_flip@flip-vs-suspend-=
interruptible@d-hdmi-a3.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13995=
5v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-rec=
reate@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_flip@plain-flip-fb-recr=
eate@a-vga1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2122">i915#2122</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_flip@plain-flip-fb-re=
create@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2122">i915#2122</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-10/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139955v2/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2122">i915#2122</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_flip_scaled_c=
rc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i9=
15#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"=
>i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_frontbuffer_tracki=
ng@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139955v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-indfb-msflip-blt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 oth=
er tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_hdr@bpc-switch.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/sha=
rd-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr=
24.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139955v2/shard-dg2-2/igt@kms_pipe_crc_basic@compare-crc-sanitych=
eck-xr24.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_plane@plane-panning-top-left.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
55v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#88=
25</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-=
constant.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs=
-premult-vs-constant.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@overlay:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-13/igt@kms_plane_cursor@overlay.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/sh=
ard-dg1-15/igt@kms_plane_cursor@overlay.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_plane_scaling@invalid-parameters.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139955v2/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152"=
>i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@plane-upsca=
le-factor-0-25-with-rotation.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / =
[i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@planes-un=
ity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> =
/ [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152=
">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915=
#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</=
a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/=
shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) +2=
 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139955v2/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
955v2/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3547">i915#=
3547</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-overla=
y-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_psr2_sf@pr-cursor-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-glk8/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> +19 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-1/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> ([i915#9683])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_psr@fbc-psr2-dpms.htm=
l">SKIP</a> ([i915#9688]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_psr@pr-cursor-render.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cp=
u.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_psr@psr2-primary-rende=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1072">i915#1072</a> / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_rotation_crc@sprite-r=
otation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11131">i915#11131</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-snb6/igt@kms_setmode@basic.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39955v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i=
915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-2/igt@perf@blocking@0-rcs0.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-=
tglu-9/igt@perf@blocking@0-rcs0.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) +1 other tes=
t fail</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-rkl-7/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-tglu-2/igt@sriov_basic@enable-vfs-au=
toprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> ([i915#9846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139955v2/shard-dg2-2/igt@gem_create@create-ext-cpu-access-bi=
g.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-10/igt@gem_ctx_engines@invalid-engines.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/120=
27">i915#12027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139955v2/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html=
">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1202=
7">i915#12027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139955v2/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
842">i915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139955v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7=
975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139955v2/shard-dg1-13/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a> +1 other test pass</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-tglu-3/igt@gem_exec_suspend@basi=
c-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139955v2/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk6/igt@gem_softpin@noreloc-s3.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-glk5/igt@g=
em_softpin@noreloc-s3.html">INCOMPLETE</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk3/igt@gem_softpin@no=
reloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/shard-gl=
k1/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375">i915#12375</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#=
5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139955v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@i915_module_load@reload-wi=
th-fault-injection.html">PASS</a></li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139955v2/shard-rkl-5/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139955v2/shard-snb2/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3591">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@i915_power@sanity.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
55v2/shard-mtlp-1/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1221=
6">i915#12216</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139955v2/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">=
PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139955v2/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.h=
tml">PASS</a> +29 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x64:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb6/igt@kms_cursor_crc@cursor-offscreen-64x64.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139955v2/shard-snb1/igt@kms_cursor_crc@cursor-offscreen=
-64x64.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15536/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">INC=
OMPLETE</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139955v2/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions-varying-size.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk9/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdm=
i-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15536/shard-glk8/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2=
.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139955v2/shard-glk9/igt@kms_flip@2x-blocking-wf_vbl=
ank@ac-hdmi-a1-hdmi-a2.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@=
ab-vga1-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb5/igt@kms_flip@2x-p=
lain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +1 other te=
st pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-dg1-17/igt@kms_flip@flip-vs-abso=
lute-wf_vblank-interruptible.html">PASS</a> +2 other tests pass</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@flip-vs-abso=
lute-wf_vblank-interruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12138">i915#12138</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@fli=
p-vs-absolute-wf_vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@d-edp1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139955v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf=
_vblank-interruptible@d-edp1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-s=
hrfb-draw-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_frontbuffer_tracking@=
fbc-rgb565-draw-render.html">PASS</a> +16 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139955v2/shard-dg2-7/igt@kms_frontbuffer_tracking=
@fbc-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139955v2/shard-dg2-10/igt@kms_invalid_mode@bad-vsync-end.html">PASS=
</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i=
915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139955v2/shard-dg2-10/igt@kms_plane@plane-position-hole.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-t=
ransparent-fb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-x:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-12/igt@kms_plane_multiple@tiling-x.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/44=
23">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139955v2/shard-dg1-19/igt@kms_plane_multiple@tiling-x.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/i=
gt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/=
shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard=
-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pi=
pe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/sh=
ard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a> =
+2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@=
planes-upscale-factor-0-25@pipe-b.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_plane_scaling@pl=
anes-upscale-factor-0-25@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39955v2/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#184=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139955v2/shard-dg2-10/igt@kms_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9955v2/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139955v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-=
wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/11521">i915#11521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_properties@plane-properties=
-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@vcs1:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg1-16/igt@perf_pmu@busy-accuracy-50@vcs1.html">INCOMPL=
ETE</a> ([i915#9853]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139955v2/shard-dg1-17/igt@perf_pmu@busy-accuracy-50@vcs1.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12065=
">i915#12065</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139955v2/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12027">i915#12027</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/7091">i915#7091</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139955v2/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-=
ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos=
.html">SKIP</a> ([i915#9531]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9955v2/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i91=
5#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139955v2/shard-dg2-10/igt@kms_big_fb@x-tiled-32bpp-rotate-270.=
html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_big_fb@y-=
tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16b=
pp-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-3=
2bpp-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-=
bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_ccs@cc=
s-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +10 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-ba=
sic-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915=
#11616</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/7213">i915#7213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_content_protection@dp-mst-l=
ic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a> / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_content_protection@legacy=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
7">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139955v2/shard-dg2-5/igt@kms_content_protection@lic-type-1.html"=
>SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_content_protection@mei-interface.html">SK=
IP</a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139955v2/shard-dg2-2/igt@kms_content_protection@mei-interface=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-10/igt@kms_content_protection@srm.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">=
i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139955v2/shard-dg2-4/igt@kms_content_protection@srm.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7162">i915#7162</a> / [i915#9424]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-11/igt@kms_content_pr=
otection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-=
max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid=
-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11453">i915#11453</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_cursor_legacy@c=
ursorb-vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2=
-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible=
@ab-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15536/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-in=
terruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-glk4/=
igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-absolute=
-wf_vblank-interruptible.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/10826">i915#10826</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-snb4/igt@kms_flip@flip-vs-a=
bsolute-wf_vblank-interruptible@a-vga1.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2=
/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-6=
4bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms=
_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/s=
hard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rccc=
s-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139955v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-yt=
ilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#=
8708</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354=
">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-4/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/104=
33">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg=
2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139955v2/shard-dg2-5/igt@kms_frontbuffer_tracking=
@psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +14 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_frontbuffer_trac=
king@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6=
301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139955v2/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2=
/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotatio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12247">i915#12247</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-=
dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-2=
5-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#9=
423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39955v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upsc=
ale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> /=
 [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-2=
5@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139955v2/shard-dg2-2/igt@kms_plane_scaling=
@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#815=
2</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
55v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15536/shard-glk2/igt@kms_tiled_display@basic-test-pattern.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/sh=
ard-glk9/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#109=
59</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139955v2/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
55v2/shard-dg2-10/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915=
#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139955v2/shard-dg2-5/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i9=
15#9906])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15536/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139955v2/shard-dg2-10/igt@prime_vgem@basic-fence-flip.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============0721437750667003362==--
