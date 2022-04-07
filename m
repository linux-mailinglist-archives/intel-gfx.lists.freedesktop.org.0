Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46964F8A66
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 00:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C76110ED30;
	Thu,  7 Apr 2022 22:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E9C510ED30;
 Thu,  7 Apr 2022 22:52:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F399AA0EB;
 Thu,  7 Apr 2022 22:52:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4647673524991059551=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 07 Apr 2022 22:52:30 -0000
Message-ID: <164937195051.14671.10569983352120058145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407164532.1242578-1-matthew.auld@intel.com>
In-Reply-To: <20220407164532.1242578-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_fix_broken_build?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4647673524991059551==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: fix broken build
URL   : https://patchwork.freedesktop.org/series/102354/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22820
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/index.html

Participating hosts (49 -> 36)
------------------------------

  Additional (2): fi-bwr-2160 fi-pnv-d510 
  Missing    (15): fi-bdw-samus fi-bdw-5557u bat-adls-5 bat-dg1-6 bat-dg1-5 shard-tglu bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-rpls-1 shard-rkl shard-dg1 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22820 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-elk-e7500:       [FAIL][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-elk-e7500/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/boot.html
    - fi-blb-e6850:       [FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-blb-e6850/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][6] ([fdo#109271]) +39 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][7] ([fdo#109271]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][8] ([fdo#109271]) +41 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      NOTRUN -> [DMESG-WARN][9] ([i915#5437])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][10] ([i915#5577])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][11] ([i915#5437])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-WARN][12] ([i915#5437])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][13] ([i915#5437])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][14] ([i915#5577])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-bxt-dsi:         NOTRUN -> [DMESG-WARN][15] ([i915#5437])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
    - fi-adl-ddr5:        NOTRUN -> [DMESG-WARN][16] ([i915#5577])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-WARN][17] ([i915#5437])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-j4005:       NOTRUN -> [DMESG-WARN][18] ([i915#5437])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][19] ([i915#5437])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-nick:        NOTRUN -> [DMESG-WARN][20] ([i915#5437])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][21] ([i915#5437])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][22] ([i915#5437])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       NOTRUN -> [DMESG-WARN][23] ([i915#5437])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][24] ([i915#5437])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][25] ([i915#5557])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@fbdev@nullptr:
    - fi-kbl-guc:         [PASS][26] -> [SKIP][27] ([fdo#109271]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@fbdev@nullptr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@fbdev@nullptr.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-guc:         NOTRUN -> [SKIP][28] ([fdo#109271]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][29] ([fdo#109271]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][30] ([fdo#109271]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][31] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][33] ([fdo#109271]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-skl-guc:         NOTRUN -> [SKIP][34] ([fdo#109271]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][35] ([fdo#109271]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][36] ([fdo#109271]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@bcs0.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][37] ([fdo#109271]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][38] ([i915#4831])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bwr-2160:        NOTRUN -> [SKIP][39] ([fdo#109271]) +65 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][40] ([i915#5127])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2190])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-elk-e7500:       NOTRUN -> [SKIP][43] ([fdo#109271]) +53 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/igt@gem_lmem_swapping@basic.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#4613]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#4613]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@gem_lmem_swapping@parallel-random-engines.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][47] ([fdo#109271]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4613]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-guc:         NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4613]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@gem_lmem_swapping@random-engines.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#4613]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@gem_lmem_swapping@random-engines.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][51] ([fdo#109271]) +36 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#4613]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@gem_lmem_swapping@random-engines.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#4613]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_lmem_swapping@random-engines.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][54] ([fdo#109271]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@gem_lmem_swapping@random-engines.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#4613]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#4613]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][57] ([fdo#109271]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-kefka/igt@gem_lmem_swapping@verify-random.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][58] ([fdo#109271]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@gem_lmem_swapping@verify-random.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][60] ([i915#4613]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-adl-ddr5:        NOTRUN -> [SKIP][61] ([i915#4613]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@gem_lmem_swapping@verify-random.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][62] ([i915#4613]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][63] ([i915#4785])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        NOTRUN -> [INCOMPLETE][64] ([i915#3921])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][65] ([fdo#109271]) +22 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          NOTRUN -> [DMESG-WARN][66] ([i915#402])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#5341])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#5341])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#5341])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#5341])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#5341])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#5341])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#5341])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ilk-650:         NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#5341])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-blb-e6850:       NOTRUN -> [SKIP][82] ([fdo#109271]) +57 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#533])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][85] ([fdo#109271]) +11 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][86] ([fdo#109271]) +49 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][87] ([fdo#109271]) +57 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-rkl-11600:       [SKIP][88] -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@core_auth@basic-auth.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@core_auth@basic-auth.html
    - fi-apl-guc:         [SKIP][90] ([fdo#109271]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-apl-guc/igt@core_auth@basic-auth.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-apl-guc/igt@core_auth@basic-auth.html

  * igt@gem_basic@create-fd-close:
    - fi-hsw-4770:        [SKIP][92] ([fdo#109271] / [fdo#109315]) -> [PASS][93] +44 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@gem_basic@create-fd-close.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@gem_basic@create-fd-close.html

  * igt@gem_close_race@basic-process:
    - fi-tgl-u2:          [SKIP][94] ([fdo#109315] / [i915#2575]) -> [PASS][95] +49 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@gem_close_race@basic-process.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@gem_close_race@basic-process.html
    - fi-bdw-gvtdvm:      [SKIP][96] ([fdo#109271]) -> [PASS][97] +10 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bdw-gvtdvm/igt@gem_close_race@basic-process.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bdw-gvtdvm/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-hsw-g3258:       [SKIP][98] ([fdo#109271] / [fdo#109315]) -> [PASS][99] +44 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-g3258/igt@gem_close_race@basic-threads.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@gem_close_race@basic-threads.html
    - fi-rkl-11600:       [SKIP][100] ([fdo#109315]) -> [PASS][101] +10 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@gem_close_race@basic-threads.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_store@basic:
    - fi-kbl-x1275:       [SKIP][102] ([fdo#109271]) -> [PASS][103] +107 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@gem_exec_store@basic.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@gem_exec_store@basic.html
    - fi-rkl-guc:         [SKIP][104] ([fdo#109315]) -> [PASS][105] +43 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-guc/igt@gem_exec_store@basic.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@gem_exec_store@basic.html

  * igt@gem_flink_basic@bad-open:
    - fi-kbl-7500u:       [SKIP][106] ([fdo#109271]) -> [PASS][107] +107 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html

  * igt@gem_mmap_gtt@basic:
    - {fi-ehl-2}:         [SKIP][108] ([fdo#109315]) -> [PASS][109] +51 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@gem_mmap_gtt@basic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ehl-2/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-cfl-8700k:       [SKIP][110] ([fdo#109271]) -> [PASS][111] +107 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html

  * igt@gem_softpin@safe-alignment:
    - {fi-jsl-1}:         [SKIP][112] ([fdo#109315]) -> [PASS][113] +51 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_softpin@safe-alignment.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-jsl-1/igt@gem_softpin@safe-alignment.html

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-guc:         [SKIP][114] ([fdo#109271]) -> [PASS][115] +74 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@i915_hangman@error-state-basic.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-tgl-1115g4:      [SKIP][116] -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-u2:          [SKIP][118] -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [SKIP][120] ([fdo#109271]) -> [PASS][121] +108 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - fi-tgl-u2:          [SKIP][122] ([fdo#111615] / [i915#2575]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
    - fi-tgl-1115g4:      [SKIP][124] ([fdo#111615] / [i915#2575]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-rkl-guc:         [SKIP][126] -> [PASS][127] +60 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-adl-ddr5:        [SKIP][128] -> [PASS][129] +105 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - fi-kbl-7567u:       [SKIP][130] ([fdo#109271]) -> [PASS][131] +87 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - fi-hsw-g3258:       [SKIP][132] ([fdo#109271]) -> [PASS][133] +62 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-bsw-n3050:       [SKIP][134] ([fdo#109271]) -> [PASS][135] +95 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-hsw-4770:        [SKIP][136] ([fdo#109271]) -> [PASS][137] +62 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@too-wide:
    - fi-tgl-1115g4:      [SKIP][138] ([i915#2575]) -> [PASS][139] +58 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html

  * igt@kms_addfb_basic@unused-offsets:
    - {fi-ehl-2}:         [SKIP][140] -> [PASS][141] +60 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-glk-j4005:       [SKIP][142] ([fdo#109271]) -> [PASS][143] +107 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-x1275:       [SKIP][144] ([fdo#109271] / [i915#5341]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-guc:         [SKIP][146] ([fdo#109271] / [i915#5341]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-skl-guc:         [SKIP][148] ([fdo#109271] / [i915#5341]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-8700k:       [SKIP][150] ([fdo#109271] / [i915#5341]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-7500u:       [SKIP][152] ([fdo

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/index.html

--===============4647673524991059551==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: fix broken build</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102354/">https://patchwork.freedesktop.org/series/102354/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22820</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/index.html</p>
<h2>Participating hosts (49 -&gt; 36)</h2>
<p>Additional (2): fi-bwr-2160 fi-pnv-d510 <br />
  Missing    (15): fi-bdw-samus fi-bdw-5557u bat-adls-5 bat-dg1-6 bat-dg1-5 shard-tglu bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-rpls-1 shard-rkl shard-dg1 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22820 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-elk-e7500/boot.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/boot.html">PASS</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-blb-e6850/boot.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/boot.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> ([fdo#109271]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> ([fdo#109271]) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5577])</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5577])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5577])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#5437])</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> ([i915#5557])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@fbdev@nullptr.html">SKIP</a> ([fdo#109271]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([fdo#109271]) +9 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i915#4831])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html">SKIP</a> ([fdo#109271]) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> ([i915#5127])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +53 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271]) +36 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-6700k2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271]) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-kefka/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) +2 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#4785])</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([fdo#109271]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> ([i915#402])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271]) +57 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#109271]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@core_auth@basic-auth.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@core_auth@basic-auth.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-apl-guc/igt@core_auth@basic-auth.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-apl-guc/igt@core_auth@basic-auth.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@gem_basic@create-fd-close.html">SKIP</a> ([fdo#109271] / [fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@gem_basic@create-fd-close.html">PASS</a> +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@gem_close_race@basic-process.html">SKIP</a> ([fdo#109315] / [i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@gem_close_race@basic-process.html">PASS</a> +49 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bdw-gvtdvm/igt@gem_close_race@basic-process.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bdw-gvtdvm/igt@gem_close_race@basic-process.html">PASS</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-g3258/igt@gem_close_race@basic-threads.html">SKIP</a> ([fdo#109271] / [fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@gem_close_race@basic-threads.html">PASS</a> +44 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@gem_close_race@basic-threads.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-11600/igt@gem_close_race@basic-threads.html">PASS</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@gem_exec_store@basic.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@gem_exec_store@basic.html">PASS</a> +107 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-guc/igt@gem_exec_store@basic.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@gem_exec_store@basic.html">PASS</a> +43 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7500u/igt@gem_flink_basic@bad-open.html">PASS</a> +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@gem_mmap_gtt@basic.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ehl-2/igt@gem_mmap_gtt@basic.html">PASS</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@gem_render_linear_blits@basic.html">PASS</a> +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@safe-alignment:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_softpin@safe-alignment.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-jsl-1/igt@gem_softpin@safe-alignment.html">PASS</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> +108 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> ([fdo#111615] / [i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-u2/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> ([fdo#111615] / [i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html">PASS</a> +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-32:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html">PASS</a> +105 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-7567u/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html">PASS</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html">PASS</a> +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-hsw-4770/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">PASS</a> +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-ehl-2/igt@kms_addfb_basic@unused-offsets.html">PASS</a> +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> ([fdo#109271] / [i915#5341]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22820/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       [SKIP][152] ([fdo</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4647673524991059551==--
