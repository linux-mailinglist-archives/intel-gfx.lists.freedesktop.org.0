Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085379EE57E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 12:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6517010E2ED;
	Thu, 12 Dec 2024 11:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79F210E2ED;
 Thu, 12 Dec 2024 11:51:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/display=3A_use_ERR=5F?=
 =?utf-8?q?PTR_on_DP_tunnel_manager_creation_fail_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2024 11:51:58 -0000
Message-ID: <173400431880.1551260.12013779382242093013@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
In-Reply-To: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
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

Series: drm/display: use ERR_PTR on DP tunnel manager creation fail (rev2)
URL   : https://patchwork.freedesktop.org/series/142423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15830 -> Patchwork_142423v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142423v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142423v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/index.html

Participating hosts (47 -> 45)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142423v2:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@sysfs:
    - bat-arls-5:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-arls-5/igt@debugfs_test@sysfs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-arls-5/igt@debugfs_test@sysfs.html

  
Known issues
------------

  Here are the changes found in Patchwork_142423v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [PASS][3] -> [DMESG-WARN][4] ([i915#4423])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-arls-5/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-adls-6:         [PASS][7] -> [FAIL][8] ([i915#12903])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][9] -> [FAIL][10] ([i915#12903])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [PASS][11] -> [INCOMPLETE][12] ([i915#13050])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/fi-skl-6600u/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/fi-skl-6600u/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1:
    - bat-apl-1:          [DMESG-WARN][13] ([i915#12918]) -> [PASS][14] +3 other tests pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-apl-1:          [DMESG-WARN][15] ([i915#12921]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15830/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
  [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423


Build changes
-------------

  * Linux: CI_DRM_15830 -> Patchwork_142423v2

  CI-20190529: 20190529
  CI_DRM_15830: 7b441ab54824526dd570dfbfbef51bcd2ba4c5b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8150: 7812065f4aebab1629b570bd78ef71e09480b359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142423v2: 7b441ab54824526dd570dfbfbef51bcd2ba4c5b5 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v2/index.html
