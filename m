Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02634C08437
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Oct 2025 00:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7DA10E013;
	Fri, 24 Oct 2025 22:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D411A10E013;
 Fri, 24 Oct 2025 22:49:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5084472804828590401=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Enable_LT_PHY_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Oct 2025 22:49:44 -0000
Message-ID: <176134618483.54054.6589541732014919007@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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

--===============5084472804828590401==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable LT PHY (rev2)
URL   : https://patchwork.freedesktop.org/series/155955/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17421_full -> Patchwork_155955v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_155955v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_155955v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_155955v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - shard-mtlp:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [SKIP][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-5/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/igt@i915_module_load@load.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-8/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-5/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-5/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-8/igt@i915_module_load@load.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-8/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-4/igt@i915_module_load@load.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-6/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-4/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-3/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-2/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-3/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-6/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-6/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-2/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-3/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-2/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-4/igt@i915_module_load@load.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17421_full and Patchwork_155955v2_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-offscreen-256x256@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.60] s

  

Known issues
------------

  Here are the changes found in Patchwork_155955v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#14544] / [i915#3555] / [i915#9323])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][51] ([i915#13356])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][52] ([i915#12392] / [i915#13356])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#6335])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gem_create@create-ext-cpu-access-big.html
    - shard-dg2-9:        NOTRUN -> [ABORT][54] ([i915#13427])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8555])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#8555])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][57] ([i915#1099])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#5882]) +7 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#280])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4771])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4812]) +3 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#4812])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3539] / [i915#4852])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#3281]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-range:
    - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#3281]) +3 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3281]) +5 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#4537] / [i915#4812])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4860]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#4860])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_flink_basic@bad-flink:
    - shard-rkl:          [PASS][70] -> [DMESG-WARN][71] ([i915#12964]) +5 other tests dmesg-warn
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_flink_basic@bad-flink.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_flink_basic@bad-flink.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][73] ([i915#4613]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk9/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4077]) +10 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#4077]) +5 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4083]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4083]) +5 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3282]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pread@snoop:
    - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#3282]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk10:        NOTRUN -> [WARN][80] ([i915#14702] / [i915#2658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4270])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          [PASS][82] -> [TIMEOUT][83] ([i915#12964])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [PASS][84] -> [TIMEOUT][85] ([i915#12917] / [i915#12964])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4270])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4270])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#14544] / [i915#3282]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#5190] / [i915#8428]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8428])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190] / [i915#8428]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_render_copy@yf-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4079])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4885])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#3297])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#3297])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3297] / [i915#4880])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#3297] / [i915#4958])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3297])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#2856])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#2856]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#2527] / [i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_drm_fdinfo@busy-check-all@bcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#11527]) +7 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@i915_drm_fdinfo@busy-check-all@bcs0.html

  * igt@i915_drm_fdinfo@busy-hang@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#14073]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@i915_drm_fdinfo@busy-hang@vcs0.html

  * igt@i915_fb_tiling@basic-x-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#13786])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_fb_tiling@basic-x-tiling.html

  * igt@i915_module_load@load:
    - shard-snb:          ([PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128]) -> ([PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [SKIP][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@load.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@load.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@load.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@load.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@load.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@load.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@load.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@load.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@load.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@load.html
    - shard-glk:          ([PASS][153], [PASS][154], [PASS][155], [PASS][156], [PASS][157], [PASS][158], [PASS][159], [PASS][160], [PASS][161], [PASS][162], [PASS][163], [PASS][164], [PASS][165]) -> ([SKIP][166], [PASS][167], [PASS][168], [PASS][169], [PASS][170], [PASS][171])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk5/igt@i915_module_load@load.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@i915_module_load@load.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_load@load.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk3/igt@i915_module_load@load.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk1/igt@i915_module_load@load.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk5/igt@i915_module_load@load.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_load@load.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk1/igt@i915_module_load@load.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk3/igt@i915_module_load@load.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@i915_module_load@load.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@i915_module_load@load.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_load@load.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk3/igt@i915_module_load@load.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk9/igt@i915_module_load@load.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk1/igt@i915_module_load@load.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@i915_module_load@load.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@i915_module_load@load.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk6/igt@i915_module_load@load.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk3/igt@i915_module_load@load.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [PASS][172] -> [FAIL][173] ([i915#12964]) +1 other test fail
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][174] ([i915#13356])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk3/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg1:          [PASS][175] -> [DMESG-WARN][176] ([i915#4391] / [i915#4423])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-16/igt@i915_suspend@basic-s3-without-i915.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-rkl:          [PASS][177] -> [INCOMPLETE][178] ([i915#4817])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-glk:          NOTRUN -> [INCOMPLETE][179] ([i915#4817])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk6/igt@i915_suspend@sysfs-reader.html

  * igt@intel_hwmon@hwmon-read:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#7707])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#4212])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#4212])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][183] ([i915#12761]) +1 other test incomplete
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][184] ([i915#1769])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][185] -> [FAIL][186] ([i915#5956]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][187] +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#5286])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#5286]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][190] -> [FAIL][191] ([i915#5138])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][192] +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4538] / [i915#5190]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][194] ([i915#4538] / [i915#5190]) +2 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#5190]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_busy@basic:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#11190] / [i915#14544])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_busy@basic.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#6095]) +43 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#10307] / [i915#6095]) +106 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#14098] / [i915#6095]) +33 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#6095]) +19 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][201] +107 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#6095]) +143 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#12805])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#6095]) +11 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#10307] / [i915#10434] / [i915#6095])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#6095]) +19 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#10307] / [i915#6095]) +34 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#13784])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-tglu-1:       NOTRUN -> [SKIP][209] ([i915#11151] / [i915#7828])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#11151] / [i915#7828]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
    - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#11151] / [i915#7828]) +2 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#11151] / [i915#7828]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-rkl:          [PASS][213] -> [SKIP][214] ([i915#12655] / [i915#14544]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_color@legacy-gamma-reset.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#7118] / [i915#9424])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         [PASS][217] -> [FAIL][218] ([i915#13566]) +1 other test fail
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][219] -> [FAIL][220] ([i915#13566]) +1 other test fail
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#13049])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#3555] / [i915#8814])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#3555])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#13049])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#13046] / [i915#5354])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#4103])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][227] -> [SKIP][228] ([i915#11190] / [i915#14544]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#9809])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#13046] / [i915#5354]) +2 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][231] -> [FAIL][232] ([i915#2346])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#9067])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#9067])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#4213])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9833])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#13749])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#13749])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#3555] / [i915#3840])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#3555] / [i915#3840])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_dsc@dsc-with-formats.html
    - shard-dg2-9:        NOTRUN -> [SKIP][241] ([i915#3555] / [i915#3840]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#14544] / [i915#14561])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#3469])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#2065] / [i915#4854])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#1839])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#658])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#3637] / [i915#9934]) +2 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#3637] / [i915#9934]) +3 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#9934]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][251] -> [TIMEOUT][252] ([i915#14033]) +1 other test timeout
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#3637] / [i915#9934]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][254] ([i915#9934])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#14544] / [i915#3637]) +5 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][257] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][258] ([i915#12314] / [i915#12745] / [i915#6113])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#2672] / [i915#3555])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#2587] / [i915#2672])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#2672] / [i915#3555]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#2672]) +2 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [PASS][264] -> [SKIP][265] ([i915#14544] / [i915#3555]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#2672]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#2672] / [i915#3555])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#2587] / [i915#2672])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#2672] / [i915#3555])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][271] ([i915#2672]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#1825]) +7 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [PASS][273] -> [SKIP][274] ([i915#14544] / [i915#1849] / [i915#5354]) +5 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#5439])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#14544] / [i915#1849] / [i915#5354]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#8708]) +6 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#1825]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#5354]) +18 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][280] +18 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][281] +11 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html
    - shard-dg2-9:        NOTRUN -> [SKIP][282] ([i915#5354]) +6 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#10055])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#15102]) +3 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#15104])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#15102] / [i915#3458]) +10 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][287] ([i915#8708]) +7 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2-9:        NOTRUN -> [SKIP][288] ([i915#15102] / [i915#3458]) +2 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#15102]) +3 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#3555] / [i915#8228]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][291] ([i915#3555] / [i915#8228])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-dg2-9:        NOTRUN -> [SKIP][292] ([i915#3555] / [i915#8228])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#3555] / [i915#6403] / [i915#8826])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#9457]) +2 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html

  * igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#8826] / [i915#9457])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [PASS][296] -> [SKIP][297] ([i915#14544] / [i915#8826])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_invalid_mode@overflow-vrefresh.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-rkl:          [PASS][298] -> [SKIP][299] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_invalid_mode@uint-max-clock.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#12388])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#10656])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][302] ([i915#12339])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#13522])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          [PASS][304] -> [SKIP][305] ([i915#14544]) +37 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_lease@lease-invalid-plane.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][306] ([i915#1839])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#6301])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-rkl:          [PASS][308] -> [SKIP][309] ([i915#14544] / [i915#9581])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-covered:
    - shard-rkl:          [PASS][310] -> [SKIP][311] ([i915#14544] / [i915#8825])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_plane@plane-position-covered.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-rkl:          [PASS][312] -> [SKIP][313] ([i915#14544] / [i915#7294]) +2 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_lowres@tiling-x:
    - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#11614] / [i915#3582]) +1 other test skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-x.html

  * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][315] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#13046] / [i915#5354] / [i915#9423])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#12247]) +4 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#14544] / [i915#3555] / [i915#8152])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#12247] / [i915#14544])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#12247] / [i915#14544] / [i915#8152])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-rkl:          [PASS][321] -> [SKIP][322] ([i915#14544] / [i915#8152])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][323] ([i915#12247])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#12247]) +4 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          [PASS][325] -> [SKIP][326] ([i915#14544] / [i915#3555] / [i915#8152])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-rkl:          [PASS][327] -> [SKIP][328] ([i915#12247] / [i915#14544]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          [PASS][329] -> [SKIP][330] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [PASS][331] -> [SKIP][332] ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2-9:        NOTRUN -> [SKIP][333] ([i915#9685])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][334] -> [SKIP][335] ([i915#15073])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#15073])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][337] -> [SKIP][338] ([i915#15073]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-tglu:         NOTRUN -> [SKIP][339] ([i915#15073])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          NOTRUN -> [SKIP][340] +5 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [PASS][341] -> [SKIP][342] ([i915#11521] / [i915#14544])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_properties@plane-properties-atomic.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][343] ([i915#11520]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][344] ([i915#11520]) +4 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][345] ([i915#11520]) +2 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][346] ([i915#12316]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][347] ([i915#9808])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][348] ([i915#11520]) +3 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][349] ([i915#11520]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][350] ([i915#11520]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk9/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][351] ([i915#11520])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#11520]) +3 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][353] ([i915#1072] / [i915#9732])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_psr@fbc-pr-dpms.html

  * igt@kms_psr@fbc-pr-primary-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][354] ([i915#1072] / [i915#9732]) +4 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_psr@fbc-pr-primary-mmap-gtt.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu:
    - shard-glk10:        NOTRUN -> [SKIP][355] +137 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_psr@fbc-psr-primary-mmap-cpu.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-tglu:         NOTRUN -> [SKIP][356] ([i915#9732]) +4 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][357] ([i915#9732]) +6 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#9688])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr@pr-cursor-mmap-gtt.html

  * igt@kms_psr@psr-no-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#1072] / [i915#14544] / [i915#9732])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr@psr2-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#1072] / [i915#9732]) +13 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_psr@psr2-cursor-plane-move.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([i915#14544]) +10 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][362] ([i915#5289])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][363] ([i915#3555]) +2 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-snb:          NOTRUN -> [ABORT][364] ([i915#13179]) +1 other test abort
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords:
    - shard-snb:          NOTRUN -> [FAIL][365] ([i915#15119]) +1 other test fail
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords.html

  * igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state:
    - shard-glk10:        NOTRUN -> [FAIL][366] ([i915#15119]) +2 other tests fail
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#3555]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-mtlp:         NOTRUN -> [SKIP][368] ([i915#3555] / [i915#8809])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][369] ([i915#8623])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@query-busy@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][370] ([i915#12964]) +6 other tests dmesg-warn
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_vblank@query-busy@pipe-b-hdmi-a-2.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][371] -> [ABORT][372] ([i915#15132]) +1 other test abort
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flipline:
    - shard-mtlp:         NOTRUN -> [SKIP][373] ([i915#3555] / [i915#8808])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_vrr@flipline.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][374] ([i915#9906])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][375] ([i915#2437])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@non-zero-reason:
    - shard-dg2-9:        NOTRUN -> [FAIL][376] ([i915#9100]) +1 other test fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@perf@non-zero-reason.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-snb:          NOTRUN -> [SKIP][377] +175 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@perf_pmu@busy-accuracy-98.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-rkl:          NOTRUN -> [SKIP][378] +2 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@interrupts-sync:
    - shard-rkl:          [PASS][379] -> [FAIL][380] ([i915#14470])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-5/igt@perf_pmu@interrupts-sync.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@perf_pmu@interrupts-sync.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][381] ([i915#3708])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#9917])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
    - shard-tglu-1:       NOTRUN -> [FAIL][383] ([i915#12910]) +8 other tests fail
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#2582]) -> [PASS][385]
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@fbdev@unaligned-read.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@fbdev@unaligned-read.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][386] ([i915#13356]) -> [PASS][387] +1 other test pass
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-dg2:          [ABORT][388] -> [PASS][389] +1 other test pass
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-8/igt@gem_lmem_swapping@heavy-multi.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][390] ([i915#5493]) -> [PASS][391] +1 other test pass
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [ABORT][392] ([i915#14809]) -> [PASS][393] +1 other test pass
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-rkl:          [TIMEOUT][394] ([i915#12917] / [i915#12964]) -> [PASS][395] +1 other test pass
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [DMESG-WARN][396] ([i915#14545]) -> [PASS][397]
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@i915_module_load@reload-no-display.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][398] ([i915#12061]) -> [PASS][399] +1 other test pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-8/igt@i915_selftest@live@workarounds.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [ABORT][400] ([i915#15131]) -> [PASS][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@i915_suspend@debugfs-reader.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [FAIL][402] ([i915#5956]) -> [PASS][403] +1 other test pass
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - shard-dg1:          [DMESG-WARN][404] ([i915#4423]) -> [PASS][405] +4 other tests pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-14/igt@kms_atomic_transition@plane-all-transition-fencing.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-12/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_cursor_crc@cursor-offscreen-256x256:
    - shard-rkl:          [DMESG-WARN][406] ([i915#12917] / [i915#12964]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-256x256.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-256x256.html

  * igt@kms_cursor_edge_walk@64x64-left-edge:
    - shard-rkl:          [SKIP][408] ([i915#14544]) -> [PASS][409] +40 other tests pass
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_edge_walk@64x64-left-edge.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_edge_walk@64x64-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu-1:       [ABORT][410] ([i915#15066]) -> [PASS][411]
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-rkl:          [ABORT][412] ([i915#15132]) -> [PASS][413]
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#9738]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_feature_discovery@display-1x.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          [SKIP][416] ([i915#14544] / [i915#3637]) -> [PASS][417] +5 other tests pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#3555]) -> [PASS][419] +1 other test pass
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][420] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][421] +5 other tests pass
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          [SKIP][422] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][423] +1 other test pass
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-rkl:          [SKIP][424] ([i915#11190] / [i915#14544]) -> [PASS][425] +1 other test pass
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          [SKIP][426] ([i915#14544] / [i915#8825]) -> [PASS][427] +1 other test pass
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane@plane-position-hole.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#7294]) -> [PASS][429]
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a:
    - shard-rkl:          [SKIP][430] ([i915#12247] / [i915#14544]) -> [PASS][431] +3 other tests pass
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [SKIP][432] ([i915#14544] / [i915#8152]) -> [PASS][433] +1 other test pass
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [SKIP][434] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][435] +3 other tests pass
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-rkl:          [SKIP][436] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][439]
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][440] ([i915#15073]) -> [PASS][441]
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-rkl:          [SKIP][442] ([i915#14544] / [i915#1849]) -> [PASS][443]
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pm_rpm@fences.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][444] ([i915#15073]) -> [PASS][445]
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][446] ([i915#14544] / [i915#15073]) -> [PASS][447]
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@perf_pmu@idle:
    - shard-rkl:          [DMESG-WARN][448] ([i915#12964]) -> [PASS][449] +17 other tests pass
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@perf_pmu@idle.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@perf_pmu@idle.html

  * igt@perf_pmu@most-busy-check-all:
    - shard-rkl:          [FAIL][450] ([i915#4349]) -> [PASS][451] +1 other test pass
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@perf_pmu@most-busy-check-all.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@perf_pmu@most-busy-check-all.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][452] ([i915#14544] / [i915#6230]) -> [SKIP][453] ([i915#6230])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@api_intel_bb@crc32.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][454] ([i915#8411]) -> [SKIP][455] ([i915#14544] / [i915#8411])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@api_intel_bb@object-reloc-purge-cache.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][456] ([i915#11078]) -> [SKIP][457] ([i915#11078] / [i915#14544])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          [SKIP][458] ([i915#7697]) -> [SKIP][459] ([i915#14544] / [i915#7697])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@gem_basic@multigpu-create-close.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_basic@multigpu-create-close.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][460] ([i915#14544] / [i915#8562]) -> [SKIP][461] ([i915#8562])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          [SKIP][462] ([i915#14544] / [i915#4525]) -> [SKIP][463] ([i915#4525])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][464] ([i915#4525]) -> [SKIP][465] ([i915#14544] / [i915#4525])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][466] ([i915#6344]) -> [SKIP][467] ([i915#14544] / [i915#6344])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@gem_exec_capture@capture-recoverable.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][468] ([i915#14544] / [i915#3281]) -> [SKIP][469] ([i915#3281]) +9 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-rkl:          [SKIP][470] ([i915#3281]) -> [SKIP][471] ([i915#14544] / [i915#3281]) +8 other tests skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          [SKIP][472] ([i915#4613]) -> [SKIP][473] ([i915#14544] / [i915#4613]) +2 other tests skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#4613]) -> [SKIP][475] ([i915#4613]) +3 other tests skip
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#3282]) -> [SKIP][477] ([i915#3282]) +4 other tests skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-rkl:          [SKIP][478] ([i915#3282]) -> [SKIP][479] ([i915#14544] / [i915#3282]) +3 other tests skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [TIMEOUT][480] ([i915#12917] / [i915#12964]) -> [SKIP][481] ([i915#13717])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-rkl:          [TIMEOUT][482] ([i915#12917] / [i915#12964]) -> [SKIP][483] ([i915#14544] / [i915#4270])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-2.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#8411]) -> [SKIP][485] ([i915#8411])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][486] ([i915#14544] / [i915#3297]) -> [SKIP][487] ([i915#3297]) +1 other test skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][488] ([i915#3297]) -> [SKIP][489] ([i915#14544] / [i915#3297])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          [SKIP][490] ([i915#14544] / [i915#2527]) -> [SKIP][491] ([i915#2527]) +2 other tests skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-rkl:          [SKIP][492] ([i915#2527]) -> [SKIP][493] ([i915#14544] / [i915#2527]) +1 other test skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@gen9_exec_parse@unaligned-jump.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][494] ([i915#8399]) -> [SKIP][495] ([i915#14544] / [i915#8399]) +2 other tests skip
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][496] ([i915#6590]) -> [SKIP][497] ([i915#14544] / [i915#6590]) +1 other test skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][498] ([i915#5723]) -> [SKIP][499] ([i915#14544] / [i915#5723])
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][500] ([i915#14544]) -> [SKIP][501] ([i915#5286]) +2 other tests skip
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][502] ([i915#5286]) -> [SKIP][503] ([i915#14544]) +4 other tests skip
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][504] ([i915#14544]) -> [SKIP][505] ([i915#3638]) +3 other tests skip
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][506] ([i915#3638]) -> [SKIP][507] ([i915#14544])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][508] -> [SKIP][509] ([i915#14544]) +13 other tests skip
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
    - shard-dg1:          [SKIP][510] ([i915#4538]) -> [SKIP][511] ([i915#4423] / [i915#4538])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][512] ([i915#14544]) -> [SKIP][513] +17 other tests skip
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][514] ([i915#14544]) -> [SKIP][515] ([i915#14098] / [i915#6095]) +11 other tests skip
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][516] ([i915#12313]) -> [SKIP][517] ([i915#14544])
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][518] ([i915#14544]) -> [SKIP][519] ([i915#12313])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][520] ([i915#6095]) -> [SKIP][521] ([i915#14098] / [i915#6095]) +3 other tests skip
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][522] ([i915#14544]) -> [SKIP][523] ([i915#12805])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-rkl:          [SKIP][524] ([i915#14098] / [i915#6095]) -> [SKIP][525] ([i915#14544]) +6 other tests skip
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][526] ([i915#3742]) -> [SKIP][527] ([i915#14544] / [i915#3742])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_cdclk@mode-transition.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          [SKIP][528] ([i915#14544] / [i915#3742]) -> [SKIP][529] ([i915#3742])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          [SKIP][530] ([i915#11151] / [i915#7828]) -> [SKIP][531] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-storm.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          [SKIP][532] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][533] ([i915#11151] / [i915#7828]) +5 other tests skip
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-dg1:          [SKIP][534] ([i915#11151] / [i915#7828]) -> [SKIP][535] ([i915#11151] / [i915#4423] / [i915#7828])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][536] ([i915#14544]) -> [SKIP][537] ([i915#3116])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][538] ([i915#9424]) -> [SKIP][539] ([i915#14544])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_content_protection@mei-interface.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][540] ([i915#14544]) -> [SKIP][541] ([i915#7118] / [i915#9424])
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_content_protection@uevent.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][542] ([i915#14544]) -> [SKIP][543] ([i915#3555]) +1 other test skip
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][544] ([i915#14544]) -> [SKIP][545] ([i915#13049]) +2 other tests skip
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][546] ([i915#13566]) -> [SKIP][547] ([i915#14544])
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-rkl:          [SKIP][548] ([i915#3555]) -> [SKIP][549] ([i915#14544])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][550] ([i915#9723]) -> [SKIP][551] ([i915#14544])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          [SKIP][552] ([i915#14544]) -> [SKIP][553] ([i915#13691])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][554] ([i915#13748]) -> [SKIP][555] ([i915#14544])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_dp_link_training@uhbr-sst.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][556] ([i915#13707]) -> [SKIP][557] ([i915#14544])
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][558] ([i915#3555] / [i915#3840]) -> [SKIP][559] ([i915#14544])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-rkl:          [SKIP][560] ([i915#9934]) -> [SKIP][561] ([i915#14544] / [i915#9934]) +2 other tests skip
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          [SKIP][562] ([i915#14544] / [i915#9934]) -> [SKIP][563] ([i915#9934]) +2 other tests skip
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][564] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][565] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][566] ([i915#12745]) -> [INCOMPLETE][567] ([i915#12314] / [i915#12745])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          [SKIP][568] ([i915#2672] / [i915#3555]) -> [SKIP][569] ([i915#14544] / [i915#3555]) +2 other tests skip
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][570] ([i915#14544] / [i915#3555]) -> [SKIP][571] ([i915#2672] / [i915#3555]) +2 other tests skip
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][572] -> [SKIP][573] ([i915#14544] / [i915#1849] / [i915#5354])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          [SKIP][574] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][575] ([i915#1825]) +24 other tests skip
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
    - shard-dg1:          [SKIP][576] -> [SKIP][577] ([i915#4423])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][578] ([i915#8708]) -> [SKIP][579] ([i915#4423] / [i915#8708])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][580] ([i915#1825]) -> [SKIP][581] ([i915#14544] / [i915#1849] / [i915#5354]) +26 other tests skip
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][582] ([i915#14544]) -> [SKIP][583] ([i915#15102]) +3 other tests skip
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][584] ([i915#15102]) -> [SKIP][585] ([i915#14544])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][586] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][587] ([i915#15102] / [i915#3458])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
    - shard-dg1:          [SKIP][588] ([i915#4423]) -> [SKIP][589] +1 other test skip
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][590] ([i915#15102] / [i915#3458]) -> [SKIP][591] ([i915#10433] / [i915#15102] / [i915#3458]) +2 other tests skip
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][592] ([i915#15102] / [i915#3023]) -> [SKIP][593] ([i915#14544] / [i915#1849] / [i915#5354]) +8 other tests skip
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][594] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][595] ([i915#15102] / [i915#3023]) +16 other tests skip
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][596] ([i915#3555] / [i915#8228]) -> [SKIP][597] ([i915#14544])
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_hdr@bpc-switch-suspend.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][598] ([i915#14544]) -> [SKIP][599] ([i915#12713])
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][600] ([i915#12713]) -> [SKIP][601] ([i915#1187] / [i915#12713])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][602] ([i915#12713]) -> [SKIP][603] ([i915#1187] / [i915#12713])
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-tglu-6/igt@kms_hdr@brightness-with-hdr.html
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][604] ([i915#12388] / [i915#14544]) -> [SKIP][605] ([i915#12388])
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][606] ([i915#4816]) -> [SKIP][607] ([i915#1839] / [i915#4816])
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][608] ([i915#14544]) -> [SKIP][609] ([i915#13958])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [SKIP][610] ([i915#6953]) -> [SKIP][611] ([i915#14544] / [i915#6953] / [i915#8152])
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          [SKIP][612] ([i915#14544] / [i915#5354]) -> [SKIP][613] ([i915#5354])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][614] ([i915#14544] / [i915#3828]) -> [SKIP][615] ([i915#3828])
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#4281]) -> [SKIP][617] ([i915#3361])
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][618] ([i915#9340]) -> [SKIP][619] ([i915#3828])
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][620] ([i915#8430]) -> [SKIP][621] ([i915#14544] / [i915#8430])
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][622] ([i915#15073]) -> [SKIP][623] ([i915#14544] / [i915#15073])
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][624] ([i915#14544] / [i915#6524]) -> [SKIP][625] ([i915#6524]) +1 other test skip
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][626] ([i915#11520] / [i915#14544]) -> [SKIP][627] ([i915#11520]) +5 other tests skip
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][628] ([i915#11520]) -> [SKIP][629] ([i915#11520] / [i915#14544]) +5 other tests skip
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][630] ([i915#9683]) -> [SKIP][631] ([i915#14544] / [i915#9683]) +1 other test skip
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][632] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][633] ([i915#1072] / [i915#9732]) +14 other tests skip
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][634] ([i915#1072] / [i915#9732]) -> [SKIP][635] ([i915#1072] / [i915#14544] / [i915#9732]) +12 other tests skip
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][636] ([i915#5289]) -> [SKIP][637] ([i915#14544])
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_sequence@get-forked:
    - shard-rkl:          [DMESG-WARN][638] ([i915#12964]) -> [SKIP][639] ([i915#14544]) +2 other tests skip
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_sequence@get-forked.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_sequence@get-forked.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          [SKIP][640] ([i915#3555]) -> [SKIP][641] ([i915#14544] / [i915#3555])
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_setmode@clone-exclusive-crtc.html
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-rkl:          [SKIP][642] ([i915#14544] / [i915#3555]) -> [SKIP][643] ([i915#3555])
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_setmode@invalid-clone-exclusive-crtc.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          [SKIP][644] ([i915#14544]) -> [SKIP][645] ([i915#8623])
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][646] ([i915#8623]) -> [SKIP][647] ([i915#14544])
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][648] ([i915#14544]) -> [SKIP][649] ([i915#9906])
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          [SKIP][650] ([i915#2437] / [i915#9412]) -> [SKIP][651] ([i915#14544] / [i915#2437] / [i915#9412])
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          [SKIP][652] ([i915#2437]) -> [SKIP][653] ([i915#14544] / [i915#2437])
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-8/igt@kms_writeback@writeback-fb-id.html
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][654] ([i915#2436]) -> [SKIP][655] ([i915#14544] / [i915#2436])
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][656] ([i915#14544] / [i915#2434]) -> [SKIP][657] ([i915#2434])
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@perf@mi-rpc.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@perf@mi-rpc.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          [SKIP][658] ([i915#14544] / [i915#2435]) -> [SKIP][659] ([i915#2435])
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          [SKIP][660] ([i915#9917]) -> [SKIP][661] ([i915#14544] / [i915#9917])
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11614]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
  [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#15066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15066
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15119]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15119
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6403
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9457
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17421 -> Patchwork_155955v2

  CI-20190529: 20190529
  CI_DRM_17421: c840596036111afb71465977a49618cd19ca6e8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8596: 8596
  Patchwork_155955v2: c840596036111afb71465977a49618cd19ca6e8b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/index.html

--===============5084472804828590401==
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
<tr><td><b>Series:</b></td><td>Enable LT PHY (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/155955/">https://patchwork.freedesktop.org/series/155955/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155955v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17421_full -&gt; Patchwork_155955v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_155955v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_155955v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
155955v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/=
shard-mtlp-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-3/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/=
shard-mtlp-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-7/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17421/shard-mtlp-5/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/=
shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/=
shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-8/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-mtlp-8/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-4/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17421/shard-mtlp-2/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/=
shard-mtlp-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-mtlp-6/igt@i915_module_l=
oad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155955v2/shard-mtlp-4/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15595=
5v2/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-4/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5955v2/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155955v2/shard-mtlp-2/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155955v2/shard-mtlp-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-5/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-3/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-=
6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mt=
lp-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-6/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard=
-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155955v2/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/sh=
ard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-mtlp-7/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2=
/shard-mtlp-4/igt@i915_module_load@load.html">SKIP</a>)</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17421_full and Patchwork_1=
55955v2_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-offscreen-256x256@pipe-c-hdmi-a-2:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.60] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_155955v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ccs@suspend-resume.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i91=
5#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6335">i915#6335</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_create@create-ext-cpu-=
access-big.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13427">i915#13427</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@gem_ctx_persistence@process=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5882">i915#5882</a>) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4812">i915#4812</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_balancer@hog.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_flush@basic-batch=
-kernel-default-wb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_reloc@basic-range=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/sh=
ard-rkl-6/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>=
) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk9/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_mmap_gtt@fault-concurr=
ent-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_partial_pwrite_pread@w=
rites-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_pread@snoop.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
82">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_pxp@create-regular-con=
text-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-rkl-2/igt@gem_pxp@regular-baseline-src-copy-readible.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-2/igt@gem_pxp@verify-pxp-key-change-after-=
suspend-resume.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_readwrite@write-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_render_copy@y-tiled-c=
cs-to-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_render_copy@yf-tiled.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@gen9_exec_parse@basic-reje=
cted-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@i915_drm_fdinfo@busy-check=
-all@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11527">i915#11527</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@i915_drm_fdinfo@busy-hang@=
vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling@basic-x-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@i915_fb_tiling@basic-x-ti=
ling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13786">i915#13786</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-=
snb4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7421/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17421/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb7/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard=
-snb4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb4/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17421/shard-snb6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shar=
d-snb6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_17421/shard-snb6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb5/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-snb6/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_17421/shard-snb1/igt@i915_module_load@load.html">PAS=
S</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155955v2/shard-snb6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5955v2/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15595=
5v2/shard-snb6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2=
/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/sh=
ard-snb4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb5/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155955v2/shard-snb7/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard=
-snb5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb4/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-snb1/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-sn=
b4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-snb1/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-snb7/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155955v2/shard-snb6/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155955v2/shard-snb1/igt@i915_module_load@load.html">PASS</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17421/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-=
glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk1/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7421/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17421/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk3/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17421/shard-glk6/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17421/shard=
-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_17421/shard-glk9/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17421/shard-glk3/igt@i915_module_load@load.html">PASS</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk9/=
igt@i915_module_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155955v2/shard-glk1/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155955v2/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155955v2/shard-glk6/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155955v2/shard-glk3/igt@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5955v2/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i9=
15#12964</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk3/igt@i915_pm_rpm@system-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-16/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55955v2/shard-dg1-17/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155955v2/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk6/igt@i915_suspend@sysfs-reader.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_async_flips@async-flip=
-suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomple=
te</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-tr=
ansition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_atomic_transi=
tion@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#595=
6</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_big_fb@4-tiled-64bpp-r=
otate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_busy@basic.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/111=
90">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +43 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +106 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-2/igt@kms_ccs@crc-primary-basic-=
4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_ccs@crc-primary-rotatio=
n-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +107 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg1-13/igt@kms_ccs@crc-primary-rotat=
ion-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +143 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-=
a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434=
">i915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13784">i915#13784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_chamelium_frames@dp-f=
rame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_chamelium_frames@hdmi=
-aspect-ratio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test sk=
ip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_chamelium_frames@hdmi-=
aspect-ratio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_color@legacy-gamma-reset.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2=
/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155955v2/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-=
hdmi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-25=
6x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-var=
ying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-aft=
er-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155955v2/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4=
213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_dp_link_training@non-u=
hbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-=
6/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12314">i915#12314</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-suspend@a-=
hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2=
587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb10=
1010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i91=
5#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +6 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +18 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> +18 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> +11 other tests ski=
p</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) =
+10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-to=
o-high.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6403">i915#6403</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-to=
o-high@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9457">i915#9457</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_invalid_mode@clock-to=
o-high@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8826">i915#8826</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9457">i915#9457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_invalid_mode@overflow-vrefresh.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5955v2/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_invalid_mode@uint-max-clock.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15595=
5v2/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8826">i915#8826</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_lease@lease-invalid-plane.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v=
2/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155955v2/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9581">i915#9581</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_plane@plane-position-covered.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1559=
55v2/shard-rkl-6/igt@kms_plane@plane-position-covered.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155955v2/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7294">i915#7294</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-x=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/11614">i915#11614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3582">i915#3582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_plane_lowres@tiling-x=
@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10226">i915#10226</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11614">i915#11614</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582">i915#3582</a>) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-3/igt@kms_plane_scaling@2x-scale=
r-multi-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#815=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-sca=
ling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-un=
ity-scaling@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@p=
lanes-upscale-20x20-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-d=
g2-7/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55955v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">=
i915#15073</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_pm_rpm@modeset-pc8-res=
idency-stress.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_properties@plane-properties-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155955v2/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
1521">i915#11521</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_psr2_sf@fbc-pr-overlay-=
primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-plane-=
move-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf@pipe-a-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk9/igt@kms_psr2_sf@fbc-psr2-overla=
y-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_psr2_sf@pr-cursor-plan=
e-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_psr2_sf@psr2-overlay-p=
rimary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_psr@fbc-pr-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@kms_psr@fbc-pr-primary-mma=
p-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_psr@fbc-psr-primary-mm=
ap-cpu.html">SKIP</a> +137 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_psr@fbc-psr-primary-p=
age-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_psr@pr-cursor-mmap-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr@psr-no-drrs.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-8/igt@kms_psr@psr2-cursor-plane-=
move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_rotation_crc@primary-r=
otation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@kms_selftest@drm_framebuffe=
r@drm_test_framebuffer_check_src_coords.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15119">i915#15119</a>) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-glk10/igt@kms_selftest@drm_plane_hel=
per@drm_test_check_plane_state.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15119">i915#15119</a>) +2 other test=
s fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_setmode@invalid-clone=
-single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_vblank@query-busy@pipe=
-b-hdmi-a-2.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12964">i915#12964</a>) +6 other tests dmesg-warn<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@p=
ipe-b-hdmi-a-1.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15132">i915#15132</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-mtlp-8/igt@kms_vrr@flipline.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-5/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-9/igt@perf@non-zero-reason.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-snb1/igt@perf_pmu@busy-accuracy-98.h=
tml">SKIP</a> +175 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-5/igt@perf_pmu@interrupts-sync.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/sha=
rd-rkl-7/igt@perf_pmu@interrupts-sync.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14470">i915#14470</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-dg2-6/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each@numvfs-2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +8 other tests fail<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2582">i915#2582</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155955v2/shard-rkl-8/igt@fbdev@unaligned-read.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155955v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-8/igt@gem_lmem_swapping@heavy-multi.html">ABORT</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955=
v2/shard-dg2-6/igt@gem_lmem_swapping@heavy-multi.html">PASS</a> +1 other te=
st pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14809">i915#14809</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefa=
ult.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html">=
TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_pxp@verif=
y-pxp-stale-buf-execution.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-snb6/igt@i915_module_load@reload-no-display.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14545">i915#14545</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155955v2/shard-snb1/igt@i915_module_load@reload-no-displ=
ay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-dg2-6/igt@i915_selftest@live@workarounds.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@i915_suspend@debugfs-reader.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i=
915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155955v2/shard-rkl-6/igt@i915_suspend@debugfs-reader.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-5/igt@kms_at=
omic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-14/igt@kms_atomic_transition@plane-all-transition-f=
encing.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-12/igt@kms_atomic_tra=
nsition@plane-all-transition-fencing.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-256x256.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_curso=
r_crc@cursor-offscreen-256x256.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-left-edge:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_edge_walk@64x64-left-edge.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_edge_walk@64x64-left-ed=
ge.html">PASS</a> +40 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglu-1:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html">ABORT</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15066">i9=
15#15066</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-tglu-1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></=
li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i91=
5#15132</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9738">i915#9738</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_feature_discovery@di=
splay-1x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_flip@dpms-o=
ff-confusion-interruptible.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp=
-xtile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html=
">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1559=
55v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-dra=
w-mmap-wc.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_invalid_mod=
e@bad-htotal.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1119=
0">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pipe_crc_basic@han=
g-read-crc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane@plane-position-hole.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_plane@plane-position-ho=
le.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_plane_alpha_blend@al=
pha-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-=
a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/s=
hard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-form=
at@pipe-a.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/ig=
t@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#815=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155955v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-m=
odifiers@pipe-b.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152"=
>i915#8152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor=
-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_=
plane_scaling@planes-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155955v2/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/184=
9">i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155955v2/shard-rkl-7/igt@kms_pm_rpm@fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155955v2/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_rpm@m=
odeset-non-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@perf_pmu@idle.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#129=
64</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155955v2/shard-rkl-6/igt@perf_pmu@idle.html">PASS</a> +17 other tests pass=
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@perf_pmu@most-busy-check-all.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i9=
15#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-rkl-8/igt@perf_pmu@most-busy-check-all.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
30">i915#6230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155955v2/shard-rkl-8/igt@api_intel_bb@crc32.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#=
6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155955v2/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cac=
he.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11078">i915#11078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-6/igt@device_reset@unbind-cold-reset-re=
bind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@gem_basic@multigpu-create-close.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697"=
>i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-6/igt@gem_basic@multigpu-create-close.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8562">i915#8562</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_exec_balancer@par=
allel-bb-first.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_exec_balancer@parallel-k=
eep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@gem_exec_capture@capture-recoverable.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6344">i915#6344</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-6/igt@gem_exec_capture@capture-recoverable=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155955v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-m=
ulti-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-s=
noop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_partial_pwrite_prea=
d@writes-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1291=
7">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp=
-buffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-=
2.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_p=
xp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i91=
5#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_set_tiling_vs_=
blt@untiled-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@gem_userptr_blits@cohere=
ncy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrit=
e-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">=
i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155955v2/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i=
915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590=
">i915#6590</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5723">i915#5723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@i915_query@test-query-geometry-s=
ubslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5=
286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155955v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155955v2/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155955v2/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155955v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) +13 other tests skip</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4538">i915#4538</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-1=
80.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90=
.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-c=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_ccs@bad-pixel-format=
-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-t=
iled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-=
hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-3/igt@kms_ccs@crc-primary=
-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_ccs@random=
-ccs-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#=
3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155955v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3742">i915#3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_cdclk@plane-scaling.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151"=
>i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@k=
ms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7=
828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_chameli=
um_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828=
">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_content_protection@dp-mst-type=
-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-6/igt@kms_content_protection@mei-interface=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-8/igt@kms_content_protection@uevent.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
8">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-3=
2x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen=
-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-12=
8x42.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155955v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i=
915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_display_modes@extended-mode-b=
asic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707">i915#13707</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fa=
llback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">=
i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155955v2/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_flip@2x=
-flip-vs-dpms-on-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-=
vs-suspend-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839=
">i915#4839</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-=
a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12745">i915#12745</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-glk5/igt@kms_flip@flip-vs-s=
uspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12=
745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rk=
l-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8=
/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptra=
ck-mmap-gtt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2=
p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915=
#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2=
/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-bl=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1825">i915#1825</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-ind=
fb-msflip-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155955v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr=
-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-17/igt@kms_fr=
ontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_fron=
tbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5354">i915#5354</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
102">i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v=
2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-mov=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg1-16/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-dg2-4/igt@kms_fr=
ontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102"=
>i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@k=
ms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/s=
hard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3023">i915#3023</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">=
i915#12713</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155955v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-tglu-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155955v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/123=
88">i915#12388</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_joiner@basic-forc=
e-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6953">i915#6953</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_backlight@fade-=
with-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flo=
ps.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/42=
81">i915#4281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155955v2/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#=
3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55955v2/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i9=
15#8430</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155955v2/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073=
">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155955v2/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6524">i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_prime@basic-crc-hybrid.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6524">i915#6524</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_p=
sr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)=
 +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr2_sf@psr2-ov=
erlay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683=
">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9683">i915#9683</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i91=
5#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_psr@psr-cur=
sor-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_sequence@get-forked.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">=
i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155955v2/shard-rkl-6/igt@kms_sequence@get-forked.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_setmode@invalid-clone-exclusive-crtc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-8/igt@kms_setmode@inva=
lid-clone-exclusive-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155955v2/shard-rkl-7/igt@kms_tiled_display@basic-test-patte=
rn.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8623">i915#8623</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_tiled_display@bas=
ic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155955v2/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-vrr.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@kms_writeback@writeback-check-output-xrgb2101=
010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@kms_writeb=
ack@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2=
437</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-8/igt@kms_writeback@writeback-fb-id.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i=
915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155955v2/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2436">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155955v2/shard-rkl-6/igt@perf@gen8-unprivileged-single-=
ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i91=
5#2434</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155955v2/shard-rkl-8/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2435">i915#2435</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155955v2/shard-rkl-7/igt@perf@per-context-mode-=
unprivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17421/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155955v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17421 -&gt; Patchwork_155955v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17421: c840596036111afb71465977a49618cd19ca6e8b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8596: 8596<br />
  Patchwork_155955v2: c840596036111afb71465977a49618cd19ca6e8b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5084472804828590401==--
