Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88E11561CD
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 01:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD416E142;
	Sat,  8 Feb 2020 00:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 999FB6E136;
 Sat,  8 Feb 2020 00:09:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96629A00C7;
 Sat,  8 Feb 2020 00:09:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 08 Feb 2020 00:09:33 -0000
Message-ID: <158112057361.30226.12518617120334346540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_use_uninitialized_=27ret=27_=28rev2=29?=
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

Series: drm/i915: Don't use uninitialized 'ret' (rev2)
URL   : https://patchwork.freedesktop.org/series/73157/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7889 -> Patchwork_16490
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/index.html

Known issues
------------

  Here are the changes found in Patchwork_16490 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#563])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-u3:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-icl-u3/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-icl-u3/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [SKIP][9] ([fdo#109271]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][13] ([fdo#108569]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-icl-y/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_contexts:
    - fi-bwr-2160:        [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-lmem:        [TIMEOUT][17] ([fdo#111732] / [fdo#112271]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-skl-lmem/igt@i915_selftest@live_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-skl-lmem/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][19] ([i915#217]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][21] ([fdo#112271] / [i915#1084]) -> [FAIL][22] ([i915#694])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][23] ([i915#694]) -> [TIMEOUT][24] ([fdo#112271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7889/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-6770hq fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7889 -> Patchwork_16490

  CI-20190529: 20190529
  CI_DRM_7889: d0dffc86bf0eadc65efcf624045a9df79e0591d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5426: 973bbbff388b555ac647777460ee8db043380fe5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16490: 5eaa41caba431acf84655df6f30274ac80ff0550 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5eaa41caba43 drm/i915: Don't use uninitialized 'ret'

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16490/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
