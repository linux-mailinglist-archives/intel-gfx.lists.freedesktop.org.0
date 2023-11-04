Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE27E0E32
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Nov 2023 08:34:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D0910E1F9;
	Sat,  4 Nov 2023 07:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6932D10E1F9;
 Sat,  4 Nov 2023 07:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F510A7DFF;
 Sat,  4 Nov 2023 07:34:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8853470393552333686=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sat, 04 Nov 2023 07:34:18 -0000
Message-ID: <169908325834.30094.3799485913707942045@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103110922.430122-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231103110922.430122-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_potential_spectre_vulnerability?=
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

--===============8853470393552333686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix potential spectre vulnerability
URL   : https://patchwork.freedesktop.org/series/125950/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13833_full -> Patchwork_125950v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/index.html

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_125950v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [FAIL][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#8293]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#8411]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#8414]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#8414])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#7697])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3936])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-uncompressed:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#7957])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#9323])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][57] -> [INCOMPLETE][58] ([i915#7297])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#5882]) +5 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-mtlp:         [PASS][63] -> [ABORT][64] ([i915#7892] / [i915#9414])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-8/igt@gem_eio@in-flight-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4812]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4771])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4771])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#4525]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6334]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][70] ([i915#9606])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#4473] / [i915#4771])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][72] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][73] ([i915#2842])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4473])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][75] -> [FAIL][76] ([i915#2842]) +1 other test fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][77] -> [FAIL][78] ([i915#2842])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3539])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#3539] / [i915#4852])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
    - shard-mtlp:         [PASS][81] -> [DMESG-FAIL][82] ([i915#8962])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3539] / [i915#4852]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3281]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3281]) +5 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3281]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3281]) +10 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [PASS][88] -> [SKIP][89] ([i915#3281]) +11 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4537] / [i915#4812])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][91] ([i915#7975] / [i915#8213])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][92] -> [ABORT][93] ([i915#7975] / [i915#8213])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4860]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4860]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_gtt_cpu_tlb:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4077]) +6 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_gtt_cpu_tlb.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4613]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#4613])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@gem_lmem_swapping@massive-random.html
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#4613]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#4613])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4083]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_mmap@bad-size.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4083]) +4 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4077]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4077]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4083]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3282])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [PASS][107] -> [SKIP][108] ([i915#3282]) +8 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3282]) +6 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@self:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3282])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_pread@self.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4270]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4270]) +4 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#4270])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#4270])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8428]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5190]) +11 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#768]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4079])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4079])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4885])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_unfence_active_buffers:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4879])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3297]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3297] / [i915#4880]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3297]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([fdo#109289]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([fdo#109289])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [PASS][127] -> [SKIP][128] ([i915#2527]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#2856]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#2856]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#2527]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#2527])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6227])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          NOTRUN -> [WARN][134] ([i915#7356])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#8436])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple@gt0:
    - shard-mtlp:         [PASS][136] -> [ABORT][137] ([i915#9414])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-6/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-3/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [PASS][138] -> [FAIL][139] ([i915#3591]) +1 other test fail
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([fdo#109293])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#6621])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#6621])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#8925])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_rps@thresholds-idle@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#3555] / [i915#8925])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-idle@gt1.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#8925])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#8925])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_power@sanity:
    - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#7984])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@i915_power@sanity.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([fdo#109302])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][150] ([i915#9311])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#4215] / [i915#5190])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#4212])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4212] / [i915#5608])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][154] ([i915#8247]) +3 other tests fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_async_flips@crc@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][155] ([i915#8247]) +3 other tests fail
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][156] ([i915#8247]) +3 other tests fail
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3555])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9531])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#1769] / [i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#5286]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#5286])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][162] -> [FAIL][163] ([i915#5138])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#4538] / [i915#5286])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([fdo#111614])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
    - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#111614]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][167] -> [FAIL][168] ([i915#3743]) +2 other tests fail
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-apl:          NOTRUN -> [SKIP][169] ([fdo#109271]) +37 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([fdo#110723]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4538] / [i915#5190]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([fdo#111615]) +6 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#4538]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#1845] / [i915#4098]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html

  * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4087] / [i915#7213]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][177] ([fdo#109271]) +49 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@kms_chamelium_color@ctm-max.html
    - shard-rkl:          NOTRUN -> [SKIP][178] ([fdo#111827])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_color@degamma:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([fdo#111827])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([fdo#111827]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#7828]) +7 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#7828]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#7828]) +3 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#7828]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_color@ctm-0-50@pipe-b:
    - shard-rkl:          [PASS][185] -> [SKIP][186] ([i915#4098]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_color@ctm-0-50@pipe-b.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][187] ([i915#7173])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3299]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][189] ([i915#7173])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@srm:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#6944])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#7118]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_content_protection@type1.html
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#3555] / [i915#6944])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][193] ([i915#1339])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#3359]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#3359])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#3359])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3359])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([fdo#111767] / [i915#3546])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#4213])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#3546]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([fdo#109274] / [i915#5354]) +7 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][203] -> [FAIL][204] ([i915#2346])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][205] -> [FAIL][206] ([i915#2346])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#4103] / [i915#4213])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8588])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#3804])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3555] / [i915#3840])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4881])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#8381])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#8381])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([fdo#109274] / [fdo#111767])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#3637]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([fdo#111825]) +5 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_flip@2x-plain-flip-interruptible.html
    - shard-snb:          NOTRUN -> [SKIP][217] ([fdo#109271]) +11 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-snb5/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([fdo#109274]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3637] / [i915#4098]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][220] ([i915#8841]) +3 other tests dmesg-warn
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#2672]) +6 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#2587] / [i915#2672])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3555]) +6 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#2672]) +2 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#2672]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#2672] / [i915#3555])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#2672] / [i915#3555])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([fdo#109285])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][229] -> [FAIL][230] ([i915#6880])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#8708]) +3 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8708]) +19 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#1825]) +30 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-rkl:          [PASS][234] -> [SKIP][235] ([i915#1849] / [i915#4098]) +5 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#3458]) +2 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#5354]) +21 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([fdo#111825]) +7 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3023]) +11 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#3458]) +13 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([fdo#111825] / [i915#1825]) +19 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8708]) +7 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3555] / [i915#8228]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3555] / [i915#4098])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#4816])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#4070] / [i915#4816])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#6301])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          [PASS][249] -> [INCOMPLETE][250] ([i915#180] / [i915#9392])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][251] ([i915#4573]) +1 other test fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#8821])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#3555])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#4098]) +9 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_multiple@tiling-y.html
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#3555] / [i915#8806])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_multiple@tiling-y.html
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#8806])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#3555] / [i915#8806])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#5176] / [i915#9423]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#5235]) +19 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#5235]) +2 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#3555] / [i915#5235])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#5235]) +5 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#6524])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#6524] / [i915#6805])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][267] ([fdo#109271] / [i915#658])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([fdo#111068] / [i915#658])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#658]) +2 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][270] ([fdo#109271] / [i915#658])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@kms_psr2_su@page_flip-nv12.html
    - shard-rkl:          NOTRUN -> [SKIP][271] ([fdo#111068] / [i915#658]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#1072]) +5 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#1072] / [i915#4078]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#1072]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#4235]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#4235]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [PASS][277] -> [INCOMPLETE][278] ([i915#8875] / [i915#9569])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [PASS][279] -> [SKIP][280] ([i915#1845] / [i915#4098]) +11 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([fdo#111615] / [i915#5289])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#3555]) +6 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#3555] / [i915#4098]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][284] -> [FAIL][285] ([i915#9196])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][286] -> [FAIL][287] ([i915#9196])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#3555] / [i915#8808])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_vrr@flip-dpms.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([fdo#109289]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][290] -> [FAIL][291] ([i915#7484])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][292] ([fdo#109289] / [i915#2433])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-dg1:          NOTRUN -> [FAIL][293] ([i915#4349])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-mtlp:         [PASS][294] -> [FAIL][295] ([i915#4349]) +2 other tests fail
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][296] ([i915#6806])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#5608] / [i915#8516])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [PASS][298] -> [SKIP][299] ([fdo#109295] / [i915#3291] / [i915#3708])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@prime_vgem@basic-read.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#3708]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][301] ([i915#9583]) +1 other test fail
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-dg1:          NOTRUN -> [FAIL][302] ([i915#9583])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
    - shard-glk:          NOTRUN -> [FAIL][303] ([i915#9583])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html
    - shard-rkl:          NOTRUN -> [FAIL][304] ([i915#9583])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
    - shard-dg1:          NOTRUN -> [FAIL][305] ([i915#9582])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted.html

  * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#2575]) +6 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([fdo#109315]) +4 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-dg1:          NOTRUN -> [SKIP][308] ([i915#2575]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#2575]) +9 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#7711]) +3 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#7711]) +3 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_tiling@get-bad-modifier:
    - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#7711]) +2 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@vc4/vc4_tiling@get-bad-modifier.html

  * igt@vc4/vc4_wait_bo@bad-pad:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#7711]) +6 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@vc4/vc4_wait_bo@bad-pad.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-rkl:          [FAIL][314] ([i915#4778]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][316] ([i915#7742]) -> [PASS][317] +2 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@info:
    - shard-rkl:          [SKIP][318] ([i915#1849] / [i915#2582]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@fbdev@info.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@fbdev@info.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][320] ([i915#2582]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@fbdev@unaligned-write.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][322] ([i915#6268]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][324] ([i915#9561]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [SKIP][326] ([i915#6252]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-mtlp:         [ABORT][328] ([i915#9414]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-7/igt@gem_eio@in-flight-contexts-1us.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [SKIP][330] ([Intel XE#874]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][332] ([i915#2842]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-rkl:          [SKIP][334] ([fdo#109283] / [fdo#109315]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_exec_params@no-bsd.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-rkl:          [SKIP][336] ([i915#3281]) -> [PASS][337] +3 other tests pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_gtt_cpu_tlb:
    - shard-rkl:          [SKIP][338] ([fdo#109315]) -> [PASS][339] +21 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_gtt_cpu_tlb.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_gtt_cpu_tlb.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-rkl:          [SKIP][340] ([i915#3282]) -> [PASS][341] +3 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [SKIP][342] ([i915#8411]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-rkl:          [SKIP][344] ([i915#2527]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@gen9_exec_parse@bb-start-cmd.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][346] ([i915#9588]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][348] ([i915#8489] / [i915#8668]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [WARN][350] ([i915#2681]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][352] ([i915#5138]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [SKIP][354] ([i915#4098]) -> [PASS][355] +12 other tests pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-rkl:          [SKIP][356] ([i915#1845] / [i915#4098]) -> [PASS][357] +34 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][358] ([i915#79]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][360] ([i915#1849] / [i915#4098]) -> [PASS][361] +14 other tests pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * {igt@kms_plane@pixel-format@pipe-b}:
    - shard-glk:          [DMESG-FAIL][362] ([i915#118]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-glk8/igt@kms_plane@pixel-format@pipe-b.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk8/igt@kms_plane@pixel-format@pipe-b.html

  * {igt@kms_pm_dc@dc6-dpms}:
    - shard-tglu:         [FAIL][364] ([i915#9295]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
    - shard-rkl:          [SKIP][366] ([i915#9519]) -> [PASS][367] +1 other test pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * {igt@kms_pm_rpm@pm-tiling}:
    - shard-rkl:          [SKIP][368] ([fdo#109308]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html

  * {igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2}:
    - shard-rkl:          [FAIL][370] ([i915#9196]) -> [PASS][371]
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:
    - shard-apl:          [FAIL][372] ([i915#9196]) -> [PASS][373]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [FAIL][374] ([i915#9196]) -> [PASS][375] +1 other test pass
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][376] ([i915#9196]) -> [PASS][377] +1 other test pass
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-rkl:          [SKIP][378] ([i915#5608]) -> [PASS][379]
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@perf@invalid-oa-metric-set-id.html

  * igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:
    - shard-rkl:          [SKIP][380] ([i915#2575]) -> [PASS][381] +5 other tests pass
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html

  
#### Warnings ####

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][382] ([i915#7957]) -> [SKIP][383] ([i915#3555]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][384] ([fdo#109315]) -> [SKIP][385] ([i915#3281]) +1 other test skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][386] ([i915#4936] / [i915#5493]) -> [TIMEOUT][387] ([i915#5493])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          [SKIP][388] -> [SKIP][389] ([i915#4613])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_lmem_swapping@verify.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [WARN][390] ([i915#2658]) -> [SKIP][391] ([i915#3282])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_pread@exhaustion.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [SKIP][392] ([fdo#109315]) -> [SKIP][393] ([i915#4270])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          [SKIP][394] -> [SKIP][395] ([fdo#109293] / [fdo#109506])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][396] ([fdo#109315]) -> [SKIP][397] ([i915#6245])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@i915_query@hwconfig_table.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@i915_query@hwconfig_table.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][398] ([i915#1845] / [i915#4098]) -> [SKIP][399] ([i915#1769] / [i915#3555])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][400] ([i915#4098]) -> [SKIP][401] ([i915#5286]) +6 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][402] ([i915#5286]) -> [SKIP][403] ([i915#4098]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][404] ([i915#1845] / [i915#4098]) -> [SKIP][405] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][406] ([fdo#111614] / [i915#3638]) -> [SKIP][407] ([i915#1845] / [i915#4098]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][408] ([i915#1845] / [i915#4098]) -> [SKIP][409] ([fdo#110723]) +5 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][410] ([fdo#110723]) -> [SKIP][411] ([i915#1845] / [i915#4098]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][412] ([fdo#109315]) -> [SKIP][413] ([fdo#110723]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-rkl:          [SKIP][414] ([i915#2575]) -> [SKIP][415] ([i915#7828])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          [SKIP][416] ([i915#1845] / [i915#4098]) -> [SKIP][417] ([i915#7118])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_content_protection@lic.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][418] ([i915#2575]) -> [SKIP][419] ([i915#7118])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_content_protection@srm.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][420] ([i915#2575]) -> [SKIP][421] ([fdo#109279] / [i915#3359])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][422] ([i915#4098]) -> [SKIP][423] ([i915#3555]) +2 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][424] ([i915#3359]) -> [SKIP][425] ([i915#4098])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][426] ([fdo#111767] / [fdo#111825]) -> [SKIP][427] ([i915#1845] / [i915#4098])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][428] ([i915#1845] / [i915#4098]) -> [SKIP][429] ([fdo#111825]) +4 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][430] ([i915#2575]) -> [SKIP][431] ([i915#4103])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][432] ([i915#1845] / [i915#4098]) -> [SKIP][433] ([i915#4103]) +1 other test skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          [SKIP][434] ([i915#1845] / [i915#4098]) -> [SKIP][435] ([fdo#111767] / [fdo#111825])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-rkl:          [SKIP][436] ([fdo#111825]) -> [SKIP][437] ([i915#1845] / [i915#4098]) +3 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][438] ([i915#2575]) -> [SKIP][439] ([i915#8588])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][440] ([i915#4098]) -> [SKIP][441] ([i915#3555] / [i915#3840])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][442] ([i915#3555] / [i915#3840]) -> [SKIP][443] ([i915#4098])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][444] ([fdo#110189] / [i915#3955]) -> [SKIP][445] ([i915#3955])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          [SKIP][446] ([i915#2575]) -> [SKIP][447] ([fdo#111825]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-check.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][448] ([fdo#109315]) -> [SKIP][449] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][450] ([fdo#109315]) -> [SKIP][451] ([i915#5439])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][452] ([fdo#109315]) -> [SKIP][453] ([i915#3023])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][454] ([i915#1849] / [i915#4098]) -> [SKIP][455] ([fdo#111825] / [i915#1825]) +44 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][456] ([fdo#111825] / [i915#1825]) -> [SKIP][457] ([i915#1849] / [i915#4098]) +18 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][458] ([i915#1849] / [i915#4098]) -> [SKIP][459] ([fdo#111825])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][460] ([i915#1849] / [i915#4098]) -> [SKIP][461] ([i915#3023]) +29 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][462] ([i915#3023]) -> [SKIP][463] ([i915#1849] / [i915#4098]) +9 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][464] ([i915#3555] / [i915#8228]) -> [SKIP][465] ([i915#4098])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][466] ([i915#1845] / [i915#4098]) -> [SKIP][467] ([i915#6301])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][468] ([i915#6301]) -> [SKIP][469] ([i915#1845] / [i915#4098])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-rkl-7/igt@kms_panel_fitting@legacy.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/index.html

--===============8853470393552333686==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix potential spectre vulnerabilit=
y</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125950/">https://patchwork.freedesktop.org/series/125950/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125950v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13833_full -&gt; Patchwork_125950v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v=
1/index.html</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125950v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13833/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13833/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13833/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl3/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13833/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13833/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833=
/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13833/shard-apl7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3833/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13833/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13833/shard-apl2/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125950v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1=
/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125950v1/shard-apl7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125950v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125950v1/shard-apl6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125950v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl4/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125950v1/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125950v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125950v1/shard-apl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125950v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/s=
hard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125950v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25950v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125950v1/shard-apl1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@drm_fdinfo@virtual-busy-i=
dle.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-uncompressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompr=
essed.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compf=
mt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_ctx_persistence@satur=
ated-hostile-nopreempt@vcs1.html">SKIP</a> ([i915#5882]) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-8/igt@gem_eio@in-flight-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/s=
hard-mtlp-4/igt@gem_eio@in-flight-suspend.html">ABORT</a> ([i915#7892] / [i=
915#9414])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_balancer@bonded-s=
emaphore.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sy=
nc.html">SKIP</a> ([i915#4771])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_exec_balancer@parallel=
.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_capture@capture-i=
nvisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@gem_exec_fair@basic-none-sh=
are@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13833/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5950v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (=
[i915#2842]) +1 other test fail</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13833/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25950v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>=
 ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_exec_flush@basic-batch=
-kernel-default-uc.html">SKIP</a> ([i915#3539] / [i915#4852])</p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13833/shard-mtlp-5/igt@gem_exec_flush@basic-batch-kernel-default-uc.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125950v1/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default=
-uc.html">DMESG-FAIL</a> ([i915#8962])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_exec_reloc@basic-wc-cp=
u-active.html">SKIP</a> ([i915#3281]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12595=
0v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3=
281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125950v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_gtt_cpu_tlb.html">SKI=
P</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@gem_lmem_swapping@massive-ra=
ndom.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> ([i915#4613]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_mmap@bad-size.html">S=
KIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_mmap@short-mmap.html">=
SKIP</a> ([i915#4083]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-big-c=
opy.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-co=
py-xy.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125950v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads=
.html">SKIP</a> ([i915#3282]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> ([i915#3282]) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_pread@self.html">SKIP<=
/a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-m=
c-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> ([i915#5190]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-t=
o-vebox-linear.html">SKIP</a> ([i915#768]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880]) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@gem_userptr_blits@mmap-of=
fset-banned@gtt.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> ([fdo#109289]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gen7_exec_parse@basic-rej=
ected.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/=
shard-rkl-7/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@gen9_exec_parse@unaligned=
-access.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@i915_module_load@reload-wi=
th-fault-injection.html">WARN</a> ([i915#7356])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> ([i915#8436])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple@gt0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-6/igt@i915_pm_freq_api@freq-reset-multiple@gt0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125950v1/shard-mtlp-3/igt@i915_pm_freq_api@freq-reset-multiple@gt0.htm=
l">ABORT</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125950v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a=
> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> ([fdo#109293])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#6621])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@i915_pm_rps@basic-api.html"=
>SKIP</a> ([i915#6621])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-id=
le@gt1.html">SKIP</a> ([i915#3555] / [i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@i915_pm_rps@thresholds@gt=
0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@i915_power@sanity.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-=
4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-til=
ed-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> ([i915#4212])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_addfb_basic@tile-pitch=
-mismatch.html">SKIP</a> ([i915#4212] / [i915#5608])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_async_flips@crc@pipe-=
d-dp-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-=
d-edp-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#3555])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> ([i915#9531])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538] / [i915#528=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rot=
ate-270.html">SKIP</a> ([fdo#111614]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 other test=
s fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_big_fb@y-tiled-64bpp-ro=
tate-270.html">SKIP</a> ([fdo#109271]) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> ([fdo#111614] / [i915#3638]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> ([fdo#110723]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]=
) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> ([i915#4538]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-oldfb-with-reset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_busy@extended-modeset-=
hang-oldfb-with-reset.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-d-dp-4.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@kms_chamelium_color@ctm-max.=
html">SKIP</a> ([fdo#109271]) +49 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_chamelium_color@ctm-max=
.html">SKIP</a> ([fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_chamelium_color@degam=
ma.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_chamelium_color@gamma.=
html">SKIP</a> ([fdo#111827]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_chamelium_edid@vga-edi=
d-read.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_chamelium_frames@hdmi-c=
rc-fast.html">SKIP</a> ([i915#7828]) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_chamelium_frames@hdmi=
-crc-multiple.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_color@ctm-0-50@pipe-b.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/sh=
ard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> ([i915#4098]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_content_protection@atom=
ic@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_content_protection@le=
gacy@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_content_protection@type=
1.html">SKIP</a> ([i915#7118]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#3555] / [i915#6944])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> ([i915#1339])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-v=
s-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354])<=
/p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [i915#3546])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> ([i915#3546]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354]) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125950v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125950v1/shard-glk1/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_fence_pin_leak.html">S=
KIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences=
-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_flip@2x-plain-flip-inte=
rruptible.html">SKIP</a> ([fdo#111825]) +5 other tests skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-snb5/igt@kms_flip@2x-plain-flip-inter=
ruptible.html">SKIP</a> ([fdo#109271]) +11 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#109274]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_flip@bo-too-big-interr=
uptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-snb6/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-vga1.html">DMESG-WARN</a> ([i915#8841]) +3 other tests dmesg-=
warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 ([i915#2672]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555]) +6 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-indfb-draw-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +19 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +30 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprim=
ary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-indfb-sca=
ledprimary.html">SKIP</a> ([i915#1849] / [i915#4098]) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#5354]) +21 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#111825]) +7 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +11 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3458]) +13 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825] / [i915#=
1825]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html">S=
KIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_invalid_mode@zero-cloc=
k.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_multipipe_modeset@basic=
-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125950v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
c-dp-1.html">INCOMPLETE</a> ([i915#180] / [i915#9392])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-dp-1.html">FAIL</a> ([i915#4573]) +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> ([i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_multiple@tiling-y=
.html">SKIP</a> ([i915#4098]) +9 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> ([i915#3555] / [i915#8806])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y=
.html">SKIP</a> ([i915#8806])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_scaling@invalid-=
num-scalers.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#6953] / [i915=
#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> ([i915=
#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> ([i915#5235]) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#3555] / [i915#5235]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953=
] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_psr2_sf@plane-move-sf=
-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> ([i915#658]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@kms_psr2_su@page_flip-nv12.h=
tml">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> ([fdo#111068] / [i915#658]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@kms_psr@psr2_sprite_blt.ht=
ml">SKIP</a> ([i915#1072]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@kms_psr@psr2_sprite_mmap_=
gtt.html">SKIP</a> ([i915#1072] / [i915#4078]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> ([i915#1072]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@kms_rotation_crc@bad-pixe=
l-format.html">SKIP</a> ([i915#4235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_rotation_crc@bad-tilin=
g.html">SKIP</a> ([i915#4235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125950v1/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html">INCOM=
PLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125950v1/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a=
> ([i915#1845] / [i915#4098]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_scaling_modes@scaling-=
mode-none.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-h=
dmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125950v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-lea=
k@pipe-d-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-5/igt@kms_vrr@flip-dpms.html">S=
KIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalida=
te.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/=
shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])</=
li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@perf@unprivileged-single-=
ctx-counters.html">SKIP</a> ([fdo#109289] / [i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@perf_pmu@busy-double-star=
t@rcs0.html">FAIL</a> ([i915#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1259=
50v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> ([i915=
#4349]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> ([i915#6806])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> ([i915#5608] / [i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-=
rkl-4/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109295] / [i915#3291] =
/ [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@syncobj_timeline@invalid-m=
ulti-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9583]) +1 other t=
est fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583])<=
/li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submit=
ted:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-glk4/igt@syncobj_timeline@invalid-mul=
ti-wait-all-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@syncobj_timeline@invalid-mu=
lti-wait-all-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583])</=
p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@syncobj_timeline@invalid-=
single-wait-all-available-unsubmitted.html">FAIL</a> ([i915#9582])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-8/igt@v3d/v3d_perfmon@destroy-v=
alid-perfmon.html">SKIP</a> ([i915#2575]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> ([fdo#109315]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@v3d/v3d_submit_csd@bad-bo=
.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-5/igt@v3d/v3d_submit_csd@job-per=
fmon.html">SKIP</a> ([i915#2575]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-2/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@vc4/vc4_purgeable_bo@acce=
ss-purged-bo-mem.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-modifier:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg1-15/igt@vc4/vc4_tiling@get-bad-mo=
difier.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-pad:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-dg2-1/igt@vc4/vc4_wait_bo@bad-pad.ht=
ml">SKIP</a> ([i915#7711]) +6 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</=
a> ([i915#4778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125950v1/shard-rkl-1/igt@device_reset@unbind-reset-rebind.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125950v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.h=
tml">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i91=
5#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125950v1/shard-rkl-4/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25950v1/shard-rkl-7/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 ([i915#6268]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125950v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915=
#9561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125950v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> ([i915#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125950v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bc=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-7/igt@gem_eio@in-flight-contexts-1us.html">ABORT</=
a> ([i915#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125950v1/shard-mtlp-8/igt@gem_eio@in-flight-contexts-1us.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> ([=
Intel XE#874]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125950v1/shard-rkl-4/igt@gem_exec_balancer@fairslice.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#1=
09283] / [fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_params@no-bsd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@gem_exec_reloc@basic-wc-cpu-active.html">SKIP=
</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu-active.htm=
l">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_gtt_cpu_tlb.html">SKIP</a> ([fdo#109315])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950=
v1/shard-rkl-1/igt@gem_gtt_cpu_tlb.html">PASS</a> +21 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-s=
noop.html">SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@gem_partial_pwrite_prea=
d@writes-after-reads-snoop.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SK=
IP</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125950v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (=
[i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125950v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> ([i915#9588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125950v1/shard-rkl-4/igt@i915_hangman@engine-engine-error@bc=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#8489] / [i915#8668]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-2/igt@i915_module=
_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> ([i915#2681]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125950v1/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-mtlp-7/igt@kms_big_fb@4-ti=
led-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125950v1/shard-rkl-7/igt@kms_color@ctm-green-to-red@pipe-b.html"=
>PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tra=
nsitions.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_c=
ursor_legacy@cursora-vs-flipa-atomic-transitions.html">PASS</a> +34 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-glk9/igt@kms_flip@=
2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-=
4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html=
">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@pixel-format@pipe-b}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-glk8/igt@kms_plane@pixel-format@pipe-b.html">DMESG-FAIL=
</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125950v1/shard-glk8/igt@kms_plane@pixel-format@pipe-b.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc6-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#929=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
950v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125950v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@pm-tiling}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([fdo#109=
308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25950v1/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdm=
i-a-2.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_universal_plane@cu=
rsor-fb-leak@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-apl1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-dp-1=
.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125950v1/shard-apl3/igt@kms_universal_plane@cursor-f=
b-leak@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-h=
dmi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125950v1/shard-tglu-4/igt@kms_universal_plane=
@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125950v1/shard-mtlp-4/igt@kms_universal_plane@cur=
sor-fb-leak@pipe-d-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-oa-metric-set-id:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@perf@invalid-oa-metric-set-id.html">SKIP</a> =
([i915#5608]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125950v1/shard-rkl-1/igt@perf@invalid-oa-metric-set-id.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmit=
ted:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@syncobj_timeline@etime-single-wait-all-for-su=
bmit-available-unsubmitted.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@s=
yncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted.html=
">PASS</a> +5 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125950v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-=
noreloc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> ([i915#4936] / [i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125950v1/shard-dg1-14/igt@gem_lmem_swapping@=
smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_lmem_swapping@verify.html">SKIP</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/sha=
rd-rkl-1/igt@gem_lmem_swapping@verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#26=
58]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5950v1/shard-rkl-4/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#3282])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@gem_pxp@verify-pxp-execution-after-suspend-re=
sume.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@gem_pxp@verify-pxp-exe=
cution-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5950v1/shard-rkl-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([=
fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> ([fd=
o#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125950v1/shard-rkl-1/igt@i915_query@hwconfig_table.html">SKIP</a> ([i91=
5#6245])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rk=
l-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.=
html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP<=
/a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125950v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html"=
>SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@4-tiled-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4098]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp=
-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP=
</a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp=
-rotate-270.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_=
big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#110=
723]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> ([fdo#110723]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-m=
ax-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#1845] / [i915#4098]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-180-async-flip.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_big_fb=
@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([fdo#11=
0723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a=
> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125950v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKI=
P</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_content_protection@lic.html">SKIP</a> ([i=
915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125950v1/shard-rkl-7/igt@kms_content_protection@lic.html"=
>SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> ([i=
915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125950v1/shard-rkl-1/igt@kms_content_protection@srm.html">SKIP</a> ([i9=
15#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512=
x170.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125950v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-=
movement-512x170.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> ([fdo#111767] / [fdo#111825]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_leg=
acy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_cursor_legac=
y@2x-flip-vs-cursor-legacy.html">SKIP</a> ([fdo#111825]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_cursor_legacy@=
basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/ig=
t@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</=
a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tra=
nsitions.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@kms_c=
ursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#11176=
7] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-si=
ze.html">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_cursor_legacy@cursor=
b-vs-flipb-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.=
html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_display_modes@mst-extend=
ed-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#40=
98]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5950v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [=
i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
[i915#3555] / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.h=
tml">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189=
] / [i915#3955]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125950v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#=
3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125950v1/shard-rkl-1/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP<=
/a> ([fdo#111825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_frontbuf=
fer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#111825=
] / [i915#1825]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">S=
KIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tilin=
g-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a=
> ([i915#3023])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-r=
kl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gt=
t.html">SKIP</a> ([fdo#111825] / [i915#1825]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-s=
pr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-=
rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-g=
tt.html">SKIP</a> ([i915#1849] / [i915#4098]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-6/igt=
@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a>=
 ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-4/igt@k=
ms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i=
915#3023]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_fron=
tbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i=
915#1849] / [i915#4098]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125950v1/shard-rkl-5/igt@kms_hdr@invalid-metadata-siz=
es.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125950v1/shard-rkl-1/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13833/shard-rkl-7/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i91=
5#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125950v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#1=
845] / [i915#4098])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8853470393552333686==--
