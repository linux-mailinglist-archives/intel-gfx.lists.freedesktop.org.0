Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB34C9DBFBF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 08:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE6310E0A5;
	Fri, 29 Nov 2024 07:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B4A10E0A5;
 Fri, 29 Nov 2024 07:27:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/fb=3A_Deal_with_?=
 =?utf-8?q?Mesa_clear_color_alignment_regression?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 07:27:48 -0000
Message-ID: <173286526899.202316.15001534911640020138@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/fb: Deal with Mesa clear color alignment regression
URL   : https://patchwork.freedesktop.org/series/141911/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15761 -> Patchwork_141911v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141911v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141911v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141911v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@verify-random:
    - bat-dg2-8:          [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/bat-dg2-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/fi-pnv-d510/igt@i915_selftest@live.html

  * igt@i915_selftest@live@vma:
    - fi-pnv-d510:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/fi-pnv-d510/igt@i915_selftest@live@vma.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/fi-pnv-d510/igt@i915_selftest@live@vma.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp2:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp2.html

  
Known issues
------------

  Here are the changes found in Patchwork_141911v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-8109u:       [PASS][8] -> [DMESG-WARN][9] ([i915#12914])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][10] ([i915#12903]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [FAIL][12] ([i915#12903]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [ABORT][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [SKIP][18] ([i915#9197]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15761/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15761 -> Patchwork_141911v1

  CI-20190529: 20190529
  CI_DRM_15761: 709349e154b56980b3957b3f72af3f67cfdd7aee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8130: 52c84deb5f45bcbd3c2b22d1fcff01d4c522cb62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141911v1: 709349e154b56980b3957b3f72af3f67cfdd7aee @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141911v1/index.html
