Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95461415B3
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 04:23:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC226F9A9;
	Sat, 18 Jan 2020 03:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C9126F9A6;
 Sat, 18 Jan 2020 03:23:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 038BCA0096;
 Sat, 18 Jan 2020 03:23:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 18 Jan 2020 03:23:07 -0000
Message-ID: <157931778798.11508.8542824720700682512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116211623.53799-1-lyude@redhat.com>
In-Reply-To: <20200116211623.53799-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_eDP_DPCD_aux_backlight_fixes_=28rev7=29?=
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

Series: drm/i915: eDP DPCD aux backlight fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/69914/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7769 -> Patchwork_16163
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/index.html

Known issues
------------

  Here are the changes found in Patchwork_16163 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][7] -> [FAIL][8] ([i915#579])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_perf:
    - fi-apl-guc:         [PASS][11] -> [INCOMPLETE][12] ([fdo#103927])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-apl-guc/igt@i915_selftest@live_perf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-apl-guc/igt@i915_selftest@live_perf.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][13] -> [FAIL][14] ([fdo#111096] / [i915#323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][15] ([i915#505] / [i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][17] ([i915#217]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (42 -> 44)
------------------------------

  Additional (8): fi-hsw-4770r fi-hsw-peppy fi-snb-2520m fi-kbl-r fi-bsw-kefka fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-glk-dsi fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7769 -> Patchwork_16163

  CI-20190529: 20190529
  CI_DRM_7769: 15e78429922635916a012ba594255cf07a5b07ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16163: dab5771741336892a6f969a77fb3bc3f02446eac @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16163/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

dab577174133 drm/i915: Don't use VBT for detecting DPCD backlight controls

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
