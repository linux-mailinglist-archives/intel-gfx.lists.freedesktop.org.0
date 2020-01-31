Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9338614EF70
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E486E219;
	Fri, 31 Jan 2020 15:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9E676E219;
 Fri, 31 Jan 2020 15:20:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7B71A0094;
 Fri, 31 Jan 2020 15:20:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Fri, 31 Jan 2020 15:20:26 -0000
Message-ID: <158048402685.13123.4245877645413256012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131114258.22306-1-animesh.manna@intel.com>
In-Reply-To: <20200131114258.22306-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Enable_lmem_for_dsb?=
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

Series: drm/i915/dsb: Enable lmem for dsb
URL   : https://patchwork.freedesktop.org/series/72818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7850 -> Patchwork_16355
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16355:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-u}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-tgl-u/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-tgl-u/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16355 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271] / [i915#1084])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#563])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_store@basic-all:
    - fi-apl-guc:         [TIMEOUT][9] ([fdo#112271]) -> [PASS][10] +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_exec_store@basic-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-apl-guc/igt@gem_exec_store@basic-all.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-apl-guc:         [SKIP][11] ([fdo#109271]) -> [PASS][12] +47 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-apl-guc/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111407]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (43 -> 44)
------------------------------

  Additional (10): fi-bdw-5557u fi-bsw-n3050 fi-byt-j1900 fi-skl-6770hq fi-whl-u fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-kbl-r fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7560u fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7850 -> Patchwork_16355

  CI-20190529: 20190529
  CI_DRM_7850: ae66f2257648ce52c51298506977baa32873c9d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16355: 1dd958225f8bd0be5aec69f0ff5bc3c942607f26 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1dd958225f8b drm/i915/dsb: Enable lmem for dsb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16355/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
