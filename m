Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2B812C73
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 11:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F44810E842;
	Thu, 14 Dec 2023 10:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB39E10E842;
 Thu, 14 Dec 2023 10:05:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89FB9A3ECB;
 Thu, 14 Dec 2023 10:05:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4680817834356198893=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915/guc=3A_Change_wa_r?=
 =?utf-8?q?egisters_to_MCR_type_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shuicheng Lin" <shuicheng.lin@intel.com>
Date: Thu, 14 Dec 2023 10:05:42 -0000
Message-ID: <170254834252.19959.14361446655917615149@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231214075947.3240751-1-shuicheng.lin@intel.com>
In-Reply-To: <20231214075947.3240751-1-shuicheng.lin@intel.com>
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

--===============4680817834356198893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Change wa registers to MCR type (rev2)
URL   : https://patchwork.freedesktop.org/series/127788/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14017_full -> Patchwork_127788v2_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_127788v2_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127788v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 7)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127788v2_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rps@fence-order:
    - shard-dg1:          [ABORT][1] ([i915#9855]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-12/igt@i915_pm_rps@fence-order.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14017_full and Patchwork_127788v2_full:

### New IGT tests (8) ###

  * igt@gem_exec_balancer@parallel:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-balancer:
    - Statuses : 1 abort(s) 1 skip(s)
    - Exec time: [0.0, 0.57] s

  * igt@gem_exec_balancer@parallel-bb-first:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_balancer@parallel-contexts:
    - Statuses : 2 abort(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-ordering:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-out-fence:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_127788v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [FAIL][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][52] -> [FAIL][53] ([i915#5784])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-3/igt@gem_eio@kms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-10/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-chain:
    - shard-glk:          NOTRUN -> [INCOMPLETE][54] ([i915#9856])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk2/igt@gem_exec_balancer@bonded-chain.html

  * igt@gem_exec_balancer@full:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][55] ([i915#9855] / [i915#9856])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-6/igt@gem_exec_balancer@full.html
    - shard-rkl:          NOTRUN -> [ABORT][56] ([i915#9855] / [i915#9856])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-6/igt@gem_exec_balancer@full.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][57] ([i915#9856])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-17/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@indices:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][58] ([i915#9856])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-6/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-dg2:          NOTRUN -> [ABORT][59] ([i915#9855])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-7/igt@gem_exec_balancer@nohangcheck.html

  * igt@gem_exec_balancer@parallel-contexts (NEW):
    - shard-glk:          NOTRUN -> [ABORT][60] ([i915#9855])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][61] -> [ABORT][62] ([i915#7975] / [i915#8213])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-7/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][63] ([i915#6755] / [i915#9857])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4083])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#3282]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8428])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4077]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-tglu:         NOTRUN -> [FAIL][68] ([i915#3318])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [PASS][69] -> [INCOMPLETE][70] ([i915#9797])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-10/igt@gem_workarounds@suspend-resume-fd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-11/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][71] -> [INCOMPLETE][72] ([i915#9200] / [i915#9849])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          NOTRUN -> [INCOMPLETE][73] ([i915#9858])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-glk:          NOTRUN -> [ABORT][74] ([i915#9855] / [i915#9858])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][75] -> [INCOMPLETE][76] ([i915#7790])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@i915_pm_rps@reset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([fdo#111615])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([fdo#111615])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#5354] / [i915#6095]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#5354] / [i915#6095])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3555] / [i915#8814]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][82] -> [DMESG-WARN][83] ([i915#2017])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#2672])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#1825]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-snb:          [PASS][86] -> [SKIP][87] ([fdo#109271]) +5 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#8708])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([fdo#110189])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3555] / [i915#8228])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#9423]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#5235]) +2 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3555] / [i915#5235])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#5235]) +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#5235]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][96] -> [SKIP][97] ([i915#9519])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@perf@blocking-parameterized:
    - shard-rkl:          NOTRUN -> [ABORT][98] ([i915#9847])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/igt@perf@blocking-parameterized.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-glk:          NOTRUN -> [ABORT][99] ([i915#9847])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@gen12-oa-tlb-invalidate@0-rcs0:
    - shard-dg1:          NOTRUN -> [ABORT][100] ([i915#9847]) +1 other test abort
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-13/igt@perf@gen12-oa-tlb-invalidate@0-rcs0.html

  * igt@perf@polling-parameterized:
    - shard-mtlp:         NOTRUN -> [ABORT][101] ([i915#9847])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@perf@polling-parameterized.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#2575]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-tglu:         [INCOMPLETE][103] -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][105] ([i915#2346]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +2 other tests pass
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  
#### Warnings ####

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [ABORT][109] ([i915#9855] / [i915#9857]) -> [INCOMPLETE][110] ([i915#9857])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk9/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-rkl:          [INCOMPLETE][111] ([i915#9847] / [i915#9858]) -> [INCOMPLETE][112] ([i915#9858])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rps@fence-order:
    - shard-glk:          [INCOMPLETE][113] -> [INCOMPLETE][114] ([i915#9847])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/igt@i915_pm_rps@fence-order.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk8/igt@i915_pm_rps@fence-order.html
    - shard-rkl:          [INCOMPLETE][115] -> [ABORT][116] ([i915#9855])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/igt@i915_pm_rps@fence-order.html
    - shard-snb:          [INCOMPLETE][117] -> [INCOMPLETE][118] ([i915#9847])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb5/igt@i915_pm_rps@fence-order.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][119] ([i915#9433]) -> [SKIP][120] ([i915#9424])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-15/igt@kms_content_protection@mei-interface.html
    - shard-snb:          [INCOMPLETE][121] ([i915#9878]) -> [SKIP][122] ([fdo#109271])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb2/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-snb:          [SKIP][123] ([fdo#109271]) -> [INCOMPLETE][124] ([i915#8816])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb4/igt@kms_content_protection@srm.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb7/igt@kms_content_protection@srm.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-rkl:          [INCOMPLETE][125] ([i915#9847] / [i915#9853]) -> [ABORT][126] ([i915#9847] / [i915#9853])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy@rcs0:
    - shard-rkl:          [INCOMPLETE][127] ([i915#9853]) -> [ABORT][128] ([i915#9847] / [i915#9853])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy@rcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/igt@perf_pmu@busy@rcs0.html
    - shard-dg1:          [ABORT][129] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][130] ([i915#9853])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-12/igt@perf_pmu@busy@rcs0.html

  * igt@perf_pmu@interrupts:
    - shard-rkl:          [ABORT][131] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][132] ([i915#9853])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/igt@perf_pmu@interrupts.html
    - shard-dg1:          [INCOMPLETE][133] ([i915#9853]) -> [ABORT][134] ([i915#9847] / [i915#9853])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-16/igt@perf_pmu@interrupts.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg1-13/igt@perf_pmu@interrupts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9797]: https://gitlab.freedesktop.org/drm/intel/issues/9797
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9855]: https://gitlab.freedesktop.org/drm/intel/issues/9855
  [i915#9856]: https://gitlab.freedesktop.org/drm/intel/issues/9856
  [i915#9857]: https://gitlab.freedesktop.org/drm/intel/issues/9857
  [i915#9858]: https://gitlab.freedesktop.org/drm/intel/issues/9858
  [i915#9878]: https://gitlab.freedesktop.org/drm/intel/issues/9878


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127788v2

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127788v2: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/index.html

--===============4680817834356198893==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Change wa registers to MCR typ=
e (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127788/">https://patchwork.freedesktop.org/series/127788/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127788v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127788v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017_full -&gt; Patchwork_127788v=
2_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_127788v2_full need to be ver=
ified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127788v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (7 -&gt; 7)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127788v2_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rps@fence-order:<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12778=
8v2/shard-dg1-12/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14017_full and Patchwork_1=
27788v2_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>Statuses : 1 abort(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>Statuses : 2 abort(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127788v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14017/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14017/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_140=
17/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14017/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1401=
7/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788=
v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127788v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/sh=
ard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127788v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127788v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-r=
kl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127788v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
88v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127788v2/shard-rkl-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127788v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2=
/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127788v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-rkl-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shar=
d-rkl-1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg2-3/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-dg2-10/igt=
@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-glk2/igt@gem_exec_balancer@bonded-ch=
ain.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127788v2/shard-dg2-6/igt@gem_exec_balancer@full.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127788v2/shard-rkl-6/igt@gem_exec_balancer@full.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/985=
5">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127788v2/shard-dg1-17/igt@gem_exec_balancer@full.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg2-6/igt@gem_exec_balancer@indices.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg2-7/igt@gem_exec_balancer@nohangch=
eck.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@gem_exec_balancer@parallel-=
contexts.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127788v2/shard-dg2-7/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@gem_exec_whisper@basic-co=
ntexts.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/328=
2">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@gem_tiled_partial_pwrite_=
pread@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@gem_userptr_blits@vma-mer=
ge.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg2-10/igt@gem_workarounds@suspend-resume-fd.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7788v2/shard-dg2-11/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9797">i915#=
9797</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127788v2/shard-snb1/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9200">i915#9200</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-snb2/igt@i915_pm_rc6_residency@rc6-i=
dle.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@i915_pm_rc6_residency@rc6-i=
dle@gt0-rcs0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-snb5/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_ccs@pipe-c-crc-primar=
y-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127788v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7788v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hd=
mi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg1-13/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27788v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519=
</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-rkl-5/igt@perf@blocking-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@perf@gen12-oa-tlb-invalidat=
e.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate@0-rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-dg1-13/igt@perf@gen12-oa-tlb-invalid=
ate@0-rcs0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@perf@polling-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127788v2/shard-mtlp-5/igt@v3d/v3d_perfmon@get-value=
s-invalid-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sm=
em0.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127788v2/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@=
extra-wait-smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127788v2/shard-glk1/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb=
-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127788v2/shard-snb7/igt@kms_frontbuffer_trackin=
g@fbc-2p-primscrn-indfb-plflip-blt.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127788v2/shard-glk9/igt@gem_exec_whisper@basic-normal.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i915=
#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/984=
7">i915#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9858">i915#9858</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127788v2/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-fence@g=
t0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fence-order:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-glk2/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/=
shard-glk8/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2=
/shard-rkl-5/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v2/=
shard-snb5/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9433">i9=
15#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127788v2/shard-dg1-15/igt@kms_content_protection@mei-interface.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424">=
i915#9424</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9878=
">i915#9878</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127788v2/shard-snb2/igt@kms_content_protection@mei-interface.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb4/igt@kms_content_protection@srm.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
788v2/shard-snb7/igt@kms_content_protection@srm.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915=
#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853=
">i915#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127788v2/shard-rkl-5/igt@perf_pmu@busy-check-all@rcs0.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915=
#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853=
">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127788v=
2/shard-rkl-5/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
788v2/shard-dg1-12/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
788v2/shard-rkl-7/igt@perf_pmu@interrupts.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-dg1-16/igt@perf_pmu@interrupts.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12778=
8v2/shard-dg1-13/igt@perf_pmu@interrupts.html">ABORT</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127788v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127788v2: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4680817834356198893==--
