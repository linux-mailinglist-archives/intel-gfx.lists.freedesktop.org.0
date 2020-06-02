Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5DA1EBF0A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAB96E41F;
	Tue,  2 Jun 2020 15:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A9A06E41D;
 Tue,  2 Jun 2020 15:31:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54669A0091;
 Tue,  2 Jun 2020 15:31:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 15:31:12 -0000
Message-ID: <159111187231.21427.14144857571350440750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602140541.5481-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602140541.5481-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Identify_Cometlake_plat?=
 =?utf-8?q?form?=
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

Series: series starting with [1/2] drm/i915: Identify Cometlake platform
URL   : https://patchwork.freedesktop.org/series/77922/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8572 -> Patchwork_17843
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17843 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17843, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17843:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-icl-y/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-icl-y/igt@i915_selftest@live@workarounds.html
    - fi-tgl-y:           [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-tgl-y/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-tgl-y/igt@i915_selftest@live@workarounds.html
    - fi-icl-guc:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-icl-guc/igt@i915_selftest@live@workarounds.html
    - fi-icl-u2:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-icl-u2/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-icl-u2/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {fi-tgl-dsi}:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
    - {fi-ehl-1}:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-ehl-1/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-ehl-1/igt@i915_selftest@live@workarounds.html
    - {fi-tgl-u}:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-tgl-u/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-tgl-u/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17843 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][19] ([i915#62]) -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8572/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8572 -> Patchwork_17843

  CI-20190529: 20190529
  CI_DRM_8572: 8a7011d0518058c59f13f10af147d1f97b0a1cd0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17843: fd76a0e5a47e2313ced8653e0272073b12370610 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fd76a0e5a47e drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs
cb7a71f01dd4 drm/i915: Identify Cometlake platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17843/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
