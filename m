Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25393154DC8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 22:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774906FB62;
	Thu,  6 Feb 2020 21:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3D3C6FB61;
 Thu,  6 Feb 2020 21:17:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD307A363B;
 Thu,  6 Feb 2020 21:17:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 06 Feb 2020 21:17:26 -0000
Message-ID: <158102384670.15032.6351003445534895962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_g4x+_sprite_dotcloc?=
 =?utf-8?q?k_limit_for_upscaling?=
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

Series: series starting with [1/2] drm/i915: Fix g4x+ sprite dotclock limit for upscaling
URL   : https://patchwork.freedesktop.org/series/73115/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7878 -> Patchwork_16469
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/index.html

Known issues
------------

  Here are the changes found in Patchwork_16469 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111096] / [i915#323])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][7] ([i915#92]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-skl-6770hq/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][13] ([i915#722]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][15] ([fdo#109271]) -> [PASS][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [DMESG-WARN][17] ([i915#106] / [i915#188]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [DMESG-WARN][19] ([i915#92]) -> [FAIL][20] ([i915#178])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (48 -> 41)
------------------------------

  Additional (5): fi-bdw-5557u fi-hsw-peppy fi-bdw-gvtdvm fi-ilk-650 fi-kbl-7560u 
  Missing    (12): fi-tgl-dsi fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-whl-u fi-cfl-8109u fi-elk-e7500 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7878 -> Patchwork_16469

  CI-20190529: 20190529
  CI_DRM_7878: b641da00ab129bfb28b11190cd5e9a4b4ed1e1ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16469: dbea9afb5f77aaa365d7a3438275f97bf597cb7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dbea9afb5f77 drm/i915: Use fb->format->is_yuv for the g4x+ sprite RGB vs. YUV check
bbf311c19a0f drm/i915: Fix g4x+ sprite dotclock limit for upscaling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
