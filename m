Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEBC13A77B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 11:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114386E375;
	Tue, 14 Jan 2020 10:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 082C76E369;
 Tue, 14 Jan 2020 10:38:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00454A41FB;
 Tue, 14 Jan 2020 10:38:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 10:38:06 -0000
Message-ID: <157899828699.24908.4992705896995483222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/13=5D_drm/i915=3A_Flush_idle_barriers_w?=
 =?utf-8?q?hen_waiting?=
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

Series: series starting with [01/13] drm/i915: Flush idle barriers when waiting
URL   : https://patchwork.freedesktop.org/series/71998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7737 -> Patchwork_16089
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/index.html

Known issues
------------

  Here are the changes found in Patchwork_16089 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][1] -> [DMESG-FAIL][2] ([i915#722])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-wait-default:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#937]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/fi-ehl-1/igt@gem_exec_fence@basic-wait-default.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][5] ([i915#671]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (40 -> 45)
------------------------------

  Additional (11): fi-hsw-peppy fi-skl-6770hq fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-blb-e6850 fi-tgl-y fi-skl-6600u 
  Missing    (6): fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7737 -> Patchwork_16089

  CI-20190529: 20190529
  CI_DRM_7737: 2a331333791d2e499ac843e1dc25cd8ea5bdc81f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16089: b513fe138e41585ad8f63a8dd029141526816fa1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16089/build_32bit.log

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

b513fe138e41 drm/i915/gt: Limit C-states while waiting for requests
b91c2c52d438 drm/i915/gt: Expose heartbeat interval via sysfs
fa9c186511bc drm/i915/gt: Expose preempt reset timeout via sysfs
a3d53499e38a drm/i915/gt: Expose reset stop timeout via sysfs
fd22f1abe5f0 drm/i915/gt: Expose busywait duration to sysfs
35f4ea3763a4 drm/i915/gt: Expose timeslice duration to sysfs
774439b0c892 drm/i915/gt: Expose engine->mmio_base via sysfs
471efda355ae drm/i915/gt: Expose engine properties via sysfs
7f37be373d1e drm/i915: Disable preemption support on Icelake
dccc33f6bf8f drm/i915: Only retire requests when eviction is allowed to blocked
5ebef128a956 drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions
f64bad15a29b drm/i915: Allow userspace to specify ringsize on construction
74de6c3a485c drm/i915: Flush idle barriers when waiting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16089/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
