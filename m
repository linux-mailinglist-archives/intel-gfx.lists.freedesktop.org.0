Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D848148BF6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 17:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C7C6E402;
	Fri, 24 Jan 2020 16:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7221A6E400;
 Fri, 24 Jan 2020 16:25:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6289DA010F;
 Fri, 24 Jan 2020 16:25:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 16:25:20 -0000
Message-ID: <157988312037.15090.17649204930569501101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124115133.53360-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124115133.53360-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_GTT_scratch_pages_=28rev9=29?=
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

Series: drm/i915/gt: Poison GTT scratch pages (rev9)
URL   : https://patchwork.freedesktop.org/series/72423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7809 -> Patchwork_16252
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16252 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16252, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16252:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  
Known issues
------------

  Here are the changes found in Patchwork_16252 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][7] -> [DMESG-WARN][8] ([i915#889]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#563])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-FAIL][12] ([i915#889]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#263])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][15] ([i915#694]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][17] ([i915#289]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-u2/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#889]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][21] ([i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-kbl-x1275:       [INCOMPLETE][23] -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [FAIL][25] ([i915#410]) -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][27] ([IGT#4] / [i915#263]) -> [FAIL][28] ([i915#323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-skl-6700k2:      [FAIL][29] ([i915#410]) -> [SKIP][30] ([fdo#109271]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#410]: https://gitlab.freedesktop.org/drm/intel/issues/410
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7809 -> Patchwork_16252

  CI-20190529: 20190529
  CI_DRM_7809: 861f608ce6e3c1a1ad320a5d18055601cff36e45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16252: 73604986303d48262f3a1e38f1806b72b056343f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

73604986303d drm/i915/gt: Poison GTT scratch pages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16252/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
