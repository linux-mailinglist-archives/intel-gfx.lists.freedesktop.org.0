Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBA19AA025
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 12:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C7E10E30F;
	Tue, 22 Oct 2024 10:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0581F10E30F;
 Tue, 22 Oct 2024 10:36:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0737525225685560619=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/xe/hdcp=3A_Add_check_to?=
 =?utf-8?q?_remove_hdcp2_compatibilty_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2024 10:36:53 -0000
Message-ID: <172959341300.1309136.13842784007093180551@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
In-Reply-To: <20241022055655.1902-1-suraj.kandpal@intel.com>
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

--===============0737525225685560619==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/hdcp: Add check to remove hdcp2 compatibilty (rev2)
URL   : https://patchwork.freedesktop.org/series/140291/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15574_full -> Patchwork_140291v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140291v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140291v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140291v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_140291v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8414]) +7 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][3] -> [SKIP][4] ([i915#1849] / [i915#2582])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@fbdev@info.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@fbdev@info.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][5] ([i915#12392] / [i915#7297])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#6335])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#280])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_ctx_sseu@engines.html
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#280])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-tglu:         NOTRUN -> [FAIL][9] ([i915#2842]) +1 other test fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_exec_fair@basic-none-solo.html
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#3539] / [i915#4852])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#4473] / [i915#4771])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#3539])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#3281]) +3 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3281])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#4812]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#4860])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences.html
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4860])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#4613])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#4083]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@gem_mmap@bad-object.html

  * igt@gem_mmap_gtt@basic-small-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4077])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_mmap_gtt@basic-small-copy.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4083])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3282]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4270])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4270])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#5190] / [i915#8428]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4885])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4885])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_tiled_swapping@non-threaded.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#2527] / [i915#2856])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gen9_exec_parse@basic-rejected.html
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#2527])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#2856])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#2856])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][36], [PASS][37]) -> [ABORT][38] ([i915#9820])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#8399])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rps@reset:
    - shard-dg2:          NOTRUN -> [FAIL][40] ([i915#12459])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-10/igt@i915_pm_rps@reset.html
    - shard-dg1:          NOTRUN -> [FAIL][41] ([i915#12459])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-17/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#11681])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#11681])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_query@query-topology-matches-eu-total:
    - shard-glk:          NOTRUN -> [INCOMPLETE][44] ([i915#2295])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk2/igt@i915_query@query-topology-matches-eu-total.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#9531])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          ([PASS][46], [PASS][47]) -> [FAIL][48] ([i915#12238])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@kms_atomic_transition@modeset-transition.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_atomic_transition@modeset-transition.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          ([PASS][49], [PASS][50]) -> [FAIL][51] ([i915#11859])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - shard-dg2:          [PASS][52] -> [SKIP][53] ([i915#9197]) +20 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition-fencing.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4538] / [i915#5286])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#5286])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#5286]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3638]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][58] +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4538] / [i915#5190]) +4 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#6095]) +121 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#6095]) +14 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#6095]) +43 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#12313])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#12313])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#10307] / [i915#6095]) +141 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#6095]) +14 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#11616] / [i915#7213])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4087]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][70] +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#7828]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#7828]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#7828])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_content_protection@type1:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#3555] / [i915#6944] / [i915#9424])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3555] / [i915#8814])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#11453] / [i915#3359])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3555])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#4103] / [i915#4213])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#4103])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3804])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_feature_discovery@display-4x:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#1839])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#3637])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#9934])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip@2x-flip-vs-wf_vblank.html
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#3637])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#2122])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][87] -> [FAIL][88] ([i915#2122]) +3 other tests fail
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-mtlp:         [PASS][89] -> [FAIL][90] ([i915#2122]) +1 other test fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-4/igt@kms_flip@blocking-wf_vblank.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
    - shard-rkl:          [PASS][91] -> [FAIL][92] ([i915#12457])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#2672] / [i915#3555])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#2672] / [i915#3555])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#2587] / [i915#2672])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#2587] / [i915#2672])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#2672]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#2672] / [i915#3555] / [i915#5190])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [PASS][99] -> [SKIP][100] ([i915#3555]) +4 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#8708]) +4 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          [PASS][102] -> [DMESG-WARN][103] ([i915#4423]) +1 other test dmesg-warn
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#5354]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-snb:          [PASS][105] -> [SKIP][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][107] +14 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][108] -> [SKIP][109] ([i915#5354]) +9 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-dg2:          [PASS][110] -> [FAIL][111] ([i915#6880])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3458]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#8708]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#1825]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][115] +19 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3458]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#3555] / [i915#8228])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#3555] / [i915#8228])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [PASS][119] -> [SKIP][120] ([i915#3555] / [i915#8228])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][121]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#8825])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane@plane-position-covered.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-dg2:          [PASS][124] -> [SKIP][125] ([i915#7294]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_alpha_blend@alpha-7efc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][126] ([i915#8292])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [PASS][127] -> [SKIP][128] ([i915#12247] / [i915#8152] / [i915#9423])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#12247]) +8 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [PASS][131] -> [SKIP][132] ([i915#12247] / [i915#8152]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [PASS][133] -> [SKIP][134] ([i915#6953] / [i915#8152] / [i915#9423])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-dg2:          [PASS][135] -> [SKIP][136] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#5354])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#9812])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#9685])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_pm_dc@dc5-psr.html
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#9685])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][141] -> [SKIP][142] ([i915#9340])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#8430])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#8430])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#1849])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_pm_rpm@cursor-dpms.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#9519])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#9519])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][150] ([i915#11520])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#11520]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#11520]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#11520]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#9683])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#9683])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-cursor-render:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#9688]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_psr@fbc-pr-cursor-render.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#1072] / [i915#9732])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#1072] / [i915#9732]) +7 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@pr-no-drrs:
    - shard-glk:          NOTRUN -> [SKIP][159] +7 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk7/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#9732]) +4 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][161] ([i915#12231]) +1 other test abort
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3555]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_vrr@flip-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3555]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_vrr@flip-dpms.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#3708])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@prime_vgem@fence-read-hang.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][165] ([i915#12392] / [i915#7297]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][167] ([i915#12027] / [i915#12031]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@gem_ctx_engines@invalid-engines.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-tglu:         [FAIL][169] ([i915#2846]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-6/igt@gem_exec_fair@basic-deadline.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace:
    - shard-glk:          [FAIL][171] ([i915#2842]) -> [PASS][172] +1 other test pass
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk3/igt@gem_exec_fair@basic-pace.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][173] ([i915#2842]) -> [PASS][174] +1 other test pass
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][175] ([i915#2842]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][177] ([i915#11441]) -> [PASS][178] +1 other test pass
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][179] ([i915#7975] / [i915#8213]) -> [PASS][180] +1 other test pass
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html
    - shard-tglu:         [ABORT][181] ([i915#7975] / [i915#8213]) -> [PASS][182] +1 other test pass
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-snb:          [DMESG-WARN][183] -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb2/igt@i915_suspend@fence-restore-untiled.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([FAIL][185], [FAIL][186]) ([i915#2346]) -> [PASS][187]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][188] ([i915#12402]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][190] ([i915#2122]) -> [PASS][191] +1 other test pass
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][192], [PASS][193]) ([i915#2122]) -> [PASS][194] +1 other test pass
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
    - shard-tglu:         [FAIL][195] ([i915#2122]) -> [PASS][196] +5 other tests pass
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [INCOMPLETE][197] -> [PASS][198] +1 other test pass
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-dg2:          [SKIP][199] ([i915#3555]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][201] ([i915#5354]) -> [PASS][202] +6 other tests pass
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-snb:          [SKIP][203] -> [PASS][204] +1 other test pass
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [SKIP][205] ([i915#7294]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [SKIP][207] ([i915#8152] / [i915#9423]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg2:          [SKIP][209] ([i915#12247]) -> [PASS][210] +8 other tests pass
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][211] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][212] +1 other test pass
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [SKIP][213] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][215] ([i915#12247] / [i915#8152]) -> [PASS][216] +2 other tests pass
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][217] ([i915#9519]) -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          [SKIP][219] ([i915#9197]) -> [PASS][220] +21 other tests pass
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [FAIL][221] ([i915#10393]) -> [PASS][222] +1 other test pass
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-7/igt@kms_vrr@negative-basic.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-3/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][223] ([i915#4349]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@enable-race:
    - shard-glk:          ([DMESG-WARN][225], [PASS][226]) ([i915#118]) -> [PASS][227] +1 other test pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk7/igt@perf_pmu@enable-race.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@perf_pmu@enable-race.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk1/igt@perf_pmu@enable-race.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][228] ([i915#12027] / [i915#12031]) -> [FAIL][229] ([i915#12031])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([FAIL][230], [PASS][231]) ([i915#2842]) -> [FAIL][232] ([i915#2842]) +1 other test fail
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][233] ([i915#10887] / [i915#9820]) -> [ABORT][234] ([i915#9820])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][235] ([i915#10131] / [i915#10887] / [i915#9697]) -> [ABORT][236] ([i915#10131] / [i915#10887] / [i915#9820])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][237] ([i915#9197]) -> [SKIP][238] +2 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][239] -> [SKIP][240] ([i915#9197])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][241] ([i915#4538] / [i915#5190]) -> [SKIP][242] ([i915#5190] / [i915#9197]) +5 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][243] ([i915#5190] / [i915#9197]) -> [SKIP][244] ([i915#4538] / [i915#5190]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][245] ([i915#10307] / [i915#6095]) -> [SKIP][246] ([i915#9197]) +6 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][247] ([i915#9197]) -> [SKIP][248] ([i915#10307] / [i915#6095]) +5 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][249] ([i915#9197]) -> [SKIP][250] ([i915#4087])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-dg1:          [SKIP][251] ([i915#4423] / [i915#7828]) -> [SKIP][252] ([i915#7828])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][253] ([i915#9197]) -> [SKIP][254] ([i915#7118] / [i915#9424])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_content_protection@atomic.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][255] ([i915#7118] / [i915#9424]) -> [SKIP][256] ([i915#9197])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][257] ([i915#9424]) -> [SKIP][258] ([i915#9197]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_content_protection@content-type-change.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][259] ([i915#3299]) -> [SKIP][260] ([i915#9197])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][261] ([i915#9197]) -> [SKIP][262] ([i915#9424])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_content_protection@lic-type-0.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          [SKIP][263] ([i915#3555]) -> [SKIP][264] ([i915#9197]) +2 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_cursor_crc@cursor-random-max-size.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][265] ([i915#11453] / [i915#3359]) -> [SKIP][266] ([i915#9197])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][267] ([i915#9197]) -> [SKIP][268] ([i915#3555]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          [SKIP][269] ([i915#9197]) -> [SKIP][270] ([i915#5354]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][271] ([i915#9197]) -> [SKIP][272] ([i915#9067])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][273] ([i915#9197]) -> [SKIP][274] ([i915#9833])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][275] ([i915#3840] / [i915#9688]) -> [SKIP][276] ([i915#9197])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          [SKIP][277] ([i915#9197]) -> [SKIP][278] ([i915#3840])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][279] ([i915#9197]) -> [SKIP][280] ([i915#3555] / [i915#3840])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          [SKIP][281] ([i915#3840] / [i915#9053]) -> [SKIP][282] ([i915#9197])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][283], [FAIL][284]) ([i915#2122]) -> [FAIL][285] ([i915#2122]) +1 other test fail
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1:
    - shard-snb:          [FAIL][286] ([i915#10826]) -> [FAIL][287] ([i915#2122])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][288] ([i915#3555]) -> [SKIP][289] ([i915#2672] / [i915#3555])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][290] ([i915#3555] / [i915#5190]) -> [SKIP][291] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][292] ([i915#5354]) -> [SKIP][293] ([i915#8708]) +4 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][294] ([i915#8708]) -> [SKIP][295] ([i915#5354]) +8 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][296] ([i915#10433] / [i915#3458]) -> [SKIP][297] ([i915#3458]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][298] ([i915#5354]) -> [SKIP][299] ([i915#10055])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][300] ([i915#5354]) -> [SKIP][301] ([i915#3458]) +6 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][302] ([i915#3458]) -> [SKIP][303] ([i915#10433] / [i915#3458]) +2 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-dg2:          [SKIP][304] ([i915#3458]) -> [SKIP][305] ([i915#5354]) +5 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][306] ([i915#9197]) -> [SKIP][307] ([i915#3555] / [i915#8228])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][308] ([i915#3555] / [i915#8228]) -> [SKIP][309] ([i915#9197])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg1:          [SKIP][310] ([i915#12388]) -> [SKIP][311] ([i915#12388] / [i915#4423])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_joiner@basic-force-big-joiner.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][312] ([i915#12247] / [i915#9423]) -> [SKIP][313] ([i915#12247] / [i915#8152] / [i915#9423])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][314] ([i915#12247]) -> [SKIP][315] ([i915#12247] / [i915#8152])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-dg1:          [SKIP][316] ([i915#1072] / [i915#9732]) -> [SKIP][317] ([i915#1072] / [i915#4423] / [i915#9732])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_psr@fbc-psr2-basic.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][318] ([i915#11131] / [i915#4235]) -> [SKIP][319] ([i915#9197])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][320] ([i915#9197]) -> [SKIP][321] ([i915#11131] / [i915#4235])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][322] ([i915#5190] / [i915#9197]) -> [SKIP][323] ([i915#11131] / [i915#4235] / [i915#5190])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][324] ([i915#11131] / [i915#4235] / [i915#5190]) -> [SKIP][325] ([i915#5190] / [i915#9197])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          [SKIP][326] ([i915#8623]) -> [SKIP][327] ([i915#9197])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          [SKIP][328] ([i915#9906]) -> [SKIP][329] ([i915#9197])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-drrs.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][330] ([i915#9100]) -> [FAIL][331] ([i915#7484]) +1 other test fail
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12231]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402
  [i915#12457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457
  [i915#12459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12459
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15574 -> Patchwork_140291v2

  CI-20190529: 20190529
  CI_DRM_15574: aa0898115bcff3eda6d021cc66eb8a1c3b264c56 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8080: 20fcbc59241a16c84d12f4f6ba390fb46fd65a36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140291v2: aa0898115bcff3eda6d021cc66eb8a1c3b264c56 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/index.html

--===============0737525225685560619==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/xe/hdcp: Add check to remove hdcp2 compatibilty (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140291/">https://patchwork.freedesktop.org/series/140291/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15574_full -&gt; Patchwork_140291v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140291v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140291v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140291v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140291v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@drm_fdinfo@busy-check-all@vecs1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_exec_fair@basic-none-solo.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_fair@basic-none-solo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473">i915#4473</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@gem_mmap@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gem_mmap_gtt@basic-small-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-10/igt@i915_pm_rps@reset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12459">i915#12459</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-17/igt@i915_pm_rps@reset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12459">i915#12459</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@i915_pm_rps@thresholds-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-matches-eu-total:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk2/igt@i915_query@query-topology-matches-eu-total.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_atomic_transition@modeset-transition.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition-fencing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-19/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +121 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +141 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_chamelium_color@ctm-green-to-red.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-4/igt@kms_flip@blocking-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457">i915#12457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-stridechange.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane@plane-position-covered.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-1/igt@kms_psr@fbc-pr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk7/igt@kms_psr@pr-no-drrs.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231">i915#12231</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk1/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk3/igt@gem_exec_fair@basic-pace.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk8/igt@gem_exec_fair@basic-pace.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb2/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb1/igt@i915_suspend@fence-restore-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402">i915#12402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-7/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@invalid-parameters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a> +21 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-7/igt@kms_vrr@negative-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393">i915#10393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-3/igt@kms_vrr@negative-basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk7/igt@perf_pmu@enable-race.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk2/igt@perf_pmu@enable-race.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118">i915#118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk1/igt@perf_pmu@enable-race.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697">i915#9697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg1-17/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg1-18/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15574/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140291v2/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484">i915#7484</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15574 -&gt; Patchwork_140291v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15574: aa0898115bcff3eda6d021cc66eb8a1c3b264c56 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8080: 20fcbc59241a16c84d12f4f6ba390fb46fd65a36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140291v2: aa0898115bcff3eda6d021cc66eb8a1c3b264c56 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0737525225685560619==--
