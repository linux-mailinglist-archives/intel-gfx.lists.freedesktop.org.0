Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B421A086F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7AE6E550;
	Tue,  7 Apr 2020 07:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 125CE6E550;
 Tue,  7 Apr 2020 07:37:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BCD2A47DA;
 Tue,  7 Apr 2020 07:37:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 07 Apr 2020 07:37:08 -0000
Message-ID: <158624502804.26326.16810333224306129909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407070916.30475-1-uma.shankar@intel.com>
In-Reply-To: <20200407070916.30475-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Enable_DP_Display_Audio_WA?=
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

Series: drm/i915/display: Enable DP Display Audio WA
URL   : https://patchwork.freedesktop.org/series/75582/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17227
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17227/index.html

Known issues
------------

  Here are the changes found in Patchwork_17227 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][1] ([i915#1158]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17227/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][3] ([i915#1580]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17227/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17227

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17227: 4b7c7a1dc51c77c7d32c5b48f44b5a9ab37a8565 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_17227/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST 121 modules
ERROR: "__udivdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
ERROR: "__divdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1283: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

4b7c7a1dc51c drm/i915/display: Enable DP Display Audio WA

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17227/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
