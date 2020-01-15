Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BADC313BD0A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FC96E0DF;
	Wed, 15 Jan 2020 10:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE4396E0CB;
 Wed, 15 Jan 2020 10:06:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5F7DA011C;
 Wed, 15 Jan 2020 10:06:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 10:06:55 -0000
Message-ID: <157908281580.2007.1316186757977980999@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915=3A_Keep_track_of_request_am?=
 =?utf-8?q?ong_the_scheduling_lists_=28rev2=29?=
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

Series: series starting with [v2] drm/i915: Keep track of request among the scheduling lists (rev2)
URL   : https://patchwork.freedesktop.org/series/72048/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7748 -> Patchwork_16106
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/index.html

Known issues
------------

  Here are the changes found in Patchwork_16106 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_switch@rcs0:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-guc/igt@gem_ctx_switch@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-icl-guc/igt@gem_ctx_switch@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [PASS][3] -> [INCOMPLETE][4] ([i915#879])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][5] -> [FAIL][6] ([i915#178])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [PASS][11] -> [DMESG-WARN][12] ([i915#889]) +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       [TIMEOUT][13] ([fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][15] ([i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#563]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770r:       [DMESG-FAIL][19] ([i915#722]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111096] / [i915#323]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [DMESG-FAIL][24] ([i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][25] ([i915#217]) -> [DMESG-WARN][26] ([IGT#4] / [i915#263])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 46)
------------------------------

  Additional (8): fi-byt-j1900 fi-ivb-3770 fi-skl-lmem fi-blb-e6850 fi-byt-n2820 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7748 -> Patchwork_16106

  CI-20190529: 20190529
  CI_DRM_7748: 1793de9a4215356790b87608fcfc9e99eeb6954d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16106: 4aab7f2eb367114a402d222d92c77f495553ff42 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16106/build_32bit.log

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

4aab7f2eb367 drm/i915/execlists: Offline error capture
e4a508266496 drm/i915/gt: Allow temporary suspension of inflight requests
201e1a96d586 drm/i915: Keep track of request among the scheduling lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16106/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
