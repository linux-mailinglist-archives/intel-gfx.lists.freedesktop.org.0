Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8845813B72F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687586E353;
	Wed, 15 Jan 2020 01:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 445B06E353;
 Wed, 15 Jan 2020 01:47:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BE98A0138;
 Wed, 15 Jan 2020 01:47:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akeem G Abodunrin" <akeem.g.abodunrin@intel.com>
Date: Wed, 15 Jan 2020 01:47:06 -0000
Message-ID: <157905282622.2007.926517273286531564@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_HWs?=
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

Series: Security mitigation for Intel Gen7 HWs
URL   : https://patchwork.freedesktop.org/series/72028/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746 -> Patchwork_16101
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/index.html

Known issues
------------

  Here are the changes found in Patchwork_16101 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-WARN][2] ([i915#889]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#198])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#770]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][11] ([fdo#109635]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 42)
------------------------------

  Additional (9): fi-glk-dsi fi-bsw-kefka fi-elk-e7500 fi-pnv-d510 fi-icl-y fi-icl-guc fi-icl-dsi fi-bsw-nick fi-snb-2600 
  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-blb-e6850 fi-tgl-y 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16101

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16101: eb1ef8928cfc94d5f6d363c0e8daf01da193a16c @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16101/build_32bit.log

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

eb1ef8928cfc drm/i915/gen7: Clear all EU/L3 residual contexts
5ebdedee01b7 drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
