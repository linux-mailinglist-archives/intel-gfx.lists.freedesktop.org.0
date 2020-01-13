Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F68139AFE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 21:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B8F6E15E;
	Mon, 13 Jan 2020 20:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 868BF6E15D;
 Mon, 13 Jan 2020 20:54:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E464A00C7;
 Mon, 13 Jan 2020 20:54:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Mon, 13 Jan 2020 20:54:08 -0000
Message-ID: <157894884850.25475.5326810805246795178@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113081942.15982-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20200113081942.15982-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_too_few_arguments_to_function_i915=5Fcapture=5Ferr?=
 =?utf-8?q?or=5Fstate?=
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

Series: drm/i915: Fix too few arguments to function i915_capture_error_state
URL   : https://patchwork.freedesktop.org/series/71974/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7735 -> Patchwork_16081
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/index.html

Known issues
------------

  Here are the changes found in Patchwork_16081 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#889]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#889]) +22 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][5] ([i915#505]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [DMESG-WARN][7] ([i915#889]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [INCOMPLETE][9] ([i915#879]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][11] ([i915#178]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 45)
------------------------------

  Additional (10): fi-bdw-5557u fi-kbl-7560u fi-hsw-peppy fi-bwr-2160 fi-kbl-7500u fi-ivb-3770 fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-kbl-soraka fi-hsw-4770r fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7735 -> Patchwork_16081

  CI-20190529: 20190529
  CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16081: b29ce887f60e7c8018149e7c79f45a79a219e637 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16081/build_32bit.log

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

b29ce887f60e drm/i915: Fix too few arguments to function i915_capture_error_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
