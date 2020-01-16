Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A78413F99B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970446EEAF;
	Thu, 16 Jan 2020 19:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 314666EEAE;
 Thu, 16 Jan 2020 19:36:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28B55A0134;
 Thu, 16 Jan 2020 19:36:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 19:36:24 -0000
Message-ID: <157920338413.12914.3818209496987105089@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Keep_track_of_requ?=
 =?utf-8?q?est_among_the_scheduling_lists?=
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

Series: series starting with [CI,1/3] drm/i915: Keep track of request among the scheduling lists
URL   : https://patchwork.freedesktop.org/series/72131/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7757 -> Patchwork_16134
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/index.html

Known issues
------------

  Here are the changes found in Patchwork_16134 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [PASS][5] -> [INCOMPLETE][6] ([i915#879])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#656])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([fdo#111407])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-byt-j1900/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [DMESG-FAIL][17] ([i915#722]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7757/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (45 -> 39)
------------------------------

  Additional (5): fi-whl-u fi-ivb-3770 fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (11): fi-hsw-4770r fi-ilk-m540 fi-ehl-1 fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7757 -> Patchwork_16134

  CI-20190529: 20190529
  CI_DRM_7757: 181f4cf3bdbbf2a8a67e406ef16f1cdc957379b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16134: 09d65593f8f88baa7be6f114f1abebf1633db788 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16134/build_32bit.log

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

09d65593f8f8 drm/i915/execlists: Offline error capture
79d129bf5531 drm/i915/gt: Allow temporary suspension of inflight requests
8fa87a3dc944 drm/i915: Keep track of request among the scheduling lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16134/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
