Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120DD7E5CA7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 18:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB1810E0D1;
	Wed,  8 Nov 2023 17:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55ED010E0D1;
 Wed,  8 Nov 2023 17:50:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B62BA7DFF;
 Wed,  8 Nov 2023 17:50:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2975197466269549040=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam James" <sam@gentoo.org>
Date: Wed, 08 Nov 2023 17:50:30 -0000
Message-ID: <169946583018.24273.17234090546546050143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231107215538.1891359-1-sam@gentoo.org>
In-Reply-To: <20231107215538.1891359-1-sam@gentoo.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_i915=3A_Adapt_to_-Walloc-size?=
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

--===============2975197466269549040==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: i915: Adapt to -Walloc-size
URL   : https://patchwork.freedesktop.org/series/126127/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13848_full -> Patchwork_126127v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126127v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126127v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/index.html

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126127v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_126127v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [FAIL][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8411])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#7701])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#8414]) +12 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#8414]) +30 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][57] -> [SKIP][58] ([i915#2582]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@fbdev@pan.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@fbdev@pan.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3936])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_busy@semaphore.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4873])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_caching@reads.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3555])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][62] ([i915#7297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-1/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#7697])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [PASS][64] -> [SKIP][65] ([i915#6252])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8555]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#280])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][68] ([i915#7975] / [i915#8213])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4771])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4812]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [PASS][71] -> [SKIP][72] ([Intel XE#874])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gem_exec_balancer@fairslice.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#8555]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4525])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#9606])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-apl:          NOTRUN -> [FAIL][76] ([i915#9606])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][77] ([i915#2842])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#2842])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4473])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][81] ([i915#2842])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3539])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4473] / [i915#4771]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4812]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3539] / [i915#4852]) +5 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#7697])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3281]) +11 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-gtt.html
    - shard-rkl:          [PASS][88] -> [SKIP][89] ([i915#3281]) +8 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3281]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#3281]) +5 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4537] / [i915#4812])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#4537] / [i915#4812])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][94] -> [ABORT][95] ([i915#7975] / [i915#8213])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4860]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4860]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4613]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#4613]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][100] ([i915#5493])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#4613]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8289])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4077]) +8 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4083]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4083]) +9 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3282]) +7 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3282]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [PASS][108] -> [SKIP][109] ([i915#3282]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@display:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#3282]) +6 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_pread@display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][111] ([i915#2658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4270])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4270]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4270]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8428]) +6 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#768]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#4079])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4079]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4885])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][120] ([i915#5889])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4077]) +13 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3297] / [i915#4880])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3297]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3297])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3297]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][127] ([i915#3318])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-mtlp:         [PASS][128] -> [ABORT][129] ([i915#9414])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_mixed_blits:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([fdo#109289]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#2856]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#2527])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2527] / [i915#2856])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#2527]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2856]) +4 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#6227])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@i915_module_load@load.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#7091])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([fdo#109293])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#6621])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#8925])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#3555] / [i915#8925])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park@gt1.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#8925])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][144] ([i915#8346])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@i915_pm_rps@waitboost.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4387])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#109303])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@debugfs-reader:
    - shard-dg2:          NOTRUN -> [FAIL][147] ([fdo#103375]) +1 other test fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_suspend@debugfs-reader.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#4212])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4212])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3826])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][151] ([i915#8247]) +3 other tests fail
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#6228])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@test-only:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#1845] / [i915#4098]) +11 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_atomic@test-only.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-apl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#1769])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][155] -> [FAIL][156] ([i915#5138])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([fdo#111615] / [i915#5286])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#5286]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([fdo#111614]) +5 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([fdo#111614]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5190]) +12 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([fdo#111614])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([fdo#111615]) +9 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][164] -> [FAIL][165] ([i915#3743])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [FAIL][166] ([i915#3743])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4538] / [i915#5190]) +7 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([fdo#111615])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-addfb.html
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6187])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([fdo#110723]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#2705])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_joiner@basic.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#3742])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#7213])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4087] / [i915#7213]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([fdo#111827]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([fdo#111827])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_chamelium_color@ctm-green-to-red.html
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([fdo#111827]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([fdo#111827]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#7828]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7828]) +13 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#7828]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#7828]) +6 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@ctm-max@pipe-b:
    - shard-rkl:          [PASS][183] -> [SKIP][184] ([i915#4098]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_color@ctm-max@pipe-b.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_color@ctm-max@pipe-b.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3555]) +4 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_color@deep-color.html
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9608])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_color@deep-color.html

  * igt@kms_color@degamma@pipe-a:
    - shard-mtlp:         NOTRUN -> [FAIL][187] ([i915#9257]) +3 other tests fail
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_color@degamma@pipe-a.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3116] / [i915#3299])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#3299])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3116])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][191] ([i915#7173])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@kms_content_protection@lic@pipe-a-dp-1.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][192] ([i915#7173]) +1 other test timeout
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#7118])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#3359]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3555])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3359]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#3359])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3359])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8814]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#4103])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#4213]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4103] / [i915#4213] / [i915#5608])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#1845] / [i915#4098]) +27 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([fdo#111825]) +6 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([fdo#109274]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#3546]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][210] -> [FAIL][211] ([i915#2346]) +1 other test fail
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#4098]) +13 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#8812])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-mtlp:         [PASS][214] -> [FAIL][215] ([i915#4767])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([fdo#109274]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([fdo#109274] / [fdo#111767]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#3637]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#8381]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][220] ([i915#8841])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-snb:          NOTRUN -> [SKIP][221] ([fdo#109271]) +61 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-snb5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3637] / [i915#4098]) +9 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#8381])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#2672]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#2672]) +6 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#2672]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8810]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#3555]) +12 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#2672] / [i915#3555]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#1849] / [i915#4098]) +19 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#8708]) +7 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#6880]) +1 other test fail
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#5460])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3023]) +8 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#5354]) +44 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#1825]) +27 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([fdo#109280]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([fdo#110189]) +6 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#3458]) +23 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#8708]) +21 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([fdo#111825] / [i915#1825]) +17 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#6118])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_hdr@static-toggle.html
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#3555] / [i915#8228])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#3555] / [i915#8228]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#4816])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#1839])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([fdo#109289]) +6 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8821])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#3555] / [i915#8806]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][252] ([i915#8292])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][253] ([i915#8292])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][254] ([i915#8292])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#8152]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#5176] / [i915#9423]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#4098] / [i915#6953] / [i915#8152])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#5235]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#5235]) +19 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235]) +15 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#5235]) +9 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#3555] / [i915#4098] / [i915#8152])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#3555] / [i915#5235]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#6524]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [PASS][266] -> [SKIP][267] ([i915#1849])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#658])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#658])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#658]) +8 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@cursor_render:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#1072]) +2 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_psr@cursor_render.html

  * igt@kms_psr@primary_blt:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#1072]) +6 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_psr@primary_blt.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#4235]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#4235])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#5289])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#4235] / [i915#5190]) +1 other test skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][277] ([i915#5465]) +1 other test fail
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3555] / [i915#4098]) +2 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#8623])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([fdo#109309])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#2437])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [PASS][282] -> [SKIP][283] ([fdo#109289])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#2436])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][285] -> [FAIL][286] ([i915#7484])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-tglu:         NOTRUN -> [SKIP][287] ([fdo#109289])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@perf@unprivileged-single-ctx-counters.html
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([fdo#109289]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          [PASS][289] -> [SKIP][290] ([i915#9432])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-7/igt@perf_pmu@frequency@gt0.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][291] ([i915#5793])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#8516])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][293] ([i915#9351])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#3708])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#3291] / [i915#3708])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#3708] / [i915#4077]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@prime_vgem@coherency-gtt.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][297] ([i915#9583]) +1 other test fail
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - shard-rkl:          NOTRUN -> [FAIL][298] ([i915#9583]) +2 other tests fail
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][299] ([i915#9582])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - shard-apl:          NOTRUN -> [FAIL][300] ([i915#9582])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#4818])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#2575]) +8 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([fdo#109315]) +5 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@v3d/v3d_submit_csd@multi-and-single-sync:
    - shard-apl:          NOTRUN -> [SKIP][305] ([fdo#109271]) +128 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@v3d/v3d_submit_csd@multi-and-single-sync.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#2575]) +18 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
    - shard-tglu:         NOTRUN -> [SKIP][307] ([i915#2575]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html

  * igt@vc4/vc4_label_bo@set-kernel-name:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#7711]) +10 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@vc4/vc4_label_bo@set-kernel-name.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#7711]) +7 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html

  * igt@vc4/vc4_wait_bo@unused-bo-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#7711]) +2 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@vc4/vc4_wait_bo@unused-bo-0ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          [SKIP][311] ([i915#8411]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@api_intel_bb@blit-reloc-keep-cache.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_read@short-buffer-nonblock:
    - shard-rkl:          [SKIP][313] ([i915#4098]) -> [PASS][314] +13 other tests pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@drm_read@short-buffer-nonblock.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@read:
    - shard-rkl:          [SKIP][315] ([i915#2582]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@fbdev@read.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][317] ([i915#7297]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@hang:
    - shard-rkl:          [SKIP][319] ([i915#6252]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@create:
    - shard-mtlp:         [ABORT][321] ([i915#9414]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-4/igt@gem_eio@create.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_eio@create.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][323] ([i915#5784]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg1-18/igt@gem_eio@reset-stress.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-rkl:          [SKIP][325] ([i915#9591]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [FAIL][327] ([i915#2846]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-rkl:          [SKIP][329] ([i915#3281]) -> [PASS][330] +12 other tests pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@promotion@ccs0:
    - shard-mtlp:         [ABORT][331] -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-5/igt@gem_exec_schedule@promotion@ccs0.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_exec_schedule@promotion@ccs0.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][333] ([i915#3282]) -> [PASS][334] +8 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_spin_batch@user-each:
    - shard-apl:          [FAIL][335] ([i915#9622]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-apl3/igt@gem_spin_batch@user-each.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@gem_spin_batch@user-each.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][337] ([i915#2527]) -> [PASS][338] +4 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gen9_exec_parse@valid-registers.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][339] ([i915#9559]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][341] ([i915#7790]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-snb4/igt@i915_pm_rps@reset.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][343] ([i915#4387]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][345] ([i915#7984]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@i915_power@sanity.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][347] ([i915#1845] / [i915#4098]) -> [PASS][348] +32 other tests pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][349] ([i915#3743]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][351] ([i915#2346]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [FAIL][353] ([i915#6880]) -> [PASS][354] +1 other test pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [SKIP][355] ([i915#1849] / [i915#4098]) -> [PASS][356] +17 other tests pass
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-dg1:          [SKIP][357] ([i915#9519]) -> [PASS][358] +1 other test pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-rkl:          [SKIP][359] ([fdo#109308]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_pm_rpm@i2c.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
    - shard-rkl:          [SKIP][361] ([i915#9519]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [SKIP][363] ([i915#1849]) -> [PASS][364] +1 other test pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [FAIL][365] ([i915#9196]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
    - shard-snb:          [FAIL][367] ([i915#9196]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-mtlp:         [SKIP][369] ([i915#9432]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-mtlp-1/igt@perf_pmu@frequency@gt0.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@perf_pmu@frequency@gt0.html
    - shard-dg1:          [SKIP][371] ([i915#9432]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg1-19/igt@perf_pmu@frequency@gt0.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg1-19/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [SKIP][373] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][375] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@prime_vgem@coherency-gtt.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][377] ([i915#7957]) -> [SKIP][378] ([i915#3555])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][379] ([i915#2842]) -> [SKIP][380] ([i915#9591])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [WARN][381] ([i915#2658]) -> [SKIP][382] ([i915#3282])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][383] ([i915#2532]) -> [SKIP][384] ([i915#2527])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][385] ([i915#1845] / [i915#4098]) -> [SKIP][386] ([i915#1769] / [i915#3555])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][387] ([i915#5286]) -> [SKIP][388] ([i915#1845] / [i915#4098]) +7 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][389] ([i915#1845] / [i915#4098]) -> [SKIP][390] ([i915#5286]) +7 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][391] ([fdo#111614] / [i915#3638]) -> [SKIP][392] ([i915#1845] / [i915#4098]) +5 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([fdo#111614] / [i915#3638]) +3 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][395] ([fdo#110723]) -> [SKIP][396] ([i915#1845] / [i915#4098]) +6 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([fdo#110723]) +5 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          [SKIP][399] ([i915#1845] / [i915#4098]) -> [SKIP][400] ([fdo#111615])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][401] ([i915#1845] / [i915#4098]) -> [SKIP][402] ([i915#7118])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][403] ([i915#3116]) -> [SKIP][404] ([i915#1845] / [i915#4098]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][405] ([i915#7118]) -> [SKIP][406] ([i915#1845] / [i915#4098])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_content_protection@legacy.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][407] ([i915#7118]) -> [SKIP][408] ([i915#7118] / [i915#7162])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-dg2-2/igt@kms_content_protection@type1.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][409] ([fdo#109279] / [i915#3359]) -> [SKIP][410] ([i915#1845] / [i915#4098])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][411] ([i915#3359]) -> [SKIP][412] ([i915#1845] / [i915#4098])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][413] ([i915#1845] / [i915#4098]) -> [SKIP][414] ([i915#3359]) +2 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][415] ([i915#3555]) -> [SKIP][416] ([i915#1845] / [i915#4098]) +7 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][417] ([i915#1845] / [i915#4098]) -> [SKIP][418] ([fdo#111767] / [fdo#111825]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][419] ([i915#4103]) -> [SKIP][420] ([i915#1845] / [i915#4098]) +2 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][421] ([fdo#111825]) -> [SKIP][422] ([i915#1845] / [i915#4098]) +5 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-rkl:          [SKIP][423] ([i915#1845] / [i915#4098]) -> [SKIP][424] ([fdo#111825]) +3 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][425] ([i915#1845] / [i915#4098]) -> [SKIP][426] ([i915#4103])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][427] ([i915#4098]) -> [SKIP][428] ([i915#3555] / [i915#3840])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][429] ([i915#3955]) -> [SKIP][430] ([fdo#110189] / [i915#3955])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][431] ([fdo#111825] / [i915#1825]) -> [SKIP][432] ([i915#1849] / [i915#4098]) +39 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][433] ([i915#1849] / [i915#4098]) -> [SKIP][434] ([fdo#111825]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][435] ([i915#1849] / [i915#4098]) -> [SKIP][436] ([i915#3023]) +25 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][437] ([i915#3023]) -> [SKIP][438] ([i915#1849] / [i915#4098]) +30 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][439] ([i915#1849] / [i915#4098]) -> [SKIP][440] ([fdo#111825] / [i915#1825]) +45 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][441] ([i915#3555] / [i915#8228]) -> [SKIP][442] ([i915#1845] / [i915#4098]) +1 other test skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_hdr@bpc-switch.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][443] ([i915#3555] / [i915#8228]) -> [SKIP][444] ([i915#4098])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][445] ([i915#4098]) -> [SKIP][446] ([i915#3555] / [i915#8228])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][447] ([i915#1845] / [i915#4098]) -> [SKIP][448] ([i915#3555] / [i915#8228])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_hdr@static-swap.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_hdr@static-swap.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][449] ([i915#1845] / [i915#4098]) -> [SKIP][450] ([i915#3555]) +7 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][451] ([fdo#111825] / [i915#8152]) -> [SKIP][452] ([fdo#111825])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][453] ([i915#5289]) -> [SKIP][454] ([i915#1845] / [i915#4098])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][455] ([fdo#111615] / [i915#5289]) -> [SKIP][456] ([i915#1845] / [i915#4098])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][457] ([i915#1845] / [i915#4098]) -> [SKIP][458] ([fdo#111615] / [i915#5289])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
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
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/index.html

--===============2975197466269549040==
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
<tr><td><b>Series:</b></td><td>drm: i915: Adapt to -Walloc-size</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126127/">https://patchwork.freedesktop.org/series/126127/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126127v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13848_full -&gt; Patchwork_126127v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126127v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126127v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v=
1/index.html</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126127v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126127v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1=
.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126127v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13848/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13848/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13848/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13848/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13848/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13848/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13848/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3848/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13848/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13848/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
127v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126127v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126127v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6127v1/shard-glk6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126127v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126127v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6127v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126127v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126127v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk1/boot.html"=
>PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@api_intel_bb@object-reloc=
-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@drm_fdinfo@busy-check-all=
@ccs0.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> ([i915#8414]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@fbdev@pan.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@fb=
dev@pan.html">SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_caching@reads.html">S=
KIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-1/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126127v1/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP<=
/a> ([i915#6252])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_ctx_sseu@engines.html=
">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@gem_eio@hibernate.html">AB=
ORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gem_exec_balancer@fairslice.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/=
shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/xe/kernel/issues/874">Intel XE#874</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6127v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([=
i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_exec_fair@basic-pace-=
solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-=
solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_exec_fence@concurrent=
.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_exec_gttfill@multigpu=
-basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-gt=
t.html">SKIP</a> ([i915#3281]) +11 other tests skip</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13848/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/=
shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> ([i915#3281]) +=
8 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-c=
pu.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126127v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">=
ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> ([i915#4860]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / [i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oo=
m@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-mediu=
m-copy.html">SKIP</a> ([i915#4077]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_mmap_wc@bad-object.ht=
ml">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_mmap_wc@copy.html">SK=
IP</a> ([i915#4083]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> ([i915#3282]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-af=
ter-reads-uncached.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_pread@display.html">S=
KIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_pxp@create-regular-con=
text-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@gem_render_copy@x-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@gem_render_copy@y-tiled-mc=
-ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#768]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@gem_spin_batch@spin-all-ne=
w.html">FAIL</a> ([i915#5889])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_tiled_blits@basic.htm=
l">SKIP</a> ([i915#4077]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@gem_userptr_blits@readonl=
y-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12612=
7v1/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html">ABORT</a> ([i915#=
9414])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@gen9_exec_parse@basic-rej=
ected.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
127v1/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i9=
15#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-id=
le-park@gt1.html">SKIP</a> ([i915#3555] / [i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_pm_rps@thresholds@gt=
0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@i915_pm_rps@waitboost.htm=
l">FAIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@i915_suspend@debugfs-read=
er.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D103375">fdo#103375</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_addfb_basic@addfb25-x-=
tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_async_flips@invalid-a=
sync-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_atomic@test-only.html"=
>SKIP</a> ([i915#1845] / [i915#4098]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i9=
15#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126127v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_big_fb@linear-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5190]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@y-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rota=
te-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-6/igt@kms_big_fb@y-tiled-=
max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11615">fdo#111615</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> ([i915#6187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_big_joiner@basic.html=
">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#7213])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_chamelium_color@ctm-bl=
ue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-f=
ast.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-=
storm.html">SKIP</a> ([i915#7828]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_color@ctm-max@pipe-b.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/sha=
rd-rkl-5/igt@kms_color@ctm-max@pipe-b.html">SKIP</a> ([i915#4098]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_color@deep-color.html">=
SKIP</a> ([i915#3555]) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_color@deep-color.html">=
SKIP</a> ([i915#9608])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_color@degamma@pipe-a.=
html">FAIL</a> ([i915#9257]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3299])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@kms_content_protection@lic@=
pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#3359]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> ([i915#3555] / [i915#8814]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213]) +1 other test ski=
p</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213] / [i=
915#5608])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-at=
omic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-c=
ursor-atomic.html">SKIP</a> ([i915#1845] / [i915#4098]) +27 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-=
vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354]) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111767">fdo#111767</a> / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> ([i915#3546]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) +1 ot=
her test fail</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> ([i915#4098]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/s=
hard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> ([i915#4767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-expir=
ed-vblank.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend=
-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> ([i915#8841])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-snb5/igt@kms_flip@2x-nonexisting-fb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-v=
blank-interruptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +9 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672]) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672]) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> =
([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#3555] / [i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) +12 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915#=
4098]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-stridechange.html">FAIL</a> ([i915#6880]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +8 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#5354]) +44 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +27 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +8 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +6 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3458]) +23 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +21 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / [i915#1825]) =
+17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_getfb@getfb-reject-cc=
s.html">SKIP</a> ([i915#6118])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_hdr@static-toggle.html=
">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109289">fdo#109289</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> ([i915#3555] / [i915#8806]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@invalid-=
parameters.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953] / [i915#8152=
])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#52=
35]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg1-17/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html">SKIP</a> ([i915#5=
235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#5235]) +15 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html">SKIP</a> ([i915#5235]=
) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#4098=
] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#6953] =
/ [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> ([i91=
5#3555] / [i915#5235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126127v1/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">SKI=
P</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@kms_psr2_sf@overlay-plane=
-move-continuous-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> ([i915#658]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_psr@cursor_render.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i">i915#107=
2</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_psr@primary_blt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i">i915#1072=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> ([i915#4235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_rotation_crc@primary-=
rotation-90.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#4235] / [i915#5190]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-snb5/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-1/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-hand=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/=
shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])</=
li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109289">fdo#109289</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-7/igt@perf_pmu@frequency@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard=
-dg2-2/igt@perf_pmu@frequency@gt0.html">SKIP</a> ([i915#9432])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@perf_pmu@module-unload.htm=
l">FAIL</a> ([i915#5793])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@prime_mmap@test_aperture_l=
imit@test_aperture_limit-smem.html">CRASH</a> ([i915#9351])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([i915#3708] / [i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9583]) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@syncobj_timeline@invalid-m=
ulti-wait-available-unsubmitted.html">FAIL</a> ([i915#9583]) +2 other tests=
 fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@syncobj_timeline@invalid-=
single-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9582])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl7/igt@syncobj_timeline@invalid-si=
ngle-wait-available-unsubmitted.html">FAIL</a> ([i915#9582])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@v3d/v3d_perfmon@get-value=
s-invalid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109315">fdo#109315</a> / [i915#2575]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-2/igt@v3d/v3d_submit_csd@bad-bo=
.html">SKIP</a> ([i915#2575]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-pad=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109315">fdo#109315</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multi-and-single-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-apl2/igt@v3d/v3d_submit_csd@multi-an=
d-single-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +128 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-11/igt@v3d/v3d_submit_csd@single=
-out-sync.html">SKIP</a> ([i915#2575]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-tglu-9/igt@vc4/vc4_dmabuf_poll@poll-=
write-waits-until-write-done.html">SKIP</a> ([i915#2575]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-kernel-name:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-dg2-3/igt@vc4/vc4_label_bo@set-kerne=
l-name.html">SKIP</a> ([i915#7711]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-purged.html">SKIP</a> ([i915#7711]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@vc4/vc4_wait_bo@unused-bo-=
0ns.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP=
</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126127v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@drm_read@short-buffer-nonblock.html">SKIP</a>=
 ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-1/igt@drm_read@short-buffer-nonblock.html">PASS<=
/a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/sha=
rd-rkl-7/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-1/igt@gem_c=
cs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i91=
5#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126127v1/shard-rkl-7/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@create:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-4/igt@gem_eio@create.html">ABORT</a> ([i915#9414])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127=
v1/shard-mtlp-5/igt@gem_eio@create.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5=
784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26127v1/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a>=
 ([i915#9591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
[i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126127v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126127v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc=
.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@promotion@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-mtlp-5/igt@gem_exec_schedule@promotion@ccs0.html">ABORT=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6127v1/shard-mtlp-2/igt@gem_exec_schedule@promotion@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS<=
/a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-apl3/igt@gem_spin_batch@user-each.html">FAIL</a> ([i915=
#9622]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126127v1/shard-apl7/igt@gem_spin_batch@user-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> ([i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126127v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PAS=
S</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> ([i915#9559]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-6/igt@i915_module_load@relo=
ad-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#=
7790]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126127v1/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i91=
5#4387]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126127v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12612=
7v1/shard-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP<=
/a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-=
rotate-0.html">PASS</a> +32 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-4/igt@kms_big_fb=
@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-glk8/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrf=
b-plflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-dg2-2/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_frontbu=
ffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +17 other tests pass</l=
i>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9=
519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26127v1/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test =
pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_pm_rpm@i2c.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard=
-rkl-4/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126127v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html">S=
KIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_properties@crtc-properties-lega=
cy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126127v1/shard-tglu-3/igt@kms_universal_plane@=
cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-=
1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-snb2/igt@kms_universal_plane@cursor-=
fb-leak@pipe-b-vga-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13848/shard-mtlp-1/igt@perf_pmu@frequency@gt0.html">SKIP</a> ([i915#=
9432]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126127v1/shard-mtlp-2/igt@perf_pmu@frequency@gt0.html">PASS</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13848/shard-dg1-19/igt@perf_pmu@frequency@gt0.html">SKIP</a> ([i915#=
9432]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126127v1/shard-dg1-19/igt@perf_pmu@frequency@gt0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / [i915#3708] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@prime_vgem@basic-fence-=
flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#1=
11656</a> / [i915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126127v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">P=
ASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126127v1/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126127v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a=
> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([=
i915#2658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126127v1/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([=
i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2532]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126127v1/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2527])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/=
shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126127v1/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP<=
/a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a> / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-=
90.html">SKIP</a> ([i915#1845] / [i915#4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / [i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html"=
>SKIP</a> ([i915#1845] / [i915#4098]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflo=
w.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_big_fb@y=
f-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_content_protection@a=
tomic-dpms.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_content_protection@dp-mst-li=
c-type-1.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126127v1/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a=
> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126127v1/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a>=
 ([i915#7118] / [i915#7162])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109279=
">fdo#109279</a> / [i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170=
.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_cursor_crc@cursor-=
random-512x512.html">SKIP</a> ([i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legac=
y@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#1845=
] / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126127v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-le=
gacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_cursor_legacy=
@cursorb-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1261=
27v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic=
-transitions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126127v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html">SKI=
P</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12612=
7v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / [i915#3955])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a> / [i915#1825]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_=
frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([i=
915#1849] / [i915#4098]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt=
@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111=
825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_=
frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#30=
23]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> ([i915#3023]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_frontbuffer=
_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1849] / [i=
915#4098]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@k=
ms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825<=
/a> / [i915#1825]) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555=
] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126127v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915=
#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#355=
5] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126127v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i9=
15#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126127v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html">SKIP<=
/a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#184=
5] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126127v1/shard-rkl-7/igt@kms_hdr@static-swap.html">SKIP</a> ([i9=
15#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
[i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126127v1/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.h=
tml">SKIP</a> ([i915#3555]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825"=
>fdo#111825</a> / [i915#8152]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126127v1/shard-rkl-4/igt@kms_plane_scaling@2x-scale=
r-multi-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-t=
iled-reflect-x-0.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111615">fdo#111615</a> / [i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-5/igt@kms_rotation_crc@pr=
imary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13848/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126127v1/shard-rkl-7/igt@kms_rotation=
_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============2975197466269549040==--
