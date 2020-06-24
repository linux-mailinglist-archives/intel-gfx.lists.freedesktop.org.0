Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E158B2073AF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 14:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83336E088;
	Wed, 24 Jun 2020 12:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC0A46E088;
 Wed, 24 Jun 2020 12:48:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D967EA0BCB;
 Wed, 24 Jun 2020 12:48:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 24 Jun 2020 12:48:04 -0000
Message-ID: <159300288488.19235.13021529373852109099@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/26=5D_Revert_=22drm/i915/gem=3A_Async_G?=
 =?utf-8?q?PU_relocations_only=22_=28rev2=29?=
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

Series: series starting with [01/26] Revert "drm/i915/gem: Async GPU relocations only" (rev2)
URL   : https://patchwork.freedesktop.org/series/78744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8661 -> Patchwork_18018
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18018 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18018, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18018:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-8809g:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-8809g/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-soraka:      [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-u2:          [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-u2:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-hsw-4770:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-snb-2600/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-kbl-7560u}:     [PASS][32] -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_execbuf:
    - {fi-tgl-dsi}:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_18018 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][36] -> [DMESG-WARN][37] ([i915#1982])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [PASS][38] -> [INCOMPLETE][39] ([i915#82])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-snb-2600/igt@i915_selftest@live@blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-snb-2600/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-elk-e7500:       [PASS][40] -> [INCOMPLETE][41] ([i915#66])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][42] -> [DMESG-WARN][43] ([i915#402])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][44] ([i915#1888]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][46] ([i915#1982]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-tgl-dsi/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][48] ([i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][50] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][51] ([i915#62] / [i915#92])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][52] ([i915#62] / [i915#92]) -> [DMESG-WARN][53] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8661 -> Patchwork_18018

  CI-20190529: 20190529
  CI_DRM_8661: 64cab0b9f9bfeb14d3ec2452d76b56915cdeb09f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18018: 076ef058d63845db621e8d9149589dcb390e37e5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

076ef058d638 drm/i915: Kill context before taking ctx->mutex
1d2a412696af drm/i915: Ensure we hold the pin mutex
501388d7472e drm/i915: Add ww locking to pin_to_display_plane
dde2896028bb drm/i915: Add ww locking to vm_fault_gtt
756762ec32c7 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
49fb1cb8bfae drm/i915: Use ww pinning for intel_context_create_request()
c5b10d3c7174 drm/i915/selftests: Fix locking inversion in lrc selftest.
e69c9075e596 drm/i915: Dirty hack to fix selftests locking inversion
fe5408b9aa3f drm/i915: Convert i915_perf to ww locking as well
fb75fcfbd9d4 drm/i915: Kill last user of intel_context_create_request outside of selftests
f5d541f77361 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
b4e39defb35f drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
bf7884fb26e5 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
47202c503661 drm/i915: Pin engine before pinning all objects, v4.
5e4739f5ae98 drm/i915: Nuke arguments to eb_pin_engine
209fd4f2593e drm/i915: Add ww context handling to context_barrier_task
213e5283007d drm/i915: Use ww locking in intel_renderstate.
61248b8339e2 drm/i915: Use per object locking in execbuf, v12.
8394062c0fec drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
c4c86dc1e12b Revert "drm/i915/gem: Split eb_vma into its own allocation"
d782b8ba0104 drm/i915: Parse command buffer earlier in eb_relocate(slow)
28e0198d22f8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
1de69bb5eb4b drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
5fed26bab5d0 Revert "drm/i915/gem: Drop relocation slowpath".
cfe75ea198f9 drm/i915: Revert relocation chaining commits.
33892249d7d2 Revert "drm/i915/gem: Async GPU relocations only"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18018/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
