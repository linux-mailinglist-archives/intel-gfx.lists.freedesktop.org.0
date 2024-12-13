Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E709F0BBB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 12:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B594310E1CA;
	Fri, 13 Dec 2024 11:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59D910E1CA;
 Fri, 13 Dec 2024 11:55:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/dp=3A_convert_to?=
 =?utf-8?q?_struct_intel=5Fdisplay_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2024 11:55:25 -0000
Message-ID: <173409092587.2119584.9279022557621119166@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1734083244.git.jani.nikula@intel.com>
In-Reply-To: <cover.1734083244.git.jani.nikula@intel.com>
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

Series: drm/i915/dp: convert to struct intel_display (rev3)
URL   : https://patchwork.freedesktop.org/series/141929/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15837 -> Patchwork_141929v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141929v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141929v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/index.html

Participating hosts (45 -> 42)
------------------------------

  Missing    (3): fi-tgl-1115g4 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141929v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-await:
    - {bat-arls-6}:       [PASS][3] -> [FAIL][4] +1 other test fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-arls-6/igt@gem_exec_fence@basic-await.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-arls-6/igt@gem_exec_fence@basic-await.html

  
Known issues
------------

  Here are the changes found in Patchwork_141929v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][7] -> [ABORT][8] ([i915#12061]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-mtlp-8/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][9] -> [ABORT][10] ([i915#12919]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][11] -> [ABORT][12] ([i915#12061]) +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][13] -> [DMESG-WARN][14] ([i915#12253])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         [PASS][15] -> [SKIP][16] ([i915#9197])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][17] ([i915#12904]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/bat-apl-1/igt@dmabuf@all-tests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/bat-apl-1/igt@dmabuf@all-tests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15837 -> Patchwork_141929v3

  CI-20190529: 20190529
  CI_DRM_15837: 8f7b64e137723da601f3c07d0cda22566cf994d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8154: 8603734a61b57f766ee60f24e63d18f88232a3c6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141929v3: 8f7b64e137723da601f3c07d0cda22566cf994d5 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141929v3/index.html
