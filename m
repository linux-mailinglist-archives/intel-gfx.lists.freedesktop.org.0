Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B28147444
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 00:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DCB6E169;
	Thu, 23 Jan 2020 23:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C2096E15D;
 Thu, 23 Jan 2020 23:00:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5411FA0119;
 Thu, 23 Jan 2020 23:00:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 23:00:57 -0000
Message-ID: <157982045731.1145.10394828705181436459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123135604.1402572-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200123135604.1402572-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Re-enable_RPS?=
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

Series: drm/i915/tgl: Re-enable RPS
URL   : https://patchwork.freedesktop.org/series/72471/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7804 -> Patchwork_16236
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/index.html

Known issues
------------

  Here are the changes found in Patchwork_16236 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_ctx_param@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@gem_ctx_param@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-tgl-y/igt@gem_ctx_param@basic.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][7] -> [DMESG-WARN][8] ([i915#889])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10] ([i915#671])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][11] -> [INCOMPLETE][12] ([i915#148])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][13] ([fdo#112271] / [i915#816]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][15] ([i915#694]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [TIMEOUT][17] ([fdo#112271]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][21] ([CI#94] / [i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][23] ([fdo#112271]) -> [FAIL][24] ([i915#694])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][25] ([i915#725]) -> [DMESG-FAIL][26] ([i915#553] / [i915#725])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (49 -> 44)
------------------------------

  Additional (2): fi-hsw-peppy fi-snb-2600 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7804 -> Patchwork_16236

  CI-20190529: 20190529
  CI_DRM_7804: 74ed9d57007ab848a57ec6d785de4187b70acd9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16236: 6310c73c61b592e5632772c78c8d3068284529e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6310c73c61b5 drm/i915/tgl: Re-enable RPS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16236/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
