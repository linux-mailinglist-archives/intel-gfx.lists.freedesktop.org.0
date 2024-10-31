Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBD89B70DD
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 01:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380F410E157;
	Thu, 31 Oct 2024 00:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCC010E157;
 Thu, 31 Oct 2024 00:05:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3382303854699565868=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/hdcp=3A_Add_the_lo?=
 =?utf-8?q?op_only_for_DP_encoders_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 00:05:35 -0000
Message-ID: <173033313569.1364824.18072263729770327332@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
In-Reply-To: <20241030025304.317977-1-suraj.kandpal@intel.com>
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

--===============3382303854699565868==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Add the loop only for DP encoders (rev2)
URL   : https://patchwork.freedesktop.org/series/140633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15608_full -> Patchwork_140633v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140633v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140633v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140633v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-dg1:          [PASS][1] -> [FAIL][2] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3 (NEW):
    - shard-dg2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3.html

  
#### Warnings ####

  * igt@gem_userptr_blits@access-control:
    - shard-snb:          [SKIP][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@gem_userptr_blits@access-control.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb2/igt@gem_userptr_blits@access-control.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15608_full and Patchwork_140633v2_full:

### New IGT tests (1) ###

  * igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.83] s

  

Known issues
------------

  Here are the changes found in Patchwork_140633v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#11078])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#11078])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +5 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@drm_fdinfo@most-busy-idle-check-all@bcs0.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          [PASS][11] -> [SKIP][12] ([i915#2582])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@fbdev@unaligned-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@fbdev@unaligned-read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#7697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#3555] / [i915#9323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][15] -> [INCOMPLETE][16] ([i915#7297])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_ccs@suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#9323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][18] -> [INCOMPLETE][19] ([i915#12392])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#8562])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_create@create-ext-set-pat.html
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#8562])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#8562])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [PASS][23] -> [FAIL][24] ([i915#12031])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][25] ([i915#1099])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#280])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#280])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][28] ([i915#10030] / [i915#7975] / [i915#8213])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][29] ([i915#7975] / [i915#8213])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][30] -> [FAIL][31] ([i915#12543] / [i915#5784])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@gem_eio@reset-stress.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [PASS][32] -> [ABORT][33] ([i915#11713])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-2/igt@gem_exec_big@single.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-5/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#6334]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#6334]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#6334]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#6344])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][38] ([i915#2842]) +1 other test fail
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3539])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][40] -> [FAIL][41] ([i915#2842])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4812])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3539] / [i915#4852])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3281]) +2 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3281]) +5 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3281]) +5 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3281]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][48] -> [INCOMPLETE][49] ([i915#11441]) +1 other test incomplete
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#4613] / [i915#7582])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4613])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4613]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4613]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#4613])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#284])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4083])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4077]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-14/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_wc@read:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4083])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_mmap_wc@read.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4083]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3282]) +3 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4270]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#4270]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4270]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu-1:       NOTRUN -> [SKIP][64] ([i915#4270]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190] / [i915#8428]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4079])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4079])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#3282]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiling_max_stride:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4077]) +6 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_tiling_max_stride.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3297])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3297])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#3297]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#3297] / [i915#3323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#3297]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#2527] / [i915#2856]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#2527] / [i915#2856]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#2856]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gen9_exec_parse@secure-batches.html
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu-1:       NOTRUN -> [ABORT][79] ([i915#10887] / [i915#9820])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#8399])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#8399])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][82] +18 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][83] +6 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#11681] / [i915#6621])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][85] ([i915#9311]) +1 other test dmesg-warn
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-12/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][86] -> [INCOMPLETE][87] ([i915#4817])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#4077]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4212])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#8709]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#8709]) +7 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          ([PASS][92], [PASS][93], [PASS][94], [PASS][95]) -> [FAIL][96] ([i915#12238])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_atomic_transition@modeset-transition.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_atomic_transition@modeset-transition.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          ([PASS][97], [PASS][98], [PASS][99], [PASS][100]) -> [FAIL][101] ([i915#11859])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#5286]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#5286]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4538] / [i915#5286])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#5286]) +3 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#9197]) +7 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4538] / [i915#5190]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3638]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#6095]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#6095]) +105 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#6095]) +109 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6095]) +54 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][114] +47 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#12313]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#12313])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#10307] / [i915#6095]) +162 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#10434] / [i915#6095])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#6095]) +29 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#12313]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3742])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4087]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#7828])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#7828]) +7 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#7828]) +4 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#7828]) +5 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#7828]) +7 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@ctm-0-50:
    - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#12655])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_color@ctm-0-50.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_color@ctm-0-50.html

  * igt@kms_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#12655])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_color@ctm-red-to-blue.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#3116])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#9424])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@kms_content_protection@lic-type-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6944] / [i915#9424])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#9433])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7118] / [i915#7162] / [i915#9424])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#11453] / [i915#3359])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#11453] / [i915#3359]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#11453] / [i915#3359])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
    - shard-dg1:          [PASS][140] -> [DMESG-WARN][141] ([i915#4423]) +1 other test dmesg-warn
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3555]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#4103]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#4103]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4103] / [i915#4213])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#9197]) +36 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([PASS][148], [PASS][149]) -> [FAIL][150] ([i915#2346])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#4103])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#1769] / [i915#3555] / [i915#3804])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#3804])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#12402])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#12402])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#3840])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3840] / [i915#9053])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][160] -> [SKIP][161] ([i915#1849])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#1839])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1839])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#5354]) +19 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3637] / [i915#3966])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3637]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][167] -> [FAIL][168] ([i915#2122]) +3 other tests fail
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#3637]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#3637] / [i915#3966]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#3637]) +4 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#5354]) +10 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_flip@dpms-off-confusion-interruptible.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg1:          [PASS][174] -> [FAIL][175] ([i915#12517] / [i915#2122])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4:
    - shard-dg1:          [PASS][176] -> [FAIL][177] ([i915#2122]) +2 other tests fail
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-dg2:          [PASS][178] -> [FAIL][179] ([i915#79])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][180] ([i915#79]) +1 other test fail
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][181] ([i915#4839] / [i915#6113]) +1 other test incomplete
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][182] ([i915#4839] / [i915#6113])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][183] ([i915#6113]) +1 other test incomplete
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][184] ([i915#4839])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][185] ([i915#6113])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#2672] / [i915#3555]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#2672] / [i915#3555])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#2672]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#2587] / [i915#2672] / [i915#3555])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#2587] / [i915#2672])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#3555] / [i915#5190])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2672] / [i915#3555]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#2672]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#2587] / [i915#2672]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][195] +4 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-dg2:          [PASS][196] -> [FAIL][197] ([i915#6880])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#8708]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3458]) +5 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#1825]) +17 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#3458]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] +49 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#10433] / [i915#3458])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3023]) +11 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#8708]) +8 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#1825])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][207] +57 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8228])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu-1:       NOTRUN -> [SKIP][209] ([i915#3555] / [i915#8228])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3555] / [i915#8228]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_hdr@static-toggle.html
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#8228]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-dg2:          [PASS][212] -> [SKIP][213] ([i915#3555]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_invalid_mode@bad-vsync-end.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#12394])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#12394])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#1839])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-tglu:         [PASS][217] -> [ABORT][218] ([i915#10159]) +1 other test abort
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#8825]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane@plane-position-covered.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#7294])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#9809])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][224] ([i915#8292]) +1 other test fail
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#12247]) +12 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#12247]) +14 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][227] -> [SKIP][228] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#12247] / [i915#6953])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#12247]) +3 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [PASS][233] -> [SKIP][234] ([i915#12247]) +11 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][235] -> [SKIP][236] ([i915#3555] / [i915#8152] / [i915#9423])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          [PASS][237] -> [SKIP][238] ([i915#12247] / [i915#8152]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#12247] / [i915#3555] / [i915#9423])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#12247] / [i915#3555])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#12247] / [i915#3555])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#12247]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#12247] / [i915#6953])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#9812])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#9685])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_pm_dc@dc6-psr.html
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#9685]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#9685])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#8430])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#9519])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-rkl:          [PASS][250] -> [SKIP][251] ([i915#9519]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#9519])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][253] -> [SKIP][254] ([i915#11521])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_properties@crtc-properties-atomic.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#11520])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#11520]) +6 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#11520]) +4 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#11520]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> [SKIP][259] ([i915#11520]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#11520]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#9683])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9732]) +14 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#9688]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-4/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html

  * igt@kms_psr@psr-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#1072] / [i915#9732]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_psr@psr-sprite-mmap-gtt.html

  * igt@kms_psr@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#1072] / [i915#9732]) +11 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_psr@psr-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#1072] / [i915#9732]) +13 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_psr@psr-suspend.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#9732]) +12 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][268] ([i915#9685]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#5190] / [i915#9197])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#5289])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#11131] / [i915#4235])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#3555]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#3555]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][274] ([IGT#2])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][275] ([i915#12276]) +1 other test incomplete
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#3555]) +5 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#9906])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#9906])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#9906])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][280] +2 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-snb:          NOTRUN -> [SKIP][281] +40 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@perf_pmu@busy-accuracy-98.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#8850])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#8516])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#3708])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#9917])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9917])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][287] ([i915#12031]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html
    - shard-tglu:         [FAIL][289] ([i915#12031]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          ([PASS][291], [ABORT][292], [PASS][293], [PASS][294]) ([i915#12375] / [i915#5566]) -> [PASS][295]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([ABORT][296], [ABORT][297]) ([i915#12375] / [i915#5566]) -> [PASS][298]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@gen9_exec_parse@allowed-single.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][299] ([i915#9820]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [ABORT][301] ([i915#9820]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [FAIL][303] ([i915#12471]) -> [PASS][304] +1 other test pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][305] ([i915#12216]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][307] ([i915#11808] / [i915#5956]) -> [PASS][308] +1 other test pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [SKIP][309] ([i915#9197]) -> [PASS][310] +7 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          [SKIP][311] ([i915#1849]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg2:          [SKIP][313] ([i915#5354]) -> [PASS][314] +2 other tests pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [FAIL][315] ([i915#2122]) -> [PASS][316] +1 other test pass
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-glk:          ([FAIL][317], [PASS][318], [PASS][319], [FAIL][320]) ([i915#2122]) -> [PASS][321] +2 other tests pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          ([PASS][322], [PASS][323], [PASS][324], [FAIL][325]) ([i915#2122]) -> [PASS][326] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-glk:          ([PASS][327], [INCOMPLETE][328], [INCOMPLETE][329]) ([i915#4839]) -> [PASS][330]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-glk:          [INCOMPLETE][331] ([i915#4839]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          ([PASS][333], [PASS][334], [INCOMPLETE][335]) -> [PASS][336]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-dg2:          [SKIP][337] ([i915#3555]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_invalid_mode@bad-htotal.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg1:          [DMESG-WARN][339] ([i915#4423]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@kms_plane@plane-position-hole-dpms.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-15/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-dg2:          [SKIP][341] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b:
    - shard-dg2:          [SKIP][343] ([i915#12247]) -> [PASS][344] +2 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:
    - shard-dg2:          [SKIP][345] ([i915#12247] / [i915#8152]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][347] ([i915#9519]) -> [PASS][348] +3 other tests pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][349] ([i915#9519]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [SKIP][351] ([i915#3547]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@perf_pmu@most-busy-check-all:
    - shard-rkl:          [FAIL][353] ([i915#4349]) -> [PASS][354] +1 other test pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-5/igt@perf_pmu@most-busy-check-all.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-7/igt@perf_pmu@most-busy-check-all.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([FAIL][355], [PASS][356], [FAIL][357], [PASS][358]) ([i915#12031] / [i915#12458]) -> [FAIL][359] ([i915#12031])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@gem_ctx_engines@invalid-engines.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@gem_ctx_engines@invalid-engines.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][360], [PASS][361], [ABORT][362]) ([i915#9820]) -> [ABORT][363] ([i915#9820])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][364] ([i915#10131] / [i915#9820]) -> [ABORT][365] ([i915#10131] / [i915#9697])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][366] ([i915#7091]) -> [SKIP][367] ([i915#9197])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_selftest@mock:
    - shard-glk:          ([DMESG-WARN][368], [DMESG-WARN][369], [DMESG-WARN][370]) ([i915#1982] / [i915#9311]) -> [DMESG-WARN][371] ([i915#9311])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@i915_selftest@mock.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_selftest@mock.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@i915_selftest@mock.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@i915_selftest@mock.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][372] -> [SKIP][373] ([i915#9197]) +3 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][374] ([i915#5190]) -> [SKIP][375] ([i915#5190] / [i915#9197]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg2:          [SKIP][376] ([i915#4538] / [i915#5190]) -> [SKIP][377] ([i915#5190] / [i915#9197]) +6 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg2:          [SKIP][378] ([i915#5190] / [i915#9197]) -> [SKIP][379] ([i915#4538] / [i915#5190]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][380] ([i915#10307] / [i915#6095]) -> [SKIP][381] ([i915#9197]) +7 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
    - shard-dg2:          [SKIP][382] ([i915#9197]) -> [SKIP][383] ([i915#10307] / [i915#6095]) +2 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][384] ([i915#12313]) -> [SKIP][385] ([i915#9197])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][386] ([i915#11616] / [i915#7213]) -> [SKIP][387] ([i915#9197])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cdclk@mode-transition.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][388] ([i915#7118] / [i915#9424]) -> [SKIP][389] ([i915#9197])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_content_protection@atomic.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][390] ([i915#9197]) -> [SKIP][391] ([i915#3299])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][392] ([i915#9424]) -> [SKIP][393] ([i915#9197])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_content_protection@lic-type-1.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][394] ([i915#7118]) -> [SKIP][395] ([i915#9197])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_content_protection@srm.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][396] ([i915#3555]) -> [SKIP][397] ([i915#9197]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][398] ([i915#9197]) -> [SKIP][399] ([i915#11453] / [i915#3359])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][400] ([i915#5354]) -> [SKIP][401] ([i915#9197]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][402] ([i915#9197]) -> [SKIP][403] ([i915#5354])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][404], [FAIL][405], [FAIL][406]) ([i915#2346]) -> [FAIL][407] ([i915#2346])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][408] ([i915#9067]) -> [SKIP][409] ([i915#9197])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][410] ([i915#9197]) -> [SKIP][411] ([i915#4103] / [i915#4213])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][412] ([i915#9833]) -> [SKIP][413] ([i915#9197])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][414] ([i915#8812]) -> [SKIP][415] ([i915#9197])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][416] ([i915#3555] / [i915#3840]) -> [SKIP][417] ([i915#9197])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-dg2:          [SKIP][418] ([i915#2672] / [i915#3555]) -> [SKIP][419] ([i915#3555])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][420] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][421] ([i915#3555] / [i915#5190])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][422] ([i915#3555]) -> [SKIP][423] ([i915#2672] / [i915#3555]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][424] ([i915#8708]) -> [SKIP][425] ([i915#5354]) +7 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][426] ([i915#5354]) -> [SKIP][427] ([i915#8708])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          [SKIP][428] ([i915#3458]) -> [SKIP][429] ([i915#5354]) +15 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][430] ([i915#5354]) -> [SKIP][431] ([i915#3458]) +3 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         [SKIP][432] -> [SKIP][433] ([i915#1187])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@kms_hdr@brightness-with-hdr.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][434] ([i915#3555] / [i915#8228]) -> [SKIP][435] ([i915#9197]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_hdr@static-swap.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_hdr@static-swap.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][436] ([i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][437] ([i915#6953] / [i915#9423])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][438] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][439] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][440] ([i915#12247]) -> [SKIP][441] ([i915#12247] / [i915#8152])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][442] ([i915#3828]) -> [SKIP][443] ([i915#9340])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][444] ([i915#5190] / [i915#9197]) -> [SKIP][445] ([i915#11131] / [i915#4235] / [i915#5190])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          ([FAIL][446], [SKIP][447], [FAIL][448], [FAIL][449]) ([i915#10959]) -> [FAIL][450] ([i915#10959])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_tiled_display@basic-test-pattern.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_tiled_display@basic-test-pattern.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_tiled_display@basic-test-pattern.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          [SKIP][451] ([i915#9906]) -> [SKIP][452] ([i915#9197])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/index.html

--===============3382303854699565868==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Add the loop only for DP encoders (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140633/">https://patchwork.freedesktop.org/series/140633/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15608_full -&gt; Patchwork_140633v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140633v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140633v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140633v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3 (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb7/igt@gem_userptr_blits@access-control.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb2/igt@gem_userptr_blits@access-control.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15608_full and Patchwork_140633v2_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_hdr@brightness-with-hdr@pipe-a-dp-3:<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.83] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140633v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@drm_fdinfo@most-busy-idle-check-all@bcs0.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-2/igt@gem_exec_big@single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-5/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_lmem_swapping@verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-14/igt@gem_mmap_gtt@basic-small-bo.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_tiling_max_stride.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-12/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">FAIL</a> ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +105 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +109 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +162 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_color@ctm-0-50.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_color@ctm-0-50.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_color@ctm-red-to-blue.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#7162] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> ([i915#9197]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([i915#5354]) +19 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> ([i915#3637] / [i915#3966]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#12517] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> ([i915#79]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113]) +1 other test incomplete</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#6113]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1825]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">ABORT</a> ([i915#10159]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane@plane-position-covered.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#9423])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_properties@crtc-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> ([i915#11520]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-plane-move.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-4/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html">SKIP</a> ([i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@kms_psr@psr-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_psr@psr-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +11 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_psr@psr-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> ([i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-4/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1.html">INCOMPLETE</a> ([i915#12276]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_vrr@flip-suspend.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@perf_pmu@busy-accuracy-98.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@gen9_exec_parse@allowed-all.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a>) ([i915#12375] / [i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@gen9_exec_parse@allowed-single.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) ([i915#12375] / [i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> ([i915#12471]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a>) ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">INCOMPLETE</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_invalid_mode@bad-htotal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg1-12/igt@kms_plane@plane-position-hole-dpms.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg1-15/igt@kms_plane@plane-position-hole-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-5/igt@perf_pmu@most-busy-check-all.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-7/igt@perf_pmu@most-busy-check-all.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12031] / [i915#12458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#7091]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk6/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@i915_selftest@mock.html">DMESG-WARN</a>) ([i915#1982] / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk5/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#5354]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-tglu-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#3828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#4235] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk1/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk3/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-glk5/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a>) ([i915#10959]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-glk4/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> ([i915#10959])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15608/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140633v2/shard-dg2-2/i">SKIP</a> ([i915#9197])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3382303854699565868==--
