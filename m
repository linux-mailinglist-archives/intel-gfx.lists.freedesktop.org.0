Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8324A9F3DA0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 23:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF0A10E7D7;
	Mon, 16 Dec 2024 22:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D6D10E7E5;
 Mon, 16 Dec 2024 22:32:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Enable_GuC_SLPC_default_b?=
 =?utf-8?q?alancing_strategies?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 22:32:37 -0000
Message-ID: <173438835707.3461730.15455984663865060327@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
In-Reply-To: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
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

Series: Enable GuC SLPC default balancing strategies
URL   : https://patchwork.freedesktop.org/series/142676/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15855 -> Patchwork_142676v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142676v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142676v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142676v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - bat-twl-2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-twl-2/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-twl-2/igt@i915_selftest@live@gt_engines.html
    - bat-twl-1:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-twl-1/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-twl-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_142676v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [ABORT][8] ([i915#13169])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][11] ([i915#12061]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [ABORT][13] ([i915#12061]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [ABORT][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - {bat-arls-6}:       [SKIP][17] ([i915#13272]) -> [PASS][18] +2 other tests pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15855/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13272]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13272
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15855 -> Patchwork_142676v1

  CI-20190529: 20190529
  CI_DRM_15855: 8bfb48c045396305771aaea35f06d5ef3bf3a191 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8157: 48a70f6795e6d68b9fae275261ae3b09d3401fe1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142676v1: 8bfb48c045396305771aaea35f06d5ef3bf3a191 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v1/index.html
