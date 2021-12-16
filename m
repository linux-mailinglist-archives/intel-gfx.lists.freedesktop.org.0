Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C0476CA0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 09:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A0210E9B5;
	Thu, 16 Dec 2021 08:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D47B10E99F;
 Thu, 16 Dec 2021 08:58:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A6A7AA0ED;
 Thu, 16 Dec 2021 08:58:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9173346250991605638=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 16 Dec 2021 08:58:51 -0000
Message-ID: <163964513116.14059.17091726299884014987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211216062645.3477854-1-lucas.demarchi@intel.com>
In-Reply-To: <20211216062645.3477854-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg1=3A_Read_OPROM_via_SPI_controller_=28rev3=29?=
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

--===============9173346250991605638==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg1: Read OPROM via SPI controller (rev3)
URL   : https://patchwork.freedesktop.org/series/94826/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11006_full -> Patchwork_21857_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21857_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21857_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 17)
------------------------------

  Additional (7): shard-dg1-15 shard-dg1-13 shard-dg1-12 shard-dg1-16 shard-dg1-17 shard-dg1-19 shard-dg1-18 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21857_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0} (NEW):
    - {shard-dg1-12}:     NOTRUN -> [FAIL][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0.html

  * {igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0} (NEW):
    - {shard-dg1-18}:     NOTRUN -> [FAIL][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0.html

  * {igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0} (NEW):
    - {shard-dg1-15}:     NOTRUN -> [FAIL][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0.html

  * {igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0} (NEW):
    - {shard-dg1-19}:     NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0.html

  * {igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0} (NEW):
    - {shard-dg1-17}:     NOTRUN -> [FAIL][5] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0.html

  * {igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0} (NEW):
    - {shard-dg1-16}:     NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0.html

  * {igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0} (NEW):
    - {shard-dg1-13}:     NOTRUN -> [FAIL][7] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@api_intel_bb@object-reloc-keep-cache:
    - {shard-dg1-12}:     NOTRUN -> [SKIP][10] +181 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_import_export@flink:
    - {shard-dg1-17}:     NOTRUN -> [FAIL][11] +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@drm_import_export@flink.html

  * igt@gem_create@create-massive:
    - {shard-dg1-13}:     NOTRUN -> [DMESG-WARN][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_create@create-massive.html

  * igt@gem_exec_capture@capture:
    - {shard-dg1-19}:     NOTRUN -> [SKIP][13] +91 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_exec_capture@capture.html

  * igt@gem_readwrite@write-bad-handle:
    - {shard-dg1-17}:     NOTRUN -> [SKIP][14] +131 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear@smem:
    - {shard-dg1-13}:     NOTRUN -> [FAIL][15] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_render_copy@y-tiled-ccs-to-linear@smem.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@smem:
    - {shard-dg1-19}:     NOTRUN -> [FAIL][16] +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@smem.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem:
    - {shard-dg1-16}:     NOTRUN -> [FAIL][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem.html

  * igt@gem_userptr_blits@input-checking:
    - {shard-dg1-16}:     NOTRUN -> [DMESG-WARN][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_userptr_blits@input-checking.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-dg1-17}:     NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@waitboost:
    - {shard-dg1-15}:     NOTRUN -> [FAIL][20] +10 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@i915_pm_rps@waitboost.html

  * igt@kms_concurrent@pipe-a:
    - {shard-dg1-18}:     NOTRUN -> [CRASH][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@kms_concurrent@pipe-a.html

  * igt@kms_concurrent@pipe-d:
    - {shard-dg1-15}:     NOTRUN -> [CRASH][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@kms_concurrent@pipe-d.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - {shard-dg1-18}:     NOTRUN -> [SKIP][23] +92 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - {shard-dg1-16}:     NOTRUN -> [SKIP][24] +60 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - {shard-dg1-13}:     NOTRUN -> [SKIP][25] +78 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_mmap@test_errors:
    - {shard-dg1-12}:     NOTRUN -> [FAIL][26] +11 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@prime_mmap@test_errors.html

  * igt@prime_mmap@test_forked_cpu_write:
    - {shard-dg1-18}:     NOTRUN -> [FAIL][27] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@prime_mmap@test_forked_cpu_write.html

  * igt@prime_mmap_coherency@read:
    - {shard-dg1-15}:     NOTRUN -> [INCOMPLETE][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@prime_mmap_coherency@read.html

  * igt@prime_mmap_coherency@write:
    - {shard-dg1-12}:     NOTRUN -> [INCOMPLETE][29] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@prime_mmap_coherency@write.html

  * igt@tools_test@sysfs_l3_parity:
    - {shard-dg1-15}:     NOTRUN -> [SKIP][30] +137 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@tools_test@sysfs_l3_parity.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11006_full and Patchwork_21857_full:

### New IGT tests (34) ###

  * igt@gem_exec_create@legacy@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [2.04] s

  * igt@gem_exec_create@madvise@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [20.25] s

  * igt@gem_gpgpu_fill@basic@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@gem_lmem_swapping@heavy-multi@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [27.58] s

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [31.25] s

  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [22.00] s

  * igt@gem_lmem_swapping@parallel-multi@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [26.65] s

  * igt@gem_lmem_swapping@parallel-random-verify@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [27.86] s

  * igt@gem_lmem_swapping@parallel-random@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [23.69] s

  * igt@gem_lmem_swapping@random@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [12.64] s

  * igt@gem_render_copy@linear-to-vebox-y-tiled@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.74] s

  * igt@gem_render_copy@linear-to-vebox-yf-tiled@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.74] s

  * igt@gem_render_copy@linear@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.94] s

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.74] s

  * igt@gem_render_copy@y-tiled-ccs-to-linear@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.29] s

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.93] s

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.91] s

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.91] s

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@y-tiled-to-vebox-linear@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.74] s

  * igt@gem_render_copy@yf-tiled-ccs-to-linear@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.30] s

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.91] s

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * igt@gem_render_copy@yf-tiled-to-vebox-linear@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.75] s

  

Known issues
------------

  Here are the changes found in Patchwork_21857_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#280])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#4525])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][35] ([i915#4547])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][36] -> [FAIL][37] ([i915#2842]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][38] ([i915#2842]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#2842])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2842]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][43] -> [SKIP][44] ([i915#2190])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#4613])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#4613]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#4270])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#4270])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_softpin@evict-snoop:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][52] ([i915#3002])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109289]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109289])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@gen7_exec_parse@bitmasks.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][55] ([i915#3743]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#3777])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111614])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#110725] / [fdo#111614])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3777]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3777])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111615])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3886])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3689] / [i915#3886])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#3886]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111615] / [i915#3689]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109278] / [i915#3886]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3689]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl1/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][71] -> [DMESG-WARN][72] ([i915#1982]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl3/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#111828])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#3359]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3319]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109279] / [i915#3359]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278]) +8 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#4103])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111825]) +23 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109274])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [PASS][87] -> [SKIP][88] ([i915#3701]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109280]) +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +55 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#1188])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-skl6/igt@kms_hdr@bpc-switch.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#1839])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][94] ([fdo#108145] / [i915#265]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#265])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3536])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-y.html
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#3536])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#2920])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#111068] / [i915#658])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][101] ([i915#132] / [i915#3467]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([fdo#109441])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][104] -> [FAIL][105] ([i915#31])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl3/igt@kms_setmode@basic.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2437])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2437])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#2530])
   [108]: https://intel-gfx-ci.01.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/index.html

--===============9173346250991605638==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg1: Read OPROM via SPI controller (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94826/">https://patchwork.freedesktop.org/series/94826/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11006_full -&gt; Patchwork_21857_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21857_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21857_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 17)</h2>
<p>Additional (7): shard-dg1-15 shard-dg1-13 shard-dg1-12 shard-dg1-16 shard-dg1-17 shard-dg1-19 shard-dg1-18 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21857_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0} (NEW):</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> +181 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@drm_import_export@flink.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_create@create-massive.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_exec_capture@capture.html">SKIP</a> +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@gem_readwrite@write-bad-handle.html">SKIP</a> +131 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear@smem:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@gem_render_copy@y-tiled-ccs-to-linear@smem.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@smem:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-19/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@smem.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@i915_pm_rps@waitboost.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@kms_concurrent@pipe-a.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-d:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@kms_concurrent@pipe-d.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +92 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-13/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_errors:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@prime_mmap@test_errors.html">FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_forked_cpu_write:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-18/igt@prime_mmap@test_forked_cpu_write.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@prime_mmap_coherency@read.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@write:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-12/igt@prime_mmap_coherency@write.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-dg1-15/igt@tools_test@sysfs_l3_parity.html">SKIP</a> +137 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11006_full and Patchwork_21857_full:</p>
<h3>New IGT tests (34)</h3>
<ul>
<li>
<p>igt@gem_exec_create@legacy@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [20.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_gpgpu_fill@basic@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [27.58] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [31.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [22.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [26.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [27.86] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [23.69] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [12.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.94] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.93] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.75] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21857_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl1/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@gen7_exec_parse@bitmasks.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl1/igt@kms_chamelium@dp-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl3/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#111825]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">SKIP</a> ([i915#3701]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-skl6/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-y.html">SKIP</a> ([i915#3536])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-y.html">SKIP</a> ([i915#3536])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-tglb3/igt@kms_psr@psr2_cursor_mmap_gtt.html">FAIL</a> ([i915#132] / [i915#3467]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-iclb7/igt@kms_psr@psr2_primary_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11006/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-kbl7/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21857/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.">SKIP</a> ([i915#2530])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9173346250991605638==--
