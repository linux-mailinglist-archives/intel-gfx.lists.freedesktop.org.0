Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC25E81808C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 05:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0BC10E177;
	Tue, 19 Dec 2023 04:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EEBEE10E172;
 Tue, 19 Dec 2023 04:29:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4BD0A47E9;
 Tue, 19 Dec 2023 04:29:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7958268391522563818=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Early_Transport_for_Panel_R?=
 =?utf-8?q?eplay_and_PSR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 19 Dec 2023 04:29:18 -0000
Message-ID: <170296015887.17580.1346728317731981424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231218175004.52875-1-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
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

--===============7958268391522563818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Early Transport for Panel Replay and PSR
URL   : https://patchwork.freedesktop.org/series/127918/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14040_full -> Patchwork_127918v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127918v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127918v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/index.html

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127918v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk5/igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-tglu:         NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@sriov_basic@enable-vfs-autoprobe-off.html
    - shard-mtlp:         NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg2:          NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
Known issues
------------

  Here are the changes found in Patchwork_127918v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30]) ([i915#8293]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk9/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#8411])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#7701])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#7701])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8414]) +10 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][60] -> [FAIL][61] ([i915#7742])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8414])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3281]) +3 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][64] -> [INCOMPLETE][65] ([i915#7297])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#7697])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#6335])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8562])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][69] -> [FAIL][70] ([i915#6268])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglu:         [PASS][71] -> [FAIL][72] ([i915#6268])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#8555]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#8555])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#280])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4812]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4036])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4525])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-glk:          NOTRUN -> [FAIL][79] ([i915#9606])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@gem_exec_capture@many-4k-incremental.html
    - shard-dg2:          NOTRUN -> [FAIL][80] ([i915#9606])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [PASS][81] -> [TIMEOUT][82] ([i915#3778] / [i915#7016])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4473] / [i915#4771])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3539])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3539] / [i915#4852]) +5 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#7697]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#5107])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([fdo#112283])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#3281]) +4 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3281]) +9 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4537] / [i915#4812]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#7276])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4860]) +4 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4613])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#4613]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#4613]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#8289])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4083])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic-short:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4077]) +4 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_mmap_gtt@basic-short.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4077]) +16 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4083]) +8 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3282]) +9 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4270]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4270]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#8428]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4079])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4079]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3282])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4885])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][112] ([i915#5889])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#3297]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3297] / [i915#4880])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3297])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#3297])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#109289]) +7 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gen3_render_tiledx_blits.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([fdo#109289])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-large:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#2856])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#2527])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#2856]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][122] -> [ABORT][123] ([i915#9820])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][124] -> [INCOMPLETE][125] ([i915#9200] / [i915#9849])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         NOTRUN -> [WARN][126] ([i915#2681]) +3 other tests warn
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8925]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#109303])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([fdo#109302])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@i915_query@query-topology-unsupported.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5723])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#4212]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4212]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#8709]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#8709]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#8709]) +11 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][136] ([i915#8247]) +3 other tests fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_async_flips@crc@pipe-c-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#1769] / [i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#5286]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][139] ([fdo#109271]) +57 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([fdo#111615] / [i915#5286]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#111614]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([fdo#111614])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([fdo#111614]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#111614] / [i915#3638])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][145] -> [FAIL][146] ([i915#3743]) +1 other test fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#5190]) +16 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([fdo#111615]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([fdo#111615])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4538] / [i915#5190]) +8 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([fdo#110723]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#2705])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#5354] / [i915#6095]) +10 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#5354] / [i915#6095]) +13 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#5354]) +10 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_ccs@pipe-d-bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-4-tiled-dg2-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#5354] / [i915#6095]) +4 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primary-basic-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#5354]) +106 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4087] / [i915#7213]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#3742])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#4087]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#111827])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([fdo#111827])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([fdo#111827]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#7828])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_chamelium_edid@dp-edid-resolution-list.html
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#7828]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#7828]) +13 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#7828]) +2 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3299])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6944])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_content_protection@lic.html
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#7118]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#9424])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][172] ([i915#7173]) +1 other test timeout
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#8814])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#3359])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3359]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#3555] / [i915#8814])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-max-size.html
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3555])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#3555])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#4103])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([fdo#111825]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#9809]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#4103] / [i915#4213])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#4103])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#4213])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#9833])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#9723])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-19/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3555]) +12 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#8588])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3804])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3840])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#4854])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#1839])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#1839])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#658])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([fdo#111767] / [i915#3637])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#8381])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([fdo#111767] / [fdo#111825])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3637]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([fdo#109274]) +11 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][201] -> [INCOMPLETE][202] ([i915#4839])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#2672]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#2587] / [i915#2672])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#2672]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#2672]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [PASS][207] -> [SKIP][208] ([fdo#109271]) +6 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3458]) +28 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([fdo#111825] / [i915#1825]) +13 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#8708]) +26 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9653])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([fdo#110189]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#8708]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([fdo#109280]) +4 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#1825]) +15 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3023]) +10 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3555] / [i915#8228])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8228]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3582]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_lowres@tiling-x@pipe-a-edp-1.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#6953])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#9423]) +3 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#9423]) +3 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#5176]) +5 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#5176] / [i915#9423]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#9423]) +11 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#5235]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#5235]) +3 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#3555] / [i915#5235])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#5235]) +3 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#5235]) +5 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#5235]) +15 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#8430])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][234] -> [SKIP][235] ([i915#9519])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9519])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([fdo#109293] / [fdo#109506]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#6524] / [i915#6805])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#6524])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_prime@d3hot.html
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#6524])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#9683])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([fdo#111068] / [i915#9683])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#9683]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#4235]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#4235] / [i915#5190]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#4235])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#8623])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [PASS][248] -> [FAIL][249] ([i915#9196])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][250] -> [FAIL][251] ([i915#9196])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#3555] / [i915#8808])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_vrr@flip-dpms.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][253] ([i915#4349]) +3 other tests fail
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([fdo#112283])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][255] ([i915#5793])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3708] / [i915#4077])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([fdo#109295] / [i915#3291] / [i915#3708])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#3708])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][259] ([i915#9779])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-glk:          NOTRUN -> [FAIL][260] ([i915#9779])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([fdo#109315]) +3 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-extension:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([fdo#109315] / [i915#2575]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@v3d/v3d_submit_csd@bad-extension.html
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#2575]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-extension.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#2575]) +17 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_perfmon@create-perfmon-0:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#7711]) +2 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@vc4/vc4_perfmon@create-perfmon-0.html

  * igt@vc4/vc4_perfmon@create-perfmon-invalid-events:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#2575])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html

  * igt@vc4/vc4_perfmon@get-values-invalid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#7711]) +9 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@vc4/vc4_perfmon@get-values-invalid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#7711]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][269] ([i915#7742]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_busy@close-race:
    - shard-mtlp:         [ABORT][271] -> [PASS][272]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-mtlp-7/igt@gem_busy@close-race.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@gem_busy@close-race.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][273] ([i915#2842]) -> [PASS][274] +1 other test pass
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][275] ([i915#2842]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][277] -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][279] ([i915#4936] / [i915#5493]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][281] ([i915#5566]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [INCOMPLETE][283] ([i915#9200]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][285] ([i915#9820]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][287] ([i915#3743]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-snb:          [SKIP][289] ([fdo#109271]) -> [PASS][290] +9 other tests pass
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][291] ([i915#2346]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [DMESG-WARN][293] ([i915#2017]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][295] ([i915#9295]) -> [PASS][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][297] ([i915#9519]) -> [PASS][298] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][299] ([i915#9519]) -> [PASS][300] +2 other tests pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          [ABORT][301] ([i915#8875]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-3/igt@kms_rotation_crc@sprite-rotation-270.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][303] ([i915#9196]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][305] ([i915#7484]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][307] ([i915#4349]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@busy-idle-check-all@vecs0:
    - shard-dg1:          [FAIL][309] ([i915#4349]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg1-19/igt@perf_pmu@busy-idle-check-all@vecs0.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-15/igt@perf_pmu@busy-idle-check-all@vecs0.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][311] ([i915#4349]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][313] ([i915#9820] / [i915#9849]) -> [ABORT][314] ([i915#9820])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [WARN][315] ([i915#7356]) -> [INCOMPLETE][316] ([i915#9820] / [i915#9849])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_content_protection@content-type-change:
    - shard-snb:          [INCOMPLETE][317] ([i915#8816]) -> [SKIP][318] ([fdo#109271])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-snb7/igt@kms_content_protection@content-type-change.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-snb6/igt@kms_content_protection@content-type-change.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][319] ([i915#9295]) -> [SKIP][320] ([i915#3361])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9653]: https://gitlab.freedesktop.org/drm/intel/issues/9653
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906


Build changes
-------------

  * Linux: CI_DRM_14040 -> Patchwork_127918v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14040: 2e8cd7e91ea35587d72fb9631a862a9e9b8d30b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127918v1: 2e8cd7e91ea35587d72fb9631a862a9e9b8d30b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/index.html

--===============7958268391522563818==
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
<tr><td><b>Series:</b></td><td>Early Transport for Panel Replay and PSR</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127918/">https://patchwork.freedesktop.org/series/127918/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127918v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14040_full -&gt; Patchwork_127918v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127918v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127918v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v=
1/index.html</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127918v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-glk9/igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127918v1/shard-glk5/igt@kms_vblank@wait-idle-hang@pipe-c-hdmi-a-2.html"=
>INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a></p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127918v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14040/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14040/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14040/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14040/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14040/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14040/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14040/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4040/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14040/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14040/shar=
d-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14040/shard-glk1/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127918v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-g=
lk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127918v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v=
1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127918v1/shard-glk5/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127918v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_127918v1/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127918v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127918v1/shard-glk8/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127918v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127918v1/shard-glk1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127918v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127918v1/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-glk3/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@drm_fdinfo@busy-idle-check=
-all@ccs3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27918v1/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742=
</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-i=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@gem_ccs@suspend-resume@=
linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v=
1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918=
v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8555">i915#8555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
0">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-keep-in-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@gem_exec_capture@many-4k-inc=
remental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9606">i915#9606</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_exec_capture@many-4k-in=
cremental.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9606">i915#9606</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918=
v1/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016">i915#7016<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_exec_fair@basic-deadl=
ine.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1279=
18v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_exec_reloc@basic-conc=
urrent0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_mmap@basic.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i915=
#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-short:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_mmap_gtt@basic-short.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_mmap_gtt@big-copy-odd.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_mmap_wc@write-prefault=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4083">i915#4083</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3282">i915#3282</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-=
ccs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_spin_batch@spin-all-ne=
w.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5889">i915#5889</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@gen3_render_tiledx_blits.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2856">i915#2856</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127918v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injectio=
n.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9820">i915#9820</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-snb5/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127918v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9200">i915#9200</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9849">i915#9849</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-bcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2681">i915#2681</a>) +3 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8925">i915#8925</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@i915_query@query-topology=
-known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_async_flips@crc@pipe-c=
-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +57 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127918v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5190">i915#5190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_big_joiner@2x-modeset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +10 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_ccs@pipe-d-bad-aux-st=
ride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +13 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primar=
y-basic-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +106 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_chamelium_color@ctm-0-=
25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_chamelium_color@ctm-l=
imited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_chamelium_color@gamma.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_chamelium_edid@dp-edid=
-resolution-list.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid=
-resolution-list.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7828">i915#7828</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid=
-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7828">i915#7828</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6944">i915#6944</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_content_protection@mei=
-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>)</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_cursor_crc@cursor-slid=
ing-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4213">i915#4213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg1-19/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-=
a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127918v1/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b=
-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127918v1/shard-snb6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +28 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +26 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
plane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9653">i915#9653</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other test=
 skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test s=
kip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +15 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3023">i915#3023</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_lowres@tiling-x=
@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-10/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-2/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-2/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdm=
i-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg1-12/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-3/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27918v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_pm_rpm@modeset-pc8-res=
idency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109506">fdo#109506</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i915=
#6524</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i915=
#6524</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9683">i915#9683</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127918v1/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127918v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@kms_vrr@flip-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4349">i915#4349</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/579=
3">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-11/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@syncobj_wait@invalid-wait-z=
ero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9779">i915#9779</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-glk2/igt@syncobj_wait@invalid-wait-ze=
ro-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9779">i915#9779</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-1/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109315">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-extension:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@v3d/v3d_submit_csd@bad-ext=
ension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127918v1/shard-mtlp-7/igt@v3d/v3d_submit_csd@bad-ext=
ension.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-5/igt@v3d/v3d_submit_csd@job-per=
fmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-mtlp-8/igt@vc4/vc4_perfmon@create-pe=
rfmon-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-invalid-events:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@vc4/vc4_perfmon@create-pe=
rfmon-invalid-events.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-dg2-1/igt@vc4/vc4_perfmon@get-values=
-invalid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127918v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@mark-=
purgeable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127918v1/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-mtlp-7/igt@gem_busy@close-race.html">ABORT</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-=
mtlp-2/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27918v1/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127918v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127918v1/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127918v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-glk3/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127918v1/shard-glk4/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9200">i915#9200</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127918v1/shard-tglu-2/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127918v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault=
-injection.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/shard-tglu-8/igt@kms_big_fb@y=
-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-snb4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127918v1/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-lega=
cy.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127918v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127918v1/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all=
-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/=
shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i9=
15#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127918v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127918v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-3/igt@kms_rotation_crc@sprite-rotation-270.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8875">i=
915#8875</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127918v1/shard-rkl-7/igt@kms_rotation_crc@sprite-rotation-270.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi=
-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127918v1/shard-snb4/igt@kms_universal_plane@cursor-fb-le=
ak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
918v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127918v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-dg1-19/igt@perf_pmu@busy-idle-check-all@vecs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i91=
5#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127918v1/shard-dg1-15/igt@perf_pmu@busy-idle-check-all@vecs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">=
i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127918v1/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127918v1/shard-dg1-13/igt@i915_module_load@reload=
-with-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9820">i915#9820</a>)</p>
</li>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14040/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.=
html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7356">i915#7356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127918v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-i=
njection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9849">i915#9849</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-snb7/igt@kms_content_protection@content-type-change.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8816">i915#8816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127918v1/shard-snb6/igt@kms_content_protection@content-typ=
e-change.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14040/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127918v1/sha=
rd-rkl-3/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14040 -&gt; Patchwork_127918v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14040: 2e8cd7e91ea35587d72fb9631a862a9e9b8d30b2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127918v1: 2e8cd7e91ea35587d72fb9631a862a9e9b8d30b2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7958268391522563818==--
