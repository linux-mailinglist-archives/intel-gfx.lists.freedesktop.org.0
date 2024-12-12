Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5539EEA62
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 16:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8264810E0B1;
	Thu, 12 Dec 2024 15:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FA310E0B1;
 Thu, 12 Dec 2024 15:13:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/display=3A_use_ERR=5F?=
 =?utf-8?q?PTR_on_DP_tunnel_manager_creation_fail_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2024 15:13:30 -0000
Message-ID: <173401641026.1615741.13628060090794173183@b555e5b46a47>
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

Series: drm/display: use ERR_PTR on DP tunnel manager creation fail (rev3)
URL   : https://patchwork.freedesktop.org/series/142423/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15831 -> Patchwork_142423v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/index.html

Participating hosts (47 -> 46)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142423v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][2] -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@dmabuf@all-tests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [ABORT][4] ([i915#13169])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][5] ([i915#13203]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/fi-pnv-d510/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][7] ([i915#12903]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [DMESG-WARN][9] ([i915#12806]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/fi-hsw-4770/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/fi-hsw-4770/igt@i915_selftest@live.html
    - bat-arlh-3:         [INCOMPLETE][11] ([i915#12435] / [i915#13194]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@execlists:
    - bat-arlh-3:         [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arlh-3/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-arlh-3/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - bat-jsl-3:          [INCOMPLETE][15] ([i915#13241]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-jsl-3/igt@i915_selftest@live@mman.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-jsl-3/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][17] ([i915#12061]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-apl-1:          [DMESG-WARN][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/bat-apl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/bat-apl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13194]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13194
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241


Build changes
-------------

  * Linux: CI_DRM_15831 -> Patchwork_142423v3

  CI-20190529: 20190529
  CI_DRM_15831: f574af90d83d2d7bd4c99cdb79764dea5bf8b20c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8150: 7812065f4aebab1629b570bd78ef71e09480b359 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142423v3: f574af90d83d2d7bd4c99cdb79764dea5bf8b20c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/index.html
