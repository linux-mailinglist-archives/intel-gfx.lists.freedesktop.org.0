Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D49A2BF5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 20:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7422410E0FF;
	Thu, 17 Oct 2024 18:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4D510E0FF;
 Thu, 17 Oct 2024 18:18:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4427800704178783209=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/lspcon=3A_do_not_h?=
 =?utf-8?q?ardcode_settle_timeout_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Giedrius_Statkevi=C4=8Dius?= <giedriuswork@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2024 18:18:05 -0000
Message-ID: <172918908555.1280140.10476004548345128719@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241017075725.207384-1-giedriuswork@gmail.com>
In-Reply-To: <20241017075725.207384-1-giedriuswork@gmail.com>
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

--===============4427800704178783209==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/lspcon: do not hardcode settle timeout (rev2)
URL   : https://patchwork.freedesktop.org/series/140116/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15547_full -> Patchwork_140116v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140116v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140116v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140116v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@cursor-sliding-128x128:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_cursor_crc@cursor-sliding-128x128.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@testdisplay:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb1/igt@testdisplay.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb6/igt@testdisplay.html

  
Known issues
------------

  Here are the changes found in Patchwork_140116v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@short-buffer-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#9197]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][56] -> [SKIP][57] ([i915#2582]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@fbdev@nullptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][58] -> [INCOMPLETE][59] ([i915#7297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-11/igt@gem_ccs@suspend-resume.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][60] -> [INCOMPLETE][61] ([i915#12392] / [i915#7297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#7697]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][63] -> [FAIL][64] ([i915#12027] / [i915#12031])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
    - shard-tglu:         [PASS][65] -> [FAIL][66] ([i915#12027] / [i915#12031])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#8555])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          NOTRUN -> [FAIL][68] ([i915#11980])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][69] ([i915#10030] / [i915#7975] / [i915#8213])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][70] -> [FAIL][71] ([i915#5784])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-15/igt@gem_eio@reset-stress.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2846])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#2842]) +3 other tests fail
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][76] -> [FAIL][77] ([i915#2842]) +1 other test fail
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][78] -> [FAIL][79] ([i915#2842]) +1 other test fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3281])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4860])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4860])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@basic:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#4613])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap_gtt@basic:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4077]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_mmap_gtt@basic.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4077]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3282])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4270])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_readwrite@new-obj:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3282])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#5190] / [i915#8428])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#3297])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#2527] / [i915#2856]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#2856])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@load:
    - shard-glk:          NOTRUN -> [SKIP][93] ([i915#6227])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@i915_module_load@load.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][94] -> [FAIL][95] ([i915#3591]) +3 other tests fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4387])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#4387])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][98] -> [ABORT][99] ([i915#12216]) +1 other test abort
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#5190])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#5190])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4212])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#8709]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#12238])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#11859])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#5286]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
    - shard-mtlp:         NOTRUN -> [SKIP][110]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#5190] / [i915#9197])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#6095]) +112 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6095]) +29 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#6095]) +69 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +112 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#11616] / [i915#7213]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#7828])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#7828]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#6944] / [i915#9424])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3555]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#9197]) +38 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][124] -> [FAIL][125] ([i915#2346])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#1257])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#8812])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][128]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#3637])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_flip@2x-nonexisting-fb.html
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#9934])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          NOTRUN -> [FAIL][131] ([i915#2122]) +1 other test fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][132] -> [FAIL][133] ([i915#2122]) +3 other tests fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-snb:          [PASS][134] -> [FAIL][135] ([i915#2122]) +3 other tests fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][136] -> [FAIL][137] ([i915#79]) +1 other test fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][138] ([i915#9878])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][139] ([i915#6113])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
    - shard-glk:          [PASS][140] -> [INCOMPLETE][141] ([i915#4839])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk5/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:
    - shard-dg2:          [PASS][142] -> [FAIL][143] ([i915#2122]) +1 other test fail
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][144] ([i915#11989]) +1 other test fail
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#2672]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#3555]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#2672] / [i915#3555]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#2587] / [i915#2672]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][150] +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:
    - shard-snb:          [PASS][151] -> [SKIP][152] +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg2:          [PASS][153] -> [SKIP][154] ([i915#5354]) +13 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8708]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5354]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3458]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#8708]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][159] +38 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#3555] / [i915#8228])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_hdr@bpc-switch-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8228]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#6301])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [PASS][163] -> [SKIP][164] ([i915#9581])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_plane@planar-pixel-format-settings.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          [PASS][165] -> [SKIP][166] ([i915#8825])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_plane@plane-position-hole.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][167] ([i915#12169])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][168] ([i915#10647]) +1 other test fail
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg2:          [PASS][169] -> [SKIP][170] ([i915#7294])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_plane_alpha_blend@coverage-7efc.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#6953] / [i915#9423])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-rkl:          [PASS][172] -> [FAIL][173] ([i915#8292])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][174] ([i915#8292])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:
    - shard-dg2:          [PASS][175] -> [SKIP][176] ([i915#12247] / [i915#8152] / [i915#9423])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#12247]) +11 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-dg2:          [PASS][179] -> [SKIP][180] ([i915#3555] / [i915#8152] / [i915#9423])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
    - shard-dg2:          [PASS][181] -> [SKIP][182] ([i915#8152])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][185] -> [SKIP][186] ([i915#12247] / [i915#8152]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-dg2:          [PASS][189] -> [SKIP][190] ([i915#9293])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_pm_dc@dc5-dpms-negative.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][191] -> [FAIL][192] ([i915#9295])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-glk:          NOTRUN -> [SKIP][193] +86 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_pm_dc@dc6-psr.html
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9685])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#9519])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][197] -> [SKIP][198] ([i915#9519])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#6524] / [i915#6805])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#11521])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_properties@plane-properties-atomic.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#11520]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][203] ([i915#11520]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#11520]) +2 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#9732]) +8 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#1072] / [i915#9732]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr2-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#1072] / [i915#9732]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_psr@psr2-cursor-mmap-cpu.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3555]) +4 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [PASS][209] -> [FAIL][210] ([i915#12317] / [i915#5465])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-13/igt@kms_setmode@basic.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          [PASS][211] -> [FAIL][212] ([i915#5465]) +6 other tests fail
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][213] ([i915#12317])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][214] ([i915#5465]) +1 other test fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][215] ([i915#5465])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@kms_setmode@basic@pipe-b-hdmi-a-4.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][216] -> [FAIL][217] ([IGT#2])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2437])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#2437] / [i915#9412])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_writeback@writeback-pixel-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#2437] / [i915#9412])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-snb:          NOTRUN -> [SKIP][221] +4 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb4/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-tglu:         [PASS][222] -> [FAIL][223] ([i915#4349]) +1 other test fail
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-6/igt@perf_pmu@busy-accuracy-98.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-10/igt@perf_pmu@busy-accuracy-98.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3708])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@prime_vgem@fence-flip-hang.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-dg2:          [SKIP][225] ([i915#2582]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@fbdev@read.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@fbdev@read.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][227] ([i915#2842]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglu:         [ABORT][229] ([i915#7975] / [i915#8213]) -> [PASS][230] +1 other test pass
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][231] ([i915#9820]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [ABORT][233] ([i915#9820]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][235] -> [PASS][236] +1 other test pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [FAIL][237] -> [PASS][238] +1 other test pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@kms_color@ctm-0-25:
    - shard-dg2:          [SKIP][239] ([i915#5354]) -> [PASS][240] +13 other tests pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_color@ctm-0-25.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_color@ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][241] ([i915#2346]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][243] ([i915#2122]) -> [PASS][244] +6 other tests pass
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-rkl:          [FAIL][245] ([i915#11961] / [i915#2122]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [FAIL][247] ([i915#11961]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
    - shard-rkl:          [FAIL][249] -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
    - shard-tglu:         [FAIL][251] ([i915#2122]) -> [PASS][252] +2 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-10/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [INCOMPLETE][253] ([i915#4839] / [i915#6113]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-mtlp:         [INCOMPLETE][255] ([i915#6113]) -> [PASS][256] +1 other test pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          [INCOMPLETE][257] ([i915#4839]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3:
    - shard-dg2:          [INCOMPLETE][259] ([i915#6113]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          [INCOMPLETE][261] ([i915#6113]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-mtlp:         [FAIL][263] ([i915#11989]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-mtlp:         [FAIL][265] ([i915#2122]) -> [PASS][266] +2 other tests pass
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@d-edp1:
    - shard-mtlp:         [FAIL][267] -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@d-edp1.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@d-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:
    - shard-dg2:          [SKIP][269] ([i915#3555]) -> [PASS][270] +2 other tests pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][271] -> [PASS][272] +5 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [FAIL][273] ([i915#6880]) -> [PASS][274] +1 other test pass
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [SKIP][275] ([i915#9197]) -> [PASS][276] +25 other tests pass
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          [SKIP][277] ([i915#8825]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][279] ([i915#7294]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-dg2:          [SKIP][281] ([i915#8152] / [i915#9423]) -> [PASS][282] +1 other test pass
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][283] ([i915#12247]) -> [PASS][284] +2 other tests pass
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-c.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][285] ([i915#8152]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg1:          [DMESG-WARN][287] ([i915#4423]) -> [PASS][288] +1 other test pass
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_pm_rpm@cursor:
    - shard-dg2:          [SKIP][289] ([i915#1849]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_pm_rpm@cursor.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_pm_rpm@cursor.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][291] ([i915#9519]) -> [PASS][292] +1 other test pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][293] ([i915#9519]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_pm_rpm@dpms-non-lpsp.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][295] ([i915#2842]) -> [FAIL][296] ([i915#2876])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][297] ([i915#6228]) -> [SKIP][298] ([i915#9197])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][299] -> [SKIP][300] ([i915#9197]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][301] ([i915#9197]) -> [SKIP][302] +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][303] ([i915#5190] / [i915#9197]) -> [SKIP][304] ([i915#4538] / [i915#5190]) +5 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][305] ([i915#5190] / [i915#9197]) -> [SKIP][306] ([i915#5190])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          [SKIP][307] ([i915#4538] / [i915#5190]) -> [SKIP][308] ([i915#5190] / [i915#9197]) +6 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][309] ([i915#10307] / [i915#6095]) -> [SKIP][310] ([i915#9197]) +9 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][311] ([i915#9197]) -> [SKIP][312] ([i915#10307] / [i915#6095]) +8 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][313] ([i915#9197]) -> [SKIP][314] ([i915#12313])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][315] ([i915#11616] / [i915#7213]) -> [SKIP][316] ([i915#9197])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][317] ([i915#3299]) -> [SKIP][318] ([i915#9197])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-1.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][319] ([i915#9197]) -> [SKIP][320] ([i915#11453])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][321] ([i915#11453]) -> [SKIP][322] ([i915#9197]) +2 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][323] ([i915#9197]) -> [SKIP][324] ([i915#3555])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-dg2:          [SKIP][325] ([i915#9197]) -> [SKIP][326] ([i915#5354]) +2 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          [SKIP][327] ([i915#4103] / [i915#4213]) -> [SKIP][328] ([i915#9197]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][329] ([i915#5354]) -> [SKIP][330] ([i915#9197]) +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][331] ([i915#9067]) -> [SKIP][332] ([i915#9197])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][333] ([i915#9197]) -> [SKIP][334] ([i915#3840] / [i915#9688])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][335] ([i915#3555] / [i915#3840]) -> [SKIP][336] ([i915#9197])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          [SKIP][337] ([i915#9197]) -> [SKIP][338] ([i915#3555] / [i915#3840])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][339] ([i915#9197]) -> [SKIP][340] ([i915#4881])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_fence_pin_leak.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_fence_pin_leak.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][341] ([i915#3555]) -> [SKIP][342] ([i915#2672] / [i915#3555])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][343] ([i915#2672] / [i915#3555]) -> [SKIP][344] ([i915#3555])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          [SKIP][345] ([i915#3555] / [i915#5190]) -> [SKIP][346] ([i915#2672] / [i915#3555] / [i915#5190])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][347] ([i915#8708]) -> [SKIP][348] ([i915#5354]) +13 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][349] ([i915#3458]) -> [SKIP][350] ([i915#10433] / [i915#3458]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][351] ([i915#3458]) -> [SKIP][352] ([i915#5354]) +12 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][353] ([i915#5354]) -> [SKIP][354] ([i915#10055])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][355] ([i915#5354]) -> [SKIP][356] ([i915#3458]) +6 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][357] ([i915#10433] / [i915#3458]) -> [SKIP][358] ([i915#3458])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][359] ([i915#5354]) -> [SKIP][360] ([i915#10433] / [i915#3458]) +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][361] ([i915#5354]) -> [SKIP][362] ([i915#8708]) +11 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][363] ([i915#3555] / [i915#8228]) -> [SKIP][364] ([i915#9197]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          [SKIP][365] ([i915#9197]) -> [SKIP][366] ([i915#8821])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [SKIP][367] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][368] ([i915#12247] / [i915#9423])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][369] ([i915#12247] / [i915#8152]) -> [SKIP][370] ([i915#12247])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg2:          [SKIP][371] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][372] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][373] ([i915#12247]) -> [SKIP][374] ([i915#12247] / [i915#8152])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][375] ([i915#3361]) -> [SKIP][376] ([i915#4281])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][377] ([i915#9340]) -> [SKIP][378] ([i915#3828])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][379] ([i915#5190] / [i915#9197]) -> [SKIP][380] ([i915#11131] / [i915#5190])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][381] ([i915#11131] / [i915#5190]) -> [SKIP][382] ([i915#5190] / [i915#9197])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          [SKIP][383] ([i915#9197]) -> [SKIP][384] ([i915#11131]) +1 other test skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          [SKIP][385] ([i915#11131]) -> [SKIP][386] ([i915#9197])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          [SKIP][387] ([i915#9197]) -> [SKIP][388] ([i915#8623])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          [SKIP][389] ([i915#9906]) -> [SKIP][390] ([i915#9197])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-8/igt@kms_vrr@flip-basic-fastset.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][391] ([i915#3555] / [i915#9906]) -> [SKIP][392] ([i915#9197])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-1/igt@kms_vrr@negative-basic.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] ([i915#9906])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-virtual.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          [SKIP][395] ([i915#3708] / [i915#9197]) -> [SKIP][396] ([i915#3708])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@prime_vgem@basic-fence-flip.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12317]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12317
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9293]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9293
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15547 -> Patchwork_140116v2

  CI-20190529: 20190529
  CI_DRM_15547: 6d5c65cb1afb42b0bbe813847d9271271d2875a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8078: 175bddf20141ccad40130719ca46bde5140f4872 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140116v2: 6d5c65cb1afb42b0bbe813847d9271271d2875a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/index.html

--===============4427800704178783209==
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
<tr><td><b>Series:</b></td><td>drm/i915/lspcon: do not hardcode settle time=
out (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140116/">https://patchwork.freedesktop.org/series/140116/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140116v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140116v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15547_full -&gt; Patchwork_140116v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140116v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140116v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140116v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x128:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_cursor_crc@cursor-sli=
ding-128x128.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb1/igt@testdisplay.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-snb6/igt@te=
stdisplay.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140116v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15547/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15547/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15547/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15547/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15547/shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15547/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15547/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5547/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15547/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15547/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15547/shard-glk2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
116v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140116v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0116v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140116v2/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140116v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0116v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140116v2/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140116v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk9/boot.html"=
>PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@drm_read@short-buffer-nonb=
lock.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/ig=
t@fbdev@nullptr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shar=
d-dg2-8/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@gem_ccs@suspend-resume@x=
major-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i=
915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14011=
6v2/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#120=
27</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12031">i915#12031</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#1=
2027</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12031">i915#12031</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@gem_ctx_persistence@hostil=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11980">i915#11980</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10030">i915#10030</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-15/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-=
dg1-14/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2=
/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0116v2/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i91=
5#2842</a>) +3 other tests fail</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140116v2/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"=
>i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0116v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i91=
5#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_mmap_gtt@basic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gem_render_copy@y-tiled-t=
o-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@gen9_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140116v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3591">i915#3591</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4387">i915#4387</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14011=
6v2/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12=
216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-mtlp-2/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140116v2/shard-glk8/igt@kms_atomic_transition@modese=
t-transition-nonblocking-fencing.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outp=
uts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing@2x-outputs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk8/igt@kms_atomic_transi=
tion@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#=
11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4538">i915#4538</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a></li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +112 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo=
-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +69 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i=
915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +112 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-8/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11616">i915#11616</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@curs=
or-vs-flip-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +38=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140116v2/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-si=
ze.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
57">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3637">i915#3637</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_flip@2x-plain-flip-fb-r=
ecreate.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@=
ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140116v2/shard-glk5/igt@kms_flip@2x-plain-flip-t=
s-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +3 ot=
her tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v=
2/shard-snb6/igt@kms_flip@2x-wf_vblank-ts-check.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>=
) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116=
v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79">i915#79</a>=
) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk3/igt@kms_flip@flip-vs-suspend-in=
terruptible@c-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip@flip-vs-suspend-i=
nterruptible@d-hdmi-a3.html">INCOMPLETE</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk5/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
116v2/shard-glk2/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839"=
>i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140116v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-rkl-5/igt@kms_flip@plain-flip-ts-che=
ck@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11989">i915#11989</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i91=
5#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/25=
87">i915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140116v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-indfb-msflip-blt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-p=
write.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140116v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb1010=
10-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> +38 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_plane@planar-pixel-format-settings.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140116v2/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
581">i915#9581</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_plane@plane-position-hole.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v=
2/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_plane_alpha_blend@alpha=
-opaque-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_plane_alpha_blend@coverage-7efc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40116v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i=
915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140116v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292"=
>i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-rkl-1/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-75-with-rotation.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423=
">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-rotation@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@pl=
ane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a=
>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@p=
lane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152=
">i915#8152</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_sc=
aling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152=
">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-facto=
r-0-75.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscal=
e-factor-0-75@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_plane_scaling@pla=
nes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">=
i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8152">i915#8152</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/=
shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9293">i915#9293</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-tg=
lu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_pm_dc@dc6-psr.html">SKI=
P</a> +86 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116=
v2/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140116v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_properties@plane-properties-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140116v2/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
1521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_psr2_sf@pr-overlay-plan=
e-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_psr@fbc-psr-cursor-pl=
ane-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_psr@psr2-cursor-mmap-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-13/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1=
-14/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12317">i915#12317</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-=
a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140116v2/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-=
b-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5465">i915#5465</a>) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@kms_setmode@basic@pipe-a-=
hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12317">i915#12317</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_setmode@basic@pipe-b-=
hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-14/igt@kms_setmode@basic@pipe-b-=
hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-=
dg2-4/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-11/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-snb4/igt@perf@unprivileged-single-ct=
x-counters.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-6/igt@perf_pmu@busy-accuracy-98.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/s=
hard-tglu-10/igt@perf_pmu@busy-accuracy-98.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +1 =
other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@fbdev@read.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/sha=
rd-dg2-5/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i=
915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140116v2/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140116v2/shard-tglu-6/igt@gem_exec_suspend@basi=
c-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140116v2/shard-dg2-7/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-tglu-7/igt@i915_module_load@reload-w=
ith-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140116v2/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</=
a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0116v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS</a> +1=
 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-dg2-4/igt@kms_color@ctm-0-25.html">PASS</a> +13 other tests pass=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk6/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdm=
i-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140116v2/shard-snb7/igt@kms_flip@2x-plain-flip-f=
b-recreate@ab-vga1-hdmi-a1.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i9=
15#11961</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11961">i915#11961</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdm=
i-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">F=
AIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140116v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-10/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-tglu-6/igt@kms_flip@blocking-wf_vblank@c-hd=
mi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@fli=
p-vs-suspend-interruptible.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-i=
nterruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-=
a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140116v2/shard-glk3/igt@kms_flip@flip-vs-sus=
pend-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi=
-a3.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_flip@flip-vs-s=
uspend-interruptible@c-hdmi-a3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdm=
i-a4.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-15/igt@kms_flip@flip-vs=
-suspend-interruptible@c-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11989">i915#11989</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@b-ed=
p1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@d-edp1.html">FA=
IL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140116v2/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@d-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp=
-xtile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_flip_sc=
aled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html">PASS</a> +2 other =
tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-snb6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140116v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling=
-4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140116v2/shard-dg2-4/igt@kms_pipe_crc_basic@suspend-read-crc.h=
tml">PASS</a> +25 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane@pixel-format-source-clam=
ping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-tr=
ansparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8152">i915#8152</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt=
@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-c:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-modifiers@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_=
plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-c.html">PASS</=
a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-modifiers@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_pl=
ane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-factor-0-25-=
with-pixel-format.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg1-12/igt@kms=
_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a> +=
1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_pm_rpm@cursor.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14011=
6v2/shard-dg2-4/igt@kms_pm_rpm@cursor.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40116v2/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9=
519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140116v2/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">=
i915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140116v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/287=
6">i915#2876</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
28">i915#6228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140116v2/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#91=
97</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/91=
97">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140116v2/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.htm=
l">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@=
kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i9=
15#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflo=
w.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_big_fb@y=
f-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@km=
s_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9197">i915#9197</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_ccs@bad-p=
ixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_ccs@crc-sprite-=
planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_ccs@random-ccs-data-4-tiled-b=
mg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11616">i915#11616</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7213">i915#7213</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cdclk@mode-tran=
sition-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3299">i915#3299</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_content_protection@dp-mst-li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140116v2/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11453">i915#11453</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140116v2/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-32x10.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs=
-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_=
cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-si=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb=
-vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotsp=
ot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9067">i915#9067</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915=
#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140116v2/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#=
3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197"=
>i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140116v2/shard-dg2-4/igt@kms_dsc@dsc-with-output-formats.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-dg2-4/igt@kms_fence_pin_leak.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bp=
p-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_fli=
p_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-6=
4bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-=
dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscal=
ing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-=
dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscal=
ing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915=
#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1043=
3">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354=
">i915#5354</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-=
tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-=
7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_frontbuff=
er_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458=
">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_frontbuffer_trac=
king@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +11 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_hdr@invalid-metadata-siz=
es.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#=
9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140116v2/shard-dg2-4/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821">i915#88=
21</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-pixel-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pix=
el-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25=
-with-pixel-format@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/sh=
ard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-form=
at@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40116v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downsc=
ale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i=
915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2=
/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pip=
e-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1401=
16v2/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40116v2/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@kms_rotation_=
crc@primary-y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11131">i915#11131</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_rotat=
ion_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#919=
7</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140116v2/shard-dg2-4/igt@kms_rotation_crc@sprite-rotation-90.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11131">i915#11131</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/11131">i915#11131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140116v2/shard-dg2-2/igt@kms_rotation_crc@sprite-r=
otation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140116v2/shard-dg2-5/igt@kms_tiled_display@bas=
ic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-8/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915=
#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140116v2/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#=
9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-1/igt@kms_vrr@negative-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140116v2/shard-dg2-2/igt@kms_vrr@negative-basic.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197"=
>i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/91=
97">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140116v2/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15547/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9197">i915#9197</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140116v2/shard-dg2-4/igt@prime_vgem@basic-fence-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15547 -&gt; Patchwork_140116v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15547: 6d5c65cb1afb42b0bbe813847d9271271d2875a2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8078: 175bddf20141ccad40130719ca46bde5140f4872 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140116v2: 6d5c65cb1afb42b0bbe813847d9271271d2875a2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4427800704178783209==--
