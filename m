Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8536ACCDF1B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 00:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9F310EB86;
	Thu, 18 Dec 2025 23:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EACC10EB4F;
 Thu, 18 Dec 2025 23:31:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3446681688287414394=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Dec 2025 23:31:02 -0000
Message-ID: <176610066218.103427.3440767800637641929@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251218163408.97508-1-dev@lankhorst.se>
In-Reply-To: <20251218163408.97508-1-dev@lankhorst.se>
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

--===============3446681688287414394==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev8)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17709 -> Patchwork_159035v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-rplp-1 bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v8:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-ilk-650/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-ilk-650/igt@dmabuf@all-tests.html

  * igt@i915_module_load@load:
    - fi-hsw-4770:        [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-hsw-4770/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-hsw-4770/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-ivb-3770:        [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-ivb-3770/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-mtlp-8:         [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-8/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-8/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adls-6/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adls-6/igt@i915_selftest@live.html
    - bat-jsl-1:          [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-1/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-1/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-3/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-3/igt@i915_selftest@live.html
    - bat-dg1-7:          [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-7/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-7/igt@i915_selftest@live.html
    - fi-glk-j4005:       [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-glk-j4005/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-glk-j4005/igt@i915_selftest@live.html
    - bat-rpls-4:         [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-rpls-4/igt@i915_selftest@live.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-rpls-4/igt@i915_selftest@live.html
    - bat-jsl-5:          [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-5/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-5/igt@i915_selftest@live.html
    - bat-arls-5:         [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-5/igt@i915_selftest@live.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-5/igt@i915_selftest@live.html
    - bat-arlh-2:         [PASS][29] -> [ABORT][30] +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-2/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-2/igt@i915_selftest@live.html
    - fi-rkl-11600:       [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-rkl-11600/igt@i915_selftest@live.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-rkl-11600/igt@i915_selftest@live.html
    - fi-cfl-guc:         [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-cfl-guc/igt@i915_selftest@live.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-cfl-guc/igt@i915_selftest@live.html

  * igt@i915_selftest@live@coherency:
    - fi-tgl-1115g4:      [PASS][35] -> [ABORT][36] +1 other test abort
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-tgl-1115g4/igt@i915_selftest@live@coherency.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-tgl-1115g4/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-kbl-7567u:       [PASS][37] -> [ABORT][38] +1 other test abort
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-7567u/igt@i915_selftest@live@evict.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-7567u/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-kbl-x1275:       [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][41] -> [ABORT][42] +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - bat-kbl-2:          [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - fi-bsw-nick:        [PASS][45] -> [ABORT][46] +1 other test abort
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-twl-1:          [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
    - bat-mtlp-9:         [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-14:         [PASS][51] -> [ABORT][52] +1 other test abort
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-11:         [PASS][53] -> [ABORT][54] +1 other test abort
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html
    - bat-dg2-9:          [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-twl-2:          [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live@gt_pm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-6:         [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@gt_tlb.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - fi-skl-6600u:       [PASS][63] -> [ABORT][64] +1 other test abort
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-skl-6600u/igt@i915_selftest@live@migrate.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-skl-6600u/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - bat-adlp-11:        [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live@mman.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live@mman.html
    - bat-dg1-6:          [PASS][67] -> [ABORT][68] +1 other test abort
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-6/igt@i915_selftest@live@mman.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-6/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - bat-arls-6:         [PASS][69] -> [ABORT][70] +1 other test abort
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-6/igt@i915_selftest@live@objects.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-6/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          [PASS][71] -> [DMESG-FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live@reset.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live@reset.html
    - bat-dg2-11:         [PASS][73] -> [DMESG-FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-11/igt@i915_selftest@live@reset.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-11/igt@i915_selftest@live@reset.html
    - fi-cfl-8700k:       [PASS][75] -> [ABORT][76] +1 other test abort
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-cfl-8700k/igt@i915_selftest@live@reset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-cfl-8700k/igt@i915_selftest@live@reset.html
    - bat-dg2-14:         [PASS][77] -> [DMESG-FAIL][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@reset.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@reset.html
    - bat-kbl-2:          [PASS][79] -> [DMESG-FAIL][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-kbl-2/igt@i915_selftest@live@reset.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-kbl-2/igt@i915_selftest@live@reset.html
    - bat-atsm-1:         [PASS][81] -> [ABORT][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-atsm-1/igt@i915_selftest@live@reset.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-atsm-1/igt@i915_selftest@live@reset.html
    - bat-mtlp-9:         [PASS][83] -> [DMESG-FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@reset.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@reset.html
    - bat-mtlp-8:         [PASS][85] -> [DMESG-FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-8/igt@i915_selftest@live@reset.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-8/igt@i915_selftest@live@reset.html
    - bat-dg2-8:          [PASS][87] -> [DMESG-FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-8/igt@i915_selftest@live@reset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-8/igt@i915_selftest@live@reset.html
    - bat-adls-6:         [PASS][89] -> [DMESG-FAIL][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adls-6/igt@i915_selftest@live@reset.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adls-6/igt@i915_selftest@live@reset.html
    - bat-jsl-1:          [PASS][91] -> [DMESG-FAIL][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-1/igt@i915_selftest@live@reset.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-1/igt@i915_selftest@live@reset.html
    - bat-arls-6:         [PASS][93] -> [DMESG-FAIL][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-6/igt@i915_selftest@live@reset.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-6/igt@i915_selftest@live@reset.html
    - bat-arlh-3:         [PASS][95] -> [DMESG-FAIL][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-3/igt@i915_selftest@live@reset.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-3/igt@i915_selftest@live@reset.html
    - bat-dg1-7:          [PASS][97] -> [DMESG-FAIL][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-7/igt@i915_selftest@live@reset.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-7/igt@i915_selftest@live@reset.html
    - fi-glk-j4005:       [PASS][99] -> [DMESG-FAIL][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-glk-j4005/igt@i915_selftest@live@reset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-glk-j4005/igt@i915_selftest@live@reset.html
    - bat-adlp-9:         [PASS][101] -> [DMESG-FAIL][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live@reset.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live@reset.html
    - bat-rpls-4:         [PASS][103] -> [DMESG-FAIL][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-rpls-4/igt@i915_selftest@live@reset.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-rpls-4/igt@i915_selftest@live@reset.html
    - fi-kbl-7567u:       [PASS][105] -> [DMESG-FAIL][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-7567u/igt@i915_selftest@live@reset.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-7567u/igt@i915_selftest@live@reset.html
    - bat-twl-1:          [PASS][107] -> [DMESG-FAIL][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live@reset.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live@reset.html
    - bat-jsl-5:          [PASS][109] -> [INCOMPLETE][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-5/igt@i915_selftest@live@reset.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-5/igt@i915_selftest@live@reset.html
    - bat-arls-5:         [PASS][111] -> [DMESG-FAIL][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-5/igt@i915_selftest@live@reset.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-5/igt@i915_selftest@live@reset.html
    - bat-arlh-2:         [PASS][113] -> [DMESG-FAIL][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-2/igt@i915_selftest@live@reset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-2/igt@i915_selftest@live@reset.html
    - bat-dg2-9:          [PASS][115] -> [DMESG-FAIL][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@reset.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@reset.html
    - fi-kbl-x1275:       [PASS][117] -> [DMESG-FAIL][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-x1275/igt@i915_selftest@live@reset.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-x1275/igt@i915_selftest@live@reset.html
    - bat-adlp-11:        [PASS][119] -> [DMESG-FAIL][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live@reset.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live@reset.html
    - fi-kbl-8809g:       [PASS][121] -> [INCOMPLETE][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-8809g/igt@i915_selftest@live@reset.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-8809g/igt@i915_selftest@live@reset.html
    - bat-dg1-6:          [PASS][123] -> [DMESG-FAIL][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-6/igt@i915_selftest@live@reset.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-6/igt@i915_selftest@live@reset.html
    - fi-tgl-1115g4:      [PASS][125] -> [DMESG-FAIL][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-tgl-1115g4/igt@i915_selftest@live@reset.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-tgl-1115g4/igt@i915_selftest@live@reset.html
    - bat-adlp-6:         [PASS][127] -> [DMESG-FAIL][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@reset.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@reset.html
    - fi-skl-6600u:       [PASS][129] -> [DMESG-FAIL][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-skl-6600u/igt@i915_selftest@live@reset.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-skl-6600u/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - fi-pnv-d510:        [PASS][131] -> [ABORT][132] +1 other test abort
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-pnv-d510/igt@i915_selftest@live@workarounds.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-pnv-d510/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-9:          [DMESG-FAIL][133] ([i915#12061]) -> [ABORT][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][135] ([i915#12061] / [i915#13929]) -> [ABORT][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-atsm-1/igt@i915_selftest@live.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-atsm-1/igt@i915_selftest@live.html
    - bat-mtlp-9:         [DMESG-FAIL][137] ([i915#12061]) -> [ABORT][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_159035v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][139] -> [ABORT][140] ([i915#14365])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][141] -> [ABORT][142] ([i915#14365])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live.html
    - bat-adlp-11:        [PASS][143] -> [ABORT][144] ([i915#14365])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live.html
    - bat-adlp-6:         [PASS][145] -> [ABORT][146] ([i915#14365])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live.html
    - bat-twl-2:          [PASS][147] -> [ABORT][148] ([i915#14365])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-6:         [PASS][149] -> [DMESG-WARN][150] ([i915#14872])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [PASS][151] -> [DMESG-FAIL][152] ([i915#12061])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][153] ([i915#12061]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][155] ([i915#12061]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-apl-1:          [DMESG-WARN][157] ([i915#13735] / [i915#180]) -> [ABORT][158] ([i915#180])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-apl-1/igt@core_hotunplug@unbind-rebind.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14872]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180


Build changes
-------------

  * Linux: CI_DRM_17709 -> Patchwork_159035v8

  CI-20190529: 20190529
  CI_DRM_17709: 84b93f7cc4ceb1c0bee1e478b652db7bbc40c7bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8674: f38f4d8e9c65aff45ac807e646d06e38bc3193a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159035v8: 84b93f7cc4ceb1c0bee1e478b652db7bbc40c7bb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/index.html

--===============3446681688287414394==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17709 -&gt; Patchwork_159035v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v8, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-rplp-1 bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-ilk-650/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-ilk-650/igt@dmabuf@all-tests.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-ivb-3770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-1/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-7/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-7/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-glk-j4005/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-rpls-4/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-rpls-4/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-rkl-11600/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-rkl-11600/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-cfl-guc/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-cfl-guc/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-tgl-1115g4/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-tgl-1115g4/igt@i915_selftest@live@coherency.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-7567u/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-7567u/igt@i915_selftest@live@evict.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-kbl-2/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@gt_lrc.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live@gt_pm.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@gt_tlb.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live@migrate.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-skl-6600u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-skl-6600u/igt@i915_selftest@live@migrate.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live@mman.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-6/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-6/igt@i915_selftest@live@mman.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-6/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-6/igt@i915_selftest@live@objects.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-11/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-11/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-cfl-8700k/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-cfl-8700k/igt@i915_selftest@live@reset.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-kbl-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-kbl-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-atsm-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-atsm-1/igt@i915_selftest@live@reset.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-8/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-8/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-8/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-8/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adls-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adls-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-3/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-3/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-7/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-7/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-glk-j4005/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-glk-j4005/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-rpls-4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-rpls-4/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-7567u/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-7567u/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-jsl-5/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-jsl-5/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arls-5/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arls-5/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-arlh-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-arlh-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-x1275/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-x1275/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-kbl-8809g/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-kbl-8809g/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg1-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg1-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-tgl-1115g4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-tgl-1115g4/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-skl-6600u/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-skl-6600u/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/fi-pnv-d510/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/fi-pnv-d510/igt@i915_selftest@live@workarounds.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-twl-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872">i915#14872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17709/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v8/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17709 -&gt; Patchwork_159035v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17709: 84b93f7cc4ceb1c0bee1e478b652db7bbc40c7bb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8674: f38f4d8e9c65aff45ac807e646d06e38bc3193a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159035v8: 84b93f7cc4ceb1c0bee1e478b652db7bbc40c7bb @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3446681688287414394==--
