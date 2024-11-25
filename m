Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262D09D7C49
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 09:01:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B652E10E39B;
	Mon, 25 Nov 2024 08:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFC510E230;
 Mon, 25 Nov 2024 08:01:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1?=
 =?utf-8?q?/2=5D_Revert_=22drm/i915/dpt=3A_Make_DPT_object_unshrinkable=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2024 08:01:08 -0000
Message-ID: <173252166814.2746064.15332381378299649404@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241125062804.412536-1-vidya.srinivas@intel.com>
In-Reply-To: <20241125062804.412536-1-vidya.srinivas@intel.com>
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

== Series Details ==

Series: series starting with [1/2] Revert "drm/i915/dpt: Make DPT object unshrinkable"
URL   : https://patchwork.freedesktop.org/series/141739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15737 -> Patchwork_141739v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141739v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#12903])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-arls-5:         NOTRUN -> [ABORT][5] ([i915#12061])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][6] -> [ABORT][7] ([i915#12061])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-arlh-2:         [PASS][8] -> [ABORT][9] ([i915#12061]) +1 other test abort
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][10] -> [SKIP][11] ([i915#9197]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][12] -> [PASS][13] +2 other tests pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [FAIL][14] ([i915#12903]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-apl-1:          [DMESG-FAIL][16] ([i915#12435]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-apl-1/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-apl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-apl-1:          [DMESG-FAIL][18] ([i915#13011]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15737/bat-apl-1/igt@i915_selftest@live@gt_pm.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/bat-apl-1/igt@i915_selftest@live@gt_pm.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#13011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13011
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15737 -> Patchwork_141739v1

  CI-20190529: 20190529
  CI_DRM_15737: 4d723d57180a3aafc1a510bc08ef42f4b03671a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8123: fb343db7fc59c760ef0a0c19303e7bcec177dbd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141739v1: 4d723d57180a3aafc1a510bc08ef42f4b03671a7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141739v1/index.html
