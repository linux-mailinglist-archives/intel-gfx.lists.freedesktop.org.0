Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EFB99B35B
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 13:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E749310E166;
	Sat, 12 Oct 2024 11:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFF810E083;
 Sat, 12 Oct 2024 11:15:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4239719560732409395=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Revert_=22perf/core=3A_Only?=
 =?utf-8?q?_copy-to-user_after_completely_unlocking_all_locks=2C_v3=2E=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 12 Oct 2024 11:15:53 -0000
Message-ID: <172873175328.1243802.10953145957689871472@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241011153530.451751-1-lucas.demarchi@intel.com>
In-Reply-To: <20241011153530.451751-1-lucas.demarchi@intel.com>
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

--===============4239719560732409395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "perf/core: Only copy-to-user after completely unlocking all locks, v3."
URL   : https://patchwork.freedesktop.org/series/139903/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15518_full -> Patchwork_139903v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139903v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139903v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139903v1_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg1:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [FAIL][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-12/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-12/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-12/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-14/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-14/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-14/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-16/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-16/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-16/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-17/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-17/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-17/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-13/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-13/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_balancer@nop.html

  * igt@i915_selftest@perf:
    - shard-dg2:          [PASS][52] -> [FAIL][53] +4 other tests fail
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@i915_selftest@perf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@i915_selftest@perf.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-edp-1-4:
    - shard-mtlp:         [PASS][54] -> [ABORT][55] +1 other test abort
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-edp-1-4.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-edp-1-4.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-snb:          [PASS][56] -> [DMESG-WARN][57] +1 other test dmesg-warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create:
    - shard-glk:          [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * igt@perf_pmu@invalid-open:
    - shard-dg2:          [PASS][60] -> [SKIP][61] +5 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@perf_pmu@invalid-open.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@perf_pmu@invalid-open.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [SKIP][62] ([i915#11078]) -> [SKIP][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@device_reset@unbind-cold-reset-rebind.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-dg2:          [SKIP][64] ([i915#8414]) -> [SKIP][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@drm_fdinfo@most-busy-check-all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@drm_fdinfo@most-busy-check-all.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg1:          [INCOMPLETE][66] -> [ABORT][67] +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          [SKIP][68] ([i915#6524] / [i915#6805]) -> [SKIP][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_prime@basic-crc-hybrid.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         [SKIP][70] ([i915#12316]) -> [FAIL][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-glk:          [ABORT][72] ([i915#12231]) -> [DMESG-FAIL][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  
Known issues
------------

  Here are the changes found in Patchwork_139903v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#8411]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#6230])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@api_intel_bb@crc32.html

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#9318])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#8414])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#7697])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6335])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][80] -> [FAIL][81] ([i915#12027])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8555])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@hostile:
    - shard-rkl:          [PASS][83] -> [FAIL][84] ([i915#11980])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-5/igt@gem_ctx_persistence@hostile.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#280])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#280])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4525]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         NOTRUN -> [FAIL][88] ([i915#11965]) +1 other test fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_capture@capture.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][89] -> [FAIL][90] ([i915#2846])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][91] ([i915#2842]) +1 other test fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][92] ([i915#2842]) +1 other test fail
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3281])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#3281])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@gem_exec_reloc@basic-cpu-gtt-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3281]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3281]) +4 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-dg2:          [PASS][97] -> [SKIP][98] ([i915#2575]) +44 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_exec_schedule@u-fairslice-all.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [PASS][99] -> [ABORT][100] ([i915#7975] / [i915#8213]) +1 other test abort
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][101] ([i915#2190])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#4613] / [i915#7582])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-glk:          NOTRUN -> [SKIP][103] ([i915#4613])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#4613]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#284])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_media_vme.html

  * igt@gem_mmap@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4083])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-wc:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4077])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@gem_mmap_gtt@basic-wc.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4077])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-4/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4083])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@gem_mmap_wc@copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#4083])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3282]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#4270])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4270]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3297])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3281] / [i915#3297])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3297])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#2856])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#2527] / [i915#2856]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#2527]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#2856])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#6227])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][122] -> [ABORT][123] ([i915#9820])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][124] -> [ABORT][125] ([i915#9820])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [PASS][126] -> [ABORT][127] ([i915#9820])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#8399])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][129] -> [FAIL][130] ([i915#3591]) +1 other test fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#7984])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#5723])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#8709]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#8709]) +11 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - shard-dg2:          [PASS][135] -> [SKIP][136] ([i915#9197]) +31 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_atomic_transition@plane-all-transition-fencing.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#5286]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#5286]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][139] +7 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][140]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4538] / [i915#5190])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#6095]) +86 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#6095]) +4 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#12313])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#12313]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#6095]) +44 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#6095]) +63 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#10307] / [i915#6095]) +71 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#7213]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3742])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#7828]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7828]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#7828]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-storm.html
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#7828])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#7118] / [i915#9424])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3116])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-glk:          NOTRUN -> [SKIP][158] +9 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#9424]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#6944] / [i915#7116] / [i915#7118])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][161] ([i915#1339] / [i915#7173])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#11453])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#11453]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][164] +15 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#9809])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][166] -> [FAIL][167] ([i915#2346])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-mtlp:         [PASS][168] -> [FAIL][169] ([i915#2346])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#4103])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3804])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#8812])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#8812])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3840])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#3840] / [i915#9688])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3555] / [i915#3840])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3840] / [i915#9053])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#4854])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3637]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#2575]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][181] -> [FAIL][182] ([i915#2122]) +2 other tests fail
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-dg2:          [PASS][183] -> [FAIL][184] ([i915#10826])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-4/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-6/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][185] ([i915#10826])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-6/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a3.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-tglu:         [PASS][186] -> [FAIL][187] ([i915#2122]) +4 other tests fail
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-tglu-10/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:
    - shard-snb:          [PASS][188] -> [FAIL][189] ([i915#2122]) +3 other tests fail
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-snb1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1:
    - shard-mtlp:         [PASS][190] -> [FAIL][191] ([i915#2122])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][192] ([i915#6113])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-9/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:
    - shard-dg1:          [PASS][193] -> [FAIL][194] ([i915#2122]) +5 other tests fail
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#3555]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#2587] / [i915#2672] / [i915#3555])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#2672]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555] / [i915#8813])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#2672] / [i915#8813])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#2672]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#2587] / [i915#2672]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [PASS][205] -> [SKIP][206] +7 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][207] -> [SKIP][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#1825]) +17 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg2:          [PASS][210] -> [SKIP][211] ([i915#5354]) +12 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][212] -> [FAIL][213] ([i915#6880])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3458])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3023]) +14 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#8708])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#8708])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#8708])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#5439])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#1825]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#3555] / [i915#8228])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#3555] / [i915#8228])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][223] -> [SKIP][224] ([i915#3555] / [i915#8228])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#12388])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#12339])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [PASS][228] -> [SKIP][229] ([i915#7294])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#2575] / [i915#9423]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#8152] / [i915#9423]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][234] -> [SKIP][235] ([i915#8152]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#12247]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#12247] / [i915#6953])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#12247]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [PASS][239] -> [SKIP][240] ([i915#6953] / [i915#8152] / [i915#9423])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
    - shard-dg2:          [PASS][241] -> [SKIP][242] ([i915#12247]) +17 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][243] -> [SKIP][244] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][245] -> [SKIP][246] ([i915#12247] / [i915#8152]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#9812])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#9685])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][249] -> [SKIP][250] ([i915#4281])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3828])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][252] -> [SKIP][253] ([i915#3547])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_pm_rpm@drm-resources-equal.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#9519])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#9519])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][256] -> [SKIP][257] ([i915#9519]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#6524])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#11520]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#11520]) +6 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][261] ([i915#11520])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#9683])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-cursor-blt:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#9732]) +9 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_psr@fbc-pr-cursor-blt.html

  * igt@kms_psr@fbc-psr2-primary-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#9688]) +4 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-primary-blt@edp-1.html

  * igt@kms_psr@pr-no-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#1072] / [i915#9732])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr-cursor-render:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#1072] / [i915#9732]) +12 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr-sprite-render:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#1072] / [i915#9732]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_psr@psr-sprite-render.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg1:          [PASS][268] -> [DMESG-WARN][269] ([i915#4423]) +1 other test dmesg-warn
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/igt@kms_rotation_crc@primary-rotation-270.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#5190])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#5289]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#3555]) +2 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@basic:
    - shard-tglu:         NOTRUN -> [FAIL][273] ([i915#5465]) +2 other tests fail
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_setmode@basic.html
    - shard-rkl:          [PASS][274] -> [FAIL][275] ([i915#5465])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-2/igt@kms_setmode@basic.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-5/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][276] ([i915#5465]) +1 other test fail
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-5/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#3555] / [i915#8808])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#9906])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#3555])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#2437] / [i915#9412])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_writeback@writeback-pixel-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#2437] / [i915#9412]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling:
    - shard-dg2:          [PASS][282] -> [FAIL][283] ([i915#10538]) +1 other test fail
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@perf@polling.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@perf@polling.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#3708])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@prime_vgem@basic-fence-read.html
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#3708])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#3291] / [i915#3708])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#3708]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglu:         NOTRUN -> [SKIP][288] +47 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@prime_vgem@fence-write-hang.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#4818])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#4818])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [SKIP][291] ([i915#9197]) -> [PASS][292] +33 other tests pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@drm_read@short-buffer-block.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@drm_read@short-buffer-block.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][293] ([i915#7297]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@gem_ccs@suspend-resume.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][295] ([i915#12392] / [i915#7297]) -> [PASS][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_freq@sysfs:
    - shard-mtlp:         [FAIL][297] ([i915#9561]) -> [PASS][298] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-7/igt@gem_ctx_freq@sysfs.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-4/igt@gem_ctx_freq@sysfs.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][299] ([i915#11980]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-tglu-10/igt@gem_ctx_persistence@hostile.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][301] ([i915#5784]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-17/igt@gem_eio@reset-stress.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][303] ([i915#2842]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [ABORT][305] ([i915#9820]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_legacy@single-move@pipe-a:
    - shard-dg1:          [INCOMPLETE][307] -> [PASS][308] +1 other test pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/igt@kms_cursor_legacy@single-move@pipe-a.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@kms_cursor_legacy@single-move@pipe-a.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [SKIP][309] -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-snb:          [FAIL][311] ([i915#2122]) -> [PASS][312] +1 other test pass
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          [FAIL][313] ([i915#2122]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [FAIL][315] -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@bo-too-big:
    - shard-dg2:          [SKIP][317] ([i915#5354]) -> [PASS][318] +10 other tests pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_flip@bo-too-big.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip@bo-too-big.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          [FAIL][319] ([i915#2122]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-tglu:         [FAIL][321] ([i915#2122]) -> [PASS][322] +1 other test pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [FAIL][323] ([i915#2122]) -> [PASS][324] +3 other tests pass
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][325] ([i915#2122]) -> [PASS][326] +3 other tests pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4:
    - shard-dg1:          [FAIL][327] ([i915#2122]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-tglu:         [INCOMPLETE][329] -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-tglu-5/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-9/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-dg2:          [SKIP][331] ([i915#3555]) -> [PASS][332] +6 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [INCOMPLETE][333] -> [PASS][334] +1 other test pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          [SKIP][335] ([i915#8825]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane@plane-position-hole.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [SKIP][337] ([i915#7294]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [SKIP][339] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [SKIP][341] ([i915#12247]) -> [PASS][342] +11 other tests pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [SKIP][343] ([i915#8152] / [i915#9423]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][345] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][347] ([i915#12247] / [i915#8152]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [SKIP][349] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][351] ([i915#8152]) -> [PASS][352] +2 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][353] ([i915#9519]) -> [PASS][354] +4 other tests pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][355] ([i915#9519]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg2:          [INCOMPLETE][357] ([i915#12353]) -> [SKIP][358] ([i915#2575])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_eio@kms:
    - shard-dg2:          [FAIL][359] ([i915#5784]) -> [SKIP][360] ([i915#9197])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@gem_eio@kms.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          [SKIP][361] ([i915#4036]) -> [SKIP][362] ([i915#2575])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          [SKIP][363] ([i915#3281]) -> [SKIP][364] ([i915#2575]) +2 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          [SKIP][365] ([i915#4860]) -> [SKIP][366] ([i915#2575]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_fence_thrash@bo-copy.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_mmap_gtt@ptrace:
    - shard-dg2:          [SKIP][367] ([i915#4077]) -> [SKIP][368] ([i915#2575]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_mmap_gtt@ptrace.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_mmap_gtt@ptrace.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          [SKIP][369] ([i915#4083]) -> [SKIP][370] ([i915#2575])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_mmap_wc@write-prefaulted.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          [SKIP][371] ([i915#3282]) -> [SKIP][372] ([i915#2575]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_readwrite@beyond-eob.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          [SKIP][373] ([i915#5190] / [i915#8428]) -> [SKIP][374] ([i915#2575] / [i915#5190]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          [SKIP][375] ([i915#3297]) -> [SKIP][376] ([i915#2575])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gem_userptr_blits@coherency-sync.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2:          [SKIP][377] ([i915#2856]) -> [SKIP][378] ([i915#2575])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@gen9_exec_parse@bb-start-out.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][379] ([i915#10131] / [i915#9697]) -> [ABORT][380] ([i915#10131] / [i915#9820])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#7091])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][383] ([i915#12061] / [i915#12216]) -> [ABORT][384] ([i915#12216]) +1 other test abort
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][385] ([i915#9311]) -> [DMESG-WARN][386] ([i915#1982] / [i915#9311])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-glk1/igt@i915_selftest@mock.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk3/igt@i915_selftest@mock.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          [SKIP][387] ([i915#4212]) -> [SKIP][388] ([i915#2575])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          [SKIP][389] ([i915#9197]) -> [SKIP][390] ([i915#1769] / [i915#3555])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][391] -> [SKIP][392] ([i915#9197]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] +2 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][395] ([i915#5190] / [i915#9197]) -> [SKIP][396] ([i915#4538] / [i915#5190]) +6 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          [SKIP][397] ([i915#4538] / [i915#5190]) -> [SKIP][398] ([i915#5190] / [i915#9197]) +6 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][399] ([i915#5190] / [i915#9197]) -> [SKIP][400] ([i915#5190])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][401] ([i915#4538] / [i915#5190]) -> [SKIP][402] ([i915#5190])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][403] ([i915#10307] / [i915#6095]) -> [SKIP][404] ([i915#9197]) +10 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][405] ([i915#9197]) -> [SKIP][406] ([i915#12313])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][407] ([i915#10307] / [i915#6095]) -> [SKIP][408] +1 other test skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][409] ([i915#9197]) -> [SKIP][410] ([i915#10307] / [i915#6095]) +5 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][411] ([i915#9197]) -> [SKIP][412] ([i915#11616] / [i915#7213]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_cdclk@mode-transition.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg2:          [SKIP][413] ([i915#7828]) -> [SKIP][414] ([i915#2575]) +2 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][415] ([i915#9424]) -> [SKIP][416] ([i915#2575])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_content_protection@content-type-change.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [TIMEOUT][417] ([i915#7173]) -> [SKIP][418] ([i915#2575])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_content_protection@legacy.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][419] ([i915#7118] / [i915#9424]) -> [SKIP][420] ([i915#9197]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_content_protection@type1.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][421] ([i915#7118] / [i915#9424]) -> [FAIL][422] ([i915#1339] / [i915#7173])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-3/igt@kms_content_protection@uevent.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          [SKIP][423] ([i915#9197]) -> [SKIP][424] ([i915#3555]) +1 other test skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][425] ([i915#11453]) -> [SKIP][426] ([i915#9197])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][427] ([i915#9197]) -> [SKIP][428] ([i915#5354]) +3 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][429] ([i915#5354]) -> [SKIP][430] ([i915#9197]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][431] ([i915#5354]) -> [SKIP][432] ([i915#2575]) +1 other test skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][433] ([i915#9833]) -> [SKIP][434] ([i915#9197])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][435] ([i915#9197]) -> [SKIP][436] ([i915#9833])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][437] ([i915#8812]) -> [SKIP][438] ([i915#9197])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          [SKIP][439] ([i915#3469]) -> [SKIP][440]
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_fbcon_fbt@psr.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          [SKIP][441] ([i915#1839]) -> [SKIP][442] ([i915#2575])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_feature_discovery@display-3x.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          [SKIP][443] -> [SKIP][444] ([i915#2575]) +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          [SKIP][445] ([i915#8381]) -> [SKIP][446] ([i915#2575])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_flip@flip-vs-fences.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][447] ([i915#3555] / [i915#5190]) -> [SKIP][448] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][449] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][450] ([i915#3555] / [i915#5190]) +2 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          [SKIP][451] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][452] ([i915#5190])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [FAIL][453] ([i915#6880]) -> [SKIP][454] ([i915#5354])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][455] ([i915#8708]) -> [SKIP][456] ([i915#4423] / [i915#8708])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          [SKIP][457] ([i915#5354]) -> [SKIP][458] +9 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          [SKIP][459] ([i915#10055]) -> [SKIP][460] ([i915#5354])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][461] ([i915#5354]) -> [SKIP][462] ([i915#3458]) +11 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [SKIP][463] ([i915#3458]) -> [SKIP][464] +2 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt:
    - shard-dg1:          [SKIP][465] -> [SKIP][466] ([i915#4423])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][467] ([i915#8708]) -> [SKIP][468] ([i915#5354]) +16 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][469] ([i915#5354]) -> [SKIP][470] ([i915#8708]) +13 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][471] ([i915#10433] / [i915#3458]) -> [SKIP][472] ([i915#3458]) +1 other test skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][473] ([i915#3458]) -> [SKIP][474] ([i915#10433] / [i915#3458])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][475] ([i915#8708]) -> [SKIP][476] +2 other tests skip
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][477] ([i915#3458]) -> [SKIP][478] ([i915#5354]) +10 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          [SKIP][479] ([i915#9197]) -> [SKIP][480] ([i915#3555] / [i915#8228])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_hdr@invalid-hdr.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][481] ([i915#3555] / [i915#8228]) -> [SKIP][482] ([i915#9197])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          [SKIP][483] ([i915#9197]) -> [SKIP][484] ([i915#8821])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          [SKIP][485] ([i915#9197]) -> [SKIP][486] ([i915#3555] / [i915#8821])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/index.html

--===============4239719560732409395==
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
<tr><td><b>Series:</b></td><td>Revert &quot;perf/core: Only copy-to-user af=
ter completely unlocking all locks, v3.&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/139903/">https://patchwork.freedesktop.org/series/139903/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139903v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15518_full -&gt; Patchwork_139903v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139903v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_139903v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
139903v1_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15518/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15518/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15518/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-14/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-14/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15518/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-15/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
518/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15518/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-16/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518=
/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15518/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-17/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/sh=
ard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15518/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-18/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard=
-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15518/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg1-19/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15518/shard-dg=
1-19/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg1-15/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/s=
hard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-19/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/s=
hard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/s=
hard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg1-16/boot.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/s=
hard-dg1-16/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_balancer@nop.htm=
l">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@i915_selftest@perf.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg=
2-11/igt@i915_selftest@perf.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-edp-1-4:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-2/igt@kms_async_flips@async-flip-with-page-flip-ev=
ents@pipe-b-edp-1-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-1/igt@kms_async_flips@async=
-flip-with-page-flip-events@pipe-b-edp-1-4.html">ABORT</a> +1 other test ab=
ort</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend=
.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_selftest@drm_framebuffer@drm=
_test_framebuffer_create.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-open:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@perf_pmu@invalid-open.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard=
-dg2-11/igt@perf_pmu@invalid-open.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@device_reset@unbind-cold-reset-rebind.html">=
SKIP</a> ([i915#11078]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-r=
ebind.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@drm_fdinfo@most-busy-check-all.html">SKIP</a=
> ([i915#8414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139903v1/shard-dg2-11/igt@drm_fdinfo@most-busy-check-all.html">SKI=
P</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-19/igt@kms_pipe_crc_basic@suspend-read-crc.html">IN=
COMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-dg1-19/igt@kms_pipe_crc_basic@suspend-read-crc.html">A=
BORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([=
i915#6524] / [i915#6805]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.htm=
l">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-=
exceed-fully-sf.html">SKIP</a> ([i915#12316]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-8/igt@kms_psr2_s=
f@pr-cursor-plane-move-continuous-exceed-fully-sf.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_free.html">ABORT</a> ([i915#12231]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_selftest@drm_f=
ramebuffer@drm_test_framebuffer_free.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139903v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.h=
tml">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13990=
3v1/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#1=
2027])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-5/igt@gem_ctx_persistence@hostile.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/=
shard-rkl-3/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.h=
tml">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_capture@capture.=
html">FAIL</a> ([i915#11965]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1=
/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_exec_fair@basic-none=
-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-s=
hare@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu.=
html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@gem_exec_reloc@basic-cpu-=
gtt-active.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
gtt-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_exec_schedule@u-fairslice-all.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9903v1/shard-dg2-11/igt@gem_exec_schedule@u-fairslice-all.html">SKIP</a> ([=
i915#2575]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9903v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (=
[i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@gem_lmem_evict@dontneed-e=
vict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@gem_lmem_swapping@parallel-=
multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_media_vme.html">SKIP=
</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gem_mmap@bad-size.html">SK=
IP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@gem_mmap_gtt@basic-wc.htm=
l">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-4/igt@gem_mmap_gtt@fault-concur=
rent-x.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@gem_mmap_wc@copy.html">SK=
IP</a> ([i915#4083])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gem_mmap_wc@copy.html">SK=
IP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gem_userptr_blits@unsync=
-overlap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@gen9_exec_parse@batch-ze=
ro-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@gen9_exec_parse@bb-start-=
far.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@i915_module_load@load.ht=
ml">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk3/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139903v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_139903v1/shard-dg1-13/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139903v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@i915_power@sanity.html">SK=
IP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-7/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_atomic_transition@plane-all-transition-fe=
ncing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139903v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-tran=
sition-fencing.html">SKIP</a> ([i915#9197]) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-=
rotate-180.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +86 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#104=
34] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-=
tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_ccs@random-ccs-data-=
4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +63 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +71 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_cdclk@plane-scaling.ht=
ml">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_chamelium_frames@dp-fr=
ame-dump.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-=
storm.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@kms_content_protection@lega=
cy.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_content_protection@mei=
-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_content_protection@ue=
vent@pipe-a-dp-3.html">FAIL</a> ([i915#1339] / [i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_cursor_crc@cursor-of=
fscreen-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-=
vs-flipb-varying-size.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139903v1/shard-glk9/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139903v1/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-varyin=
g-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> ([i915#8812])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_dsc@dsc-with-output-=
formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-fenc=
es-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_flip@2x-nonexisting-f=
b-interruptible.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_139903v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ab-hdm=
i-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-4/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
03v1/shard-dg2-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> ([i915=
#10826])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-6/igt@kms_flip@basic-flip-vs-wf_=
vblank@a-hdmi-a3.html">FAIL</a> ([i915#10826])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-tglu-10/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139903v1/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">FA=
IL</a> ([i915#2122]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-snb1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.htm=
l">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@d-edp1=
.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-9/igt@kms_flip@flip-vs-suspend@=
c-hdmi-a1.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-15/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-dg1-16/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.h=
tml">FAIL</a> ([i915#2122]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_flip_scaled_c=
rc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#=
3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i=
915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915=
#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur=
-indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139903v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-=
primscrn-spr-indfb-onoff.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1825]) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-p=
write.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb1010=
10-draw-pwrite.html">SKIP</a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139903v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</a=
> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +14 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1825]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_hdr@bpc-switch.html">=
SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903=
v1/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555=
] / [i915#8228])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.h=
tml">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping=
-clamping-pixel-formats.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_plane_scaling=
@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> ([i915#25=
75] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-mo=
difiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20=
x20-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-mo=
difiers@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@plane-ups=
cale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-a.html">SKIP</a> ([i915#12247]) +5 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#1224=
7]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-upscale-factor-0-25.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@pla=
nes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / =
[i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-upscale-factor-0-25@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scal=
ing@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html">SKIP</a> (=
[i915#12247]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953=
] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_plane_scaling@p=
lanes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#1224=
7] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-tg=
lu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903=
v1/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#354=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.h=
tml">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_prime@basic-modeset-=
hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_psr2_sf@psr2-cursor-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-glk5/igt@kms_psr2_sf@psr2-plane-move=
-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-10/igt@kms_psr@fbc-pr-cursor-bl=
t.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-primary-=
blt@edp-1.html">SKIP</a> ([i915#9688]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@kms_psr@pr-no-drrs.html">=
SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_psr@psr-cursor-render.=
html">SKIP</a> ([i915#1072] / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_psr@psr-sprite-render.=
html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-19/igt@kms_rotation_crc@primary-rotation-270.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139903v1/shard-dg1-15/igt@kms_rotation_crc@primary-rotation-270.html">DME=
SG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-0.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#5289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_setmode@basic.html">F=
AIL</a> ([i915#5465]) +2 other tests fail</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-rkl-=
5/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-5/igt@kms_setmode@basic@pipe-b-h=
dmi-a-2.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@kms_vrr@flip-basic.html">=
SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt=
@perf@polling.html">FAIL</a> ([i915#10538]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> ([i915#3708])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-2/igt@prime_vgem@basic-read.html=
">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-tglu-6/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-18/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> ([=
i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg2-3/igt@drm_read@short-buffer-block.html">PASS</a> +3=
3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
[i915#7297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-dg2-10/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-=
dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-7/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#956=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
903v1/shard-mtlp-4/igt@gem_ctx_freq@sysfs.html">PASS</a> +1 other test pass=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-tglu-10/igt@gem_ctx_persistence@hostile.html">FAIL</a> =
([i915#11980]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139903v1/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-17/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5=
784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
39903v1/shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_139903v1/shard-rkl-4/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-18/igt@kms_cursor_legacy@single-move@pipe-a.html">I=
NCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg1-18/igt@kms_cursor_legacy@single-move@pipe-a.html"=
>PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/=
shard-dg2-11/igt@kms_fb_coherency@memset-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a>=
 ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139903v1/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</=
a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139903v1/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.ht=
ml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_139903v1/shard-rkl-3/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_flip@bo-too-big.html">SKIP</a> ([i915#535=
4]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
903v1/shard-dg2-11/igt@kms_flip@bo-too-big.html">PASS</a> +10 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupt=
ible.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_flip@flip-vs-absolu=
te-wf_vblank-interruptible.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_139903v1/shard-tglu-4/igt@kms_flip@flip-vs-abso=
lute-wf_vblank-interruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.h=
tml">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139903v1/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf=
_vblank@a-edp1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.=
html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139903v1/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_=
vblank@a-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a=
4.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_flip@flip-vs-absolute=
-wf_vblank@c-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-tglu-5/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-tglu-9/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>=
 ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139903v1/shard-dg2-3/igt@kms_invalid_mode@bad-vsync-end.html">PASS<=
/a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_139903v1/shard-dg2-4/igt@kms_pipe_crc_basic@suspend-read-crc.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> =
([i915#8825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg2-11/igt@kms_plane@plane-position-hole.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-a=
lpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903=
v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-m=
odifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe=
-b:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@=
kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html=
">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pi=
xel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@km=
s_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/sh=
ard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2=
-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.=
html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/sh=
ard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_plane_scaling@pl=
anes-upscale-factor-0-25@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9903v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +4 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139903v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PA=
SS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3.html">INCO=
MPLETE</a> ([i915#12353]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_ctx_isolation@preservation=
-s3.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@gem_eio@kms.html">FAIL</a> ([i915#5784]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/sh=
ard-dg2-2/igt@gem_eio@kms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_exec_balancer@invalid-bonds.html">SKIP</=
a> ([i915#4036]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139903v1/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html">S=
KIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> =
([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a=
> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i9=
15#4860]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139903v1/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915=
#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@ptrace:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_mmap_gtt@ptrace.html">SKIP</a> ([i915#40=
77]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9903v1/shard-dg2-11/igt@gem_mmap_gtt@ptrace.html">SKIP</a> ([i915#2575]) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> =
([i915#4083]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a=
> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i9=
15#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139903v1/shard-dg2-11/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i915=
#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.h=
tml">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@gem_render_cop=
y@mixed-tiled-to-y-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gem_userptr_blits@coherency-sync.html">SKIP<=
/a> ([i915#3297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139903v1/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html"=
>SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> =
([i915#2856]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-out.html">SKIP</a=
> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#9697]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-mtlp-3/igt@i915_modul=
e_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#98=
20])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-10/igt@i915_pipe_stress@stress-xrgb8888=
-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">ABORT</=
a> ([i915#12061] / [i915#12216]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139903v1/shard-mtlp-5/igt@i915_selftest@live@work=
arounds.html">ABORT</a> ([i915#12216]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-glk1/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915=
#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_139903v1/shard-glk3/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#198=
2] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-leg=
acy.html">SKIP</a> ([i915#4212]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_addfb_basic@addfb25=
-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/ig=
t@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panel=
s.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
9903v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([=
i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP<=
/a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html=
">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt=
@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> =
([i915#4538] / [i915#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP=
</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bp=
p-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i9=
15#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html">=
SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rota=
te-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/i=
gt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</=
a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-c=
c.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_ccs@bad=
-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +10 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-=
lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.h=
tml">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_ccs@bad-r=
otation-90-4-tiled-mtl-mc-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.=
html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-=
tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i9=
15#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139903v1/shard-dg2-3/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915=
#11616] / [i915#7213]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html"=
>SKIP</a> ([i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-mu=
ltiple.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_content_protection@content-type-change.h=
tml">SKIP</a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_content_protection@conte=
nt-type-change.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT<=
/a> ([i915#7173]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139903v1/shard-dg2-11/igt@kms_content_protection@legacy.html">SK=
IP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_content_protection@type1.h=
tml">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-3/igt@kms_content_protection@uevent.html">SKIP</a> =
([i915#7118] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_content_protection@ueven=
t.html">FAIL</a> ([i915#1339] / [i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html">S=
KIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x=
32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">=
SKIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-51=
2x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atom=
ic.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_cursor_legacy@2x-lon=
g-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.htm=
l">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-atomic.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-s=
ize.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_cursor_legacy@curso=
rb-vs-flipb-varying-size.html">SKIP</a> ([i915#2575]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 ([i915#9833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_139903v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP<=
/a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_139903v1/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</=
a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</=
a> ([i915#8812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_139903v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">S=
KIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1399=
03v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_feature_discovery@display-3x.html">SKIP<=
/a> ([i915#1839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_139903v1/shard-dg2-11/igt@kms_feature_discovery@display-3x.html"=
>SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139903v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a=
> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i91=
5#8381]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_139903v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#2=
575])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg=
2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling=
.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903=
v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-down=
scaling.html">SKIP</a> ([i915#3555] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bp=
p-ytilercccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#=
5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
139903v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-yti=
lercccs-downscaling.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mul=
tidraw.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_track=
ing@fbc-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri=
-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_fr=
ontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (=
[i915#4423] / [i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-mu=
ltidraw.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuffer_tra=
cking@fbc-2p-pri-indfb-multidraw.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">S=
KIP</a> ([i915#10055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tilin=
g-y.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-shrfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-10/igt@kms_front=
buffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915=
#3458]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
spr-indfb-move.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_frontbuf=
fer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
indfb-msflip-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_139903v1/shard-dg1-15/igt@kms_frontbuffer_tracking=
@fbcpsr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>=
 ([i915#5354]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-3/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>=
 ([i915#8708]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-8/ig=
t@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a=
> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-4/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#10433] / [i915=
#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr=
-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139903v1/shard-dg2-11/igt@kms_fr=
ontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> +=
2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_frontbuffer_tracking=
@psr-indfb-scaledprimary.html">SKIP</a> ([i915#5354]) +10 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#919=
7]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139=
903v1/shard-dg2-10/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i=
915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_139903v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-siz=
es.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html">SKIP</a> ([i9=
15#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_139903v1/shard-dg2-3/igt@kms_plane_lowres@tiling-y.html">SKIP</a> ([i915=
#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15518/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i=
915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_139903v1/shard-dg2-10/igt@kms">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4239719560732409395==--
