Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5358F17A5A3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEDA6EBBB;
	Thu,  5 Mar 2020 12:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8705F6E316;
 Thu,  5 Mar 2020 12:49:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F54CA00CC;
 Thu,  5 Mar 2020 12:49:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Mar 2020 12:49:24 -0000
Message-ID: <158341256449.17237.5779807669542578704@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304212928.2557367-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200304212928.2557367-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Limit_struct=5Fmutex_to_eb=5Freserve?=
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

Series: drm/i915/gem: Limit struct_mutex to eb_reserve
URL   : https://patchwork.freedesktop.org/series/74291/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8068 -> Patchwork_16828
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16828 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16828, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16828:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@basic:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-6700k2/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-6700k2/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - fi-skl-guc:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-guc/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-guc/igt@gem_exec_parallel@contexts.html
    - fi-icl-dsi:         [PASS][5] -> [TIMEOUT][6] +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-icl-dsi/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-icl-dsi/igt@gem_exec_parallel@contexts.html
    - fi-skl-6600u:       [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-6600u/igt@gem_exec_parallel@contexts.html
    - fi-skl-6770hq:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-6770hq/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-6770hq/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-s:           [PASS][11] -> [TIMEOUT][12] +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cml-s/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-cml-s/igt@gem_exec_parallel@fds.html
    - fi-cfl-guc:         [PASS][13] -> [TIMEOUT][14] +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cfl-guc/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-cfl-guc/igt@gem_exec_parallel@fds.html
    - fi-skl-lmem:        [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-lmem/igt@gem_exec_parallel@fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-lmem/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_store@basic-all:
    - fi-cfl-8109u:       [PASS][17] -> [TIMEOUT][18] +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cfl-8109u/igt@gem_exec_store@basic-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-cfl-8109u/igt@gem_exec_store@basic-all.html
    - fi-kbl-x1275:       [PASS][19] -> [TIMEOUT][20] +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-x1275/igt@gem_exec_store@basic-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-x1275/igt@gem_exec_store@basic-all.html
    - fi-icl-y:           [PASS][21] -> [TIMEOUT][22] +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-icl-y/igt@gem_exec_store@basic-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-icl-y/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic:
    - fi-icl-u2:          [PASS][23] -> [TIMEOUT][24] +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-icl-u2/igt@gem_exec_suspend@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-icl-u2/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-u2:          [PASS][25] -> [TIMEOUT][26] +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-r:           [PASS][27] -> [TIMEOUT][28] +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-guc:         [PASS][29] -> [TIMEOUT][30] +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-guc/igt@gem_exec_suspend@basic-s3.html
    - fi-kbl-8809g:       [PASS][31] -> [TIMEOUT][32] +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-8809g/igt@gem_exec_suspend@basic-s3.html
    - fi-bdw-5557u:       [PASS][33] -> [TIMEOUT][34] +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-guc:         [PASS][35] -> [TIMEOUT][36] +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-icl-guc/igt@gem_exec_suspend@basic-s4-devices.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-icl-guc/igt@gem_exec_suspend@basic-s4-devices.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-tgl-u/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - {fi-kbl-7560u}:     [PASS][39] -> [TIMEOUT][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-7560u/igt@gem_exec_parallel@fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-7560u/igt@gem_exec_parallel@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16828 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@mmap:
    - fi-skl-6770hq:      [PASS][41] -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-6770hq/igt@fbdev@mmap.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-6770hq/igt@fbdev@mmap.html

  * igt@gem_exec_parallel@fds:
    - fi-skl-guc:         [PASS][43] -> [TIMEOUT][44] ([i915#1084]) +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-guc/igt@gem_exec_parallel@fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_store@basic-all:
    - fi-skl-6600u:       [PASS][45] -> [TIMEOUT][46] ([i915#1084]) +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-6600u/igt@gem_exec_store@basic-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-6600u/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-lmem:        [PASS][47] -> [TIMEOUT][48] ([i915#1084]) +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][49] -> [FAIL][50] ([CI#94])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][51] -> [DMESG-WARN][52] ([CI#94] / [i915#402]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][53] -> [FAIL][54] ([fdo#111407])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][55] ([CI#94] / [i915#402]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][57] ([i915#424]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (52 -> 45)
------------------------------

  Additional (1): fi-gdg-551 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8068 -> Patchwork_16828

  CI-20190529: 20190529
  CI_DRM_8068: f8e69af5cca45947ebce78f677b75b0ecc4ba744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5492: 2be153507cdd652843f6ab44cc2a52a7f30206d9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16828: 116d07e2ebcb119bf64ca2f52acec5ab395d07ec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

116d07e2ebcb drm/i915/gem: Limit struct_mutex to eb_reserve

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16828/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
