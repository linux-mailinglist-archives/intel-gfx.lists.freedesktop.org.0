Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3301460A3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 03:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922D86F969;
	Thu, 23 Jan 2020 02:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D2636F968;
 Thu, 23 Jan 2020 02:13:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E5F8A010F;
 Thu, 23 Jan 2020 02:13:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 02:13:20 -0000
Message-ID: <157974560042.1147.8416874736409501606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122184249.551268-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122184249.551268-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Check_i915=5Factive_wai?=
 =?utf-8?q?t_status_after_flushing?=
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

Series: series starting with [1/4] drm/i915: Check i915_active wait status after flushing
URL   : https://patchwork.freedesktop.org/series/72417/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16218
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16218 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16218, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16218:

### IGT changes ###

#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-7500u:       [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@amdgpu/amd_prime@i915-to-amd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-kbl-7500u/igt@amdgpu/amd_prime@i915-to-amd.html

  
Known issues
------------

  Here are the changes found in Patchwork_16218 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_render_linear_blits@basic:
    - fi-icl-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#109])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-dsi/igt@gem_render_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-icl-dsi/igt@gem_render_linear_blits@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][7] -> [DMESG-WARN][8] ([i915#889])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][9] -> [DMESG-WARN][10] ([i915#889])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][11] -> [DMESG-WARN][12] ([i915#889]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][13] -> [DMESG-FAIL][14] ([i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][15] -> [DMESG-FAIL][16] ([i915#553])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][17] -> [DMESG-FAIL][18] ([i915#722])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][19] -> [FAIL][20] ([i915#217])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][21] -> [FAIL][22] ([fdo#109635])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][23] -> [FAIL][24] ([i915#217])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [PASS][25] -> [FAIL][26] ([fdo#111096] / [i915#323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][27] ([i915#45]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][29] ([i915#505] / [i915#671]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][31] ([i915#553] / [i915#725]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][33] -> [TIMEOUT][34] ([fdo#112271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (50 -> 40)
------------------------------

  Additional (2): fi-glk-dsi fi-ilk-650 
  Missing    (12): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16218

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16218: 9346029a8d7e3900c1c38e08c8e9f54be3116c3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9346029a8d7e drm/i915/gt: Yield the timeslice if waiting on a semaphore
b6bc04911906 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
32659d1e0fcf drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
045bcc052fb7 drm/i915: Check i915_active wait status after flushing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16218/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
