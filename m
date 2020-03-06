Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511E117B3AB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80A26EC4B;
	Fri,  6 Mar 2020 01:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FDB56EC4A;
 Fri,  6 Mar 2020 01:18:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 594A0A363D;
 Fri,  6 Mar 2020 01:18:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 01:18:45 -0000
Message-ID: <158345752536.3081.7799989574737121493@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305140247.2761266-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200305140247.2761266-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Limit_struct=5Fmutex_to_eb=5Freserve_=28rev2=29?=
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

Series: drm/i915/gem: Limit struct_mutex to eb_reserve (rev2)
URL   : https://patchwork.freedesktop.org/series/74291/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8071 -> Patchwork_16842
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16842 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16842, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16842:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@basic:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-icl-guc/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-icl-guc/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - fi-skl-guc:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-guc/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-guc/igt@gem_exec_parallel@contexts.html
    - fi-icl-dsi:         [PASS][5] -> [TIMEOUT][6] +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-icl-dsi/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-icl-dsi/igt@gem_exec_parallel@contexts.html
    - fi-skl-6600u:       [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
    - fi-cfl-8700k:       [PASS][9] -> [TIMEOUT][10] +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-cfl-8700k/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-cfl-8700k/igt@gem_exec_parallel@contexts.html
    - fi-skl-lmem:        NOTRUN -> [TIMEOUT][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-lmem/igt@gem_exec_parallel@contexts.html
    - fi-skl-6700k2:      [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-6700k2/igt@gem_exec_parallel@contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-6700k2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-s:           [PASS][14] -> [TIMEOUT][15] +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-cml-s/igt@gem_exec_parallel@fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-cml-s/igt@gem_exec_parallel@fds.html
    - fi-cfl-guc:         [PASS][16] -> [TIMEOUT][17] +9 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-cfl-guc/igt@gem_exec_parallel@fds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-cfl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_store@basic-all:
    - fi-cfl-8109u:       [PASS][18] -> [TIMEOUT][19] +10 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-cfl-8109u/igt@gem_exec_store@basic-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-cfl-8109u/igt@gem_exec_store@basic-all.html
    - fi-apl-guc:         [PASS][20] -> [TIMEOUT][21] +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-apl-guc/igt@gem_exec_store@basic-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-apl-guc/igt@gem_exec_store@basic-all.html
    - fi-kbl-x1275:       [PASS][22] -> [TIMEOUT][23] +9 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-kbl-x1275/igt@gem_exec_store@basic-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-kbl-x1275/igt@gem_exec_store@basic-all.html
    - fi-icl-y:           [PASS][24] -> [TIMEOUT][25] +9 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-icl-y/igt@gem_exec_store@basic-all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-icl-y/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic:
    - fi-icl-u2:          [PASS][26] -> [TIMEOUT][27] +9 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-icl-u2/igt@gem_exec_suspend@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-icl-u2/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-u2:          [PASS][28] -> [TIMEOUT][29] +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-r:           [PASS][30] -> [TIMEOUT][31] +9 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-guc:         [PASS][32] -> [TIMEOUT][33] +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-kbl-8809g:       [PASS][34] -> [TIMEOUT][35] +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
    - fi-bdw-5557u:       NOTRUN -> [TIMEOUT][36] +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [PASS][37] -> [TIMEOUT][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@contexts:
    - {fi-tgl-u}:         [PASS][39] -> [TIMEOUT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-tgl-u/igt@gem_exec_parallel@contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-tgl-u/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16842 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@basic:
    - fi-glk-dsi:         [PASS][41] -> [INCOMPLETE][42] ([i915#58] / [k.org#198133])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-glk-dsi/igt@gem_exec_parallel@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-glk-dsi/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - fi-skl-guc:         [PASS][43] -> [TIMEOUT][44] ([i915#1084]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-guc/igt@gem_exec_parallel@fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_store@basic-all:
    - fi-skl-6600u:       [PASS][45] -> [TIMEOUT][46] ([i915#1084]) +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-6600u/igt@gem_exec_store@basic-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-6600u/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][47] -> [FAIL][48] ([CI#94])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6700k2:      [PASS][49] -> [TIMEOUT][50] ([i915#1084]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-skl-6700k2/igt@gem_flink_basic@bad-flink.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-skl-6700k2/igt@gem_flink_basic@bad-flink.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][51] -> [DMESG-WARN][52] ([CI#94] / [i915#402]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][53] ([CI#94] / [i915#402]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8071/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-skl-lmem fi-bdw-5557u fi-ivb-3770 fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8071 -> Patchwork_16842

  CI-20190529: 20190529
  CI_DRM_8071: c9eab2d6a1df271afd72c2ef771d4590b6baa108 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16842: 6274a5c199895d36b2a43f0192abedbcba1137f6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6274a5c19989 drm/i915/gem: Limit struct_mutex to eb_reserve

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16842/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
