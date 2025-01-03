Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A1AA00573
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 09:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 978F610E243;
	Fri,  3 Jan 2025 08:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0CA510E243;
 Fri,  3 Jan 2025 08:02:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Prefer_IS?=
 =?utf-8?q?=5FENABLED=28=29_instead_of_defined=28=29_on_config_option?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jan 2025 08:02:19 -0000
Message-ID: <173589133971.2490871.16326269589615388729@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250103062651.798249-1-nitin.r.gote@intel.com>
In-Reply-To: <20250103062651.798249-1-nitin.r.gote@intel.com>
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

Series: drm/i915/gt: Prefer IS_ENABLED() instead of defined() on config option
URL   : https://patchwork.freedesktop.org/series/143083/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15896 -> Patchwork_143083v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143083v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143083v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143083v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem:
    - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arlh-2/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-arlh-2/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-arls-5:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arls-5/igt@i915_selftest@live@gt_mocs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-arls-5/igt@i915_selftest@live@gt_mocs.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-13:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] +3 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-FAIL][9] ([i915#13393]) -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arls-5/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-arls-5/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_143083v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][11] -> [INCOMPLETE][12] ([i915#12435] / [i915#13050])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arlh-2/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-twl-2:          NOTRUN -> [ABORT][13] ([i915#12919])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-twl-2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +2 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][16] ([i915#13393]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-mtlp-8/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [ABORT][18] ([i915#12919]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][20] ([i915#13393]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-mtlp-9}:       [FAIL][22] ([i915#11989]) -> [PASS][23] +1 other test pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15896 -> Patchwork_143083v1

  CI-20190529: 20190529
  CI_DRM_15896: 048d83e7f9dae81c058d31c371634c1c317b3013 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8174: d2004b0623dbccd08502525849b4eef881aa199e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143083v1: 048d83e7f9dae81c058d31c371634c1c317b3013 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v1/index.html
