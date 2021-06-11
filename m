Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4573A3C3B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 08:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977EF6E4F3;
	Fri, 11 Jun 2021 06:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 845E26E4F3;
 Fri, 11 Jun 2021 06:48:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DB42A363D;
 Fri, 11 Jun 2021 06:48:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 11 Jun 2021 06:48:36 -0000
Message-ID: <162339411649.29315.13944921064704665347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210611060838.647973-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210611060838.647973-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Reorder_tasklet=5Fdisable_vs_local=5Fbh=5Fdi?=
 =?utf-8?q?sable?=
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
Content-Type: multipart/mixed; boundary="===============2026069558=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2026069558==
Content-Type: multipart/alternative;
 boundary="===============1626186323134023616=="

--===============1626186323134023616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable
URL   : https://patchwork.freedesktop.org/series/91372/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10209 -> Patchwork_20341
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/index.html

Known issues
------------

  Here are the changes found in Patchwork_20341 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html
    - fi-skl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-guc:         NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][6] ([fdo#109271]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-cml-u2:          NOTRUN -> [SKIP][7] ([fdo#109315]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][8] ([fdo#109271]) +17 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][9] ([fdo#109271]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-8809g/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][11] ([fdo#109315]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][12] ([fdo#109271]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][13] ([fdo#109271]) +23 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_basic@userptr:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][14] ([fdo#109271]) +17 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([fdo#109315]) +17 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-cml-s:           NOTRUN -> [SKIP][16] ([fdo#109315]) +17 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-s/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][17] ([fdo#109271]) +17 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][18] ([fdo#109271]) +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][19] ([fdo#109271]) +17 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][20] ([fdo#109271]) +17 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][21] ([fdo#109271]) +17 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-ilk-650:         [PASS][22] -> [DMESG-WARN][23] ([i915#164]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][24] ([i915#2283])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][25] -> [INCOMPLETE][26] ([i915#2405])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [DMESG-FAIL][27] ([i915#3462]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-cfl-8109u:       [INCOMPLETE][29] ([i915#3462]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [INCOMPLETE][31] ([i915#2782] / [i915#2940] / [i915#3462]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [DMESG-FAIL][33] ([i915#3462]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - {fi-rkl-11500t}:    [DMESG-FAIL][35] ([i915#3462]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [DMESG-FAIL][37] ([i915#3462]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [INCOMPLETE][39] ([i915#2782] / [i915#3462]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [DMESG-FAIL][41] ([i915#3462]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [DMESG-FAIL][43] ([i915#3462]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [INCOMPLETE][45] ([i915#2782] / [i915#2940] / [i915#3462]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-kbl-7567u:       [INCOMPLETE][47] ([i915#2782] / [i915#3462] / [i915#794]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [DMESG-FAIL][49] ([i915#3462]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cml-s/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [DMESG-FAIL][51] ([i915#3462]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [DMESG-FAIL][53] ([i915#3462]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [INCOMPLETE][55] ([i915#2782] / [i915#3462]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-icl-y/igt@i915_selftest@live@execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [DMESG-FAIL][57] ([i915#3462]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - {fi-tgl-1115g4}:    [DMESG-FAIL][59] ([i915#3462]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [DMESG-FAIL][61] ([i915#3462]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [DMESG-FAIL][63] ([i915#3462]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-ehl-1/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [INCOMPLETE][65] ([i915#2782] / [i915#3462] / [i915#794]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [DMESG-FAIL][67] ([i915#3462]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [DMESG-FAIL][69] ([i915#3462]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [DMESG-FAIL][71] ([i915#3462]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [INCOMPLETE][73] ([i915#3462]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-1115g4}:    [DMESG-FAIL][75] ([i915#541]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10209 -> Patchwork_20341

  CI-20190529: 20190529
  CI_DRM_10209: a86fe137c0ea2e44c75b4b6c3f447af677508679 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20341: f80b835c6383b0fcf111286d34e8cc6a5a66b453 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f80b835c6383 drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/index.html

--===============1626186323134023616==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91372/">https://patchwork.freedesktop.org/series/91372/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10209 -&gt; Patchwork_20341</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20341 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-glk-dsi/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-8809g/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bxt-dsi/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-s/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-r/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-glk-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-6600u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cml-s/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-skl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cfl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-cml-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-ehl-1/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10209/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20341/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10209 -&gt; Patchwork_20341</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10209: a86fe137c0ea2e44c75b4b6c3f447af677508679 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20341: f80b835c6383b0fcf111286d34e8cc6a5a66b453 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f80b835c6383 drm/i915/selftests: Reorder tasklet_disable vs local_bh_disable</p>

</body>
</html>

--===============1626186323134023616==--

--===============2026069558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2026069558==--
