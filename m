Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C628415866F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 01:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587AA6ED8F;
	Tue, 11 Feb 2020 00:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1547B6E258;
 Tue, 11 Feb 2020 00:10:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CFBEA0003;
 Tue, 11 Feb 2020 00:10:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 00:10:56 -0000
Message-ID: <158137985602.23973.6140348772244117148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210231047.810929-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200210231047.810929-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Trim_blitter_block_size_=28rev5=29?=
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

Series: drm/i915/selftests: Trim blitter block size (rev5)
URL   : https://patchwork.freedesktop.org/series/73066/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7903 -> Patchwork_16512
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/index.html

Known issues
------------

  Here are the changes found in Patchwork_16512 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111407])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [INCOMPLETE][3] ([i915#392]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][9] ([i915#623]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][11] ([i915#1052]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][13] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][15] ([i915#877]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][17] ([i915#694]) -> [TIMEOUT][18] ([fdo#112271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (47 -> 43)
------------------------------

  Additional (4): fi-hsw-peppy fi-skl-lmem fi-gdg-551 fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-kbl-guc fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7903 -> Patchwork_16512

  CI-20190529: 20190529
  CI_DRM_7903: 47b768c475f4a11a48bc43e6228660f8b26a542b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16512: 1b0c23fd95fa68e8be067333049dd94c47346579 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1b0c23fd95fa drm/i915/selftests: Trim blitter block size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16512/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
