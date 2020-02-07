Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B32A1553A6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 09:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AE26EA9D;
	Fri,  7 Feb 2020 08:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 919EF6EA9D;
 Fri,  7 Feb 2020 08:22:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 891E2A0003;
 Fri,  7 Feb 2020 08:22:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 07 Feb 2020 08:22:59 -0000
Message-ID: <158106377953.8754.2586064321233168662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZGlz?=
 =?utf-8?q?able_drm=5Fglobal=5Fmutex_for_most_drivers_=28rev7=29?=
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

Series: disable drm_global_mutex for most drivers (rev7)
URL   : https://patchwork.freedesktop.org/series/72711/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7877 -> Patchwork_16468
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/index.html

Known issues
------------

  Here are the changes found in Patchwork_16468 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-icl-y/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [INCOMPLETE][3] ([i915#151]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][5] ([IGT#4] / [i915#263]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-cml-u2:          [DMESG-WARN][7] ([IGT#4]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [INCOMPLETE][11] ([i915#1078] / [i915#283]) -> [INCOMPLETE][12] ([i915#283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323


Participating hosts (48 -> 43)
------------------------------

  Additional (4): fi-glk-dsi fi-byt-n2820 fi-skl-6700k2 fi-bsw-n3050 
  Missing    (9): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-whl-u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5423 -> IGTPW_4015
  * Linux: CI_DRM_7877 -> Patchwork_16468

  CI-20190529: 20190529
  CI_DRM_7877: 360145994da1f2f5a44e2241a08e63536437bc70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4015: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4015/index.html
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16468: 5f99ae3ba093873896586f452810b86e787caaf2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5f99ae3ba093 drm: Nerf drm_global_mutex BKL for good drivers
ac678e1a5792 drm: Push drm_global_mutex locking in drm_open
ba5283347571 drm/client: Rename _force to _locked
ccc8815ea62f drm/fbdev-helper: don't force restores
a4ef0544be0f drm: Complain if drivers still use the ->load callback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
