Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D18101A10BF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84BD289C55;
	Tue,  7 Apr 2020 15:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E201489C55;
 Tue,  7 Apr 2020 15:55:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB359A41FB;
 Tue,  7 Apr 2020 15:55:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Apr 2020 15:55:22 -0000
Message-ID: <158627492289.26325.9659789444804770718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407103422.28222-1-jani.nikula@intel.com>
In-Reply-To: <20200407103422.28222-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/hdmi=3A_remove_unused_inte?=
 =?utf-8?b?bF9oZG1pX2hkY3AyX3Byb3RvY29sKCkgKHJldjIp?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/hdmi: remove unused intel_hdmi_hdcp2_protocol() (rev2)
URL   : https://patchwork.freedesktop.org/series/75608/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17238
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17238 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17238, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17238:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-bsw-nick/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17238 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [PASS][2] -> [INCOMPLETE][3] ([i915#1250])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [PASS][4] -> [DMESG-FAIL][5] ([i915#62]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6700k2:      [PASS][6] -> [INCOMPLETE][7] ([i915#151])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([i915#976])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [PASS][10] -> [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) +14 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [PASS][12] -> [DMESG-WARN][13] ([i915#62] / [i915#92]) +16 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][14] ([i915#1158]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][16] ([i915#1580]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (53 -> 46)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17238

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17238: 972f82fdc5313e47fb2dc5b7165abe60f858ef55 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

972f82fdc531 drm/i915: drop a bunch of superfluous inlines
aa3e89feff59 drm/i915/hdmi: remove unused intel_hdmi_hdcp2_protocol()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17238/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
