Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D601565A9
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 18:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0A66E398;
	Sat,  8 Feb 2020 17:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0E866E397;
 Sat,  8 Feb 2020 17:04:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A84DDA0118;
 Sat,  8 Feb 2020 17:04:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 08 Feb 2020 17:04:28 -0000
Message-ID: <158118146865.30229.2247177053356130324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208162654.3029085-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200208162654.3029085-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/gem=5Fctx=5Fexec=3A_Flood_the_nohangcheck_with_spinners?=
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

Series: i915/gem_ctx_exec: Flood the nohangcheck with spinners
URL   : https://patchwork.freedesktop.org/series/73193/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7892 -> IGTPW_4116
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/index.html

Known issues
------------

  Here are the changes found in IGTPW_4116 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_mman:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#103927])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-apl-guc/igt@i915_selftest@live_mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-apl-guc/igt@i915_selftest@live_mman.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][3] ([fdo#103375]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][5] ([i915#92]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][11] ([fdo#109271]) -> [PASS][12] +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][13] ([i915#106] / [i915#188]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][15] ([fdo#112271]) -> [FAIL][16] ([i915#694])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][17] ([fdo#103375]) -> [INCOMPLETE][18] ([i915#1078] / [i915#283])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111096] / [i915#323]) -> [FAIL][20] ([fdo#111407])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (44 -> 45)
------------------------------

  Additional (7): fi-bxt-dsi fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-ilk-650 fi-blb-e6850 fi-skl-6600u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5427 -> IGTPW_4116

  CI-20190529: 20190529
  CI_DRM_7892: c53ff44eb14e48089e25c34874b318e8f0d11c4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4116: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/index.html
  IGT_5427: b7aaa77467742b977b1ea8716d90c7a9a2768220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4116/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
