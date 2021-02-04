Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572D630F79D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 17:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D796EBFE;
	Thu,  4 Feb 2021 16:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 842AA6E9E6;
 Thu,  4 Feb 2021 16:24:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C29DA00CC;
 Thu,  4 Feb 2021 16:24:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 16:24:35 -0000
Message-ID: <161245587548.4502.8298335987558445315@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204103938.2068-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204103938.2068-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/selftests=3A_Restore_?=
 =?utf-8?q?previous_heartbeat_interval?=
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
Content-Type: multipart/mixed; boundary="===============1173791503=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1173791503==
Content-Type: multipart/alternative;
 boundary="===============5792953955412045489=="

--===============5792953955412045489==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/selftests: Restore previous heartbeat interval
URL   : https://patchwork.freedesktop.org/series/86689/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9730 -> Patchwork_19585
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19585 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19585, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19585:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html
    - fi-icl-u2:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html
    - fi-bxt-dsi:         [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html
    - fi-cfl-guc:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-guc/igt@gem_exec_parallel@engines@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-guc/igt@gem_exec_parallel@engines@contexts.html
    - fi-glk-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@gem_exec_parallel@engines@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@gem_exec_parallel@engines@contexts.html
    - fi-kbl-x1275:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-apl-guc:         [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-cfl-8109u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-elk-e7500:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-rkl-11500t}:    [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-hsw-gt1}:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
    - {fi-ehl-1}:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19585 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][40] ([fdo#109271]) +17 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-apl-guc:         [PASS][41] -> [DMESG-FAIL][42] ([i915#1610])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html
    - fi-tgl-u2:          [PASS][43] -> [FAIL][44] ([i915#2780])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-glk-dsi:         [PASS][45] -> [INCOMPLETE][46] ([i915#1729] / [i915#2295])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html
    - fi-cfl-guc:         [PASS][47] -> [INCOMPLETE][48] ([i915#1729] / [i915#2295])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-kbl-7500u:       [PASS][49] -> [INCOMPLETE][50] ([i915#1729])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [PASS][51] -> [INCOMPLETE][52] ([i915#1037] / [i915#2276])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-y:           [PASS][53] -> [INCOMPLETE][54] ([i915#2268])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][55] -> [INCOMPLETE][56] ([i915#2940])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][57] -> [DMESG-FAIL][58] ([i915#2291] / [i915#541])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-tgl-y:           [PASS][59] -> [DMESG-FAIL][60] ([i915#2601])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8109u:       [PASS][61] -> [DMESG-FAIL][62] ([i915#2291])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-dsi:         [PASS][63] -> [DMESG-FAIL][64] ([i915#2291])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][65] -> [DMESG-WARN][66] ([i915#402]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][67] ([i915#1436])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-kefka/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][68] ([i915#2966])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][69] ([i915#2426] / [i915#2724])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][70] ([i915#1982] / [i915#402]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][72] ([i915#2411] / [i915#402]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][74] ([i915#402]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][76] -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@client.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][78] ([i915#2940]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [DMESG-WARN][80] ([i915#2605]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][82] ([i915#2426]) -> [FAIL][83] ([i915#2426] / [i915#337])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1729]: https://gitlab.freedesktop.org/drm/intel/issues/1729
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2089]: https://gitlab.freedesktop.org/drm/intel/issues/2089
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2780]: https://gitlab.freedesktop.org/drm/intel/issues/2780
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-byt-j1900 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9730 -> Patchwork_19585

  CI-20190529: 20190529
  CI_DRM_9730: a70ac209cb308e06bc397cb3a6bf5764a4917333 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5990: e796ca7ce6fe9c54ee7d939be4110582d555fbb6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19585: 819c835de9380beb166694bd4b919774ca16d34f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

819c835de938 drm/i915/gt: Ratelimit heartbeat completion probing
e22b03e65a47 drm/i915/selftests: Restore previous heartbeat interval

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/index.html

--===============5792953955412045489==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/selftests: Restore previous heartbeat interval</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86689/">https://patchwork.freedesktop.org/series/86689/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9730 -&gt; Patchwork_19585</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19585 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19585, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19585:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-guc/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19585 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2780">i915#2780</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19585/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-byt-j1900 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9730 -&gt; Patchwork_19585</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9730: a70ac209cb308e06bc397cb3a6bf5764a4917333 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5990: e796ca7ce6fe9c54ee7d939be4110582d555fbb6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19585: 819c835de9380beb166694bd4b919774ca16d34f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>819c835de938 drm/i915/gt: Ratelimit heartbeat completion probing<br />
e22b03e65a47 drm/i915/selftests: Restore previous heartbeat interval</p>

</body>
</html>

--===============5792953955412045489==--

--===============1173791503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1173791503==--
