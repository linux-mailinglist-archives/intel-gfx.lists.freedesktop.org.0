Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D23F806302
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 00:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF72B10E644;
	Tue,  5 Dec 2023 23:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1164E10E647;
 Tue,  5 Dec 2023 23:35:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07628AADF1;
 Tue,  5 Dec 2023 23:35:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8127919148202437973=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 05 Dec 2023 23:35:37 -0000
Message-ID: <170181933701.24285.2507033102913771557@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231205134143.2427661-1-jani.nikula@intel.com>
In-Reply-To: <20231205134143.2427661-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_use_intel=5Fconnector_i?=
 =?utf-8?q?n_intel=5Fconnector=5Fdebugfs=5Fadd=28=29?=
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

--===============8127919148202437973==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: use intel_connector in intel_connector_debugfs_add()
URL   : https://patchwork.freedesktop.org/series/127362/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13982_full -> Patchwork_127362v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127362v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127362v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127362v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@random-engines@lmem0:
    - shard-dg1:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@gem_lmem_swapping@random-engines@lmem0.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [INCOMPLETE][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [INCOMPLETE][6] ([i915#9200]) -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_content_protection@atomic:
    - shard-snb:          [SKIP][8] ([fdo#109271]) -> [INCOMPLETE][9] +1 other test incomplete
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb6/igt@kms_content_protection@atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_content_protection@atomic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf-dmg-area}:
    - shard-tglu:         NOTRUN -> [SKIP][10] +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf-dmg-area.html

  * {igt@kms_psr@pr-cursor-mmap-cpu}:
    - shard-dg2:          NOTRUN -> [SKIP][11] +7 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_psr@pr-cursor-mmap-cpu.html

  * {igt@kms_psr@pr-primary-mmap-cpu}:
    - shard-mtlp:         NOTRUN -> [SKIP][12] +5 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_psr@pr-primary-mmap-cpu.html

  * {igt@kms_psr@psr2-primary-mmap-gtt}:
    - shard-rkl:          NOTRUN -> [SKIP][13] +6 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_psr@psr2-primary-mmap-gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_127362v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62]) ([i915#8293])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk9/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk5/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#9318])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#7701])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8414]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3281]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#9323])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#8562])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         NOTRUN -> [FAIL][69] ([i915#8758])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][70] -> [FAIL][71] ([i915#6268])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8555])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#280])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][74] -> [ABORT][75] ([i915#7975] / [i915#8213])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg1-19/igt@gem_eio@hibernate.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-14/igt@gem_eio@hibernate.html
    - shard-dg2:          NOTRUN -> [ABORT][76] ([i915#7975] / [i915#8213])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][77] ([i915#7975] / [i915#8213])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4525])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4812]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#6344])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][81] -> [FAIL][82] ([i915#2846])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4473])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][84] -> [FAIL][85] ([i915#2842]) +4 other tests fail
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3539] / [i915#4852])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#112283]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-range:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3281]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#3281]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#7276])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4537] / [i915#4812])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4860])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#4860])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#4613]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#3282]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#284])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4077]) +7 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#4077]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([fdo#111656])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4083])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3282]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3282]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#4270])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4270]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#8428]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4079])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([fdo#109312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4079])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4879])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([fdo#110542])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#3297])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#3297])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([fdo#109289])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([fdo#109289])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#2527] / [i915#2856])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#2856])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4881])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-glk:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#6227])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-no-display:
    - shard-glk:          NOTRUN -> [ABORT][120] ([i915#8668])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          NOTRUN -> [INCOMPLETE][121] ([i915#9200])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-mtlp:         [PASS][122] -> [ABORT][123] ([i915#9262])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-1/igt@i915_pm_rpm@system-suspend-devices.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-4/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([fdo#109303])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-mtlp:         [PASS][125] -> [DMESG-FAIL][126] ([i915#9780])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-3/igt@i915_selftest@live@gem_contexts.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-7/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-tglu:         NOTRUN -> [ABORT][127] ([i915#8213])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#8709]) +11 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#8247]) +3 other tests fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-b-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][130] ([i915#8247]) +3 other tests fail
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#9531])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#1769] / [i915#3555])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#1769])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([fdo#111614]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#5286]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][136] -> [FAIL][137] ([i915#3743]) +2 other tests fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#5190]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([fdo#111615]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([fdo#110723])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4538] / [i915#5190]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([fdo#111615])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#2705])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_joiner@2x-modeset.html
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#2705])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#5354]) +23 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#5354] / [i915#6095]) +7 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-dg2-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#5354] / [i915#6095]) +5 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#5354] / [i915#6095]) +9 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][149] ([fdo#109271]) +107 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#5354] / [i915#6095])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#5354]) +10 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#7828]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#7828])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#111827])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@gamma:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([fdo#111827])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#7828]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#7828]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#7118])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][159] ([i915#7173])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#3555])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3555]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3359])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3359])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
    - shard-snb:          [PASS][165] -> [SKIP][166] ([fdo#109271] / [fdo#111767])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#4103])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#9723])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#3804])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8812])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#1839])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_feature_discovery@display-2x.html
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#1839])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([fdo#109274]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([fdo#111825]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([fdo#109274] / [i915#3637])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#3637]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-mtlp:         [PASS][177] -> [FAIL][178] ([i915#79])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#8381])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#2672]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2672])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#8708]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][183] -> [SKIP][184] ([fdo#109271]) +5 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-dg2:          [PASS][185] -> [FAIL][186] ([i915#6880])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#3023]) +7 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([fdo#109280]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([fdo#111825])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#1825]) +7 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#8708]) +5 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#9653])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#3458]) +7 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([fdo#110189])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([fdo#111825] / [i915#1825]) +11 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3555] / [i915#8228])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html

  * igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#9457]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][198] ([fdo#109271])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][199] ([i915#4573]) +1 other test fail
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#8806])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#9423]) +11 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#9423]) +11 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#9423]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#5176] / [i915#9423]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#5235]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#5235]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#5235]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9340])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#9519])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9683])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9683])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_psr2_su@page_flip-p010.html
    - shard-rkl:          NOTRUN -> [SKIP][213] ([fdo#111068] / [i915#9683])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#4235])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#8623])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][216] -> [FAIL][217] ([i915#9196])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#3555] / [i915#8808])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3555]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-5/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][220] ([fdo#109271] / [i915#2437])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2437])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#2434])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#8516])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_udl:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([fdo#109291])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@prime_udl.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-glk:          NOTRUN -> [FAIL][225] ([i915#9779])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#2575]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([fdo#109315] / [i915#2575])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([fdo#109315]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@v3d/v3d_wait_bo@map-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#2575]) +2 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@v3d/v3d_wait_bo@map-bo-0ns.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#7711]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#7711]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  * igt@vc4/vc4_wait_bo@used-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#7711]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@vc4/vc4_wait_bo@used-bo.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#2575])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][234] ([i915#7742]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][236] ([i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-10/igt@gem_eio@hibernate.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][238] ([i915#2842]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][240] ([i915#2842]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [INCOMPLETE][242] ([i915#5566]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-rkl:          [INCOMPLETE][244] -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-4/igt@i915_selftest@live@hangcheck.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:
    - shard-glk:          [INCOMPLETE][246] -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][248] ([i915#5138]) -> [PASS][249] +1 other test pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][250] ([i915#3743]) -> [PASS][251] +1 other test pass
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          [SKIP][252] ([fdo#109271] / [fdo#111767]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
    - shard-snb:          [DMESG-WARN][254] -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [FAIL][256] ([i915#6880]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-snb:          [SKIP][258] ([fdo#109271]) -> [PASS][259] +14 other tests pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][260] ([i915#9519]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][262] ([i915#9196]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          [FAIL][264] ([i915#9196]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][266] ([i915#9196]) -> [PASS][267] +2 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg1:          [ABORT][268] -> [ABORT][269] ([i915#4423])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [INCOMPLETE][270] ([i915#9200]) -> [ABORT][271] ([i915#8668])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [DMESG-FAIL][272] ([i915#8561]) -> [FAIL][273] ([i915#8247])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-mtlp-3/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-snb:          [INCOMPLETE][274] -> [SKIP][275] ([fdo#109271])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-snb7/igt@kms_content_protection@atomic-dpms.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][276] ([i915#7118]) -> [SKIP][277] ([i915#7118] / [i915#7162])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-dg2-2/igt@kms_content_protection@type1.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][278] ([fdo#110189] / [i915#3955]) -> [SKIP][279] ([i915#3955])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9457]: https://gitlab.freedesktop.org/drm/intel/issues/9457
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9653]: https://gitlab.freedesktop.org/drm/intel/issues/9653
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9780]: https://gitlab.freedesktop.org/drm/intel/issues/9780


Build changes
-------------

  * Linux: CI_DRM_13982 -> Patchwork_127362v1

  CI-20190529: 20190529
  CI_DRM_13982: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7620: 6714b814e7f82743abf45c33361fbe057a22880a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127362v1: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/index.html

--===============8127919148202437973==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: use int=
el_connector in intel_connector_debugfs_add()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127362/">https://patchwork.freedesktop.org/series/127362/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127362v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13982_full -&gt; Patchwork_127362v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127362v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127362v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127362v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@gem_lmem_swapping@random-=
engines@lmem0.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-1.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13982/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127362v1/shard-rkl-1/igt@i915_module_load@reload-with-fault-in=
jection.html">ABORT</a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13982/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9200">i915#9200</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127362v1/shard-tglu-6/igt@i915_module_load@reload-with-=
fault-injection.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb6/igt@kms_content_protection@atomic.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127362v1/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE</a> =
+1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf-dmg-area}:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_psr2_sf@fbc-overlay-p=
lane-update-continuous-sf-dmg-area.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@pr-cursor-mmap-cpu}:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_psr@pr-cursor-mmap-cpu=
.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@pr-primary-mmap-cpu}:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_psr@pr-primary-mmap-c=
pu.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr2-primary-mmap-gtt}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_psr@psr2-primary-mmap-=
gtt.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127362v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13982/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13982/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13982/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13982/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13982/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13982/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3982/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13982/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13982/shar=
d-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_127362v1/shard-glk9/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127362v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-g=
lk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127362v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v=
1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127362v1/shard-glk6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127362v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_127362v1/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127362v1/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127362v1/shard-glk4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127362v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127362v1/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127362v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127362v1/shard-glk1/boot.html">PASS</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_create@hog-create@sme=
m0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8758">i915#8758</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362=
v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280=
">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13982/shard-dg1-19/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg1-=
14/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_eio@hibernate.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i9=
15#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82=
13">i915#8213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v1=
/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127362v=
1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +4 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-r=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_exec_reloc@basic-range=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_exec_reloc@basic-writ=
e-cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_exec_schedule@semaphore=
-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7276">i915#7276</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_madvise@dontneed-befo=
re-exec.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_mmap_gtt@basic-small-=
bo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-small-=
bo-tiledx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
56">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_mmap_wc@write-gtt-read=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_partial_pwrite_pread@w=
rite-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_render_copy@mixed-til=
ed-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
79">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@i915_fb_tiling.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915=
#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk2/igt@i915_module_load@reload-no-=
display.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@i915_module_load@reload-wit=
h-fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9200">i915#9200</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-1/igt@i915_pm_rpm@system-suspend-devices.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27362v1/shard-mtlp-4/igt@i915_pm_rpm@system-suspend-devices.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#926=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-3/igt@i915_selftest@live@gem_contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1273=
62v1/shard-mtlp-7/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9780">i915#9780=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@i915_suspend@basic-s2idle=
-without-i915.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-b=
-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-10/igt@kms_big_fb@x-tiled-=
max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 other=
 tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_big_joiner@2x-modeset.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
705">i915#2705</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_ccs@pipe-a-crc-sprite-=
planes-basic-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_ccs@pipe-c-bad-pixel-=
format-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_ccs@pipe-c-crc-primar=
y-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk3/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +107 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_ccs@pipe-d-bad-aux-st=
ride-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_ccs@pipe-d-random-ccs-=
data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_chamelium_color@gamma.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_chamelium_frames@dp-cr=
c-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-e=
nable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-v=
s-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13982/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127362v1/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-a=
tomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_feature_discovery@displ=
ay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1839">i915#1839</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-fb=
-recreate.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_flip@2x-plain-flip-ts=
-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-4/igt@kms_flip@flip-vs-expired-vblank-interruptibl=
e@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127362v1/shard-mtlp-8/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127362v1/shard-snb5/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127362v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-stridechange.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
80">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +7 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
plane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9653">i915#9653</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_invalid_mode@clock-to=
o-high@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9457">i915#9457</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-h=
dmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-h=
dmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127362v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-dg2-10/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9683">i915#9683</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127362v1/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9683">i915#9683</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127362v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@kms_vrr@flip-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-5/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_writeback@writeback-che=
ck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8516"=
>i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@prime_udl.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#1092=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-glk2/igt@syncobj_wait@invalid-wait-z=
ero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@v3d/v3d_submit_cl@simple-f=
lush-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@v3d/v3d_submit_csd@bad-bo=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@v3d/v3d_submit_csd@job-per=
fmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@map-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@v3d/v3d_wait_bo@map-bo-0n=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-rkl-7/igt@vc4/vc4_purgeable_bo@acces=
s-purgeable-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-dg2-2/igt@vc4/vc4_wait_bo@unused-bo-=
1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-mtlp-2/igt@vc4/vc4_wait_bo@used-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@vc4/vc4_wait_seqno@bad-se=
qno-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127362v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8398">i915#=
8398</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127362v1/shard-tglu-2/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27362v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-tglu-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127362v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-glk2/igt@gen9_exec_parse@allowed-single.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127362v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7362v1/shard-rkl-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transi=
tion@pipe-b-hdmi-a-2.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-glk4/igt@kms_atomic_trans=
ition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127362v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-tglu-6/igt@kms_big_fb@y-t=
iled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.=
html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127362v1/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptibl=
e@b-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri=
-shrfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-dg2-5/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-scndscrn-spr-indfb-draw-render.html">PASS</a> +14 other tests=
 pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127362v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-=
wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127362v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi=
-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127362v1/shard-snb7/igt@kms_universal_plane@cursor-fb-le=
ak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-h=
dmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_127362v1/shard-tglu-2/igt@kms_universal_plane@cursor-=
fb-leak@pipe-d-hdmi-a-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random-ccs@lm=
em0.html">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127362v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-rando=
m-ccs@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb1/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9200">i915#9200</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127362v1/shard-snb1/igt@i915_module_load@reload-with-fau=
lt-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-mtlp-3/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561"=
>i915#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127362v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-b-edp-1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i=
915#8247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-snb7/igt@kms_content_protection@atomic-dpms.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127362v1/shard-snb4/igt@kms_content_protection@atomic-dpms.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7362v1/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13982/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12736=
2v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13982 -&gt; Patchwork_127362v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13982: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7620: 6714b814e7f82743abf45c33361fbe057a22880a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127362v1: 16108300001d366d485520d91f9894a3d34d8fa2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8127919148202437973==--
