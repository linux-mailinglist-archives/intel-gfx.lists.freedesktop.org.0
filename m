Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D49F6145
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 10:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62DA810EB0C;
	Wed, 18 Dec 2024 09:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A1210E240;
 Wed, 18 Dec 2024 09:19:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Check_if_is_vblank_too_sh?=
 =?utf-8?q?ort?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 09:19:25 -0000
Message-ID: <173451356515.4191461.1202235632298846428@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Check if is vblank too short
URL   : https://patchwork.freedesktop.org/series/142745/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15861 -> Patchwork_142745v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142745v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142745v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142745v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-1115g4:      [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - bat-jsl-3:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-jsl-3/igt@debugfs_test@read_all_entries.html
    - bat-adls-6:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-adls-6/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-adls-6/igt@debugfs_test@read_all_entries.html
    - bat-jsl-1:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-jsl-1/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-jsl-1/igt@debugfs_test@read_all_entries.html
    - fi-glk-j4005:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
    - bat-rplp-1:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-rkl-11600/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - bat-dg1-7:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg1-7/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-dg1-7/igt@i915_module_load@load.html
    - bat-dg2-13:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-13/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-adlp-9/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-adlp-9/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-rpls-4/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-rpls-4/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-kbl-7567u/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-apl-1/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-apl-1/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arls-5/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-arls-5/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-cfl-guc/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-cfl-8109u/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-11/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-dg2-11/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-cfl-8700k/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-14/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-dg2-14/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-8/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_busy@basic:
    - fi-skl-6600u:       [PASS][41] -> [FAIL][42] +2 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@kms_busy@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-skl-6600u/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - bat-mtlp-8:         [PASS][43] -> [FAIL][44] +2 other tests fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-8/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-mtlp-8/igt@kms_busy@basic@flip.html
    - bat-arlh-3:         [PASS][45] -> [FAIL][46] +2 other tests fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arlh-3/igt@kms_busy@basic@flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-arlh-3/igt@kms_busy@basic@flip.html
    - bat-twl-1:          [PASS][47] -> [FAIL][48] +2 other tests fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-twl-1/igt@kms_busy@basic@flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-twl-1/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-twl-2:          [PASS][49] -> [FAIL][50] +2 other tests fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-twl-2/igt@kms_busy@basic@modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-twl-2/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-mtlp-8:         [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arlh-3:         [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-twl-1:          [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-skl-6600u:       [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-twl-2:          [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-twl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-twl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-mtlp-9}:       [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-9/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-mtlp-9/igt@i915_module_load@load.html
    - {bat-arls-6}:       [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-arls-6/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/bat-arls-6/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_142745v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [PASS][65] -> [INCOMPLETE][66] ([i915#12904]) +1 other test incomplete
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904


Build changes
-------------

  * Linux: CI_DRM_15861 -> Patchwork_142745v1

  CI-20190529: 20190529
  CI_DRM_15861: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8160: 4f10d98c56498ab29445ae0b06aab6f5a8ec2eca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142745v1: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142745v1/index.html
