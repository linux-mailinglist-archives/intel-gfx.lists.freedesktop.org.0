Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790EE1B1745
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 22:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680BE6E291;
	Mon, 20 Apr 2020 20:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5C9E6E27C;
 Mon, 20 Apr 2020 20:40:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5EB9A0088;
 Mon, 20 Apr 2020 20:40:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 20 Apr 2020 20:40:27 -0000
Message-ID: <158741522778.29876.2314328982796674899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420140438.14672-1-jani.nikula@intel.com>
In-Reply-To: <20200420140438.14672-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
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
URL   : https://patchwork.freedesktop.org/series/76200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8334 -> Patchwork_17390
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/index.html

Known issues
------------

  Here are the changes found in Patchwork_17390 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#1751])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-skl-6770hq:      [PASS][3] -> [SKIP][4] ([fdo#109271]) +13 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][5] ([i915#203]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/fi-skl-6770hq/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/fi-skl-6770hq/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][7] ([fdo#109271]) -> [FAIL][8] ([i915#62])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][9] ([i915#106]) -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8334/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8334 -> Patchwork_17390

  CI-20190529: 20190529
  CI_DRM_8334: 123d6397d46c0bec471a43d2da881e87a30c5ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17390: a0e0d01d87d85f76dc2668f955501e0c4baf21d3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a0e0d01d87d8 drm/i915: drop a bunch of superfluous inlines
6dc2074798b5 drm/i915/hdmi: remove unused intel_hdmi_hdcp2_protocol()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17390/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
