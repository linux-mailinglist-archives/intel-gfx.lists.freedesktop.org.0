Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D42A7399FB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 10:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD7B10E4FC;
	Thu, 22 Jun 2023 08:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E2C310E4F3;
 Thu, 22 Jun 2023 08:36:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26255A73C7;
 Thu, 22 Jun 2023 08:36:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4095096573018070214=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Thu, 22 Jun 2023 08:36:07 -0000
Message-ID: <168742296714.4870.14132363916666405523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230622064215.1147675-1-arun.r.murthy@intel.com>
In-Reply-To: <20230622064215.1147675-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dp=3A_On_AUX_xfer_timeout_restart_freshly_=28rev8?=
 =?utf-8?q?=29?=
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

--===============4095096573018070214==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dp: On AUX xfer timeout restart freshly (rev8)
URL   : https://patchwork.freedesktop.org/series/119055/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13302 -> Patchwork_119055v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119055v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119055v8, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/index.html

Participating hosts (41 -> 41)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119055v8:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-rplp-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rplp-1/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          [PASS][3] -> [DMESG-WARN][4] +40 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - bat-adlm-1:         [PASS][5] -> [DMESG-WARN][6] +41 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] +39 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@coherency.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem:
    - bat-adls-5:         [PASS][9] -> [DMESG-WARN][10] +40 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adls-5/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-rpls-1:         [PASS][11] -> [DMESG-WARN][12] +35 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-rpls-2:         [PASS][13] -> [DMESG-WARN][14] +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][15] -> [DMESG-WARN][16] +37 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@guc:
    - bat-mtlp-6:         [PASS][17] -> [DMESG-WARN][18] +38 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@guc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-8809g:       [PASS][19] -> [DMESG-WARN][20] +39 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][21] +18 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][22] -> [DMESG-WARN][23] +64 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@perf.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][24] -> [DMESG-WARN][25] +40 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-bsw-n3050:       [PASS][26] -> [DMESG-WARN][27] +63 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@unused-offsets:
    - fi-elk-e7500:       [PASS][28] -> [DMESG-WARN][29] +67 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-adlp-6:         [PASS][30] -> [DMESG-WARN][31] +48 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][32] ([i915#6794] / [i915#7392]) -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@mman.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         [SKIP][34] ([i915#1072]) -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3}:
    - bat-dg2-11:         [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1}:
    - fi-elk-e7500:       [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2}:
    - fi-bsw-n3050:       [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_119055v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        [PASS][42] -> [ABORT][43] ([i915#4423] / [i915#8011])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@core_auth@basic-auth.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@core_hotunplug@unbind-rebind:
    - bat-dg2-11:         [PASS][44] -> [DMESG-WARN][45] ([i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-n3050:       [PASS][46] -> [DMESG-WARN][47] ([i915#6687]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][48] -> [DMESG-WARN][49] ([i915#1982]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][50] -> [DMESG-WARN][51] ([i915#4423])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-11/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][52] -> [DMESG-WARN][53] ([i915#4391])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-adlp-9:         [PASS][54] -> [DMESG-WARN][55] ([i915#8218])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
    - bat-adls-5:         [PASS][56] -> [DMESG-WARN][57] ([i915#8218])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][58] -> [DMESG-WARN][59] ([i915#8218])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7567u:       [PASS][60] -> [DMESG-WARN][61] ([i915#8218])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][62] -> [DMESG-WARN][63] ([i915#8218])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - bat-kbl-2:          [PASS][64] -> [DMESG-WARN][65] ([i915#8218])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - bat-atsm-1:         [PASS][66] -> [FAIL][67] ([i915#6268])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-atsm-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-mtlp-6:         [PASS][68] -> [DMESG-WARN][69] ([i915#7699]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-2:         [PASS][70] -> [DMESG-WARN][71] ([i915#7699]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][72] -> [DMESG-FAIL][73] ([i915#5334])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-11:         [PASS][74] -> [DMESG-WARN][75] ([i915#7699]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
    - bat-rpls-1:         [PASS][76] -> [DMESG-WARN][77] ([i915#7699]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][78] -> [DMESG-FAIL][79] ([i915#4258] / [i915#7913])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][80] ([i915#7852])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlm-1:         [PASS][81] -> [DMESG-WARN][82] ([i915#8423])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-7567u:       [PASS][83] -> [DMESG-WARN][84] ([i915#8423])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-x1275:       [PASS][85] -> [DMESG-WARN][86] ([i915#8423])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-8809g:       [PASS][87] -> [DMESG-WARN][88] ([i915#8423])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - bat-kbl-2:          [PASS][89] -> [DMESG-WARN][90] ([i915#8423])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@hangcheck.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][91] -> [DMESG-WARN][92] ([i915#7699]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [PASS][93] -> [DMESG-WARN][94] ([i915#6367])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@slpc.html
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][95] ([i915#6367])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         [PASS][96] -> [DMESG-WARN][97] ([i915#7852]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@workarounds.html
    - bat-adlp-9:         [PASS][98] -> [DMESG-WARN][99] ([i915#7852]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@workarounds.html
    - bat-rpls-2:         [PASS][100] -> [DMESG-WARN][101] ([i915#7852])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@workarounds.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][102] -> [DMESG-WARN][103] ([i915#6687])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-guc:         [DMESG-FAIL][104] ([i915#5334] / [i915#7872]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][106] ([i915#7932]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8218]: https://gitlab.freedesktop.org/drm/intel/issues/8218
  [i915#8423]: https://gitlab.freedesktop.org/drm/intel/issues/8423


Build changes
-------------

  * Linux: CI_DRM_13302 -> Patchwork_119055v8

  CI-20190529: 20190529
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119055v8: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dc626a5f1e14 drm/i915/display/dp: On AUX xfer timeout restart freshly

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/index.html

--===============4095096573018070214==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dp: On AUX xfer timeout restart freshly (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119055/">https://patchwork.freedesktop.org/series/119055/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13302 -&gt; Patchwork_119055v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119055v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119055v8, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119055v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rplp-1/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlm-1/igt@i915_selftest@live@client.html">DMESG-WARN</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adls-5/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@guc.html">DMESG-WARN</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +39 similar issues</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +18 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@kms_addfb_basic@unused-offsets.html">DMESG-WARN</a> +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@mman.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3}:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1}:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2}:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-2.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119055v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-bsw-n3050/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adls-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adls-5/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8218">i915#8218</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-7567u/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
<li>
<p>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-kbl-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-kbl-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-adlp-9/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13302/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119055v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13302 -&gt; Patchwork_119055v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13302: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7344: 1c715e38251905d4d7797651fa448b11bf42a4a4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119055v8: 839a0f1c0fba27caa09cb8c3c07ba21ba7428bb6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dc626a5f1e14 drm/i915/display/dp: On AUX xfer timeout restart freshly</p>

</body>
</html>

--===============4095096573018070214==--
