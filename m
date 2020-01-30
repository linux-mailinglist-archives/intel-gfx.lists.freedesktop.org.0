Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D84A814DA8B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 13:21:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428246F991;
	Thu, 30 Jan 2020 12:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 430CD6F98F;
 Thu, 30 Jan 2020 12:21:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B5D4A0093;
 Thu, 30 Jan 2020 12:21:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 12:21:07 -0000
Message-ID: <158038686721.21032.13148902193654883912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Skip_global_serialis?=
 =?utf-8?q?ation_of_clear=5Frange_for_bxt_vtd_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/gt: Skip global serialisation of clear_range for bxt vtd (rev2)
URL   : https://patchwork.freedesktop.org/series/72766/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7842 -> Patchwork_16332
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/index.html

Known issues
------------

  Here are the changes found in Patchwork_16332 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][1] -> [FAIL][2] ([i915#178])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#770])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-byt-n2820/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][11] ([fdo#112271]) -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (48 -> 38)
------------------------------

  Additional (5): fi-tgl-u fi-glk-dsi fi-bwr-2160 fi-kbl-7560u fi-tgl-y 
  Missing    (15): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-ivb-3770 fi-bsw-kefka fi-blb-e6850 fi-icl-dsi fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7842 -> Patchwork_16332

  CI-20190529: 20190529
  CI_DRM_7842: 34f535513361a22f81bc3b7388755872b73b18f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16332: 2f4d9acf23987a9d89fef3e2984be08a5f5e7a4a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2f4d9acf2398 drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex
bfe1d1389ee6 drm/i915/gt: Skip global serialisation of clear_range for bxt vtd

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16332/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
