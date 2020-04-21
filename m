Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE81B2955
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813E388FE1;
	Tue, 21 Apr 2020 14:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2188388FE1;
 Tue, 21 Apr 2020 14:21:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A7F3A011A;
 Tue, 21 Apr 2020 14:21:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Tue, 21 Apr 2020 14:21:56 -0000
Message-ID: <158747891607.17662.13536722068150476888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Make_define_for_lrc_sta?=
 =?utf-8?q?te_offset?=
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

Series: series starting with [1/5] drm/i915: Make define for lrc state offset
URL   : https://patchwork.freedesktop.org/series/76262/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8343 -> Patchwork_17405
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17405 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17405, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17405:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-byt-j1900/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/fi-byt-j1900/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17405 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [DMESG-FAIL][3] ([i915#1751]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [FAIL][5] ([i915#976]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][7] ([i915#62]) -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [DMESG-FAIL][9] -> [DMESG-FAIL][10] ([i915#1754])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/fi-icl-u2/igt@i915_selftest@live@gt_pm.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-kbl-7560u fi-bwr-2160 
  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8343 -> Patchwork_17405

  CI-20190529: 20190529
  CI_DRM_8343: a5f7098d36b9370b08717c04d894d01c7cb4320b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17405: c99d6bd66f5b1b45e20e46b04c1b35b38aaf7af3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c99d6bd66f5b drm/i915: Split ctx timestamp selftest into two
7a108f5f4ddb drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
2f150abce7d5 drm/i915: Add live selftests for indirect ctx batchbuffers
c968fc0ee7cf drm/i915: Add per ctx batchbuffer wa for timestamp
52efd944a36d drm/i915: Make define for lrc state offset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17405/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
