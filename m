Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A8530F14A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 11:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B9A6ED16;
	Thu,  4 Feb 2021 10:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F36AD6E02B;
 Thu,  4 Feb 2021 10:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0722DA00E6;
 Thu,  4 Feb 2021 10:56:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 10:56:37 -0000
Message-ID: <161243619799.4504.10129559341396768409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204100341.10211-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204100341.10211-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Restore_previ?=
 =?utf-8?q?ous_heartbeat_interval?=
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
Content-Type: multipart/mixed; boundary="===============0019142134=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0019142134==
Content-Type: multipart/alternative;
 boundary="===============1510653873074738016=="

--===============1510653873074738016==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/selftests: Restore previous heartbeat interval
URL   : https://patchwork.freedesktop.org/series/86687/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9729 -> Patchwork_19584
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19584 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19584, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19584:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html
    - fi-icl-y:           [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@gem_exec_parallel@engines@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@gem_exec_parallel@engines@contexts.html
    - fi-icl-u2:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html
    - fi-cml-u2:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cml-u2/igt@gem_exec_parallel@engines@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cml-u2/igt@gem_exec_parallel@engines@contexts.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8700k/igt@gem_exec_parallel@engines@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8700k/igt@gem_exec_parallel@engines@contexts.html
    - fi-apl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html
    - fi-bxt-dsi:         [PASS][15] -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html
    - fi-skl-6600u:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html
    - fi-kbl-x1275:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html
    - fi-skl-guc:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-guc/igt@gem_exec_parallel@engines@contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-guc/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-guc:         [PASS][23] -> [FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html
    - fi-glk-dsi:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html
    - fi-cfl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-cml-s:           [PASS][29] -> [FAIL][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-icl-u2:          [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
    - fi-elk-e7500:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-rkl-11500t}:    [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-hsw-gt1}:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
    - {fi-ehl-1}:         [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19584 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][48] ([fdo#109271]) +17 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-tgl-u2:          [PASS][49] -> [FAIL][50] ([i915#2780])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-7500u:       [PASS][51] -> [INCOMPLETE][52] ([i915#1729] / [i915#2295] / [i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html
    - fi-icl-u2:          [PASS][53] -> [INCOMPLETE][54] ([i915#1729] / [i915#2295])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@gem_exec_parallel@engines@fds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@gem_exec_parallel@engines@fds.html
    - fi-icl-y:           [PASS][55] -> [INCOMPLETE][56] ([i915#1729] / [i915#2295])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@gem_exec_parallel@engines@fds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-cfl-8109u:       [PASS][57] -> [INCOMPLETE][58] ([i915#1729])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][59] -> [INCOMPLETE][60] ([i915#1729])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][61] -> [INCOMPLETE][62] ([i915#1729])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [PASS][63] -> [DMESG-WARN][64] ([i915#402]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_sync@basic-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [PASS][65] -> [DMESG-WARN][66] ([i915#2605])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][67] -> [INCOMPLETE][68] ([i915#142] / [i915#2405])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [PASS][69] -> [INCOMPLETE][70] ([i915#2268])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][71] -> [INCOMPLETE][72] ([i915#1037] / [i915#2276])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@i915_selftest@live@execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-x1275:       [PASS][73] -> [INCOMPLETE][74] ([i915#2782] / [i915#2853])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-soraka:      [PASS][75] -> [DMESG-FAIL][76] ([i915#2291] / [i915#541])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-guc:         [PASS][77] -> [INCOMPLETE][78] ([i915#2782] / [i915#2853])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-tgl-y:           [PASS][79] -> [DMESG-FAIL][80] ([i915#2601])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bxt-dsi:         [PASS][81] -> [DMESG-FAIL][82] ([i915#2291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-guc:         [PASS][83] -> [DMESG-FAIL][84] ([i915#2291])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-kefka:       [PASS][85] -> [DMESG-FAIL][86] ([i915#2675] / [i915#541])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-dsi:         [PASS][87] -> [DMESG-FAIL][88] ([i915#2291])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][89] ([i915#1814] / [i915#2505])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-byt-j1900/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][90] ([i915#2724])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][91] ([i915#2966])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][92] ([i915#2940]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [DMESG-WARN][94] ([i915#402]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][96] ([i915#2426]) -> [FAIL][97] ([i915#2426] / [i915#337])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-apl-guc/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1729]: https://gitlab.freedesktop.org/drm/intel/issues/1729
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2089]: https://gitlab.freedesktop.org/drm/intel/issues/2089
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2780]: https://gitlab.freedesktop.org/drm/intel/issues/2780
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2853]: https://gitlab.freedesktop.org/drm/intel/issues/2853
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9729 -> Patchwork_19584

  CI-20190529: 20190529
  CI_DRM_9729: f5c0d295953da801ec6f504a0b3de020e43b55b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19584: 91fea4e951c90dde4e431987a6be7618ee9327b0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

91fea4e951c9 drm/i915/gt: Ratelimit heartbeat completion probing
cb34222291bf drm/i915/selftests: Restore previous heartbeat interval

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/index.html

--===============1510653873074738016==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/selftests: Restore previous heartbeat interval</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86687/">https://patchwork.freedesktop.org/series/86687/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9729 -&gt; Patchwork_19584</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19584 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19584, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19584:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cml-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cml-u2/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8700k/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8700k/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bxt-dsi/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-6600u/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-guc/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@gem_exec_parallel@engines@fds.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@gem_exec_parallel@engines@fds.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
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
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19584 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2780">i915#2780</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-u2/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-u2/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1729">i915#1729</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@gem_sync@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2853">i915#2853</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2853">i915#2853</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19584/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9729 -&gt; Patchwork_19584</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9729: f5c0d295953da801ec6f504a0b3de020e43b55b4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19584: 91fea4e951c90dde4e431987a6be7618ee9327b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>91fea4e951c9 drm/i915/gt: Ratelimit heartbeat completion probing<br />
cb34222291bf drm/i915/selftests: Restore previous heartbeat interval</p>

</body>
</html>

--===============1510653873074738016==--

--===============0019142134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0019142134==--
