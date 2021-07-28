Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C775A3D8E6B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 14:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DD46E0E5;
	Wed, 28 Jul 2021 12:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D54A6E04A;
 Wed, 28 Jul 2021 12:59:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76580A73C9;
 Wed, 28 Jul 2021 12:59:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 28 Jul 2021 12:59:45 -0000
Message-ID: <162747718545.22806.6728181738395329251@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701125346.10005-1-anshuman.gupta@intel.com>
In-Reply-To: <20210701125346.10005-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbHBz?=
 =?utf-8?q?p_with_hdmi/dp_outputs_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1147913842=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1147913842==
Content-Type: multipart/alternative;
 boundary="===============8211386984658168000=="

--===============8211386984658168000==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: lpsp with hdmi/dp outputs (rev2)
URL   : https://patchwork.freedesktop.org/series/92108/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10410 -> Patchwork_20723
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/index.html

Known issues
------------

  Here are the changes found in Patchwork_20723 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +28 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][2] ([fdo#109271]) +49 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][4] ([fdo#109271]) +33 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271]) +59 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][6] ([fdo#109271]) +30 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-cml-u2:          NOTRUN -> [SKIP][7] ([fdo#109315]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-u2:          NOTRUN -> [SKIP][8] ([fdo#109315])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@amdgpu/amd_basic@query-info.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([fdo#109315])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html
    - fi-tgl-y:           NOTRUN -> [SKIP][10] ([fdo#109315])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][11] ([fdo#109315]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271]) +29 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-tgl-u2:          NOTRUN -> [SKIP][13] ([fdo#109315] / [i915#2575]) +16 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][14] ([fdo#109271]) +31 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-tgl-y:           NOTRUN -> [SKIP][15] ([fdo#109315] / [i915#2575]) +16 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][16] ([fdo#109271]) +35 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([fdo#109315] / [i915#2575]) +16 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][18] ([fdo#109271]) +28 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][19] ([fdo#109271]) +37 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-4770:        NOTRUN -> [WARN][20] ([i915#3718])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][21] ([i915#3718])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@write:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][22] ([fdo#109271]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-gvtdvm/igt@fbdev@write.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-apl-guc:         NOTRUN -> [SKIP][24] ([fdo#109271]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html
    - fi-cml-u2:          NOTRUN -> [SKIP][25] ([i915#1208]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][26] ([i915#146])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][27] ([i915#1888])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bwr-2160:        NOTRUN -> [SKIP][28] ([fdo#109271]) +60 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cml-u2:          NOTRUN -> [SKIP][29] ([i915#2190])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][30] ([i915#2190])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][31] ([fdo#109271]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#2190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#2190])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2190])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-y:           NOTRUN -> [SKIP][36] ([i915#2190])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#2190])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2190])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-skl-guc:         NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2190])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2190])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][43] ([i915#2190])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
    - fi-icl-y:           NOTRUN -> [SKIP][44] ([i915#2190])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2190])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2190])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2190])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][48] ([i915#1610])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3012])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][50] ([i915#1155])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][51] ([i915#579])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][52] ([i915#579])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-cml-u2:          NOTRUN -> [FAIL][53] ([i915#579])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][54] ([i915#579])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][55] ([i915#579])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][56] ([i915#579])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][57] ([i915#579])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-guc:         NOTRUN -> [FAIL][58] ([i915#579])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][59] ([i915#579])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][60] ([i915#579])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html
    - fi-icl-y:           NOTRUN -> [FAIL][61] ([i915#579])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_pm_rpm@basic-rte.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][62] ([i915#579])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][63] ([i915#579])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][64] ([i915#579])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][65] ([i915#3855])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][66] ([i915#579])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-y:           NOTRUN -> [FAIL][67] ([i915#579])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][68] ([i915#579])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][69] ([i915#579])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][70] ([fdo#109271]) +28 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-y:           NOTRUN -> [SKIP][71] ([i915#579]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][72] ([fdo#109271]) +28 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][73] ([i915#579]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
    - fi-icl-y:           NOTRUN -> [SKIP][74] ([i915#579]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][75] ([i915#579]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
    - fi-cml-u2:          NOTRUN -> [SKIP][76] ([i915#579]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][77] ([i915#2782] / [i915#2940])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][78] ([i915#2373])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           NOTRUN -> [DMESG-FAIL][79] ([i915#2291])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][80] ([i915#1759])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][81] ([i915#1886] / [i915#2291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][84] ([fdo#111827]) +8 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html
    - fi-icl-y:           NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cml-u2:          NOTRUN -> [SKIP][95] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][102] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html
    - fi-tgl-y:           NOTRUN -> [SKIP][103] ([fdo#111827]) +8 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][105] ([fdo#109271]) +30 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][106] ([fdo#109285])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - fi-cml-u2:          NOTRUN -> [SKIP][107] ([fdo#109285])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][108] ([fdo#109285])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-y:           NOTRUN -> [SKIP][109] ([fdo#109285])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-y:           NOTRUN -> [SKIP][110] ([fdo#109285])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-hsw-4770:        NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#533])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#533])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cml-u2:          NOTRUN -> [SKIP][114] ([fdo#109278] / [i915#533])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#533])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#533])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#533])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-icl-y:           NOTRUN -> [SKIP][123] ([fdo#109278])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#533])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#533])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-guc:         NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#533])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][127] ([fdo#109271]) +59 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][128] ([fdo#109271]) +37 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][129] ([fdo#109271]) +16 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-skl-guc:         NOTRUN -> [SKIP][130] ([fdo#109271]) +28 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html
    - fi-icl-y:           NOTRUN -> [SKIP][131] ([fdo#110189]) +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#1072]) +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][133] ([i915#1072]) +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][134] ([fdo#109271]) +30 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][135] ([fdo#109271]) +63 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][136] ([fdo#109271]) +53 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-tgl-y:           NOTRUN -> [SKIP][137] ([i915#3301])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][138] ([i915#3301])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][139] ([i915#3301])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           NOTRUN -> [SKIP][140] ([i915#3301])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          NOTRUN -> [SKIP][141] ([i915#3301])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][142] ([fdo#109271] / [i915#1436] / [i915#2722])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][143] ([i915#1814] / [i915#3363])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][144] ([i915#2426] / [i915#3363])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/index.html

--===============8211386984658168000==
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
<tr><td><b>Series:</b></td><td>lpsp with hdmi/dp outputs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92108/">https://patchwork.freedesktop.org/series/92108/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10410 -&gt; Patchwork_20723</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20723 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +49 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#109315]) +17 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> ([fdo#109315]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@amdgpu/amd_basic@query-info.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> ([fdo#109315])</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> ([fdo#109315]) +17 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> ([fdo#109315] / [i915#2575]) +16 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> ([fdo#109315] / [i915#2575]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> ([fdo#109315] / [i915#2575]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">WARN</a> ([i915#3718])</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> ([i915#3718])</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-gvtdvm/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> ([i915#1208]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#146])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> ([i915#1888])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3012])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#1155])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#3855])</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> ([i915#579])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#579]) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#579]) +1 similar issue</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#579]) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#579]) +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#579]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> ([i915#2782] / [i915#2940])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#2291])</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#111827]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / [i915#533])</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#110189]) +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#1072]) +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([i915#1072]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> ([i915#3301])</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#1436] / [i915#2722])</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-icl-u2/igt@runner@aborted.html">FAIL</a> ([i915#1814] / [i915#3363])</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20723/fi-apl-guc/igt@runner@aborted.html">FAIL</a> ([i915#2426] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<p>[fdo#1</p>

</body>
</html>

--===============8211386984658168000==--

--===============1147913842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1147913842==--
