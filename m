Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169BA213BE6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 16:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9706E29D;
	Fri,  3 Jul 2020 14:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4FC96E29D;
 Fri,  3 Jul 2020 14:36:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAAACA0118;
 Fri,  3 Jul 2020 14:36:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 03 Jul 2020 14:36:52 -0000
Message-ID: <159378701272.25592.16416675659300648432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_ww_locking_in_execbuf_submission=2E?=
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

Series: drm/i915: Use ww locking in execbuf submission.
URL   : https://patchwork.freedesktop.org/series/79091/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8707 -> Patchwork_18080
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18080 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18080, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18080:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_execbuf:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_18080 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][3] -> [DMESG-WARN][4] ([i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8] ([i915#1684])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-icl-y/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][9] -> [INCOMPLETE][10] ([i915#1591])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-snb-2600:        [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#402])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][17] ([i915#1888]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#402]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [INCOMPLETE][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-apl-guc/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [DMESG-WARN][25] ([i915#1982]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92]) -> [DMESG-WARN][32] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][33] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][34] ([i915#62] / [i915#92]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8707/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#1684]: https://gitlab.freedesktop.org/drm/intel/issues/1684
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8707 -> Patchwork_18080

  CI-20190529: 20190529
  CI_DRM_8707: d499de3ecccf4923c7e35e298fb6f13611a8f70e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5721: df9004c501b203c1b418781ad2c94dfe36892ef5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18080: d5706535dba4fe959750bbd6caaba858f993b7fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d5706535dba4 drm/i915: Add ww locking to pin_to_display_plane
fd4c60822f51 drm/i915: Add ww locking to vm_fault_gtt
9ffb44d44085 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
3d3a0174e589 drm/i915: Use ww pinning for intel_context_create_request()
aa1b37e0a2e8 drm/i915/selftests: Fix locking inversion in lrc selftest.
1d8343785fcf drm/i915: Dirty hack to fix selftests locking inversion
0ff7aeb9ced4 drm/i915: Convert i915_perf to ww locking as well
a7fe97007947 drm/i915: Kill last user of intel_context_create_request outside of selftests
a8f3d1d45011 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
a26b7ccccdc7 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
4a093115d97a drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
b367c77301c6 drm/i915: Pin engine before pinning all objects, v4.
9811525906fc drm/i915: Nuke arguments to eb_pin_engine
ec4c44affb89 drm/i915: Add ww context handling to context_barrier_task
78d093224935 drm/i915: Use ww locking in intel_renderstate.
77b7a643cd98 drm/i915: Use per object locking in execbuf, v12.
0623fd02f964 Revert "drm/i915/gem: Split eb_vma into its own allocation"
b0bee5b33053 drm/i915: Parse command buffer earlier in eb_relocate(slow)
09adf03b6b57 drm/i915: Remove locking from i915_gem_object_prepare_read/write
711820c35498 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
41fe7643dad5 Revert "drm/i915/gem: Drop relocation slowpath".
9fee49631c13 drm/i915: Revert relocation chaining commits.
96ffbd309edc Revert "drm/i915/gem: Async GPU relocations only"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18080/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
