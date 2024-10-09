Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAC2997201
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 18:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043CE10E790;
	Wed,  9 Oct 2024 16:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E07B10E78E;
 Wed,  9 Oct 2024 16:42:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0509416327105644268=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_move_segment_it?=
 =?utf-8?q?erator_to_match_current_offset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 16:42:09 -0000
Message-ID: <172849212950.1211049.13143523318015600266@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <quw77kz25yey6pnli7dabf2zuwhfycgil5aajhgmz5f3cxxawz@s4qvuuluu42m>
In-Reply-To: <quw77kz25yey6pnli7dabf2zuwhfycgil5aajhgmz5f3cxxawz@s4qvuuluu42m>
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

--===============0509416327105644268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: move segment iterator to match current offset
URL   : https://patchwork.freedesktop.org/series/139687/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15490_full -> Patchwork_139687v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139687v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139687v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139687v1_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49]) -> ([PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [FAIL][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk9/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk9/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-5/igt@gem_exec_balancer@nop.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_exec_balancer@nop.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][77] -> [INCOMPLETE][78] +1 other test incomplete
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-dg1:          [PASS][79] -> [FAIL][80] +1 other test fail
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-16/igt@kms_async_flips@alternate-sync-async-flip.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15490_full and Patchwork_139687v1_full:

### New IGT tests (2) ###

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.35] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.36] s

  

Known issues
------------

  Here are the changes found in Patchwork_139687v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#8414])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@fbdev@write:
    - shard-dg2:          [PASS][82] -> [SKIP][83] ([i915#2582])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@fbdev@write.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@fbdev@write.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][84] ([i915#12297])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3555] / [i915#9323])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3555] / [i915#9323])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#9323])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#9323]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][89] ([i915#7297])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#280])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#4525])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-snb:          NOTRUN -> [SKIP][93] +19 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb4/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3281]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3281])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3281]) +9 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4537] / [i915#4812])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [PASS][98] -> [ABORT][99] ([i915#7975] / [i915#8213]) +1 other test abort
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-4/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4860])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#4613]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#4613]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4613])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4083])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_mmap_wc@fault-concurrent.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#4083]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3282]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3282]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#4270])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#4270]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#8428])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-3/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#4079])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4079])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_tiling_max_stride:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4077]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_tiling_max_stride.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3297]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#3297]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#3297])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen3_render_tiledy_blits:
    - shard-mtlp:         NOTRUN -> [SKIP][117] +6 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          ([PASS][118], [PASS][119]) -> [ABORT][120] ([i915#12375] / [i915#5566]) +1 other test abort
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#2856]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#2527] / [i915#2856])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#2527])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2856])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#2527]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#6227])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][127] -> [ABORT][128] ([i915#9820])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][129] -> [ABORT][130] ([i915#9820])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#8399])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#11681] / [i915#6621])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5190])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#8709]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#8709]) +7 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#8709]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#8709]) +11 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-fencing:
    - shard-glk:          ([PASS][138], [PASS][139]) -> [FAIL][140] ([i915#12238])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html

  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
    - shard-glk:          ([PASS][141], [PASS][142]) -> [FAIL][143] ([i915#11859])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#5286]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5286]) +4 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#3638]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#5190] / [i915#9197])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#6187])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-glk:          NOTRUN -> [SKIP][149]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#10307] / [i915#6095]) +165 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#12313])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#6095]) +59 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#6095]) +9 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#12313]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#6095]) +24 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9197]) +7 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#6095]) +111 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3742]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#3742])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#11616] / [i915#7213]) +3 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4087]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#7828])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#7828]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#7828]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][166] ([i915#7173])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#11453]) +2 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#3555] / [i915#8814]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#11453]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3555]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#3555])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][172] +27 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#9067])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#8588])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_display_modes@mst-extended-mode-negative.html
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#8588])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#3840] / [i915#9688])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#3840])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#3840])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#1839])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#1839])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9337])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#9337])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4881])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#9934])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][185] -> [FAIL][186] ([i915#2122]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-snb2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3637]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3637]) +5 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][189], [PASS][190]) -> [FAIL][191] ([i915#2122])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          [PASS][192] -> [SKIP][193] ([i915#5354]) +12 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible:
    - shard-dg2:          [PASS][194] -> [FAIL][195] ([i915#10826]) +1 other test fail
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [PASS][196] -> [FAIL][197] ([i915#11989] / [i915#2122])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [PASS][198] -> [FAIL][199] ([i915#2122])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#3555]) +3 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3555] / [i915#8813]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#8810]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555]) +2 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#2672]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#2587] / [i915#2672]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#2672]) +2 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#1825]) +33 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#5439])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3458])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#8708])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][213] +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#1825]) +9 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#5354]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#9766])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][217] +56 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3023]) +23 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8228])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#3555] / [i915#8228])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#3555] / [i915#8228]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-10/igt@kms_hdr@static-toggle.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-11/igt@kms_hdr@static-toggle.html
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8228]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8228])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3555]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#10656]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#10656]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [PASS][228] -> [SKIP][229] ([i915#9197]) +36 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_lease@lease-revoke.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_lease@lease-revoke.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#7294])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][232] ([i915#8292])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#12247]) +5 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][234] -> [SKIP][235] ([i915#3555] / [i915#8152] / [i915#9423])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [PASS][236] -> [SKIP][237] ([i915#8152] / [i915#9423])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][238] -> [SKIP][239] ([i915#8152])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          [PASS][240] -> [SKIP][241] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [PASS][242] -> [SKIP][243] ([i915#12247]) +14 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][244] -> [SKIP][245] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][246] -> [SKIP][247] ([i915#12247] / [i915#8152]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#12247] / [i915#3555] / [i915#6953])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#12247]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-dg2:          [PASS][250] -> [SKIP][251] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#5354])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#9812])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#9685])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_rpm@cursor:
    - shard-dg2:          [PASS][255] -> [SKIP][256] ([i915#1849])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_pm_rpm@cursor.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_pm_rpm@cursor.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#9519])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][258] -> [SKIP][259] +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_pm_rpm@i2c.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html
    - shard-dg1:          [PASS][260] -> [DMESG-WARN][261] ([i915#4423])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-15/igt@kms_pm_rpm@i2c.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-15/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#9519]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#6524]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#6524])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#11520]) +7 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#11520])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#9808])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#11520]) +4 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#12316]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][271] ([i915#11520])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#9683])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#9688]) +4 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1.html

  * igt@kms_psr@pr-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#9732]) +12 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_psr@pr-dpms.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#1072] / [i915#9732]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#1072] / [i915#9732])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +19 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#5289])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#5289])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#3555]) +3 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][281] ([i915#12231]) +1 other test abort
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][282] -> [FAIL][283] ([IGT#2])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-10/igt@kms_sysfs_edid_timing.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#8623])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#11920])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [PASS][286] -> [SKIP][287] ([i915#3555] / [i915#9906])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-10/igt@kms_vrr@negative-basic.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-5/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#9906])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#2437])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#2437] / [i915#9412])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#2437] / [i915#9412])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#7387])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@perf@global-sseu-config.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#2433])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][294] ([i915#4349]) +3 other tests fail
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#8850])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#8516])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#3291] / [i915#3708])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#3708])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#9917])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#4818])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-dg2:          [SKIP][301] ([i915#2582]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@fbdev@unaligned-write.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@fbdev@unaligned-write.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][303] ([i915#7297]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][305] ([i915#12027]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [FAIL][307] ([i915#5784]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-3/igt@gem_eio@reset-stress.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([FAIL][309], [FAIL][310]) ([i915#2842]) -> [PASS][311] +1 other test pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@gem_exec_fair@basic-pace-solo.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][312] ([i915#2842]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][314] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][316] ([i915#3591]) -> [PASS][317] +1 other test pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [FAIL][318] ([i915#11808]) -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][320] ([i915#5956]) -> [PASS][321] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-16/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][322] ([i915#5138]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_color@ctm-0-50:
    - shard-dg2:          [SKIP][324] ([i915#5354]) -> [PASS][325] +11 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_color@ctm-0-50.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_color@ctm-0-50.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-glk:          [INCOMPLETE][326] -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([FAIL][328], [FAIL][329]) ([i915#2346]) -> [PASS][330]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [SKIP][331] ([i915#9738]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_feature_discovery@display-1x.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][333], [PASS][334]) ([i915#2122]) -> [PASS][335] +4 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][336], [PASS][337]) -> [PASS][338]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          ([PASS][339], [FAIL][340]) ([i915#79]) -> [PASS][341] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          [INCOMPLETE][342] ([i915#4839] / [i915#6113]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@d-edp1:
    - shard-mtlp:         [INCOMPLETE][344] ([i915#6113]) -> [PASS][345] +3 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@d-edp1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_flip@flip-vs-suspend@d-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [SKIP][346] ([i915#3555]) -> [PASS][347] +3 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [FAIL][348] ([i915#6880]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][350] -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [SKIP][352] ([i915#9197]) -> [PASS][353] +31 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [SKIP][354] ([i915#7294]) -> [PASS][355] +1 other test pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
    - shard-dg2:          [SKIP][356] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][357] +1 other test pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][358] ([i915#12247] / [i915#8152]) -> [PASS][359] +1 other test pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][360] ([i915#8152] / [i915#9423]) -> [PASS][361] +1 other test pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][362] ([i915#12247]) -> [PASS][363] +8 other tests pass
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][364] ([i915#8152]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][366] ([i915#9295]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][368] ([i915#9340]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][370] ([i915#9519]) -> [PASS][371]
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][372] ([i915#9519]) -> [PASS][373] +1 other test pass
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-mtlp:         [FAIL][374] -> [PASS][375] +1 other test pass
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [FAIL][376] ([i915#9196]) -> [PASS][377] +1 other test pass
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-snb:          [INCOMPLETE][378] -> [PASS][379] +1 other test pass
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-snb5/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb4/igt@kms_vblank@ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([PASS][380], [FAIL][381]) ([i915#2842]) -> [FAIL][382] ([i915#2842]) +1 other test fail
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][383], [ABORT][384]) ([i915#9820]) -> [ABORT][385] ([i915#9820])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-glk:          ([DMESG-WARN][386], [DMESG-WARN][387]) ([i915#1982] / [i915#9311]) -> [DMESG-WARN][388] ([i915#9311])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@i915_selftest@mock.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/igt@i915_selftest@mock.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          [SKIP][389] ([i915#1769] / [i915#3555]) -> [SKIP][390] ([i915#9197])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][391] -> [SKIP][392] ([i915#9197]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] +1 other test skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-dg2:          [SKIP][395] ([i915#4538] / [i915#5190]) -> [SKIP][396] ([i915#5190] / [i915#9197]) +6 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg2:          [SKIP][397] ([i915#5190] / [i915#9197]) -> [SKIP][398] ([i915#4538] / [i915#5190]) +6 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][399] ([i915#5190] / [i915#9197]) -> [SKIP][400] ([i915#5190])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:
    - shard-dg2:          [SKIP][401] ([i915#9197]) -> [SKIP][402] ([i915#10307] / [i915#6095]) +9 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][403] ([i915#9197]) -> [SKIP][404] ([i915#12313]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][405] ([i915#12313]) -> [SKIP][406] ([i915#9197])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][407] ([i915#10307] / [i915#6095]) -> [SKIP][408] ([i915#9197]) +6 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][409] ([i915#9197]) -> [SKIP][410] ([i915#4087])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_cdclk@plane-scaling.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][411] ([i915#7118] / [i915#9424]) -> [SKIP][412] ([i915#9197])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][413] ([i915#3299]) -> [SKIP][414] ([i915#9197])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_content_protection@dp-mst-type-1.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][415] ([i915#9197]) -> [SKIP][416] ([i915#7118] / [i915#9424])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@legacy.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][417] ([i915#9197]) -> [TIMEOUT][418] ([i915#7173])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][419] ([i915#9433]) -> [SKIP][420] ([i915#9424])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][421] ([i915#9197]) -> [SKIP][422] ([i915#7118] / [i915#7162] / [i915#9424])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@type1.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][423] ([i915#9197]) -> [SKIP][424] ([i915#11453])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][425] ([i915#9197]) -> [SKIP][426] ([i915#3555]) +5 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][427] ([i915#11453]) -> [SKIP][428] ([i915#9197])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-dg2:          [SKIP][429] ([i915#9197]) -> [SKIP][430] ([i915#5354]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][431] ([i915#4103] / [i915#4213]) -> [SKIP][432] ([i915#9197])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          [SKIP][433] ([i915#5354]) -> [SKIP][434] ([i915#9197]) +2 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][435] ([i915#9197]) -> [SKIP][436] ([i915#9833])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][437] ([i915#3555]) -> [SKIP][438] ([i915#9197]) +3 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][439] ([i915#9197]) -> [SKIP][440] ([i915#8812])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][441] ([i915#9197]) -> [SKIP][442] ([i915#3555] / [i915#3840])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-snb:          [FAIL][443] ([i915#10826]) -> [FAIL][444] ([i915#2122]) +1 other test fail
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-dg2:          [SKIP][445] ([i915#3555]) -> [SKIP][446] ([i915#2672] / [i915#3555])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][447] ([i915#2672] / [i915#3555]) -> [SKIP][448] ([i915#3555])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][449] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][450] ([i915#3555] / [i915#5190])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][451] ([i915#3555] / [i915#5190]) -> [SKIP][452] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][453] ([i915#5354]) -> [SKIP][454] ([i915#8708]) +13 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][455] ([i915#10433] / [i915#3458]) -> [SKIP][456] ([i915#5354])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][457] ([i915#8708]) -> [SKIP][458] ([i915#5354]) +12 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2:          [SKIP][459] ([i915#10433] / [i915#3458]) -> [SKIP][460] ([i915#3458]) +1 other test skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          [SKIP][461] ([i915#3458]) -> [SKIP][462] ([i915#5354]) +13 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][463] ([i915#5354]) -> [SKIP][464] ([i915#3458]) +14 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [SKIP][465] ([i915#9197]) -> [SKIP][466] ([i915#3555] / [i915#8228])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_hdr@bpc-switch.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_hdr@bpc-switch.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][467] ([i915#4070] / [i915#4816]) -> [SKIP][468] ([i915#4816])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][469] ([i915#6301]) -> [SKIP][470] ([i915#9197])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-11/igt@kms_panel_fitting@legacy.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          [SKIP][471] ([i915#9197]) -> [SKIP][472] ([i915#3555] / [i915#8821])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][473] ([i915#6953] / [i915#9423]) -> [SKIP][474] ([i915#6953] / [i915#8152] / [i915#9423])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][475] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][476] ([i915#12247] / [i915#9423]) +1 other test skip
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][477] ([i915#12247] / [i915#8152]) -> [SKIP][478] ([i915#12247]) +3 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][479] ([i915#12247] / [i915#9423]) -> [SKIP][480] ([i915#12247] / [i915#8152] / [i915#9423])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][481] ([i915#12247]) -> [SKIP][482] ([i915#12247] / [i915#8152])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][483] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][484] ([i915#12247] / [i915#6953] / [i915#9423]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-glk:          ([SKIP][485], [INCOMPLETE][486]) ([i915#11520] / [i915#2295]) -> [SKIP][487] ([i915#11520])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          [SKIP][488] ([i915#9197]) -> [SKIP][489] ([i915#11131])
   [488]: https://intel-g

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/index.html

--===============0509416327105644268==
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
<tr><td><b>Series:</b></td><td>drm/i915: move segment iterator to match cur=
rent offset</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/139687/">https://patchwork.freedesktop.org/series/139687/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139687v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139687v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15490_full -&gt; Patchwork_139687v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139687v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_139687v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
139687v1_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15490/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15490/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15490/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15490/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15490/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5490/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15490/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15490/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15490/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15490/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15490/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5490/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15490/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15490/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15490/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139687v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk=
5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139687v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139687v1/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk2/boot.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139687v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139687v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/s=
hard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139687v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39687v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139687v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139687v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk9/boot.html"=
>PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-5/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard=
-mtlp-4/igt@gem_exec_balancer@nop.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
687v1/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-16/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139687v1/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip.h=
tml">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15490_full and Patchwork_1=
39687v1_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-=
2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-=
2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.36] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139687v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-h=
ang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@fbdev@write.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt=
@fbdev@write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-snb4/igt@gem_exec_fair@basic-none-so=
lo.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-c=
pu.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_exec_reloc@basic-write=
-read.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9687v1/shard-dg2-4/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([=
i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-v=
erify-random.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_lmem_swapping@paralle=
l-random-engines.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_mmap_wc@fault-concurre=
nt.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-3/igt@gem_render_copy@mixed-til=
ed-to-yf-tiled-ccs.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gem_tiling_max_stride.html=
">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gem_userptr_blits@set-cac=
he-level.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@gen3_render_tiledy_blits.=
html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk7/=
igt@gen9_exec_parse@allowed-all.html">PASS</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/igt@gen9_exec_=
parse@allowed-all.html">ABORT</a> ([i915#12375] / [i915#5566]) +1 other tes=
t abort</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@gen9_exec_parse@batch-wit=
hout-end.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-snb5/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139687v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@i915_pm_freq_api@freq-rese=
t.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-13/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-8/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk9/igt@kms_atomic_transition@modeset-transition-fenc=
ing.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15490/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.h=
tml">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fe=
ncing.html">FAIL</a> ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk4/igt@kms_atomic_transition@modeset-transition-fenc=
ing@2x-outputs.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_15490/shard-glk9/igt@kms_atomic_transition@modeset-transitio=
n-fencing@2x-outputs.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_139687v1/shard-glk8/igt@kms_atomic_transition=
@modeset-transition-fencing@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-=
rotate-180.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_big_fb@x-tiled-16bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-r=
otate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb.=
html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_big_fb@yf-tiled-8bpp-ro=
tate-90.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-y=
f-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +16=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +59 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434=
] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_ccs@crc-primary-basic=
-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +9 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +24 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-ccs.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +111 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-b-dp-3.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd=
-without-ddc.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_content_protection@li=
c-type-0@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> ([i915#9337])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_feature_discovery@dp-=
mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-snb2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab=
-vga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139687v1/shard-snb2/igt@kms_flip@2x-flip-vs-wf_vblank=
-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#3637]) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hd=
mi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15490/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-=
a2.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139687v1/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi=
-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupt=
ible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank-i=
nterruptible.html">SKIP</a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139687v1/shard-dg2-4/igt@kms_flip@flip-vs-wf_vblank-interruptible.html"=
>FAIL</a> ([i915#10826]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139687v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible=
.html">FAIL</a> ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interr=
uptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_flip_scaled_c=
rc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#=
3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1825]) +33 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +9 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([i915#5354]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-move.html">SKIP</a> +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> ([i915#3023]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-10/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard=
-dg2-11/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]=
) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_invalid_mode@bad-hsync=
-end.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#10656]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_joiner@basic-force-ult=
ra-joiner.html">SKIP</a> ([i915#10656]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_lease@lease-revoke.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shar=
d-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> ([i915#9197]) +36 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
687v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> ([i9=
15#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-=
scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#=
8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pi=
xel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale=
-20x20-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pi=
xel-format@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@plane-=
upscale-20x20-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-=
5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-facto=
r-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423=
])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-=
5@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscal=
e-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953=
] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@p=
lanes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#1224=
7] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +8 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25=
-downscale-factor-0-75.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@p=
lanes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247=
] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_pm_backlight@basic-bri=
ghtness.html">SKIP</a> ([i915#5354])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_pm_rpm@cursor.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-=
2/igt@kms_pm_rpm@cursor.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2=
/igt@kms_pm_rpm@i2c.html">SKIP</a> +1 other test skip</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-15/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-1=
5/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687=
v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#951=
9]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-continuous-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-prim=
ary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-continuous-sf.html">SKIP</a> ([i915#12316]) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-snb4/igt@kms_psr2_sf@psr2-primary-pl=
ane-update-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_psr@fbc-psr-primary-m=
map-cpu@edp-1.html">SKIP</a> ([i915#9688]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@kms_psr@pr-dpms.html">SKI=
P</a> ([i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_psr@psr-cursor-mmap-cp=
u.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_psr@psr-sprite-plane-=
move.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-o=
noff.html">SKIP</a> ([i915#1072] / [i915#9732]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_selftest@drm_framebuf=
fer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-10/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard=
-dg2-11/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@kms_vrr@lobf.html">SKIP</=
a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shar=
d-dg2-5/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906=
])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-4/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@perf@global-sseu-config.h=
tml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@perf@per-context-mode-unp=
rivileged.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> ([i915#4349]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-6/igt@prime_vgem@basic-read.html=
">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-rkl-1/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-tglu-8/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139687v1/shard-mtlp-4/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39687v1/shard-dg2-10/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@gem_c=
cs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
> ([i915#12027]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139687v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-3/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#57=
84]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9687v1/shard-dg2-10/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk=
7/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>) ([i915#2842]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-g=
lk3/igt@gem_exec_fair@basic-pace-solo.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-mtlp-=
4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139687v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing.html">FAIL</a> ([i915#11808]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-tglu-10/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other te=
st pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg1-16/igt@k=
ms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">=
PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139687v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_color@ctm-0-50.html">SKIP</a> ([i915#5354=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1396=
87v1/shard-dg2-10/igt@kms_color@ctm-0-50.html">PASS</a> +11 other tests pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-glk6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15490/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a>) ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</=
a> ([i915#9738]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139687v1/shard-dg2-10/igt@kms_feature_discovery@display-1x.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@a=
c-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15490/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank-interr=
uptible@ac-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2122]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/igt@k=
ms_flip@2x-flip-vs-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a=
> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@b=
c-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15490/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank-interr=
uptible@bc-hdmi-a1-hdmi-a2.html">PASS</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk5/igt@kms_flip@2x-fli=
p-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15490/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@b-hdmi-a2.html">FAIL</a>) ([i915#79]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk1/igt@kms_flip@flip-vs-=
expired-vblank-interruptible@b-hdmi-a2.html">PASS</a> +1 other test pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a=
> ([i915#4839] / [i915#6113]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139687v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@d-edp1.html">INCOMP=
LETE</a> ([i915#6113]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139687v1/shard-mtlp-6/igt@kms_flip@flip-vs-suspend@d-edp1.h=
tml">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_flip_s=
caled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a> +3 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-3/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139687v1/shard-snb2/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139687v1/shard-dg2-10/igt@kms_pipe_crc_basic@suspend-read-crc.=
html">PASS</a> +31 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html=
">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_plane_alpha_blend@constant-a=
lpha-max.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/s=
hard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg=
2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt=
@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_p=
lane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a>=
 +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_pl=
ane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#929=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
687v1/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#93=
40]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9687v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139687v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139687v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg=
-area.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139687v1/shard-mtlp-1/igt@kms_psr2_sf@psr2-overlay-plane-upda=
te-sf-dmg-area.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak.html">FAI=
L</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139687v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-snb5/igt@kms_vblank@ts-continuation-dpms-suspend.html">=
INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-snb4/igt@kms_vblank@ts-continuation-dpms-suspend.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/sha=
rd-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) ([i915#2842=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1396=
87v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk4/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15490/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">ABO=
RT</a>) ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139687v1/shard-glk3/igt@i915_module_load@reload-with-fault-i=
njection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15490/shard-glk5/igt=
@i915_selftest@mock.html">DMESG-WARN</a>) ([i915#1982] / [i915#9311]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/sha=
rd-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/=
shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9687v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([i=
915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139687v1/shard-dg2-10/igt@kms_big_fb@x-tiled-32bpp-rotate-270.=
html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">SK=
IP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_big_fb@y-tiled-32b=
pp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_big_f=
b@y-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i91=
5#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_big_fb@yf-tile=
d-addfb-size-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.=
html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_ccs@crc-primary-rotatio=
n-180-y-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +9 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-c=
cs.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html"=
>SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-=
lnl-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs=
-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_ccs@r=
andom-ccs-data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915=
#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139687v1/shard-dg2-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#408=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKI=
P</a> ([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_content_protection@=
atomic-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> ([i915#3299]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139687v1/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1=
.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139687v1/shard-dg2-7/igt@kms_content_protection@legacy.html">SKIP</a=
> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@lic-type-0.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139687v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html=
">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg1-13/igt@kms_content_protection@mei-interface.html">S=
KIP</a> ([i915#9433]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139687v1/shard-dg1-19/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139687v1/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a>=
 ([i915#7118] / [i915#7162] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">=
SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_cursor_crc@cursor-onscreen-512=
x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139687v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.=
html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html">=
SKIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512=
x170.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atom=
ic.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_cursor_legacy@2x-lon=
g-cursor-vs-flip-atomic.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_=
cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#91=
97])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-si=
ze.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139687v1/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP=
</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</=
a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139687v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">S=
KIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139687v1/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-gtt.html=
">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i91=
5#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139687v1/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3=
555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a>=
 ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139687v1/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL=
</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bp=
p-yftileccs-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms=
_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKI=
P</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bp=
p-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2=
-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.ht=
ml">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687=
v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-down=
scaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-=
7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html=
">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-flip=
track-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-10/igt@kms_frontbuf=
fer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]=
) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-=
dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-c=
pu.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP<=
/a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledp=
rimary.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-6/igt@kms_fr=
ontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> ([i915#3458]) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#=
5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-7/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3458]) +14 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#9197=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1396=
87v1/shard-dg2-7/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915=
#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> ([i915#4070] / [i915#4816]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-rkl-7/igt@kms_multipip=
e_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-11/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i9=
15#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139687v1/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#=
9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i=
915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139687v1/shard-dg2-7/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i9=
15#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> ([i915#6953] / [i915#9423]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_plane_scaling@inte=
l-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1=
/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifi=
ers.html">SKIP</a> ([i915#12247] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-pixel-format@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/sha=
rd-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-form=
at@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/ig=
t@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a=
> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-dg2-2/igt@kms_p=
lane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a=
> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15490/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-2=
5-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#81=
52] / [i915#9423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_139687v1/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-fac=
tor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [=
i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-conti=
nuous-sf.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15490/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-conti=
nuous-sf.html">INCOMPLETE</a>) ([i915#11520] / [i915#2295]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139687v1/shard-glk3/=
igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([=
i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-g">SKIP</a> ([i915#9197]) =
-&gt; [SKIP][489] ([i915#11131])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0509416327105644268==--
