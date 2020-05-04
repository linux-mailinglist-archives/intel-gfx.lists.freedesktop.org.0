Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECED1C4984
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14FB6E4B3;
	Mon,  4 May 2020 22:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F1D86E4B3;
 Mon,  4 May 2020 22:20:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09013A47E6;
 Mon,  4 May 2020 22:20:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 04 May 2020 22:20:21 -0000
Message-ID: <158863082100.5818.7481121706468280944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/24=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v3=2E?=
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

Series: series starting with [01/24] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/76816/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8405_full -> Patchwork_17539_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17539_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17539_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17539_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk2/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-glk5/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl4/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl8/igt@gem_close@many-handles-one-vma.html
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl9/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl5/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb2/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-tglb6/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl7/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl1/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-hsw7/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-hsw1/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb5/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-snb5/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb4/igt@gem_close@many-handles-one-vma.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb3/igt@gem_close@many-handles-one-vma.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl2/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl3/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-many-active@vcs1}:
    - shard-tglb:         [FAIL][19] ([i915#1815]) -> [FAIL][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb6/igt@gem_exec_reloc@basic-many-active@vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-tglb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@gem_exec_reloc@basic-parallel.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl7/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb2/igt@gem_exec_reloc@basic-parallel.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-tglb8/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][25] -> [TIMEOUT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl7/igt@gem_exec_reloc@basic-parallel.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl8/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][27] -> [TIMEOUT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb5/igt@gem_exec_reloc@basic-parallel.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb3/igt@gem_exec_reloc@basic-parallel.html
    - shard-glk:          [PASS][29] -> [TIMEOUT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk5/igt@gem_exec_reloc@basic-parallel.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-glk5/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_17539_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#1402])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#1402])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][35] -> [INCOMPLETE][36] ([i915#1402])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#1402])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl3/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][39] -> [INCOMPLETE][40] ([i915#1402] / [i915#58] / [k.org#198133])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][41] -> [DMESG-WARN][42] ([i915#716])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-glk7/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#716])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#54])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl9/igt@kms_hdr@bpc-switch.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2}:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][59] ([i915#198]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl3/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl1/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][73] ([i915#1542]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-hsw6/igt@perf@blocking-parameterized.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-hsw7/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][75] ([i915#588]) -> [SKIP][76] ([i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-snb:          [INCOMPLETE][77] ([i915#82]) -> [SKIP][78] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-snb6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][79] ([i915#95]) -> [DMESG-FAIL][80] ([i915#180] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [FAIL][81] ([i915#93] / [i915#95]) -> [DMESG-FAIL][82] ([i915#180] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1815]: https://gitlab.freedesktop.org/drm/intel/issues/1815
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8405 -> Patchwork_17539

  CI-20190529: 20190529
  CI_DRM_8405: 83efffba539b475ce7e3fb96aeae7ee744309ff7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5623: 8838c73169ea249e6e86aaed35e5178f60f4ef7d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17539: 2d420146a045549c0759cf0f7ebc984bc09d0dd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17539/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
