Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF34163588
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 22:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16036E409;
	Tue, 18 Feb 2020 21:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2F7D6E408;
 Tue, 18 Feb 2020 21:53:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB622A0087;
 Tue, 18 Feb 2020 21:53:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 21:53:31 -0000
Message-ID: <158206281173.31432.11233599537821708071@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Check_for_a?=
 =?utf-8?q?ny_sign_of_request_starting_in_wait=5Ffor=5Fsubmit=28=29?=
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

Series: series starting with [01/12] drm/i915/selftests: Check for any sign of request starting in wait_for_submit()
URL   : https://patchwork.freedesktop.org/series/73583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7962 -> Patchwork_16600
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16600 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16600, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16600:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-skl-6600u/igt@i915_selftest@live_execlists.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-skl-guc/igt@i915_selftest@live_execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [INCOMPLETE][3] ([i915#1233]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
    - {fi-tgl-dsi}:       [INCOMPLETE][5] ([i915#1233]) -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       [FAIL][7] ([i915#584]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-tgl-dsi/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-tgl-u}:         [FAIL][9] ([i915#584]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-tgl-u/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16600 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][11] -> [INCOMPLETE][12] ([i915#45])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-glk-dsi:         [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-glk-dsi/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-glk-dsi/igt@i915_selftest@live_execlists.html
    - fi-icl-u3:          [PASS][15] -> [INCOMPLETE][16] ([i915#140])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-icl-u3/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-icl-u3/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [PASS][17] -> [DMESG-FAIL][18] ([i915#877])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-u2:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-icl-u2/igt@i915_selftest@live_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-icl-u2/igt@i915_selftest@live_gtt.html
    - fi-bxt-dsi:         [PASS][21] -> [TIMEOUT][22] ([fdo#112271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         [INCOMPLETE][23] ([i915#937]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-ehl-1/igt@gem_exec_parallel@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-ehl-1/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][25] ([fdo#112271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][27] ([fdo#112271] / [i915#1084]) -> [INCOMPLETE][28] ([i915#694] / [i915#816])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7962/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (46 -> 43)
------------------------------

  Additional (5): fi-skl-guc fi-ilk-650 fi-gdg-551 fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-guc fi-ctg-p8600 fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7962 -> Patchwork_16600

  CI-20190529: 20190529
  CI_DRM_7962: ee8b2f14a46e30de565d49ed4ac743c2e9d0027d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16600: 04c7e9bbd9a224c118e35ed4417c7407fee94063 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

04c7e9bbd9a2 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
cf0279a9dfdd drm/i915/gt: Declare when we enabled timeslicing
8fd6b67e363b drm/i915/gt: Refactor l3cc/mocs availability
2c32b549cc8d drm/i915: Read rawclk_freq earlier
1d06fdaaf50f drm/i915/selftest: Analyse timestamp behaviour across context switches
cf261859e482 drm/i915/gem: Consolidate ctx->engines[] release
541f72809fce drm/i915/gem: Check that the context wasn't closed during setup
9ba40b15b759 drm/i915/gt: Prevent allocation on a banned context
a2db240005d4 drm/i915/execlists: Check the sentinel is alone in the ELSP
181edb75b6c9 drm/i915/gt: Show the cumulative context runtime in engine debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16600/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
