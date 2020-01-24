Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16C0148568
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362D672A4C;
	Fri, 24 Jan 2020 12:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA3F272A49;
 Fri, 24 Jan 2020 12:50:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9261A0003;
 Fri, 24 Jan 2020 12:50:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 24 Jan 2020 12:50:06 -0000
Message-ID: <157987020688.15091.11569797774425644649@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Implement_parallel_execbuffer_submission=2E?=
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

Series: drm/i915/gem: Implement parallel execbuffer submission.
URL   : https://patchwork.freedesktop.org/series/72521/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7808 -> Patchwork_16250
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16250 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16250, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16250:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-bwr-2160/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-bwr-2160/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-skl-guc/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-cfl-8700k/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-whl-u:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-whl-u/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-whl-u/igt@i915_module_load@reload.html
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-skl-lmem/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-skl-lmem/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-skl-6700k2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-bsw-kefka/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-bsw-nick/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_workarounds:
    - fi-cfl-guc:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-cfl-guc/igt@i915_selftest@live_workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-cfl-guc/igt@i915_selftest@live_workarounds.html
    - fi-kbl-x1275:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-kbl-x1275/igt@i915_selftest@live_workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-kbl-x1275/igt@i915_selftest@live_workarounds.html
    - fi-icl-u3:          [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-u3/igt@i915_selftest@live_workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-u3/igt@i915_selftest@live_workarounds.html
    - fi-kbl-r:           [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-kbl-r/igt@i915_selftest@live_workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-kbl-r/igt@i915_selftest@live_workarounds.html
    - fi-kbl-8809g:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-kbl-8809g/igt@i915_selftest@live_workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-kbl-8809g/igt@i915_selftest@live_workarounds.html
    - fi-kbl-7500u:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-kbl-7500u/igt@i915_selftest@live_workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-kbl-7500u/igt@i915_selftest@live_workarounds.html
    - fi-kbl-guc:         [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-kbl-guc/igt@i915_selftest@live_workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-kbl-guc/igt@i915_selftest@live_workarounds.html
    - fi-icl-y:           [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-y/igt@i915_selftest@live_workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-y/igt@i915_selftest@live_workarounds.html
    - fi-bdw-5557u:       [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-bdw-5557u/igt@i915_selftest@live_workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-bdw-5557u/igt@i915_selftest@live_workarounds.html
    - fi-icl-dsi:         [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-dsi/igt@i915_selftest@live_workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-dsi/igt@i915_selftest@live_workarounds.html
    - fi-cml-u2:          [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-cml-u2/igt@i915_selftest@live_workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-cml-u2/igt@i915_selftest@live_workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_workarounds:
    - {fi-ehl-1}:         [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-ehl-1/igt@i915_selftest@live_workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-ehl-1/igt@i915_selftest@live_workarounds.html
    - {fi-tgl-u}:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-tgl-u/igt@i915_selftest@live_workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-tgl-u/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16250 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-glk-dsi:         [PASS][43] -> [INCOMPLETE][44] ([i915#58] / [k.org#198133])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-glk-dsi/igt@gem_busy@busy-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-glk-dsi/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][45] -> [INCOMPLETE][46] ([fdo#103927])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-bxt-dsi/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-icl-u2:          [PASS][47] -> [INCOMPLETE][48] ([i915#140])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-u2/igt@gem_close_race@basic-threads.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-u2/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-icl-guc:         [PASS][49] -> [INCOMPLETE][50] ([i915#140])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-guc/igt@gem_exec_parallel@fds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][51] -> [FAIL][52] ([CI#94])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_sync@basic-each:
    - fi-apl-guc:         [PASS][53] -> [INCOMPLETE][54] ([fdo#103927])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-apl-guc/igt@gem_sync@basic-each.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-apl-guc/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][55] -> [INCOMPLETE][56] ([i915#69])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-skl-6600u/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-tgl-y:           [PASS][57] -> [INCOMPLETE][58] ([CI#94] / [i915#472])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-tgl-y/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][59] -> [DMESG-WARN][60] ([CI#94] / [i915#402]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][61] ([fdo#103375]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-dsi:         [TIMEOUT][63] ([fdo#112271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-icl-dsi/igt@i915_selftest@live_gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-icl-dsi/igt@i915_selftest@live_gtt.html

  * igt@prime_vgem@basic-busy-default:
    - fi-tgl-y:           [DMESG-WARN][65] ([CI#94] / [i915#402]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7808/fi-tgl-y/igt@prime_vgem@basic-busy-default.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/fi-tgl-y/igt@prime_vgem@basic-busy-default.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (52 -> 31)
------------------------------

  Missing    (21): fi-snb-2520m fi-pnv-d510 fi-blb-e6850 fi-byt-n2820 fi-snb-2600 fi-hsw-4770r fi-bsw-n3050 fi-byt-j1900 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7808 -> Patchwork_16250

  CI-20190529: 20190529
  CI_DRM_7808: 2c0cac4ed28a1f343c5a7c5c3a1c2edb382ab4dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16250: 1744b1a75cc8f0fe1e0beef477eb7afbab21a0e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1744b1a75cc8 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
cae78048f977 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
af62c8b5c8b4 drm/i915: Pin engine before pinning all objects
02495dc4b9f9 drm/i915: Nuke arguments to eb_pin_engine
137db377e250 drm/i915: Add ww context handling to context_barrier_task
c4a3a05075bb drm/i915: Use ww locking in intel_renderstate.
7a269ec65bee drm/i915: Use per object locking in execbuf on top of struct_mutex, v2.
ceeddaf549ea drm/i915: Parse command buffer earlier in eb_relocate(slow)
e0cd1376e2da drm/i915: Remove locking from i915_gem_object_prepare_read/write
8745975ba8ef drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
b3ff4cd5c2b0 drm/i915: Separate lookup and pinning in execbuf.
dbffec8e6129 drm/i915/gem: Extract transient execbuf flags from i915_vma
ac32dc249279 drm/i915: Drop inspection of execbuf flags during evict

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16250/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
