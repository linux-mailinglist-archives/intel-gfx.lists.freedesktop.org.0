Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA2A832732
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8998B10E9BF;
	Fri, 19 Jan 2024 10:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62C710E9C7;
 Fri, 19 Jan 2024 10:03:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1590822743790762276=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/gt=3A_Reflect_the_?=
 =?utf-8?q?true_and_current_status_of_rc6=5Fenable_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juan Escamilla" <jcescami@wasd.net>
Date: Fri, 19 Jan 2024 10:03:20 -0000
Message-ID: <170565860073.576591.15241072770559685467@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240116172922.3460695-1-jcescami@wasd.net>
In-Reply-To: <20240116172922.3460695-1-jcescami@wasd.net>
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

--===============1590822743790762276==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Reflect the true and current status of rc6_enable (rev2)
URL   : https://patchwork.freedesktop.org/series/128839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14139_full -> Patchwork_128839v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128839v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128839v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128839v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-2/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_pm_rpm@cursor:
    - shard-tglu:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-9/igt@kms_pm_rpm@cursor.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-5/igt@kms_pm_rpm@cursor.html

  
Known issues
------------

  Here are the changes found in Patchwork_128839v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [FAIL][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html
    - shard-glk:          ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70]) -> ([PASS][71], [FAIL][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90]) ([i915#8293])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk3/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk7/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk4/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk5/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk5/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk5/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk7/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk8/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#8411]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#8411])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#8414]) +8 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#8414]) +20 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@gem_busy@semaphore:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3936])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_busy@semaphore.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][96] ([i915#7297])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][97] -> [FAIL][98] ([i915#6268])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#8555])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#5882]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#280])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][102] -> [ABORT][103] ([i915#10030] / [i915#7975] / [i915#8213] / [i915#8398])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-4/igt@gem_eio@hibernate.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4771])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4812]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4525])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-glk:          NOTRUN -> [FAIL][107] ([i915#9606])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@gem_exec_capture@many-4k-zero.html
    - shard-mtlp:         NOTRUN -> [FAIL][108] ([i915#9606])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][109] ([i915#2846])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][110] -> [FAIL][111] ([i915#2876])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][112] -> [FAIL][113] ([i915#2842]) +3 other tests fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4473] / [i915#4771]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglu:         [PASS][115] -> [FAIL][116] ([i915#2842])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3539] / [i915#4852]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([fdo#109283] / [i915#5107])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3281]) +8 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3281]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-wc-noreloc.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4537])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][122] ([i915#7975] / [i915#8213])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4860])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#4613]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#284])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#4077]) +13 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4083]) +4 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4083]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3282]) +4 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3282])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4270]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#4270])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4270]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#3282]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#8428]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4079]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_tiled_pread_basic:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#4079])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3297])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3297]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3297] / [i915#4880])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@relocations:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3281]) +5 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_userptr_blits@relocations.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([fdo#109289]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#2856]) +3 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#2527])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#2856]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#4881])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][147] -> [INCOMPLETE][148] ([i915#9820] / [i915#9849])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          NOTRUN -> [ABORT][149] ([i915#9820])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#6590]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8925])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][152] ([i915#8346])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@i915_pm_rps@waitboost.html

  * igt@i915_pm_sseu@full-enable:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8437])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#6188])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([fdo#109303])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#4077]) +7 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4212])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#8709]) +7 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([fdo#111614])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#5286]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([fdo#111615] / [i915#5286])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([fdo#111614]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([fdo#111615]) +11 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][164] -> [FAIL][165] ([i915#3743]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5190]) +10 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([fdo#111615])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4538] / [i915#5190]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([fdo#110723]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#5354] / [i915#6095]) +36 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#5354] / [i915#6095]) +5 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#5354]) +7 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#5354] / [i915#6095]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#5354]) +71 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4087] / [i915#7213]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4087]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([fdo#111827])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([fdo#111827])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111827])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7828]) +8 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#7828]) +5 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#7828]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#9424])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#3299])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#7118]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#8814])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8814]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3359]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3359])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3359]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([fdo#111767] / [fdo#111825]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#9809]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#4213])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#4103])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([fdo#109274])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([fdo#109274] / [i915#5354]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#9067])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#4103] / [i915#4213])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9227])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#9723])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3555]) +5 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#3555] / [i915#3840])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3555] / [i915#3840]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#3555] / [i915#3840])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3469])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#4854])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#1839])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#9337])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([fdo#109274] / [i915#3637])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3637]) +3 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([fdo#109274]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#8381])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [INCOMPLETE][213] ([i915#4839])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2672]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#2672]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#2672]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#2672] / [i915#3555]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#5274])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][219] -> [SKIP][220] ([fdo#109271]) +14 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#8708]) +8 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3023]) +4 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([fdo#111825]) +2 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#1825]) +23 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#8708]) +15 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3458]) +12 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([fdo#109280])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([fdo#111825] / [i915#1825]) +8 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([fdo#110189])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555] / [i915#8228])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#3555] / [i915#8228])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#4816])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8806]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#6953])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9423]) +3 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][237] ([fdo#109271]) +86 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#9423]) +7 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#5176]) +5 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#5176] / [i915#9423]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#5176] / [i915#9423]) +3 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#5235]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#5235] / [i915#9423]) +7 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#9812])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#9685])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [FAIL][246] ([i915#9298]) +1 other test fail
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#9519])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#9519])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#9519]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([fdo#109293])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#6524] / [i915#6805])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#9683]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4235])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#4235] / [i915#5190]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#4235]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3555])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#8623])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#9906])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-snb:          NOTRUN -> [SKIP][261] ([fdo#109271]) +102 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb6/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#2437])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([fdo#109289]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][264] ([i915#6806])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-read:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#3708]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#9917])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-mtlp:         NOTRUN -> [FAIL][267] ([i915#9779])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#2575]) +9 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([fdo#109315]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#2575]) +8 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#7711]) +4 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_tiling@get-bad-flags:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#7711]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@vc4/vc4_tiling@get-bad-flags.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#7711]) +7 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@vc4/vc4_wait_bo@bad-bo.html

  
#### Possible fixes ####

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-dg1:          [TIMEOUT][275] ([i915#3778]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-dg1-13/igt@gem_exec_endless@dispatch@vecs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-12/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][277] ([i915#2842]) -> [PASS][278] +1 other test pass
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [ABORT][279] ([i915#10029]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [INCOMPLETE][281] ([i915#9200] / [i915#9849]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][283] ([i915#9820]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][285] ([i915#9407]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [FAIL][287] ([i915#3591]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][289] ([i915#7790]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-snb4/igt@i915_pm_rps@reset.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][291] ([i915#10031]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][293] ([i915#5138]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][295] ([i915#3743]) -> [PASS][296] +1 other test pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-rkl:          [FAIL][297] -> [PASS][298] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][299] ([fdo#109271]) -> [PASS][300] +12 other tests pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][301] ([i915#9519]) -> [PASS][302] +3 other tests pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-tglu:         [ABORT][303] -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-9/igt@kms_pm_rpm@system-suspend-modeset.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@prime_vgem@fence-wait@vcs1:
    - shard-mtlp:         [ABORT][305] ([i915#8875] / [i915#9926]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-8/igt@prime_vgem@fence-wait@vcs1.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@prime_vgem@fence-wait@vcs1.html

  * igt@prime_vgem@fence-wait@vecs0:
    - shard-mtlp:         [DMESG-WARN][307] -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-mtlp-8/igt@prime_vgem@fence-wait@vecs0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@prime_vgem@fence-wait@vecs0.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-glk:          [WARN][309] ([i915#2658]) -> [INCOMPLETE][310] ([i915#10042])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk8/igt@gem_pread@exhaustion.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk3/igt@gem_pread@exhaustion.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-tglu:         [WARN][311] ([i915#2681]) -> [FAIL][312] ([i915#3591])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@kms_content_protection@atomic:
    - shard-snb:          [INCOMPLETE][313] ([i915#8816]) -> [SKIP][314] ([fdo#109271]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-snb7/igt@kms_content_protection@atomic.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb2/igt@kms_content_protection@atomic.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][315] ([i915#4070] / [i915#4816]) -> [SKIP][316] ([i915#4816])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#10029]: https://gitlab.freedesktop.org/drm/intel/issues/10029
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#10042]: https://gitlab.freedesktop.org/drm/intel/issues/10042
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8437]: https://gitlab.freedesktop.org/drm/intel/issues/8437
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9298]: https://gitlab.freedesktop.org/drm/intel/issues/9298
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9926]: https://gitlab.freedesktop.org/drm/intel/issues/9926


Build changes
-------------

  * Linux: CI_DRM_14139 -> Patchwork_128839v2

  CI-20190529: 20190529
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7683: 7683
  Patchwork_128839v2: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html

--===============1590822743790762276==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Reflect the true and current st=
atus of rc6_enable (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/128839/">https://patchwork.freedesktop.org/series/128839/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128839v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128839v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14139_full -&gt; Patchwork_128839v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128839v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_128839v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
128839v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-2/igt@kms_cursor_legacy@single-bo@all-pipes.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">DME=
SG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-9/igt@kms_pm_rpm@cursor.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tgl=
u-5/igt@kms_pm_rpm@cursor.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128839v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14139/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14139/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14139/shard-rkl-3/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-3/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_141=
39/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14139/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14139/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14139/shard-rkl-6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1413=
9/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-rkl-7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shar=
d-rkl-7/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128839v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/sh=
ard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128839v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128839v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-r=
kl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128839v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1288=
39v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128839v2/shard-rkl-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128839v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2=
/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128839v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shar=
d-rkl-7/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8293">i915#8293</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14139/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14139/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14139/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/sha=
rd-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14139/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14139/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14139/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14139/shard-glk8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/shard-glk9/boot.h=
tml">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128839v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk1/boot.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/s=
hard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128839v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28839v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128839v2/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128839v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128839v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8839v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128839v2/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128839v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128839v2/shard-glk9/boot.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8414">i915#8414</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@drm_fdinfo@busy-idle-check=
-all@ccs3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_busy@semaphore.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3936">=
i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839=
v2/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5882">i915#5882</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-4/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tgl=
u-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/10030">i915#10030</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8398">i915#8398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9606">i915#9606</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_exec_capture@many-4k-=
zero.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-glk8/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v=
2/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#2876</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839=
v2/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3=
 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4771">i915#4771</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8839v2/shard-tglu-8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_exec_schedule@deep@rc=
s0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4537">i915#4537</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@gem_lmem_swapping@paralle=
l-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#28=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@gem_partial_pwrite_pread@=
write-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_readwrite@write-bad-h=
andle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_render_copy@mixed-til=
ed-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_tiled_pread_basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@gen9_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@i915_fb_tiling.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915=
#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128839v2/shard-dg1-18/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9849">i915#9849</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@i915_module_load@reload-wi=
th-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@i915_pm_rps@thresholds-idl=
e-park@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@i915_pm_rps@waitboost.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/834=
6">i915#8346</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8437">i915#8437</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@i915_query@query-topology=
-known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@i915_suspend@fence-restor=
e-tiled2untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@4-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +11 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128839v2/shard-tglu-5/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +10 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_ccs@pipe-a-bad-pixel-=
format-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +36 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_ccs@pipe-c-missing-cc=
s-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_ccs@pipe-d-crc-sprite=
-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +71 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_chamelium_color@ctm-0-=
50.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_content_protection@typ=
e1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9809">i915#9809</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_cursor_legacy@cursorb=
-vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-2/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/83=
81">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-snb6/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3=
555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_force_connector_basic@=
prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128839v2/shard-snb5/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +14 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +23 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +15 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +12 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +8 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8806">i915#8806</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-=
hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)=
 +86 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-h=
dmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg1-12/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-=
hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_pm_dc@dc6-psr.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9298">i=
915#9298</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-=
dg2-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shar=
d-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@kms_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9683">i915#9683</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_rotation_crc@sprite-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_setmode@invalid-clone-=
single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-snb6/igt@kms_vrr@flip-suspend.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a>) +102 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-1/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-7/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@prime_vgem@basic-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-6/igt@syncobj_wait@invalid-wait=
-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-mul=
tisync-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-7/igt@v3d/v3d_submit_csd@bad-mul=
tisync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109315">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-6/igt@v3d/v3d_submit_csd@single-=
out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-mtlp-4/igt@vc4/vc4_perfmon@create-tw=
o-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-flags:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-rkl-4/igt@vc4/vc4_tiling@get-bad-fla=
gs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128839v2/shard-dg2-10/igt@vc4/vc4_wait_bo@bad-bo.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/77=
11">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-dg1-13/igt@gem_exec_endless@dispatch@vecs0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i91=
5#3778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128839v2/shard-dg1-12/igt@gem_exec_endless@dispatch@vecs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28839v2/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10029">i915#100=
29</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128839v2/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-glk9/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9200">i915#9200</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128839v2/shard-glk9/igt@i915_module_load@reload-wi=
th-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128839v2/shard-mtlp-7/igt@i915_module_load@reload-with-faul=
t-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407=
">i915#9407</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128839v2/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128839v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2=
/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10031">i91=
5#10031</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128839v2/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128839v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi=
-a1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128839v2/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible=
@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-snb7/igt@kms_frontbuffer_t=
racking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">PASS</a> +12 other tes=
ts pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128839v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-9/igt@kms_pm_rpm@system-suspend-modeset.html">ABOR=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28839v2/shard-tglu-4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-wait@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-8/igt@prime_vgem@fence-wait@vcs1.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875">i915#8875<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9926">i915=
#9926</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128839v2/shard-mtlp-6/igt@prime_vgem@fence-wait@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-wait@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-mtlp-8/igt@prime_vgem@fence-wait@vecs0.html">DMESG-WARN=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8839v2/shard-mtlp-6/igt@prime_vgem@fence-wait@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-glk8/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/=
shard-glk3/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/10042">i915#10042</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681=
">i915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128839v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915=
#8816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128839v2/shard-snb2/igt@kms_content_protection@atomic.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14139/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128839v2/shard-rkl-3/igt@kms_multipipe_modeset@basic-=
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
<li>Linux: CI_DRM_14139 -&gt; Patchwork_128839v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7683: 7683<br />
  Patchwork_128839v2: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1590822743790762276==--
