Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E5B17A637
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF6E6EBBE;
	Thu,  5 Mar 2020 13:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A40F6EBBE;
 Thu,  5 Mar 2020 13:18:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61E86A00FD;
 Thu,  5 Mar 2020 13:18:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Caz Yokoyama" <Caz.Yokoyama@intel.com>
Date: Thu, 05 Mar 2020 13:18:12 -0000
Message-ID: <158341429237.17234.3922373311037986682@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
In-Reply-To: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_Revert_=22drm/i915/tgl=3A_Add_extra?=
 =?utf-8?q?_hdc_flush_workaround=22?=
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

Series: series starting with [1/1] Revert "drm/i915/tgl: Add extra hdc flush workaround"
URL   : https://patchwork.freedesktop.org/series/74293/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8068 -> Patchwork_16829
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/index.html

Known issues
------------

  Here are the changes found in Patchwork_16829 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][5] -> [DMESG-WARN][6] ([i915#44])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8068/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (52 -> 45)
------------------------------

  Additional (1): fi-gdg-551 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8068 -> Patchwork_16829

  CI-20190529: 20190529
  CI_DRM_8068: f8e69af5cca45947ebce78f677b75b0ecc4ba744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5492: 2be153507cdd652843f6ab44cc2a52a7f30206d9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16829: 5351dfbf1590d25e7d0a74142aad1c3513bfd01e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5351dfbf1590 Revert "drm/i915/tgl: Add extra hdc flush workaround"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16829/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
