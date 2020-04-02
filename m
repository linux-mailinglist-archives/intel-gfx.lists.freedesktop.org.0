Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D4E19C148
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 14:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2025A89FC8;
	Thu,  2 Apr 2020 12:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C55E189138;
 Thu,  2 Apr 2020 12:41:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3098A41FB;
 Thu,  2 Apr 2020 12:41:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 02 Apr 2020 12:41:15 -0000
Message-ID: <158583127579.24295.4002285797535619394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402114819.17232-1-jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915/audio=3A_use_struct_drm?=
 =?utf-8?q?=5Fdevice_based_logging?=
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

Series: series starting with [01/17] drm/i915/audio: use struct drm_device based logging
URL   : https://patchwork.freedesktop.org/series/75414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8237 -> Patchwork_17179
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/index.html

Known issues
------------

  Here are the changes found in Patchwork_17179 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][3] ([i915#289]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-icl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][5] ([i915#62]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [INCOMPLETE][7] ([i915#1382]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [INCOMPLETE][9] ([i915#1505] / [i915#1581]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-icl-u2/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-icl-u2/igt@i915_selftest@live@requests.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][12] +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [PASS][14] +21 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8237/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [i915#1382]: https://gitlab.freedesktop.org/drm/intel/issues/1382
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (42 -> 45)
------------------------------

  Additional (6): fi-skl-guc fi-snb-2520m fi-kbl-7500u fi-ivb-3770 fi-skl-6600u fi-snb-2600 
  Missing    (3): fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8237 -> Patchwork_17179

  CI-20190529: 20190529
  CI_DRM_8237: a9a502feaca70cf6ae0259977095244a0a33c138 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17179: a2696b2a35a3236787b5ad5eda97670bad71a7de @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2696b2a35a3 drm/i915/uc: prefer struct drm_device based logging
8488b70421b5 drm/i915/gt: prefer struct drm_device based logging
e8205d33d8cb drm/i915/stolen: prefer struct drm_device based logging
4177202ed569 drm/i915/uncore: prefer struct drm_device based logging
a6b82b4321ac drm/i915/dram: prefer struct drm_device based logging
75a3dc9d0164 drm/i915/pmu: prefer struct drm_device based logging
b6bdc53eb65d drm/i915/error: prefer struct drm_device based logging
16ebe7bc1db8 drm/i915/uc: prefer struct drm_device based logging
d94202a534f7 drm/i915/switcheroo: use struct drm_device based logging
7c27937f4177 drm/i915/state: use struct drm_device based logging
0ea9315752c2 drm/i915/bw: use struct drm_device based logging
3bd7e63ad124 drm/i915/debugfs: use struct drm_device based logging
242083a5ecc1 drm/i915/crt: use struct drm_device based logging
33d44f72afab drm/i915/dp: use struct drm_device based logging
bdfa59ff420a drm/i915/tc: use struct drm_device based logging
555310b4127d drm/i915/panel: use struct drm_device based logging
e596492dfa04 drm/i915/audio: use struct drm_device based logging

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17179/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
