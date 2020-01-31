Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE5714E8E9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 07:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7826E949;
	Fri, 31 Jan 2020 06:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AE6B6E949;
 Fri, 31 Jan 2020 06:43:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9301BA0119;
 Fri, 31 Jan 2020 06:43:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 31 Jan 2020 06:43:28 -0000
Message-ID: <158045300859.13124.3644138822136520467@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?able_drm=5Fglobal=5Fmutex_for_most_drivers_=28rev3=29?=
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

Series: disable drm_global_mutex for most drivers (rev3)
URL   : https://patchwork.freedesktop.org/series/72711/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7847 -> Patchwork_16349
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16349 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16349, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16349:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-cml-u2:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cml-u2/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-cml-u2/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16349 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][5] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][9] ([fdo#106070] / [i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [DMESG-FAIL][12] ([i915#553] / [i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][13] ([i915#816]) -> [FAIL][14] ([i915#999])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-n2820/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/fi-byt-n2820/igt@runner@aborted.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (47 -> 40)
------------------------------

  Additional (4): fi-bdw-gvtdvm fi-gdg-551 fi-elk-e7500 fi-kbl-7500u 
  Missing    (11): fi-icl-1065g7 fi-bdw-samus fi-bsw-n3050 fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-skl-lmem fi-blb-e6850 fi-tgl-y fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7847 -> Patchwork_16349

  CI-20190529: 20190529
  CI_DRM_7847: 2515f8cc5d56f8791232dc6b077a370658d4cecf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16349: ad79bc5f5388f9d9888c7bd9b86c5eed776c6b00 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ad79bc5f5388 drm: Nerf drm_global_mutex BKL for good drivers
e55cc9d8da91 drm: Push drm_global_mutex locking in drm_open
819b18c6d96b drm/client: Rename _force to _locked
769f93d67513 drm/fbdev-helper: don't force restores
5b5c3976292b drm: Complain if drivers still use the ->load callback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16349/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
