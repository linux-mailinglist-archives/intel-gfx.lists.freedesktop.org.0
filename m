Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D84C03FB6FC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 15:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7CB8999A;
	Mon, 30 Aug 2021 13:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCECA8999A;
 Mon, 30 Aug 2021 13:32:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8D4BAA916;
 Mon, 30 Aug 2021 13:32:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6606483997981187509=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Aug 2021 13:32:54 -0000
Message-ID: <163033037481.14975.904357392927391354@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Short-term_pinning_and_async_eviction=2E?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6606483997981187509==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Short-term pinning and async eviction.
URL   : https://patchwork.freedesktop.org/series/94162/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10536 -> Patchwork_20917
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20917 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20917, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20917:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ilk-650/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ilk-650/igt@gem_busy@busy@all.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-elk-e7500/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ivb-3770/igt@i915_selftest@live@client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@i915_selftest@live@client.html
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-hsw-4770/igt@i915_selftest@live@client.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@i915_selftest@live@client.html
    - fi-snb-2600:        [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2600/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@i915_selftest@live@client.html
    - fi-snb-2520m:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2520m/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@evict:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][16] -> [DMESG-FAIL][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2520m:       [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][22] -> [DMESG-FAIL][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-u2:          [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-ivb-3770:        [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7567u:       [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2600:        [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
    - fi-hsw-4770:        [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][42] -> [DMESG-FAIL][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-tgl-1115g4:      [PASS][44] -> [DMESG-FAIL][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-tgl-1115g4/igt@i915_selftest@live@gem_contexts.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-tgl-1115g4/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-u2:          [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8109u:       [PASS][50] -> [DMESG-FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][52] -> [DMESG-FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - fi-rkl-11600:       [PASS][54] -> [DMESG-FAIL][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - fi-icl-y:           [PASS][56] -> [DMESG-FAIL][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-icl-y/igt@i915_selftest@live@hugepages.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-icl-y/igt@i915_selftest@live@hugepages.html
    - fi-kbl-guc:         [PASS][58] -> [DMESG-FAIL][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-guc/igt@i915_selftest@live@hugepages.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-guc/igt@i915_selftest@live@hugepages.html
    - fi-kbl-7500u:       [PASS][60] -> [DMESG-FAIL][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-7500u/igt@i915_selftest@live@hugepages.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-7500u/igt@i915_selftest@live@hugepages.html
    - fi-kbl-r:           [PASS][62] -> [DMESG-FAIL][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-r/igt@i915_selftest@live@hugepages.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-r/igt@i915_selftest@live@hugepages.html
    - fi-kbl-soraka:      [PASS][64] -> [DMESG-FAIL][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-soraka/igt@i915_selftest@live@hugepages.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-soraka/igt@i915_selftest@live@hugepages.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@hugepages.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-jsl-1}:         [PASS][67] -> [DMESG-FAIL][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - {fi-ehl-2}:         [PASS][69] -> [DMESG-FAIL][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ehl-2/igt@i915_selftest@live@hugepages.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ehl-2/igt@i915_selftest@live@hugepages.html
    - {fi-tgl-dsi}:       [PASS][71] -> [DMESG-FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_20917 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][73] ([fdo#109271]) +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][74] -> [INCOMPLETE][75] ([i915#299])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][76] ([i915#2426])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][77] ([fdo#109271] / [i915#1436])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][78] ([i915#2426])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][79] ([fdo#109271] / [i915#2426])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [DMESG-FAIL][80] ([i915#3928]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-guc:         [FAIL][82] ([i915#3928]) -> [FAIL][83] ([i915#2426] / [i915#3928])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-guc/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (44 -> 36)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10536 -> Patchwork_20917

  CI-20190529: 20190529
  CI_DRM_10536: b6d834a72c14ca22b2df32a607c1ee36e8629f1a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6191: e9292b533691784f46eeb9bae522ca7a8710c920 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20917: 992d547f7e4dfe47ce09a9603c9da84697be9c30 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

992d547f7e4d drm/i915: Add accelerated migration to ttm
c29934165e29 drm/i915: Add support for asynchronous moving fence waiting
49d5bf5ffe41 drm/i915: Add functions to set/get moving fence
66f02650e597 drm/i915: Remove short-term pins from execbuf
741722532bf6 drm/i915: Remove support for unlocked i915_vma unbind
eea081368486 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind
d0e5dee58521 drm/i915: Take object lock in i915_ggtt_pin if ww is not set
81200f4aea0f drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members
9a8f87820ed4 drm/i915: Remove resv from i915_vma
c7b50af89f7a Move CONTEXT_VALID_BIT check
92874150b4e7 drm/i915: Change shrink ordering to use locking around unbinding.
2885005de36d drm/i915: Fix runtime pm handling in i915_gem_shrink
c13839878262 drm/i915: vma is always backed by an object.
faee95e0ebdf drm/i915: Create a full object for mock_ring
7f62692b5277 drm/i915: Create a dummy object for gen6 ppgtt
ce526eaaf6dc drm/i915: Remove gen6_ppgtt_unpin_all
98c59acb1911 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling
667b39786fe3 drm/i915: Remove unused bits of i915_vma/active api
fa0ce1cd930e drm/i915: Move __i915_gem_free_object to ttm_bo_destroy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/index.html

--===============6606483997981187509==
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
<tr><td><b>Series:</b></td><td>drm/i915: Short-term pinning and async eviction.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94162/">https://patchwork.freedesktop.org/series/94162/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10536 -&gt; Patchwork_20917</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20917 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20917, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20917:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ilk-650/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ilk-650/igt@gem_busy@busy@all.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-hsw-4770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@i915_selftest@live@client.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2600/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@i915_selftest@live@client.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2520m/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@i915_selftest@live@client.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@evict.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-tgl-1115g4/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-tgl-1115g4/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-icl-y/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-icl-y/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-7500u/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-7500u/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-r/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-r/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-kbl-soraka/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-soraka/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-ehl-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ehl-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> +1 similar issue</p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20917 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-pnv-d510/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10536/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20917/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 36)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10536 -&gt; Patchwork_20917</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10536: b6d834a72c14ca22b2df32a607c1ee36e8629f1a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6191: e9292b533691784f46eeb9bae522ca7a8710c920 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20917: 992d547f7e4dfe47ce09a9603c9da84697be9c30 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>992d547f7e4d drm/i915: Add accelerated migration to ttm<br />
c29934165e29 drm/i915: Add support for asynchronous moving fence waiting<br />
49d5bf5ffe41 drm/i915: Add functions to set/get moving fence<br />
66f02650e597 drm/i915: Remove short-term pins from execbuf<br />
741722532bf6 drm/i915: Remove support for unlocked i915_vma unbind<br />
eea081368486 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind<br />
d0e5dee58521 drm/i915: Take object lock in i915_ggtt_pin if ww is not set<br />
81200f4aea0f drm/i915: Remove pages_mutex and intel_gtt-&gt;vma_ops.set/clear_pages members<br />
9a8f87820ed4 drm/i915: Remove resv from i915_vma<br />
c7b50af89f7a Move CONTEXT_VALID_BIT check<br />
92874150b4e7 drm/i915: Change shrink ordering to use locking around unbinding.<br />
2885005de36d drm/i915: Fix runtime pm handling in i915_gem_shrink<br />
c13839878262 drm/i915: vma is always backed by an object.<br />
faee95e0ebdf drm/i915: Create a full object for mock_ring<br />
7f62692b5277 drm/i915: Create a dummy object for gen6 ppgtt<br />
ce526eaaf6dc drm/i915: Remove gen6_ppgtt_unpin_all<br />
98c59acb1911 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling<br />
667b39786fe3 drm/i915: Remove unused bits of i915_vma/active api<br />
fa0ce1cd930e drm/i915: Move __i915_gem_free_object to ttm_bo_destroy</p>

</body>
</html>

--===============6606483997981187509==--
