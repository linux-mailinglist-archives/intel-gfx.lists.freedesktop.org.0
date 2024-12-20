Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4D9F93F6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 15:08:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA49E10E5EF;
	Fri, 20 Dec 2024 14:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7DE10E5EF;
 Fri, 20 Dec 2024 14:07:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Log_reason?=
 =?utf-8?q?_for_setting_TAINT=5FWARN_at_reset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 14:07:58 -0000
Message-ID: <173470367844.803142.11488097906084677808@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
In-Reply-To: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
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

Series: drm/i915/gt: Log reason for setting TAINT_WARN at reset
URL   : https://patchwork.freedesktop.org/series/142882/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15880 -> Patchwork_142882v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142882v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142882v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142882v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142882v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-twl-1:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-twl-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arls-5:         NOTRUN -> [ABORT][7] ([i915#12061])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][8] -> [ABORT][9] ([i915#12061])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#12914])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][12] -> [SKIP][13] ([i915#9197]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - bat-arls-5:         [SKIP][14] ([i915#11191] / [i915#11345]) -> [PASS][15] +3 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@fbdev@eof.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-arls-5:         [SKIP][16] ([i915#1849]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@fbdev@info.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@fbdev@info.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [DMESG-WARN][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-arls-5:         [SKIP][20] ([i915#3637]) -> [PASS][21] +3 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-5:         [SKIP][22] ([i915#4342] / [i915#5354]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-arls-5:         [SKIP][24] ([i915#12732]) -> [PASS][25] +13 other tests pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-arls-5:         [SKIP][28] ([i915#12732] / [i915#3708]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@prime_vgem@basic-fence-flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-arls-5:         [SKIP][30] ([i915#12732]) -> [SKIP][31] ([i915#10202]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-arls-5:         [SKIP][32] ([i915#12732]) -> [SKIP][33] ([i915#9886])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15880/bat-arls-5/igt@kms_dsc@dsc-basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/bat-arls-5/igt@kms_dsc@dsc-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
  [i915#11191]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11191
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12732
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15880 -> Patchwork_142882v1

  CI-20190529: 20190529
  CI_DRM_15880: d574310669011e7ef8da6d7e17a2938cae06e077 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8168: ecb4351581b3ca4be76ee3c8842603be69931401 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142882v1: d574310669011e7ef8da6d7e17a2938cae06e077 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142882v1/index.html
