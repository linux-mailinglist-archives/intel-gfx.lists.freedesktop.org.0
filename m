Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39CB16EA2B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 16:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7EA6E8D0;
	Tue, 25 Feb 2020 15:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 501986E8CA;
 Tue, 25 Feb 2020 15:32:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FBECA0071;
 Tue, 25 Feb 2020 15:32:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 25 Feb 2020 15:32:33 -0000
Message-ID: <158264475325.5723.11270889197335850555@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225132342.427055-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225132342.427055-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Mark_up_the_racy_use_of_perf-=3Eexclusive=5Fstrea?=
 =?utf-8?q?m?=
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

Series: drm/i915/perf: Mark up the racy use of perf->exclusive_stream
URL   : https://patchwork.freedesktop.org/series/73905/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8004 -> Patchwork_16703
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/index.html

Known issues
------------

  Here are the changes found in Patchwork_16703 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@vgem_basic@dmabuf-export:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-y/igt@vgem_basic@dmabuf-export.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-tgl-y/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [INCOMPLETE][7] ([i915#140]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][11] ([i915#217] / [i915#976]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8004/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (43 -> 43)
------------------------------

  Additional (8): fi-ehl-1 fi-skl-6770hq fi-ilk-650 fi-snb-2520m fi-gdg-551 fi-elk-e7500 fi-blb-e6850 fi-skl-6600u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-byt-clapper fi-bsw-nick fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8004 -> Patchwork_16703

  CI-20190529: 20190529
  CI_DRM_8004: 1a2e0cce5af4a9ad9694995610ed64578ccc430f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5464: 8cf2f8684992052ab89de1cf328c418224c0c2a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16703: 0dd2fa1856167d951facb19c40185fb2929cf67d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0dd2fa185616 drm/i915/perf: Mark up the racy use of perf->exclusive_stream

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
