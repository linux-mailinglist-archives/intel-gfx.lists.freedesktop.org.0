Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB19E9B125D
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 00:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9CD10EB9B;
	Fri, 25 Oct 2024 22:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE7010EB98;
 Fri, 25 Oct 2024 22:12:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5508972866077117141=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Write_source_OU?=
 =?utf-8?q?I_for_non-eDP_sinks_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 22:12:43 -0000
Message-ID: <172989436330.1334319.9167085206824769576@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241025160259.3088727-1-imre.deak@intel.com>
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
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

--===============5508972866077117141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Write source OUI for non-eDP sinks (rev4)
URL   : https://patchwork.freedesktop.org/series/140061/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15598_full -> Patchwork_140061v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140061v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140061v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140061v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@api_intel_allocator@reopen-fork:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb7/igt@api_intel_allocator@reopen-fork.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb5/igt@api_intel_allocator@reopen-fork.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-glk:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@kms_color@ctm-0-50:
    - shard-dg2:          [PASS][4] -> [SKIP][5] +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_color@ctm-0-50.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_color@ctm-0-50.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-dg1:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][8] +1 other test incomplete
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-d-hdmi-a-3.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][9] -> [FAIL][10] +2 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] +1 other test incomplete
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk7/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  
Known issues
------------

  Here are the changes found in Patchwork_140061v4_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-12/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-12/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-14/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-14/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-14/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-18/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-18/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-19/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-19/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-19/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-17/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-17/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-17/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#6230])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#11078])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#11078])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#8414]) +5 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8414]) +7 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [PASS][68] -> [SKIP][69] ([i915#9197]) +31 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@drm_read@short-buffer-block.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@drm_read@short-buffer-block.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          [PASS][70] -> [SKIP][71] ([i915#2582]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@fbdev@unaligned-read.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@fbdev@unaligned-read.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#3555] / [i915#9323])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#9323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#3555] / [i915#9323]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#9323]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#280])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#280])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#280])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#280])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4812])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4771])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#8555]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][83] -> [DMESG-WARN][84] ([i915#12412])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-6/igt@gem_exec_balancer@nop.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#4525]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [PASS][86] -> [TIMEOUT][87] ([i915#3778] / [i915#7016]) +1 other test timeout
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][88] -> [FAIL][89] ([i915#2846])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3539] / [i915#4852])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#2846])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu:         NOTRUN -> [FAIL][93] ([i915#2842]) +5 other tests fail
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-rkl:          NOTRUN -> [FAIL][94] ([i915#2842]) +1 other test fail
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu-1:       NOTRUN -> [FAIL][95] ([i915#2842]) +1 other test fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][96] -> [FAIL][97] ([i915#2842]) +3 other tests fail
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4812])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#3539] / [i915#4852]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3281]) +2 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3281]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3281]) +8 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][103] ([i915#12296]) +5 other tests fail
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][104] -> [INCOMPLETE][105] ([i915#11441]) +1 other test incomplete
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][106] ([i915#7975] / [i915#8213]) +1 other test abort
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4860])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4860])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#12193])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4565])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#4613]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4613]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_lmem_swapping@verify-random.html
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4613])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#4613]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#284])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@gem_media_vme.html
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#284])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4077])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_mmap_gtt@big-bo.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [PASS][118] -> [ABORT][119] ([i915#10729])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-7/igt@gem_mmap_offset@clear.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-7/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][120] -> [ABORT][121] ([i915#10029] / [i915#10729])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4083])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#4083])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3282]) +10 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][125] ([i915#2658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#4270]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#4270]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#4270]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4270]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-6/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#4270]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3282]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#5190] / [i915#8428]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#8411])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#4079])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiling_max_stride:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#4077])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_tiling_max_stride.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3297]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_userptr_blits@coherency-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#3297]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-glk:          NOTRUN -> [SKIP][138] +12 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk3/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#3297]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#3297])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-mtlp:         NOTRUN -> [SKIP][141] +5 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#2527]) +3 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#2527] / [i915#2856]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#2856])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#2527] / [i915#2856]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][146] -> [ABORT][147] ([i915#9820])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][148] -> [ABORT][149] ([i915#9820])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][150] -> [ABORT][151] ([i915#10887] / [i915#9820])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#6412])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#8399]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_selftest@mock@memory_region:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][154] ([i915#9311]) +1 other test dmesg-warn
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#7707])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#7707])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#8709]) +7 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#8709]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#8709]) +11 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#1769] / [i915#3555])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#5286]) +7 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#5286]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4538] / [i915#5286])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#5286]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3638]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][166] +32 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4538]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4538] / [i915#5190]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#6095]) +39 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#6095]) +9 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#6095]) +100 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#12313]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#12313]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#12313])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#10307] / [i915#6095]) +128 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#6095]) +39 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#12313])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#6095]) +123 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3742])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#7213]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#4087]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#7828]) +5 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#7828]) +8 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#7828]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#7828]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#7828])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#7828]) +7 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3555] / [i915#9979])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#7118] / [i915#9424])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#3116] / [i915#3299])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3116])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3299])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#9424])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@lic-type-1.html
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#6944] / [i915#9424])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#7118])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3555]) +8 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#11453] / [i915#3359]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#3555]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#11453] / [i915#3359])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#3555]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#11453] / [i915#3359])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#11453] / [i915#3359]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][204] ([i915#4423])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#4103])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#4103])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#4213])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - shard-dg1:          [PASS][208] -> [DMESG-WARN][209] ([i915#4423]) +2 other tests dmesg-warn
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#9809])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][211] -> [FAIL][212] ([i915#2346])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#9067])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#4103])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#8588])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#3804])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3804])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#1257])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_dp_aux_dev.html
    - shard-tglu-1:       NOTRUN -> [SKIP][219] ([i915#1257])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3840] / [i915#9688])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#3555] / [i915#3840])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3555] / [i915#3840])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#3840])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#3469])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][225] ([i915#2065] / [i915#4854])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#1839])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#9337])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#658])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][229] -> [FAIL][230] ([i915#2122]) +1 other test fail
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#9934])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#3637] / [i915#3966])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#3637]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#8381])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#3637]) +4 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#5354]) +9 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#3637])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][238] -> [FAIL][239] ([i915#79]) +1 other test fail
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [PASS][240] -> [FAIL][241] ([i915#11989] / [i915#2122])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [PASS][242] -> [FAIL][243] ([i915#2122])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#2672] / [i915#3555]) +3 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#2672] / [i915#8813])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#2672]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#2672] / [i915#3555])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#2587] / [i915#2672])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#2672]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#2587] / [i915#2672] / [i915#3555])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#2587] / [i915#2672]) +3 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#2672] / [i915#3555]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8810] / [i915#8813]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8810]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#2672] / [i915#3555]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#8708])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][258] -> [SKIP][259] ([i915#5354]) +6 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#8708]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#1825]) +5 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][262] +6 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] +65 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#3458]) +4 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#1825]) +49 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#3458]) +5 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#8708]) +4 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][268] +60 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#3023]) +31 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#3555] / [i915#8228]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#3555] / [i915#8228]) +3 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_hdr@static-swap.html
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#3555] / [i915#8228]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][273] -> [SKIP][274] ([i915#3555] / [i915#8228]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-dg2:          [PASS][275] -> [SKIP][276] ([i915#3555]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][277] ([i915#10656])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#12394])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#12339])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#6301])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#6301])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          [PASS][282] -> [SKIP][283] ([i915#8825])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_plane@plane-position-hole.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_lowres@tiling-none:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#3582])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-none.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#11614] / [i915#3582])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-none@pipe-d-edp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][287] ([i915#8292])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#12247]) +4 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-dg2:          [PASS][289] -> [SKIP][290] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#12247]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#12247]) +7 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#12247]) +4 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#12247] / [i915#6953] / [i915#9423])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#12247]) +3 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [PASS][296] -> [SKIP][297] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [PASS][298] -> [SKIP][299] ([i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [PASS][300] -> [SKIP][301] ([i915#12247]) +17 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [PASS][302] -> [SKIP][303] ([i915#12247] / [i915#8152]) +5 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#12247] / [i915#6953])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [PASS][305] -> [SKIP][306] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#5354])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#9685]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu-1:       NOTRUN -> [FAIL][309] ([i915#9295])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#8430])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu-1:       NOTRUN -> [SKIP][311] ([i915#8430])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor:
    - shard-dg2:          [PASS][312] -> [SKIP][313] ([i915#1849]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_pm_rpm@cursor.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_pm_rpm@cursor.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][314] -> [SKIP][315] ([i915#9519]) +3 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-rkl:          [PASS][316] -> [SKIP][317] ([i915#9519]) +4 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-dg1:          NOTRUN -> [SKIP][318] ([i915#4077])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#9519])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][320] ([i915#9519])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][321] ([i915#9519])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][322] ([i915#6524])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [PASS][323] -> [SKIP][324] ([i915#11521]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#11520]) +9 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][326] ([i915#11520])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#11520]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([i915#12316]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][329] ([i915#11520]) +6 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][330] ([i915#11520]) +4 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][331] ([i915#11520]) +2 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][332] ([i915#9683])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][333] ([i915#9683])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#1072] / [i915#9732]) +8 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@pr-sprite-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#9688]) +4 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_psr@pr-sprite-blt.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][336] ([i915#9732]) +14 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#1072] / [i915#9732]) +4 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_psr@psr-primary-blt.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][338] ([i915#1072] / [i915#9732]) +28 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][339] ([i915#9732]) +14 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][340] ([i915#9685])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg1:          NOTRUN -> [SKIP][341] ([i915#9685])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#11131] / [i915#4235] / [i915#5190])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][343] ([i915#5465]) +1 other test fail
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
    - shard-rkl:          [PASS][344] -> [FAIL][345] ([i915#5465]) +2 other tests fail
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          [PASS][346] -> [FAIL][347] ([i915#5465]) +4 other tests fail
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk2/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-2:
    - shard-glk:          [PASS][348] -> [FAIL][349] ([i915#12527] / [i915#5465]) +1 other test fail
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk2/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-1:
    - shard-snb:          [PASS][350] -> [FAIL][351] ([i915#5465])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb2/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb6/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#8623])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][353] ([i915#8623])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#9906]) +1 other test skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
    - shard-tglu-1:       NOTRUN -> [SKIP][355] ([i915#9906]) +1 other test skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#3555] / [i915#9906])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][357] ([i915#9906])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu-1:       NOTRUN -> [SKIP][358] ([i915#2437])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][359] ([i915#2437] / [i915#9412])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#2437])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-rkl:          NOTRUN -> [SKIP][361] ([i915#2437])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][362] ([i915#2437] / [i915#9412])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_writeback@writeback-pixel-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][363] ([i915#2437] / [i915#9412])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg2:          NOTRUN -> [SKIP][364]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][365] -> [FAIL][366] ([i915#4349])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][367] ([i915#4349]) +4 other tests fail
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          NOTRUN -> [SKIP][368] ([i915#3708])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - shard-dg1:          [DMESG-WARN][369] ([i915#4423]) -> [PASS][370] +1 other test pass
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/igt@debugfs_test@read_all_entries.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@debugfs_test@read_all_entries.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][371] ([i915#12031]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][373] ([i915#9561]) -> [PASS][374] +1 other test pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-3/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_balancer@sliced:
    - shard-glk:          [INCOMPLETE][375] -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk2/igt@gem_exec_balancer@sliced.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][377] ([i915#2842]) -> [PASS][378] +1 other test pass
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][379] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [PASS][382] +11 other tests pass
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_async_flips@async-flip-suspend-resume.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][383] ([i915#5956]) -> [PASS][384] +1 other test pass
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][385] ([i915#3555]) -> [PASS][386] +1 other test pass
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-7/igt@kms_color@deep-color.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-10/igt@kms_color@deep-color.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][387] ([i915#4839]) -> [PASS][388] +1 other test pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][389] ([i915#2122]) -> [PASS][390] +2 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-snb:          [FAIL][391] ([i915#2122]) -> [PASS][392] +1 other test pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][393] ([i915#5354]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][395] -> [PASS][396] +1 other test pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][397] ([i915#3555] / [i915#8228]) -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-7/igt@kms_hdr@static-swap.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-dg2:          [SKIP][399] ([i915#8825]) -> [PASS][400]
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [FAIL][401] ([i915#8292]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][403] ([i915#9519]) -> [PASS][404] +1 other test pass
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_properties@invalid-properties-atomic:
    - shard-dg1:          [DMESG-WARN][405] ([i915#4391] / [i915#4423]) -> [PASS][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/igt@kms_properties@invalid-properties-atomic.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@kms_properties@invalid-properties-atomic.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [FAIL][407] ([i915#9196]) -> [PASS][408] +1 other test pass
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak.html

  
#### Warnings ####

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][409] ([i915#7091]) -> [SKIP][410] ([i915#9197])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][411] ([i915#6228]) -> [SKIP][412] ([i915#9197])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][413] -> [SKIP][414] ([i915#9197]) +2 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][415] ([i915#9197]) -> [SKIP][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-dg2:          [SKIP][417] ([i915#4538] / [i915#5190]) -> [SKIP][418] ([i915#5190] / [i915#9197]) +8 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][419] ([i915#5190] / [i915#9197]) -> [SKIP][420] ([i915#4538] / [i915#5190]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          [SKIP][421] ([i915#4423] / [i915#4538]) -> [SKIP][422] ([i915#4538])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][423] ([i915#9197]) -> [SKIP][424] ([i915#10307] / [i915#6095])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][425] ([i915#10307] / [i915#6095]) -> [SKIP][426] ([i915#9197]) +10 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][427] ([i915#7118] / [i915#9424]) -> [SKIP][428] ([i915#9197])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][429] ([i915#3299]) -> [SKIP][430] ([i915#9197])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][431] ([i915#9197]) -> [SKIP][432] ([i915#9424])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][433] ([i915#7118]) -> [SKIP][434] ([i915#9197])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_content_protection@srm.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][435] ([i915#11453] / [i915#3359]) -> [SKIP][436] ([i915#9197]) +1 other test skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][437] ([i915#9197]) -> [SKIP][438] ([i915#11453] / [i915#3359])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          [SKIP][439] ([i915#9197]) -> [SKIP][440] ([i915#5354])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][441] ([i915#5354]) -> [SKIP][442] ([i915#9197])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][443] ([i915#12402]) -> [SKIP][444] ([i915#9197])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][445] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][446] ([i915#3555] / [i915#5190]) +2 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [FAIL][447] ([i915#6880]) -> [SKIP][448] ([i915#5354]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][449] ([i915#8708]) -> [SKIP][450] ([i915#5354]) +13 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][451] ([i915#5354]) -> [SKIP][452] ([i915#8708]) +1 other test skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          [SKIP][453] ([i915#10055]) -> [SKIP][454] ([i915#5354])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][455] ([i915#5354]) -> [SKIP][456] ([i915#3458]) +1 other test skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [SKIP][457] ([i915#10433] / [i915#3458]) -> [SKIP][458] ([i915#5354])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          [SKIP][459] ([i915#3458]) -> [SKIP][460] ([i915#10433] / [i915#3458]) +2 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-suspen

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/index.html

--===============5508972866077117141==
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
<tr><td><b>Series:</b></td><td>drm/i915: Write source OUI for non-eDP sinks=
 (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140061/">https://patchwork.freedesktop.org/series/140061/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140061v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15598_full -&gt; Patchwork_140061v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140061v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140061v4_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140061v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@api_intel_allocator@reopen-fork:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb7/igt@api_intel_allocator@reopen-fork.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061=
v4/shard-snb5/igt@api_intel_allocator@reopen-fork.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-=
copy-odd.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_color@ctm-0-50.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2=
-2/igt@kms_color@ctm-0-50.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-64x21.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-64x21.html">INCOMPL=
ETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-sli=
ding-64x21@pipe-d-hdmi-a-3.html">INCOMPLETE</a> +1 other test incomplete</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab=
-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140061v4/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vbl=
ank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk8/igt@kms_flip@dpms-vs-vblank-race-interruptible.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-glk7/igt@kms_flip@dpms-vs-vblank-race-interruptible.htm=
l">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140061v4_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15598/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15598/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-14/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15598/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-14/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15598/shard-dg1-15/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15598/shard-dg1-15/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
598/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-16/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598=
/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15598/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-17/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/sh=
ard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15598/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-18/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard=
-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15598/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg1-19/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15598/shard-dg=
1-19/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/shard-dg1-12/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/shard-dg1-14/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/shard-dg1-15/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140061v4/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg1-19/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@drm_fdinfo@busy-check-all=
@bcs0.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@drm_read@short-buffer-block.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/=
shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> ([i915#9197]) +3=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-d=
g2-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_ctx_sseu@engines.html=
">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-6/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard=
-mtlp-8/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> ([i915#12412])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@gem_exec_balancer@parallel=
-keep-in-fence.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061=
v4/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> ([i915#=
3778] / [i915#7016]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4=
/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])<=
/li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_fair@basic-deadl=
ine.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/=
shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_exec_fair@basic-none.=
html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@gem_exec_fair@basic-none-s=
olo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_exec_fair@basic-pace-=
share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0061v4/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([=
i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_exec_reloc@basic-conc=
urrent16.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_exec_reloc@basic-cpu-r=
ead-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> ([i915#3281]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gem_exec_schedule@pi-comm=
on.html">FAIL</a> ([i915#12296]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/s=
hard-dg2-10/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441=
]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_mmap_gtt@big-bo.html">=
SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-7/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard=
-mtlp-7/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4=
/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> ([i915#10029]=
 / [i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_mmap_wc@close.html">SK=
IP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_mmap_wc@write-cpu-rea=
d-wc.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> ([i915#3282]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_pread@exhaustion.html=
">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_pxp@create-regular-con=
text-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-6/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_readwrite@read-bad-ha=
ndle.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gem_render_copy@mixed-tile=
d-to-y-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_set_tiling_vs_pwrite.=
html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_tiling_max_stride.htm=
l">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-glk3/igt@gem_userptr_blits@readonly-=
pwrite-unsync.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> ([i915#2527] / [i915#2856]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140061v4/shard-dg2-11/igt@i915_module_load@reload-with-fault-inject=
ion.html">ABORT</a> ([i915#9820])</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140061v4/shard-snb7/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140061v4/shard-tglu-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +7 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_big_fb@4-tiled-64bpp-=
rotate-180.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> ([i915#3638]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +39 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-=
4-tiled-dg2-mc-ccs.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +100 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434=
] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_ccs@crc-primary-basic-=
4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +128 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +123 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_chamelium_edid@hdmi-e=
did-read.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +8 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_chamelium_frames@dp-f=
rame-dump.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-for-each-pipe.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> ([i915#9424])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onsc=
reen-32x32.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_cursor_crc@cursor-sli=
ding-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-12/igt@kms_cursor_crc@cursor-sus=
pend@pipe-d-hdmi-a-3.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg1-13/igt@kms_cursor_legacy@basic-flip-after-cursor-at=
omic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140061v4/shard-dg1-14/igt@kms_cursor_legacy@basic-flip-after-c=
ursor-atomic.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140061v4/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP=
</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140061v4/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vb=
lank@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-=
check.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip@2x-plain-flip-ts=
-check-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140061v4/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> ([i915#79]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140061v4/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible=
.html">FAIL</a> ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140061v4/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interr=
uptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / =
[i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555] / [i91=
5#8810] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#3555] / [i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915=
#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555] / [i915#8813]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +6 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +65 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +4 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +49 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-farfromfence-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-rgb565-draw-render.html">SKIP</a> ([i915#3023]) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_hdr@static-swap.html">=
SKIP</a> ([i915#3555] / [i915#8228]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_hdr@static-swap.html"=
>SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061=
v4/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#355=
5] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061=
v4/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> ([i915#355=
5]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_plane@plane-position-hole.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v=
4/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-n=
one.html">SKIP</a> ([i915#3582])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-n=
one@pipe-b-edp-1.html">SKIP</a> ([i915#10226] / [i915#11614] / [i915#3582])=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_lowres@tiling-n=
one@pipe-d-edp-1.html">SKIP</a> ([i915#11614] / [i915#3582])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> ([i915#12247]) +4=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-5-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152]=
 / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> ([i915#122=
47]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-5/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247]) +7 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +4 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-facto=
r-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#815=
2] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] =
/ [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]=
) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247]=
 / [i915#8152]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i9=
15#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_plane_scaling@pla=
nes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] /=
 [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> ([i915#8430])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_pm_rpm@cursor.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-=
2/igt@kms_pm_rpm@cursor.html">SKIP</a> ([i915#1849]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-d=
g2-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +3 other tests s=
kip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-r=
kl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_pm_rpm@fences.html">S=
KIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_properties@plane-properties-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140061v4/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKI=
P</a> ([i915#11521]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +9 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-=
primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_psr2_sf@pr-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> ([i915#12316]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +6 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-=
plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_psr2_sf@psr2-overlay-=
primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-16/igt@kms_psr@fbc-psr2-basic.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_psr@pr-sprite-blt.htm=
l">SKIP</a> ([i915#9688]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-4/igt@kms_psr@pr-sprite-mmap-cp=
u.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_psr@psr-primary-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-1/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> ([i915#1072] / [i915#9732]) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#4235] / [i915#51=
90])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-8/igt@kms_setmode@basic@pipe-a-h=
dmi-a-1.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
061v4/shard-rkl-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i9=
15#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-=
a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140061v4/shard-glk2/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-=
b-hdmi-a-2.html">FAIL</a> ([i915#5465]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1400=
61v4/shard-glk2/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html">FAIL</a> ([i915=
#12527] / [i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb2/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1400=
61v4/shard-snb6/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">FAIL</a> ([i915=
#5465])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-3/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-6/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-1/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-mtlp-8/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-7/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-rkl-3/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-tglu-7/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1400=
61v4/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> ([i915=
#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg2-7/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> ([i915#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140061v4/shard-dg1-19/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg1-17/igt@debugfs_test@read_all_entries.html">DMESG-WA=
RN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140061v4/shard-dg1-15/igt@debugfs_test@read_all_entries.html"=
>PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">FAIL</=
a> ([i915#12031]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140061v4/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915#=
9561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140061v4/shard-dg2-3/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> +1 other tes=
t pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk2/igt@gem_exec_balancer@sliced.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v=
4/shard-glk8/igt@gem_exec_balancer@sliced.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140061v4/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-mtlp-=
8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_async_flips@async-flip-suspend-resume.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_async_flips@async-flip-susp=
end-resume.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb4/igt@kms_atomic_transition@plane-all-modeset-transi=
tion@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5956]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-snb1/igt@kms_atom=
ic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> +=
1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-7/igt@kms_color@deep-color.html">SKIP</a> ([i915#35=
55]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0061v4/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> +1 other test p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</=
a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140061v4/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdm=
i-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140061v4/shard-glk9/igt@kms_flip@2x-plain-flip-t=
s-check@ac-hdmi-a1-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.htm=
l">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140061v4/shard-snb5/igt@kms_flip@plain-flip-ts-check-int=
erruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_fron=
tbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140061v4/shard-snb2/igt@kms_frontbuffer_tracking=
@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-7/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#355=
5] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140061v4/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html">SK=
IP</a> ([i915#8825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140061v4/shard-dg2-6/igt@kms_plane@plane-panning-bottom-right=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html">FA=
IL</a> ([i915#8292]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140061v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([=
i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140061v4/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1=
 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@invalid-properties-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg1-15/igt@kms_properties@invalid-properties-atomic.htm=
l">DMESG-WARN</a> ([i915#4391] / [i915#4423]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-15/igt@kms_proper=
ties@invalid-properties-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html">FAI=
L</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140061v4/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>SKIP</a> ([i915#7091]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140061v4/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-=
ytiled.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html">SKIP=
</a> ([i915#6228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140061v4/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.htm=
l">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40061v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> =
([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140061v4/shard-dg2-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.h=
tml">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">SKI=
P</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_big_fb@y-tiled-32bp=
p-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +8 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">SKIP=
</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp=
-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rota=
te-180-async-flip.html">SKIP</a> ([i915#4423] / [i915#4538]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg1-1=
8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">S=
KIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.h=
tml">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_ccs@bad-aux-stride-y-tile=
d-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-cc=
s.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_ccs@crc=
-primary-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#9197]) +10 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> ([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_content_protection@a=
tomic-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> ([i915#3299]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_content_protection@dp-mst-li=
c-type-1.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_content_protection@lic-type-0.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140061v4/shard-dg2-6/igt@kms_content_protection@lic-type-0.html"=
>SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_content_protection@srm.html">SKIP</a> ([i=
915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140061v4/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> ([i9=
15#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_cursor_cr=
c@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#9197]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-=
movement-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tra=
nsitions.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_cursor_legacy@c=
ursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-si=
ze.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb=
-vs-flipb-varying-size.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> ([i915#12402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallb=
ack.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061=
v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-down=
scaling.html">SKIP</a> ([i915#3555] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-msflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([i915#5354]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i=
915#5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_frontbuffer_trac=
king@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">S=
KIP</a> ([i915#10055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140061v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tilin=
g-y.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-6/igt@kms_frontb=
uffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> ([i915#=
3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-move.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v4/shard-dg2-2/igt=
@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> =
([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15598/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-suspen">SKIP=
</a> ([i915#3458]) -&gt; [SKIP][460] ([i915#10433] / [i915#3458]) +2 other =
tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5508972866077117141==--
