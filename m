Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638521B2B0C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 17:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA32B6E9A5;
	Tue, 21 Apr 2020 15:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 025C66E9A3;
 Tue, 21 Apr 2020 15:21:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3F0DA008A;
 Tue, 21 Apr 2020 15:21:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 15:21:03 -0000
Message-ID: <158748246399.17661.5478399235340917224@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421142236.8614-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421142236.8614-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Disable_C-states_when_measuring_RPS_frequenc?=
 =?utf-8?q?y_response?=
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

Series: drm/i915/selftests: Disable C-states when measuring RPS frequency response
URL   : https://patchwork.freedesktop.org/series/76272/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8343 -> Patchwork_17407
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17407 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17407, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17407:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-icl-y/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17407 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#1751])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][5] -> [DMESG-FAIL][6] ([i915#1751])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][7] -> [DMESG-FAIL][8] ([i915#1751])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][9] -> [DMESG-FAIL][10] ([i915#1751])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12] ([i915#1531] / [i915#1581])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-icl-u2/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-icl-u2/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8109u:       [DMESG-FAIL][13] ([i915#1751]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [DMESG-FAIL][15] ([i915#1751]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [FAIL][17] ([i915#976]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][19] ([i915#62]) -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [DMESG-FAIL][21] -> [DMESG-FAIL][22] ([i915#1754])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/fi-icl-u2/igt@i915_selftest@live@gt_pm.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 42)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8343 -> Patchwork_17407

  CI-20190529: 20190529
  CI_DRM_8343: a5f7098d36b9370b08717c04d894d01c7cb4320b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17407: e7d2ed39c41c9203e2c41b460eada4be5f426d5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e7d2ed39c41c drm/i915/selftests: Disable C-states when measuring RPS frequency response

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17407/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
