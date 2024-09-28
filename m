Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24898989075
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 18:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B2F10E23C;
	Sat, 28 Sep 2024 16:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FA310E23A;
 Sat, 28 Sep 2024 16:31:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0813355100567375317=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_starting_with_=5Bv1?=
 =?utf-8?q?=2C1/1=5D_drm/i915/gt=3A_Use_IS=5FENABLED=28=29_instead_of_define?=
 =?utf-8?q?d=28=29_on_config_check?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 16:31:40 -0000
Message-ID: <172754110046.1131514.3730430926455084577@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240920104541.1899779-1-nitin.r.gote@intel.com>
In-Reply-To: <20240920104541.1899779-1-nitin.r.gote@intel.com>
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

--===============0813355100567375317==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v1,1/1] drm/i915/gt: Use IS_ENABLED() instead of defined() on config check
URL   : https://patchwork.freedesktop.org/series/138914/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15441_full -> Patchwork_138914v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138914v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138914v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 11)
------------------------------

  Additional (2): shard-snb-0 shard-tglu-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138914v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][1] -> ([INCOMPLETE][2], [PASS][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][4] +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg1:          NOTRUN -> ([SKIP][5], [SKIP][6]) ([i915#11681])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@i915_pm_rps@thresholds-idle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-mtlp:         NOTRUN -> ([SKIP][7], [SKIP][8]) ([i915#11681])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_suspend@debugfs-reader:
    - shard-dg1:          NOTRUN -> ([INCOMPLETE][9], [PASS][10])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@i915_suspend@debugfs-reader.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-tglu:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@i915_suspend@fence-restore-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglu:         [PASS][13] -> [SKIP][14] +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][15] +12 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> ([SKIP][16], [SKIP][17]) ([i915#5439])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][18], [SKIP][19]) ([i915#8708]) +5 other tests ( 2 skip )
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> ([SKIP][20], [SKIP][21]) ([i915#8708]) +33 other tests ( 2 skip )
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> ([SKIP][22], [SKIP][23]) ([i915#8708]) +3 other tests ( 2 skip )
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_lease@lease-get:
    - shard-tglu:         [PASS][24] -> ([SKIP][25], [PASS][26]) +32 other tests ( 1 pass, 1 skip )
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-10/igt@kms_lease@lease-get.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_lease@lease-get.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_lease@lease-get.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][27] +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> ([SKIP][28], [SKIP][29]) ([i915#11520]) +4 other tests ( 2 skip )
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][30] +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> ([SKIP][31], [SKIP][32]) ([i915#11520]) +1 other test ( 2 skip )
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg1:          NOTRUN -> ([SKIP][33], [SKIP][34]) ([i915#9917]) +1 other test ( 2 skip )
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@sriov_basic@bind-unbind-vf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html

  * igt@sysfs_heartbeat_interval@precise@vecs0:
    - shard-dg2:          [PASS][35] -> ([PASS][36], [FAIL][37]) +1 other test ( 1 fail, 1 pass )
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-1/igt@sysfs_heartbeat_interval@precise@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@sysfs_heartbeat_interval@precise@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@sysfs_heartbeat_interval@precise@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg1:          [SKIP][38] ([i915#11681]) -> [SKIP][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@i915_pm_rps@thresholds-park.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@i915_pm_rps@thresholds-park.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          [SKIP][40] ([i915#9337]) -> [SKIP][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         [SKIP][42] ([i915#8708]) -> [SKIP][43] +2 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         [SKIP][44] ([i915#5439]) -> [SKIP][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][46] ([i915#8708]) -> [SKIP][47] +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-dg1:          [SKIP][48] ([i915#8708]) -> [SKIP][49] +22 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-tglu:         [SKIP][50] ([i915#11520]) -> [SKIP][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          [SKIP][52] ([i915#11520]) -> [SKIP][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-rkl:          [SKIP][54] ([i915#11520]) -> [SKIP][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
    - shard-dg1:          [SKIP][56] ([i915#11520]) -> [SKIP][57] +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-15/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][58] ([i915#7484]) -> ([FAIL][59], [FAIL][60]) ([i915#9100]) +1 other test ( 2 fail )
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-mtlp:         [SKIP][61] ([i915#9917]) -> [SKIP][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          [SKIP][63] ([i915#9917]) -> [SKIP][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][65] +5 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15441_full and Patchwork_138914v1_full:

### New IGT tests (8) ###

  * igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.36, 0.37] s

  * igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.20, 0.22] s

  * igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.19, 0.20] s

  * igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.20] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.38, 0.39] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.24] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.23] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 2 pass(s)
    - Exec time: [0.20, 0.23] s

  

Known issues
------------

  Here are the changes found in Patchwork_138914v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg1:          NOTRUN -> ([SKIP][66], [SKIP][67]) ([i915#8411])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@api_intel_bb@object-reloc-purge-cache.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> ([SKIP][68], [SKIP][69]) ([i915#8414]) +18 other tests ( 2 skip )
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][70] ([i915#7742]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> ([SKIP][71], [SKIP][72]) ([i915#8414])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@drm_fdinfo@virtual-busy-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#8414]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@drm_fdinfo@virtual-busy-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#8414])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_busy@close-race:
    - shard-dg2:          [PASS][75] -> ([PASS][76], [FAIL][77]) ([i915#12297])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-7/igt@gem_busy@close-race.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_busy@close-race.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_busy@close-race.html
    - shard-rkl:          [PASS][78] -> ([PASS][79], [FAIL][80]) ([i915#12297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@gem_busy@close-race.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_busy@close-race.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_busy@close-race.html
    - shard-dg1:          NOTRUN -> ([FAIL][81], [PASS][82]) ([i915#12297])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_busy@close-race.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_busy@close-race.html
    - shard-tglu:         [PASS][83] -> ([PASS][84], [FAIL][85]) ([i915#12297])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-9/igt@gem_busy@close-race.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@gem_busy@close-race.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@gem_busy@close-race.html
    - shard-mtlp:         [PASS][86] -> ([PASS][87], [FAIL][88]) ([i915#12297])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-4/igt@gem_busy@close-race.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_busy@close-race.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_busy@close-race.html
    - shard-glk:          [PASS][89] -> ([PASS][90], [FAIL][91]) ([i915#12297])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk8/igt@gem_busy@close-race.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@gem_busy@close-race.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_busy@close-race.html

  * igt@gem_busy@semaphore:
    - shard-dg1:          NOTRUN -> ([SKIP][92], [SKIP][93]) ([i915#3936])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_busy@semaphore.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_busy@semaphore.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> ([SKIP][94], [SKIP][95]) ([i915#4873])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_caching@reads.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_caching@reads.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-mtlp:         NOTRUN -> ([SKIP][96], [SKIP][97]) ([i915#3555] / [i915#9323])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          NOTRUN -> ([INCOMPLETE][98], [PASS][99]) ([i915#7297]) +1 other test ( 1 incomplete, 1 pass )
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@gem_ccs@suspend-resume.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#7697])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#7697])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#6335])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [PASS][103] -> ([PASS][104], [FAIL][105]) ([i915#12027])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk4/igt@gem_ctx_engines@invalid-engines.html
    - shard-rkl:          NOTRUN -> [FAIL][106] ([i915#12027])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [PASS][107] -> ([PASS][108], [FAIL][109]) ([i915#12031])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg1:          NOTRUN -> ([DMESG-WARN][110], [PASS][111]) ([i915#4423]) +1 other test ( 1 dmesg-warn, 1 pass )
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> ([SKIP][112], [SKIP][113]) ([i915#8555]) +1 other test ( 2 skip )
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_ctx_persistence@heartbeat-hostile.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#8555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          NOTRUN -> [FAIL][116] ([i915#11980])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_ctx_persistence@hostile.html
    - shard-rkl:          NOTRUN -> [FAIL][117] ([i915#11980])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
    - shard-tglu:         [PASS][118] -> ([PASS][119], [FAIL][120]) ([i915#11980])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][121] ([i915#1099])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> ([SKIP][122], [SKIP][123]) ([i915#280])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#280])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#280])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][126] ([i915#10030] / [i915#7975] / [i915#8213])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> ([SKIP][127], [SKIP][128]) ([i915#4771])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-dual.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4771])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#4525])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         NOTRUN -> ([FAIL][131], [FAIL][132]) ([i915#11965]) +1 other test ( 2 fail )
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_capture@capture.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_capture@capture.html

  * igt@gem_exec_fair@basic-flow:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3539] / [i915#4852]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_exec_fair@basic-flow.html
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3539] / [i915#4852])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@gem_exec_fair@basic-flow.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-glk:          NOTRUN -> ([FAIL][135], [FAIL][136]) ([i915#2842]) +1 other test ( 2 fail )
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gem_exec_fair@basic-none-solo.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk4/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> ([FAIL][137], [FAIL][138]) ([i915#2842]) +1 other test ( 2 fail )
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [PASS][139] -> [FAIL][140] ([i915#2842])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-2/igt@gem_exec_fair@basic-none@vecs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> ([SKIP][141], [SKIP][142]) ([i915#3539])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_fair@basic-pace.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][143] -> ([FAIL][144], [FAIL][145]) ([i915#2842]) +2 other tests ( 2 fail )
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg1:          NOTRUN -> ([SKIP][146], [SKIP][147]) ([i915#3539]) +1 other test ( 2 skip )
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_exec_fair@basic-sync.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4812])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg1:          NOTRUN -> ([SKIP][149], [SKIP][150]) ([i915#3539] / [i915#4852]) +1 other test ( 2 skip )
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> ([SKIP][151], [SKIP][152]) ([i915#3539] / [i915#4852])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3281])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> ([SKIP][154], [SKIP][155]) ([i915#3281]) +5 other tests ( 2 skip )
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-range:
    - shard-rkl:          NOTRUN -> ([SKIP][156], [SKIP][157]) ([i915#3281])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_reloc@basic-range.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3281]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_exec_reloc@basic-softpin.html
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3281]) +4 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#3281]) +4 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> ([SKIP][161], [SKIP][162]) ([i915#3281]) +10 other tests ( 2 skip )
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          NOTRUN -> ([SKIP][163], [SKIP][164]) ([i915#3281]) +4 other tests ( 2 skip )
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-wc-active.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         [PASS][165] -> ([PASS][166], [FAIL][167]) ([i915#12296]) +11 other tests ( 1 fail, 1 pass )
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-5/igt@gem_exec_schedule@pi-common.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@gem_exec_schedule@pi-common.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@gem_exec_schedule@pi-common.html
    - shard-mtlp:         [PASS][168] -> ([PASS][169], [FAIL][170]) ([i915#12296]) +13 other tests ( 1 fail, 1 pass )
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-5/igt@gem_exec_schedule@pi-common.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_schedule@pi-common.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-dg1:          [PASS][171] -> [FAIL][172] ([i915#12296]) +5 other tests fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@gem_exec_schedule@pi-common@vcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@pi-common@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][173] ([i915#12296]) +7 other tests fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_schedule@pi-common@vecs1.html

  * igt@gem_exec_schedule@pi-ringfull@bcs0:
    - shard-glk:          [PASS][174] -> ([PASS][175], [FAIL][176]) ([i915#12296]) +4 other tests ( 1 fail, 1 pass )
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk5/igt@gem_exec_schedule@pi-ringfull@bcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_exec_schedule@pi-ringfull@bcs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk6/igt@gem_exec_schedule@pi-ringfull@bcs0.html

  * igt@gem_exec_schedule@pi-ringfull@ccs0:
    - shard-dg2:          [PASS][177] -> ([PASS][178], [FAIL][179]) ([i915#12296]) +7 other tests ( 1 fail, 1 pass )
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-6/igt@gem_exec_schedule@pi-ringfull@ccs0.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@gem_exec_schedule@pi-ringfull@ccs0.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_schedule@pi-ringfull@ccs0.html

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-dg1:          [PASS][180] -> ([FAIL][181], [PASS][182]) ([i915#12296]) +5 other tests ( 1 fail, 1 pass )
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-15/igt@gem_exec_schedule@pi-ringfull@rcs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_schedule@pi-ringfull@rcs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg1:          NOTRUN -> ([SKIP][183], [SKIP][184]) ([i915#4812]) +2 other tests ( 2 skip )
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_exec_schedule@preempt-queue.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#4537] / [i915#4812])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][186] -> ([PASS][187], [INCOMPLETE][188]) ([i915#11441])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][189] ([i915#7975] / [i915#8213]) +1 other test abort
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html
    - shard-rkl:          NOTRUN -> [ABORT][190] ([i915#7975] / [i915#8213]) +2 other tests abort
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> ([SKIP][191], [SKIP][192]) ([i915#4860]) +1 other test ( 2 skip )
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_gtt_cpu_tlb:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#4077]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_gtt_cpu_tlb.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#2190])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#4613]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-mtlp:         NOTRUN -> ([SKIP][196], [SKIP][197]) ([i915#4613])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_lmem_swapping@massive-random.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          NOTRUN -> ([SKIP][198], [SKIP][199]) ([i915#4613]) +2 other tests ( 2 skip )
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_lmem_swapping@random.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#4613])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> ([SKIP][201], [SKIP][202]) ([i915#4613]) +1 other test ( 2 skip )
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk8/igt@gem_lmem_swapping@verify-random.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk5/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@bad-size:
    - shard-dg2:          NOTRUN -> ([SKIP][203], [SKIP][204]) ([i915#4083])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_mmap@bad-size.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#4077]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html

  * igt@gem_mmap_gtt@close-race:
    - shard-dg1:          NOTRUN -> ([SKIP][206], [SKIP][207]) ([i915#4077]) +14 other tests ( 2 skip )
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_mmap_gtt@close-race.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_mmap_gtt@close-race.html
    - shard-mtlp:         NOTRUN -> ([SKIP][208], [SKIP][209]) ([i915#4077]) +2 other tests ( 2 skip )
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_mmap_gtt@close-race.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_mmap_gtt@close-race.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#4077]) +10 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-mtlp:         NOTRUN -> ([SKIP][211], [SKIP][212]) ([i915#4083]) +1 other test ( 2 skip )
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_mmap_wc@fault-concurrent.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_mmap_wc@fault-concurrent.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-tglu:         [PASS][213] -> ([PASS][214], [SKIP][215]) ([i915#1850])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-3/igt@gem_mmap_wc@set-cache-level.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#4083]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg1:          NOTRUN -> ([SKIP][217], [SKIP][218]) ([i915#4083]) +4 other tests ( 2 skip )
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_mmap_wc@write-read.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#3282]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3282]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg1:          NOTRUN -> ([SKIP][221], [SKIP][222]) ([i915#3282]) +4 other tests ( 2 skip )
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][223] ([i915#2658])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_pwrite@basic-exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][224] ([i915#2658])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb1/igt@gem_pwrite@basic-exhaustion.html
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#3282])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#4270]) +4 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg1:          NOTRUN -> ([SKIP][227], [SKIP][228]) ([i915#4270]) +3 other tests ( 2 skip )
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][229], [SKIP][230]) ([i915#4270])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#4270])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#4270]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#4270])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_readwrite@beyond-eob:
    - shard-mtlp:         NOTRUN -> ([SKIP][234], [SKIP][235]) ([i915#3282]) +2 other tests ( 2 skip )
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_readwrite@beyond-eob.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-3/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@read-write:
    - shard-rkl:          NOTRUN -> ([SKIP][236], [SKIP][237]) ([i915#3282]) +1 other test ( 2 skip )
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_readwrite@read-write.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_readwrite@read-write.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg2:          NOTRUN -> ([SKIP][238], [SKIP][239]) ([i915#3282])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_readwrite@write-bad-handle.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> ([SKIP][240], [SKIP][241]) +99 other tests ( 2 skip )
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][242], [SKIP][243]) ([i915#8428]) +2 other tests ( 2 skip )
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][244], [SKIP][245]) ([i915#5190] / [i915#8428])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#5190] / [i915#8428]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#4885])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#4885])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg1:          NOTRUN -> ([SKIP][249], [SKIP][250]) ([i915#4079])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_tiled_pread_pwrite.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> ([SKIP][251], [SKIP][252]) ([i915#3297])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_userptr_blits@coherency-unsync.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3282] / [i915#3297])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_userptr_blits@forbidden-operations.html
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#3282] / [i915#3297])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3297])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3297] / [i915#4880])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> ([SKIP][257], [SKIP][258]) ([i915#3297] / [i915#4880])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-mtlp:         NOTRUN -> ([SKIP][259], [SKIP][260]) ([i915#3297])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> ([SKIP][261], [SKIP][262]) ([i915#3281] / [i915#3297])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@relocations.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#3297])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][264] -> ([PASS][265], [ABORT][266]) ([i915#5566])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> ([SKIP][267], [SKIP][268]) ([i915#2527])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> ([SKIP][269], [SKIP][270]) ([i915#2527]) +4 other tests ( 2 skip )
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> ([SKIP][271], [SKIP][272]) ([i915#2856])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglu:         NOTRUN -> [SKIP][273] ([i915#2527] / [i915#2856])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#2856]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@gen9_exec_parse@secure-batches.html
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#2527]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html
    - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#2527]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#2856]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][278] -> ([PASS][279], [ABORT][280]) ([i915#9820])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][281] -> ([ABORT][282], [ABORT][283]) ([i915#9820])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][284] -> [ABORT][285] ([i915#10131] / [i915#10887] / [i915#9697])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-mtlp:         NOTRUN -> ([SKIP][286], [SKIP][287]) ([i915#8436])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> ([SKIP][288], [SKIP][289]) ([i915#6590]) +1 other test ( 2 skip )
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#6590]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
    - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#8431])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#6621])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> ([SKIP][293], [SKIP][294]) ([i915#6245])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_query@hwconfig_table.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][295] -> ([PASS][296], [ABORT][297]) ([i915#12061] / [i915#12216]) +1 other test ( 1 abort, 1 pass )
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][298] -> ([INCOMPLETE][299], [PASS][300]) ([i915#4817])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#7707])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#4212])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#4212]) +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> ([SKIP][304], [SKIP][305]) ([i915#4212])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#8709]) +3 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][307], [SKIP][308]) ([i915#8709]) +11 other tests ( 2 skip )
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> ([SKIP][309], [SKIP][310]) ([i915#3555])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> ([SKIP][311], [SKIP][312]) ([i915#9531])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_interruptible@legacy-setmode:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#9197]) +2 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_atomic_interruptible@legacy-setmode.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#1769] / [i915#3555])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> ([SKIP][315], [SKIP][316]) ([i915#1769] / [i915#3555])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-snb:          [PASS][317] -> ([PASS][318], [FAIL][319]) ([i915#5956]) +1 other test ( 1 fail, 1 pass )
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> ([SKIP][320], [SKIP][321]) ([i915#4538] / [i915#5286]) +6 other tests ( 2 skip )
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> ([SKIP][322], [SKIP][323]) ([i915#5286]) +1 other test ( 2 skip )
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-glk:          NOTRUN -> [SKIP][324] +30 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
    - shard-rkl:          NOTRUN -> ([SKIP][325], [SKIP][326]) ([i915#5286]) +1 other test ( 2 skip )
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
    - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#5286])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          [PASS][328] -> [SKIP][329] ([i915#9197])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][330] ([i915#5286]) +3 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
    - shard-dg1:          NOTRUN -> [SKIP][331] ([i915#4538] / [i915#5286])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#3638]) +1 other test ( 2 skip )
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#3638])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][335] ([i915#4538] / [i915#5190]) +5 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#3638]) +3 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> ([SKIP][337], [SKIP][338]) ([i915#3638]) +3 other tests ( 2 skip )
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][339] +18 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> ([SKIP][340], [SKIP][341]) +7 other tests ( 2 skip )
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> ([SKIP][342], [SKIP][343]) ([i915#4538] / [i915#5190]) +1 other test ( 2 skip )
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][344] ([i915#5190])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> ([SKIP][345], [SKIP][346]) ([i915#4538]) +8 other tests ( 2 skip )
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][347] ([i915#4538]) +2 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> ([SKIP][348], [SKIP][349]) +10 other tests ( 2 skip )
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> ([SKIP][350], [SKIP][351]) ([i915#10307] / [i915#6095] / [i915#9197])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][353], [SKIP][354]) ([i915#6095]) +20 other tests ( 2 skip )
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#6095]) +87 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#10307] / [i915#6095]) +253 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][357], [SKIP][358]) ([i915#10307] / [i915#6095]) +25 other tests ( 2 skip )
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][359], [SKIP][360]) ([i915#12042])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> ([SKIP][361], [SKIP][362]) ([i915#10307] / [i915#10434] / [i915#6095])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][363] ([i915#6095]) +103 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][364], [SKIP][365]) ([i915#6095]) +85 other tests ( 2 skip )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][366], [SKIP][367]) ([i915#6095]) +14 other tests ( 2 skip )
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][368] ([i915#6095]) +4 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> ([SKIP][369], [SKIP][370]) ([i915#12042])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#3742])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-dg1:          NOTRUN -> ([SKIP][372], [SKIP][373]) ([i915#3742])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cdclk@mode-transition-all-outputs.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#11616] / [i915#7213]) +3 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][375] ([i915#3742])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cdclk@plane-scaling.html
    - shard-tglu:         NOTRUN -> [SKIP][376] ([i915#3742])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#7828]) +6 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][378] ([i915#7828]) +5 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-tglu:         NOTRUN -> [SKIP][379] ([i915#7828])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> ([SKIP][380], [SKIP][381]) ([i915#7828]) +3 other tests ( 2 skip )
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-dg2:          NOTRUN -> ([SKIP][382], [SKIP][383]) ([i915#7828])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> ([SKIP][384], [SKIP][385]) ([i915#7828]) +4 other tests ( 2 skip )
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-dg1:          NOTRUN -> ([SKIP][386], [SKIP][387]) ([i915#7828]) +11 other tests ( 2 skip )
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-dg1:          NOTRUN -> [SKIP][388] ([i915#7828]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][389] ([i915#3555]) +5 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_color@deep-color.html
    - shard-rkl:          NOTRUN -> [SKIP][390] ([i915#3555]) +2 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg1:          NOTRUN -> ([SKIP][391], [SKIP][392]) ([i915#9424])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@content-type-change.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][393] ([i915#3116] / [i915#3299])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][394] ([i915#3299])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg1:          NOTRUN -> ([SKIP][395], [SKIP][396]) ([i915#3299]) +1 other test ( 2 skip )
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_content_protection@dp-mst-lic-type-1.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][397] ([i915#3299])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
    - shard-dg1:          NOTRUN -> [SKIP][398] ([i915#3299]) +1 other test skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> ([TIMEOUT][399], [SKIP][400]) ([i915#7118] / [i915#7173] / [i915#9424])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@legacy.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][401] ([i915#7173]) +1 other test timeout
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          NOTRUN -> ([SKIP][402], [SKIP][403]) ([i915#9424] / [i915#9433])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html
    - shard-mtlp:         NOTRUN -> ([SKIP][404], [SKIP][405]) ([i915#8063] / [i915#9433])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_content_protection@mei-interface.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> ([SKIP][406], [SKIP][407]) ([i915#7118])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_content_protection@srm.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_content_protection@srm.html
    - shard-dg1:          NOTRUN -> [SKIP][408] ([i915#7116])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][409] ([i915#1339] / [i915#7173])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-mtlp:         NOTRUN -> ([SKIP][410], [SKIP][411]) ([i915#3359])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][412] ([i915#11453]) +2 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][413] ([i915#11453])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg1:          NOTRUN -> ([SKIP][414], [SKIP][415]) ([i915#11453]) +1 other test ( 2 skip )
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#11453]) +1 other test ( 2 skip )
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-mtlp:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#3555] / [i915#8814]) +2 other tests ( 2 skip )
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> ([SKIP][420], [SKIP][421]) ([i915#4213])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][422] ([i915#4103])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg1:          NOTRUN -> ([SKIP][423], [SKIP][424]) ([i915#4103] / [i915#4213]) +1 other test ( 2 skip )
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][425] ([i915#9809])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-mtlp:         NOTRUN -> ([SKIP][426], [SKIP][427]) ([i915#9809])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> ([SKIP][428], [SKIP][429]) ([i915#9723])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> ([SKIP][430], [SKIP][431]) ([i915#3555] / [i915#8827])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_display_modes@extended-mode-basic.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg1:          NOTRUN -> ([SKIP][432], [SKIP][433]) ([i915#8588])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][434] -> [SKIP][435] ([i915#3555])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [PASS][436] -> ([SKIP][437], [SKIP][438]) ([i915#3555])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> ([SKIP][439], [SKIP][440]) ([i915#1257])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_dp_aux_dev.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> ([SKIP][441], [SKIP][442]) ([i915#8812])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][443] ([i915#3840] / [i915#9688])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> ([SKIP][444], [SKIP][445]) ([i915#3840])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][446] ([i915#3555] / [i915#3840])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-rkl:          NOTRUN -> ([SKIP][447], [SKIP][448]) ([i915#3555] / [i915#3840])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-mtlp:         NOTRUN -> ([SKIP][449], [SKIP][450]) ([i915#3555] / [i915#3840])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@kms_dsc@dsc-with-output-formats.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> ([SKIP][451], [SKIP][452]) ([i915#1839])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_feature_discovery@display-2x.html
    - shard-dg1:          NOTRUN -> ([SKIP][453], [SKIP][454]) ([i915#1839])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_feature_discovery@display-2x.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_feature_discovery@display-2x.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][455] ([i915#4881])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][456] +16 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][457] ([i915#3637]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg1:          NOTRUN -> ([SKIP][458], [SKIP][459]) ([i915#8381])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-fences.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][460], [SKIP][461])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-panning-interruptible.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg1:          NOTRUN -> [SKIP][462] ([i915#9934])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> ([SKIP][463], [SKIP][464]) ([i915#3637]) +4 other tests ( 2 skip )
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-rmfb.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [PASS][465] -> [INCOMPLETE][466] ([i915#1982] / [i915#4839])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk3/igt@kms_flip@2x-flip-vs-suspend.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][467] -> [INCOMPLETE][468] ([i915#4839])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk3/igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> ([SKIP][469], [SKIP][470]) ([i915#9934]) +4 other tests ( 2 skip )
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][471] ([i915#3637]) +1 other test skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][472] -> ([FAIL][473], [PASS][474]) ([i915#2122]) +11 other tests ( 1 fail, 1 pass )
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-tglu:         [PASS][475] -> ([PASS][476], [SKIP][477]) ([i915#3637]) +3 other tests ( 1 pass, 1 skip )
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][478] ([i915#8381])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [PASS][479] -> ([FAIL][480], [PASS][481]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-mtlp:         [PASS][482] -> ([FAIL][483], [PASS][484]) ([i915#2122]) +4 other tests ( 1 fail, 1 pass )
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][485] ([i915#2122]) +2 other tests fail
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][486] -> ([FAIL][487], [PASS][488]) ([i915#2122]) +5 other tests ( 1 fail, 1 pass )
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/C

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/index.html

--===============0813355100567375317==
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
<tr><td><b>Series:</b></td><td>series starting with [v1,1/1] drm/i915/gt: Use IS_ENABLED() instead of defined() on config check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138914/">https://patchwork.freedesktop.org/series/138914/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15441_full -&gt; Patchwork_138914v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138914v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138914v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 11)</h2>
<p>Additional (2): shard-snb-0 shard-tglu-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138914v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@i915_pm_rps@thresholds.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@i915_pm_rps@thresholds-idle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle.html">SKIP</a>) ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a>) ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@i915_suspend@debugfs-reader.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@i915_suspend@fence-restore-untiled.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a>) ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a>) ([i915#8708]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a>) ([i915#8708]) +33 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#8708]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-get:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-10/igt@kms_lease@lease-get.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_lease@lease-get.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_lease@lease-get.html">PASS</a>) +32 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html">SKIP</a>) ([i915#11520]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a>) ([i915#11520]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@sriov_basic@bind-unbind-vf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html">SKIP</a>) ([i915#9917]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vecs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-1/igt@sysfs_heartbeat_interval@precise@vecs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@sysfs_heartbeat_interval@precise@vecs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@sysfs_heartbeat_interval@precise@vecs0.html">FAIL</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@i915_pm_rps@thresholds-park.html">SKIP</a> ([i915#11681]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@i915_pm_rps@thresholds-park.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html">SKIP</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-15/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a>) ([i915#9100]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15441_full and Patchwork_138914v1_full:</p>
<h3>New IGT tests (8)</h3>
<ul>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.36, 0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.20, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.19, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.38, 0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.20, 0.23] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138914v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a>) ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a>) ([i915#8414]) +18 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> ([i915#7742]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a>) ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-7/igt@gem_busy@close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_busy@close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_busy@close-race.html">FAIL</a>) ([i915#12297])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@gem_busy@close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_busy@close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_busy@close-race.html">FAIL</a>) ([i915#12297])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_busy@close-race.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_busy@close-race.html">PASS</a>) ([i915#12297])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-9/igt@gem_busy@close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@gem_busy@close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@gem_busy@close-race.html">FAIL</a>) ([i915#12297])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-4/igt@gem_busy@close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_busy@close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_busy@close-race.html">FAIL</a>) ([i915#12297])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk8/igt@gem_busy@close-race.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@gem_busy@close-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_busy@close-race.html">FAIL</a>) ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_busy@semaphore.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_busy@semaphore.html">SKIP</a>) ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_caching@reads.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_caching@reads.html">SKIP</a>) ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_ccs@block-copy-compressed.html">SKIP</a>) ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a>) ([i915#7297]) +1 other test ( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a>) ([i915#4423]) +1 other test ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a>) ([i915#8555]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@gem_ctx_persistence@hostile.html">FAIL</a>) ([i915#11980])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a>) ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-dual.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_exec_balancer@bonded-dual.html">SKIP</a>) ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_capture@capture.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_capture@capture.html">FAIL</a>) ([i915#11965]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_exec_fair@basic-flow.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@gem_exec_fair@basic-flow.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gem_exec_fair@basic-none-solo.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk4/igt@gem_exec_fair@basic-none-solo.html">FAIL</a>) ([i915#2842]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a>) ([i915#2842]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_fair@basic-pace.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html">SKIP</a>) ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) ([i915#2842]) +2 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_exec_fair@basic-sync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_exec_fair@basic-sync.html">SKIP</a>) ([i915#3539]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_exec_fence@concurrent.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a>) ([i915#3539] / [i915#4852]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a>) ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a>) ([i915#3281]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_exec_reloc@basic-range.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_exec_reloc@basic-range.html">SKIP</a>) ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a>) ([i915#3281]) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a>) ([i915#3281]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-5/igt@gem_exec_schedule@pi-common.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@gem_exec_schedule@pi-common.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@gem_exec_schedule@pi-common.html">FAIL</a>) ([i915#12296]) +11 other tests ( 1 fail, 1 pass )</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-5/igt@gem_exec_schedule@pi-common.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_exec_schedule@pi-common.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@gem_exec_schedule@pi-common.html">FAIL</a>) ([i915#12296]) +13 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-17/igt@gem_exec_schedule@pi-common@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_schedule@pi-common@vecs1.html">FAIL</a> ([i915#12296]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk5/igt@gem_exec_schedule@pi-ringfull@bcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_exec_schedule@pi-ringfull@bcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk6/igt@gem_exec_schedule@pi-ringfull@bcs0.html">FAIL</a>) ([i915#12296]) +4 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@ccs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-6/igt@gem_exec_schedule@pi-ringfull@ccs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@gem_exec_schedule@pi-ringfull@ccs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_exec_schedule@pi-ringfull@ccs0.html">FAIL</a>) ([i915#12296]) +7 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg1-15/igt@gem_exec_schedule@pi-ringfull@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_exec_schedule@pi-ringfull@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_exec_schedule@pi-ringfull@rcs0.html">PASS</a>) ([i915#12296]) +5 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_exec_schedule@preempt-queue.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_exec_schedule@preempt-queue.html">SKIP</a>) ([i915#4812]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a>) ([i915#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a>) ([i915#4860]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@gem_gtt_cpu_tlb.html">SKIP</a> ([i915#4077]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_lmem_swapping@massive-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_lmem_swapping@massive-random.html">SKIP</a>) ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_lmem_swapping@random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gem_lmem_swapping@random.html">SKIP</a>) ([i915#4613]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk8/igt@gem_lmem_swapping@verify-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk5/igt@gem_lmem_swapping@verify-random.html">SKIP</a>) ([i915#4613]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_mmap@bad-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_mmap@bad-size.html">SKIP</a>) ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_mmap_gtt@close-race.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_mmap_gtt@close-race.html">SKIP</a>) ([i915#4077]) +14 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_mmap_gtt@close-race.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@gem_mmap_gtt@close-race.html">SKIP</a>) ([i915#4077]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_mmap_wc@fault-concurrent.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@gem_mmap_wc@fault-concurrent.html">SKIP</a>) ([i915#4083]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-3/igt@gem_mmap_wc@set-cache-level.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html">SKIP</a>) ([i915#1850])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_mmap_wc@write-read.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_mmap_wc@write-read.html">SKIP</a>) ([i915#4083]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a>) ([i915#3282]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a>) ([i915#4270]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-7/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_readwrite@beyond-eob.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-3/igt@gem_readwrite@beyond-eob.html">SKIP</a>) ([i915#3282]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_readwrite@read-write.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gem_readwrite@read-write.html">SKIP</a>) ([i915#3282]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_readwrite@write-bad-handle.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@gem_readwrite@write-bad-handle.html">SKIP</a>) ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a>) +99 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a>) ([i915#8428]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html">SKIP</a>) ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@gem_tiled_pread_pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@gem_tiled_pread_pwrite.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a>) ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gem_userptr_blits@relocations.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@gem_userptr_blits@relocations.html">SKIP</a>) ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk9/igt@gen9_exec_parse@allowed-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk7/igt@gen9_exec_parse@allowed-all.html">ABORT</a>) ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html">SKIP</a>) ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a>) ([i915#2527]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html">SKIP</a>) ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-4/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820])</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a>) ([i915#8436])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a>) ([i915#6590]) +1 other test ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html">SKIP</a> ([i915#8431])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_query@hwconfig_table.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@i915_query@hwconfig_table.html">SKIP</a>) ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">ABORT</a>) ([i915#12061] / [i915#12216]) +1 other test ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a>) ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a>) ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a>) ([i915#8709]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a>) ([i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a>) ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_atomic_interruptible@legacy-setmode.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>) ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-snb7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a>) ([i915#5956]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5286]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a>) ([i915#5286]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> +30 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a>) ([i915#5286]) +1 other test ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a>) ([i915#3638]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a>) ([i915#3638]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a>) ([i915#4538] / [i915#5190]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a>) ([i915#4538]) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) ([i915#10307] / [i915#6095] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a>) ([i915#6095]) +20 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html">SKIP</a> ([i915#10307] / [i915#6095]) +253 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a>) ([i915#10307] / [i915#6095]) +25 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a>) ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a>) ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a>) ([i915#6095]) +85 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a>) ([i915#6095]) +14 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a>) ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a>) ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-7/igt@kms_chamelium_frames@hdmi-crc-single.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a>) ([i915#7828]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a>) ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>) ([i915#7828]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@content-type-change.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_content_protection@content-type-change.html">SKIP</a>) ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a>) ([i915#3299]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@legacy.html">TIMEOUT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_content_protection@legacy.html">SKIP</a>) ([i915#7118] / [i915#7173] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html">SKIP</a>) ([i915#9424] / [i915#9433])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_content_protection@mei-interface.html">SKIP</a>) ([i915#8063] / [i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_content_protection@srm.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a>) ([i915#7118])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html">FAIL</a> ([i915#1339] / [i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a>) ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a>) ([i915#11453]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a>) ([i915#11453]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a>) ([i915#3555] / [i915#8814]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>) ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a>) ([i915#4103] / [i915#4213]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>) ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>) ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html">SKIP</a>) ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a>) ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>) ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_dp_aux_dev.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_dp_aux_dev.html">SKIP</a>) ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a>) ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a>) ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-4/igt@kms_feature_discovery@display-2x.html">SKIP</a>) ([i915#1839])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_feature_discovery@display-2x.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-13/igt@kms_feature_discovery@display-2x.html">SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a>) ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-14/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a>) ([i915#3637]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk3/igt@kms_flip@2x-flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> ([i915#1982] / [i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk3/igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-12/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a>) ([i915#9934]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2122]) +11 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-tglu-8/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a>) ([i915#3637]) +3 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/shard-mtlp-5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-mtlp-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a>) ([i915#2122]) +4 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138914v1/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/C">PASS</a> -&gt; ([FAIL][487], [PASS][488]) ([i915#2122]) +5 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0813355100567375317==--
