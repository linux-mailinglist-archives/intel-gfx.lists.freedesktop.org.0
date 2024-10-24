Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84DE9AEFC5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 20:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D3410E98D;
	Thu, 24 Oct 2024 18:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D73A10E0AA;
 Thu, 24 Oct 2024 18:40:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6368769748269325442=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/gt=3A_Use_ENGINE?=
 =?utf-8?q?=5FTRACE_for_tracing=2E_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 18:40:15 -0000
Message-ID: <172979521510.1328167.6370040522726393640@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
In-Reply-To: <20241024103917.3231206-1-nitin.r.gote@intel.com>
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

--===============6368769748269325442==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Use ENGINE_TRACE for tracing. (rev4)
URL   : https://patchwork.freedesktop.org/series/140358/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15588_full -> Patchwork_140358v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140358v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140358v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140358v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@kms_color@ctm-signed@pipe-d-hdmi-a-4:
    - shard-dg1:          [PASS][2] -> [INCOMPLETE][3] +1 other test incomplete
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/igt@kms_color@ctm-signed@pipe-d-hdmi-a-4.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_color@ctm-signed@pipe-d-hdmi-a-4.html

  
Known issues
------------

  Here are the changes found in Patchwork_140358v4_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][4], [PASS][5], [FAIL][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-17/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-17/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-17/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-14/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#8411]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#6230])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#11078])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@device_reset@cold-reset-bound.html

  * igt@gem_busy@close-race:
    - shard-dg1:          NOTRUN -> [FAIL][56] ([i915#12297])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#9323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#3555] / [i915#9323])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3555] / [i915#9323])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][60] ([i915#7297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#7697])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#7697])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#8562])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][64] -> [FAIL][65] ([i915#12031])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [PASS][66] -> [FAIL][67] ([i915#12031])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#280])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][69] -> [FAIL][70] ([i915#5784])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/igt@gem_eio@reset-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4812])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][72] -> [DMESG-WARN][73] ([i915#12412])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-1/igt@gem_exec_balancer@nop.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-5/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4525]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu:         NOTRUN -> [FAIL][75] ([i915#6117])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#6334]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu-1:       NOTRUN -> [FAIL][77] ([i915#2842]) +5 other tests fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#3539] / [i915#4852])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-tglu:         NOTRUN -> [FAIL][79] ([i915#2842]) +1 other test fail
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][80] -> [FAIL][81] ([i915#2842]) +1 other test fail
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][82] -> [FAIL][83] ([i915#2842]) +1 other test fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][84] -> [FAIL][85] ([i915#2876])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3281])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3281]) +7 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3281]) +3 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][89] ([i915#12296]) +4 other tests fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#7276])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][91] -> [INCOMPLETE][92] ([i915#11441])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][93] ([i915#7975] / [i915#8213]) +1 other test abort
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#2190])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#4613])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> [SKIP][96] ([i915#4613])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#4613]) +4 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#4613]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#12193])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4565])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#284])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#4077])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4077]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4083]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3282])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3282]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@display:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#3282])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_pread@display.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][108] ([i915#2658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#4270]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4270]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4270])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4270]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4270])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#4270]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8428])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#3297]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3297])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#2527] / [i915#2856]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#2527])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#2527] / [i915#2856]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#2527]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#6412])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#8399])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#11681])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@i915_pm_rps@thresholds.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#6245])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#5723])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][127] -> [INCOMPLETE][128] ([i915#4817])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#7707])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#4212]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#8709]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#8709]) +7 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#8709]) +7 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          ([PASS][134], [PASS][135], [PASS][136]) -> [FAIL][137] ([i915#12238])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@kms_atomic_transition@modeset-transition.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@kms_atomic_transition@modeset-transition.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@kms_atomic_transition@modeset-transition.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          ([PASS][138], [PASS][139], [PASS][140]) -> [FAIL][141] ([i915#11859])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#1769] / [i915#3555])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#5286]) +4 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#4538] / [i915#5286]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#5286]) +4 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#5286]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3638]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#3638])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][149] +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#4538]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#5190] / [i915#9197])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] +38 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6095]) +49 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][154] +23 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#12313])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#10307] / [i915#6095]) +115 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#6095]) +9 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#6095]) +24 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#12313])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#6095]) +72 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#6095]) +97 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#3742])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4087]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#7828]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#7828]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#7828]) +2 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#7828]) +4 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6944] / [i915#9424])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3116])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#7116] / [i915#9424])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#9424])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#6944] / [i915#7116] / [i915#7118])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#7118] / [i915#9424])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#8814])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#11453] / [i915#3359]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#3555]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#11453] / [i915#3359]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#3555]) +4 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#11453] / [i915#3359])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#4103])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#9723])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu-1:       NOTRUN -> [SKIP][183] ([i915#9723])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#8588])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#3804])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3804])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#12402])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#12402])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3840])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#3555] / [i915#3840]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#3840] / [i915#9053])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#1849]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#1839])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#658])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][197] +20 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#3637]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3637])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#9934]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#3637]) +2 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-rkl:          [PASS][202] -> [FAIL][203] ([i915#11961] / [i915#2122])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-7/igt@kms_flip@blocking-wf_vblank.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-2/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-rkl:          [PASS][204] -> [FAIL][205] ([i915#2122]) +1 other test fail
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#5354]) +13 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-mtlp:         [PASS][208] -> [FAIL][209] ([i915#2122]) +2 other tests fail
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][210] ([i915#2122])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:
    - shard-dg1:          [PASS][211] -> [FAIL][212] ([i915#2122]) +3 other tests fail
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][213] ([i915#11989])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][214] ([i915#2122]) +1 other test fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#2672]) +4 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#2672] / [i915#3555]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#2587] / [i915#2672]) +3 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2672]) +2 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#2587] / [i915#2672] / [i915#3555])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#2587] / [i915#2672]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#2672] / [i915#3555]) +4 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#2672] / [i915#3555]) +3 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5354]) +3 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][224] +21 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#8708])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#3458]) +6 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#1825]) +33 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#1825]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#8708]) +12 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][230] +61 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3023]) +19 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#433])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8228])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][235] -> [SKIP][236] ([i915#3555] / [i915#8228])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_hdr@static-swap.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3555] / [i915#8228]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-dg2:          [PASS][238] -> [SKIP][239] ([i915#3555]) +4 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_invalid_mode@bad-hsync-end.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#10656])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#12388])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#12394])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#12339])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [PASS][244] -> [SKIP][245] ([i915#9197]) +34 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_lease@lease-revoke.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_lease@lease-revoke.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#1839])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format:
    - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#8825])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_plane@pixel-format.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane@pixel-format.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][249] -> [SKIP][250] ([i915#7294]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#9809])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [PASS][252] -> [SKIP][253] ([i915#8152] / [i915#9423]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-8/igt@kms_plane_scaling@invalid-parameters.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#12247]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][255] -> [SKIP][256] ([i915#12247]) +14 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][257] -> [SKIP][258] ([i915#8152]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#3555]) +1 other test skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#12247]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:
    - shard-dg2:          [PASS][261] -> [SKIP][262] ([i915#12247] / [i915#8152]) +2 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#12247]) +22 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#12247] / [i915#6953])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [PASS][265] -> [SKIP][266] ([i915#12247] / [i915#8152] / [i915#9423]) +2 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#12247] / [i915#6953])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#12247]) +8 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#12247] / [i915#3555])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#9812])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#9685])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#9685]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#3828])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#8430])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][275] -> [SKIP][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_pm_rpm@i2c.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][277] -> [SKIP][278] ([i915#9519])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][279] -> [SKIP][280] ([i915#9519])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#9519]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#6524])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#6524])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [PASS][284] -> [SKIP][285] ([i915#11521])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_properties@plane-properties-legacy.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#11520]) +2 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#12316]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#11520]) +5 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#11520]) +3 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#11520]) +6 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#9683])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#9683])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#9688]) +3 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-snb:          NOTRUN -> [SKIP][294] +24 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-snb5/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#9732]) +9 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#9732]) +14 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#1072] / [i915#9732]) +9 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#1072] / [i915#9732]) +18 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#5289])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#3555]) +3 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][301] ([i915#12231]) +1 other test abort
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#8623])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][303] ([i915#9906])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#9906])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#3555] / [i915#9906])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#2437]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu-1:       NOTRUN -> [SKIP][307] ([i915#2437])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][308] ([i915#2437])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_vgem@basic-write:
    - shard-dg1:          NOTRUN -> [SKIP][309] ([i915#3708]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#9917]) +1 other test skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#9917])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - shard-dg2:          [SKIP][312] ([i915#2582]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@fbdev@write.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@fbdev@write.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][314] ([i915#12392] / [i915#7297]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          ([FAIL][316], [FAIL][317], [FAIL][318]) ([i915#2846]) -> [PASS][319]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][320] ([i915#2842]) -> [PASS][321] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][322] ([i915#7975] / [i915#8213]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][324], [ABORT][325]) ([i915#12375] / [i915#5566]) -> [PASS][326]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][327] ([i915#3591]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_atomic@plane-cursor-legacy:
    - shard-dg2:          [SKIP][329] ([i915#9197]) -> [PASS][330] +34 other tests pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_atomic@plane-cursor-legacy.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          [DMESG-WARN][331] ([i915#4423]) -> [PASS][332] +1 other test pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([FAIL][333], [PASS][334]) ([i915#2346]) -> [PASS][335]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][336], [FAIL][337]) -> [PASS][338]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][339], [FAIL][340]) ([i915#12403]) -> [PASS][341] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
    - shard-tglu:         [FAIL][342] ([i915#2122]) -> [PASS][343] +8 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          ([INCOMPLETE][344], [PASS][345], [PASS][346]) ([i915#4839]) -> [PASS][347] +1 other test pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          ([PASS][348], [FAIL][349]) ([i915#2122]) -> [PASS][350] +1 other test pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk5/igt@kms_flip@plain-flip-fb-recreate.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@b-vga1:
    - shard-snb:          [FAIL][351] ([i915#2122]) -> [PASS][352] +1 other test pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [FAIL][353] ([i915#11989] / [i915#2122]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [FAIL][355] ([i915#2122]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          ([PASS][357], [FAIL][358], [PASS][359]) ([i915#2122]) -> [PASS][360] +3 other tests pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk1/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][361] ([i915#5354]) -> [PASS][362] +14 other tests pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][363] ([i915#3555] / [i915#8228]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-dg2:          [SKIP][365] ([i915#3555]) -> [PASS][366] +2 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_invalid_mode@clock-too-high.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-dg2:          [SKIP][367] ([i915#8825]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [SKIP][369] ([i915#7294]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][371] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][372] +1 other test pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][373] ([i915#8152] / [i915#9423]) -> [PASS][374] +1 other test pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][375] ([i915#12247]) -> [PASS][376] +14 other tests pass
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][377] ([i915#8152]) -> [PASS][378] +2 other tests pass
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [SKIP][379] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][381] ([i915#12247] / [i915#8152]) -> [PASS][382] +1 other test pass
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-dg2:          [SKIP][383] ([i915#9293]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][385] ([i915#9295]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][387] ([i915#9519]) -> [PASS][388] +1 other test pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][389] ([i915#9519]) -> [PASS][390] +2 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_setmode@basic:
    - shard-snb:          [FAIL][391] ([i915#5465]) -> [PASS][392] +2 other tests pass
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb5/igt@kms_setmode@basic.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-snb2/igt@kms_setmode@basic.html

  * igt@perf@blocking:
    - shard-mtlp:         [FAIL][393] ([i915#10538]) -> [PASS][394] +1 other test pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@perf@blocking.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@perf@blocking.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][395] ([i915#4349]) -> [PASS][396] +4 other tests pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace:
    - shard-rkl:          [FAIL][397] ([i915#2842]) -> [FAIL][398] ([i915#12467] / [i915#2842])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-rkl-1/igt@gem_exec_fair@basic-pace.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          [INCOMPLETE][399] -> [WARN][400] ([i915#2658])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb5/igt@gem_pread@exhaustion.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-dg1:          [SKIP][401] ([i915#4077] / [i915#4423]) -> [SKIP][402] ([i915#4077])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/igt@i915_pm_rpm@gem-evict-pwrite.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@i915_selftest@mock:
    - shard-glk:          ([DMESG-WARN][403], [DMESG-WARN][404], [DMESG-WARN][405]) ([i915#1982] / [i915#9311]) -> [DMESG-WARN][406] ([i915#9311])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@i915_selftest@mock.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@i915_selftest@mock.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@i915_selftest@mock.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg2:          [FAIL][407] ([i915#5956]) -> [SKIP][408] ([i915#9197])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][409] ([i915#1769] / [i915#3555]) -> [SKIP][410] ([i915#9197])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][411] -> [SKIP][412] ([i915#9197]) +3 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][413] ([i915#4538] / [i915#5190]) -> [SKIP][414] ([i915#5190] / [i915#9197]) +6 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][415] ([i915#5190] / [i915#9197]) -> [SKIP][416] ([i915#4538] / [i915#5190]) +3 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][417] ([i915#5190]) -> [SKIP][418] ([i915#5190] / [i915#9197])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][419] ([i915#10307] / [i915#6095]) -> [SKIP][420] ([i915#9197]) +10 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][421] ([i915#9197]) -> [SKIP][422] ([i915#10307] / [i915#6095]) +7 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][423] ([i915#12313]) -> [SKIP][424] ([i915#9197])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][425] ([i915#9197]) -> [SKIP][426] ([i915#12313]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-dg1:          [SKIP][427] ([i915#4423] / [i915#7828]) -> [SKIP][428] ([i915#7828]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-fast.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][429] ([i915#9197]) -> [SKIP][430] ([i915#7118] / [i915#9424])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_content_protection@type1.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          [SKIP][431] ([i915#3555]) -> [SKIP][432] ([i915#9197]) +1 other test skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-32x32.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          [SKIP][433] ([i915#11453] / [i915#3359]) -> [SKIP][434] ([i915#9197]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-dg2:          [SKIP][435] ([i915#9197]) -> [SKIP][436] ([i915#3555]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_crc@cursor-random-32x32.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][437] ([i915#9197]) -> [SKIP][438] ([i915#11453] / [i915#3359])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][439] ([i915#5354]) -> [SKIP][440] ([i915#9197]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][441] ([i915#9197]) -> [SKIP][442] ([i915#5354]) +2 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][443] ([i915#9197]) -> [SKIP][444] ([i915#9833])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg1:          [SKIP][445] ([i915#3555] / [i915#4423]) -> [SKIP][446] ([i915#3555])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/igt@kms_display_modes@extended-mode-basic.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][447] ([i915#8812]) -> [SKIP][448] ([i915#9197])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][449] ([i915#9197]) -> [SKIP][450] ([i915#3840] / [i915#9688])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          [SKIP][451] ([i915#9197]) -> [SKIP][452] ([i915#3555] / [i915#3840]) +1 other test skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg1:          [SKIP][453] ([i915#4423] / [i915#9934]) -> [SKIP][454] ([i915#9934])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][455] ([i915#3555] / [i915#5190]) -> [SKIP][456] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][457] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][458] ([i915#3555] / [i915#5190])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][459] ([i915#2672] / [i915#3555]) -> [SKIP][460] ([i915#3555]) +1 other test skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][461] ([i915#8708]) -> [SKIP][462] ([i915#5354]) +12 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          [SKIP][463] ([i915#10055]) -> [SKIP][464] ([i915#5354])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][465] ([i915#10433] / [i915#3458]) -> [SKIP][466] ([i915#3458]) +1 other test skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][467] ([i915#5354]) -> [SKIP][468] ([i915#8708]) +8 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg1:          [SKIP][469] ([i915#3458] / [i915#4423]) -> [SKIP][470] ([i915#3458]) +1 other test skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][471] ([i915#3458]) -> [SKIP][472] ([i915#10433] / [i915#3458]) +3 ot

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/index.html

--===============6368769748269325442==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Use ENGINE_TRACE for tracing. (=
rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140358/">https://patchwork.freedesktop.org/series/140358/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140358v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15588_full -&gt; Patchwork_140358v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140358v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140358v4_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140358v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_exec_whisper@basic-co=
ntexts-priority-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-15/igt@kms_color@ctm-signed@pipe-d-hdmi-a-4.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140358v4/shard-dg1-16/igt@kms_color@ctm-signed@pipe-d-hdmi-a-4.html">INCOM=
PLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140358v4_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15588/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15588/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15588/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
588/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588=
/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/sh=
ard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard=
-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15588/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg=
1-12/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/s=
hard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg1-15/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/boot.html">PASS</a=
>)</li>
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
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-4/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14035=
8v4/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#1=
2031])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1403=
58v4/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915=
#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-=
dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-1/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard=
-mtlp-5/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> ([i915#12412])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_exec_fair@basic-none.=
html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gem_exec_fair@basic-none-=
rrul.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_exec_fair@basic-none-=
solo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140358v4/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0358v4/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([=
i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v=
4/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_exec_reloc@basic-wc-c=
pu.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_reloc@basic-writ=
e-wc-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@gem_exec_schedule@pi-ringf=
ull@rcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358=
v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i9=
15#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-7/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_lmem_swapping@heavy-v=
erify-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_mmap_gtt@medium-copy-=
xy.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@gem_mmap_gtt@zero-extend.=
html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_mmap_wc@bad-size.html=
">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@gem_partial_pwrite_pread@w=
rite-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_pread@display.html">S=
KIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_pread@exhaustion.html=
">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-=
buf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@gem_render_copy@yf-tiled-=
ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@i915_pm_rps@thresholds.ht=
ml">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@i915_query@hwconfig_table=
.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0358v4/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE<=
/a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk1/igt@kms_atomic_transition@modeset-transition.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1558=
8/shard-glk9/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/=
igt@kms_atomic_transition@modeset-transition.html">PASS</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/=
igt@kms_atomic_transition@modeset-transition.html">FAIL</a> ([i915#12238])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk1/igt@kms_atomic_transition@modeset-transition@2x-o=
utputs.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15588/shard-glk4/igt@kms_atomic_transition@modeset-transition@2x-out=
puts.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15588/shard-glk9/igt@kms_atomic_transition@modeset-transition@2x-outpu=
ts.html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140358v4/shard-glk8/igt@kms_atomic_transition@modeset-transitio=
n@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_big_fb@4-tiled-32bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +38 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +49 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_ccs@bad-rotation-90-4-t=
iled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-10/igt@kms_ccs@crc-primary-basic=
-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095=
]) +115 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_ccs@missing-ccs-buffe=
r-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +9 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffe=
r-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +72 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-12/igt@kms_ccs@random-ccs-data-y=
f-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +97 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_cdclk@plane-scaling@pi=
pe-a-hdmi-a-2.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-=
enable-disable-mode.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hp=
d-storm.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9=
424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-19/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-off=
screen-256x85.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140358v4/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKI=
P</a> ([i915#12402])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/s=
hard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849]) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-7/igt@kms_flip@blocking-wf_vblank.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/=
shard-rkl-2/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i915#11961] / =
[i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140358v4/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">FAIL<=
/a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interrup=
tible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140358v4/shard-dg2-2/igt@kms_flip@flip-vs-dpms-off-vs-modeset=
-interruptible.html">SKIP</a> ([i915#5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140358v4/shard-mtlp-5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-rec=
reate@a-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140358v4/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.h=
tml">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-rec=
reate@b-hdmi-a2.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip@wf_vblank-ts-che=
ck-interruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([i915#5354]) +3 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +21 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +6 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +33 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +2 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +12 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +61 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> ([i915#3023]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-d=
g2-11/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358=
v4/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a> ([i915#355=
5]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_lease@lease-revoke.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard=
-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> ([i915#9197]) +34 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_plane@pixel-format.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard=
-dg2-2/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html=
">SKIP</a> ([i915#7294]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-8/igt@kms_plane_scaling@invalid-parameters.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140358v4/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a=
> ([i915#8152] / [i915#9423]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe=
-c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-pixel-format@pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scalin=
g@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html">SKIP</a> ([i91=
5#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe=
-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scalin=
g@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html">SKIP</a> ([i91=
5#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@plane-upsc=
ale-20x20-with-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +22 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-upscale-20x20.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_plane_scaling@planes-do=
wnscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152]=
 / [i915#9423]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#69=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +8=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#35=
55])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2=
/igt@kms_pm_rpm@i2c.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358=
v4/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#951=
9])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4=
/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519])</=
li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lps=
p.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-5/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_properties@plane-properties-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140358v4/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKI=
P</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 oth=
er tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#12316]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-mtlp-8/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> ([i915#9688]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-snb5/igt@kms_psr@fbc-psr2-sprite-ren=
der.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_psr@pr-sprite-plane-o=
noff.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_psr@psr-basic.html">S=
KIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@kms_psr@psr-cursor-plane-=
move.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_selftest@drm_framebuff=
er.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP=
</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-1/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-rkl-3/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> ([i915#9917]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-tglu-6/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/sh=
ard-dg2-11/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard=
-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1=
/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gem_exec_fair@basic-=
deadline.html">FAIL</a>) ([i915#2846]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@gem_exec_fair@basic=
-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140358v4/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-gl=
k6/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) ([i915#12375] / [i91=
5#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140358v4/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140358v4/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html">SKIP</a>=
 ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140358v4/shard-dg2-11/igt@kms_atomic@plane-cursor-legacy.html">PASS=
</a> +34 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_big_fb@=
y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15588/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a>) ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interrupti=
ble@ac-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-r=
ace-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk9/igt@kms_f=
lip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interrupti=
ble@bc-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-r=
ace-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>) ([i915#12403]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard=
-glk9/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-=
a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">=
FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140358v4/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@c-hdm=
i-a1.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCO=
MPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1558=
8/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@km=
s_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a>) ([i915#4839]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk3=
/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk5/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-g=
lk1/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>) ([i915#2122]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/sha=
rd-glk7/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">F=
AIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140358v4/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@b-vg=
a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.h=
tml">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_flip@plai=
n-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140358v4/shard-mtlp-2/igt@kms_flip@plain-flip-t=
s-check-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-h=
dmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15588/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdm=
i-a1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15588/shard-glk6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-=
a1.html">PASS</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140358v4/shard-glk1/igt@kms_flip@wf_vblank-ts-che=
ck-interruptible@a-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +14 other tests pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([=
i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140358v4/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_invalid_mode@clock-too-high.html">SKIP</a=
> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140358v4/shard-dg2-6/igt@kms_invalid_mode@clock-too-high.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html">SK=
IP</a> ([i915#8825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140358v4/shard-dg2-11/igt@kms_plane@plane-panning-bottom-righ=
t.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_plane_alpha_blend@constant-a=
lpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v=
4/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rot=
ation.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt=
@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_p=
lane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a>=
 +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_pl=
ane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> =
+2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#942=
3]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
358v4/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscal=
e-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/=
shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-fact=
or-0-25@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([=
i915#9293]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140358v4/shard-dg2-11/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#929=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
358v4/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0358v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a=
> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140358v4/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS=
</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb5/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358=
v4/shard-snb2/igt@kms_setmode@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@perf@blocking.html">FAIL</a> ([i915#10538]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v=
4/shard-mtlp-2/igt@perf@blocking.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140358v4/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">=
PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace.html">FAIL</a> ([i91=
5#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140358v4/shard-rkl-1/igt@gem_exec_fair@basic-pace.html">FAIL</a> ([i915#1=
2467] / [i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb5/igt@gem_pread@exhaustion.html">INCOMPLETE</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/sh=
ard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-15/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a> =
([i915#4077] / [i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140358v4/shard-dg1-16/igt@i915_pm_rpm@gem-evict-pwrite=
.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk9/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt=
@i915_selftest@mock.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@i915_selftest@mock.html">DME=
SG-WARN</a>) ([i915#1982] / [i915#9311]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-glk8/igt@i915_selftest@moc=
k.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-trans=
ition.html">FAIL</a> ([i915#5956]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_atomic_transition@=
plane-all-modeset-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg=
2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.=
html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140358v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a>=
 ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@=
kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (=
[i915#5190] / [i915#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg=
2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.=
html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overfl=
ow.html">SKIP</a> ([i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-c=
c.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_ccs@bad=
-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +10 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-cc=
s.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140358v4/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +7 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.htm=
l">SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-ti=
led-bmg-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-c=
cs.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a>=
 ([i915#4423] / [i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140358v4/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-fa=
st.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140358v4/shard-dg2-6/igt@kms_content_protection@type1.html">SKIP</a> =
([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-32x32.html">S=
KIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x=
32.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_crc@cur=
sor-offscreen-512x512.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP=
</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140358v4/shard-dg2-6/igt@kms_cursor_crc@cursor-random-32x32.htm=
l">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140358v4/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x512=
.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140358v4/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-f=
lipa-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140358v4/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a=
> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-14/igt@kms_display_modes@extended-mode-basic.html">=
SKIP</a> ([i915#3555] / [i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-13/igt@kms_display_modes@e=
xtended-mode-basic.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP<=
/a> ([i915#8812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140358v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">=
SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i=
915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140358v4/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i9=
15#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140358v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html">SK=
IP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-17/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKI=
P</a> ([i915#4423] / [i915#9934]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140358v4/shard-dg1-15/igt@kms_flip@2x-modeset-vs=
-vblank-race.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg=
2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling=
.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#519=
0]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
358v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytil=
e-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2=
-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.ht=
ml">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur=
-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i9=
15#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">S=
KIP</a> ([i915#10055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140358v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tilin=
g-y.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-8=
/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">S=
KIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg2-3/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>=
 ([i915#8708]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri=
-indfb-draw-pwrite.html">SKIP</a> ([i915#3458] / [i915#4423]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140358v4/shard-dg1-1=
3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html">=
SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          [SKIP][471] ([i915#3458]) -&gt; [SKIP][472] ([i915#=
10433] / [i915#3458]) +3 ot</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6368769748269325442==--
