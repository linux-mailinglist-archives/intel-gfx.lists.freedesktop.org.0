Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B5D9F6B0B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 17:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D150310E1B7;
	Wed, 18 Dec 2024 16:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1ED10E13B;
 Wed, 18 Dec 2024 16:25:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gvt=3A_store_vir?=
 =?utf-8?q?tual=5Fdp=5Fmonitor=5Fedid_in_rodata?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 16:25:40 -0000
Message-ID: <173453914005.96409.14824908601465942224@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241218141945.2588604-1-jani.nikula@intel.com>
In-Reply-To: <20241218141945.2588604-1-jani.nikula@intel.com>
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

Series: drm/i915/gvt: store virtual_dp_monitor_edid in rodata
URL   : https://patchwork.freedesktop.org/series/142793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15863 -> Patchwork_142793v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142793v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142793v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142793v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142793v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][3] -> [FAIL][4] ([i915#12903])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][5] -> [ABORT][6] ([i915#12061]) +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#12914])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [INCOMPLETE][11] ([i915#12904]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [ABORT][13] ([i915#9413]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/bat-adlp-9/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/bat-adlp-9/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][15] -> [ABORT][16] ([i915#13169])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15863/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15863 -> Patchwork_142793v1

  CI-20190529: 20190529
  CI_DRM_15863: 78526dfb8799485890dae3877fea308e9501879c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8162: 8bce68b09c45753b5237edc2f65497969a05f881 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142793v1: 78526dfb8799485890dae3877fea308e9501879c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142793v1/index.html
