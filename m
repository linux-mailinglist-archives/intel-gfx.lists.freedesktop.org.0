Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5CA1476CD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 02:45:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A70D6FEAB;
	Fri, 24 Jan 2020 01:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A5D66FEAA;
 Fri, 24 Jan 2020 01:45:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1054AA00C7;
 Fri, 24 Jan 2020 01:45:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 01:45:00 -0000
Message-ID: <157983030003.15089.6029243729413647497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123151406.51679-1-colin.king@canonical.com>
In-Reply-To: <20200123151406.51679-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_fix_null_pointer_dereference_on_vm_=28rev2=29?=
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

Series: drm/i915/gem: fix null pointer dereference on vm (rev2)
URL   : https://patchwork.freedesktop.org/series/72482/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7805 -> Patchwork_16241
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/index.html

Known issues
------------

  Here are the changes found in Patchwork_16241 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#770])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([i915#217])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][13] ([fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][15] ([CI#94]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][17] ([i915#879]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][19] ([fdo#106070] / [i915#424]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][21] ([i915#694]) -> [TIMEOUT][22] ([fdo#112271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#111407]) -> [FAIL][24] ([fdo#111096] / [i915#323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (45 -> 41)
------------------------------

  Additional (4): fi-bsw-nick fi-gdg-551 fi-bsw-n3050 fi-snb-2600 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7805 -> Patchwork_16241

  CI-20190529: 20190529
  CI_DRM_7805: 447386749394e3b5cf296bfada83ed429fa5f1fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16241: 27553c3b3728650cd16bbb092bdd7112239358c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

27553c3b3728 drm/i915/gem: Prevent NULL pointer dereference on missing ctx->vm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
