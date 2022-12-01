Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E5463F4D2
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 17:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A161110E64B;
	Thu,  1 Dec 2022 16:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B405810E64A;
 Thu,  1 Dec 2022 16:07:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE059A0169;
 Thu,  1 Dec 2022 16:07:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0248706936840491670=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 01 Dec 2022 16:07:46 -0000
Message-ID: <166991086670.14636.2168492891077749801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221130235805.221010-1-andi.shyti@linux.intel.com>
In-Reply-To: <20221130235805.221010-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgYWRk?=
 =?utf-8?q?_guard_padding_around_i915=5Fvma_=28rev5=29?=
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

--===============0248706936840491670==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: add guard padding around i915_vma (rev5)
URL   : https://patchwork.freedesktop.org/series/110720/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12459 -> Patchwork_110720v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110720v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110720v5, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/index.html

Participating hosts (41 -> 46)
------------------------------

  Additional (6): bat-dg1-6 bat-dg1-5 fi-tgl-dsi bat-atsm-1 bat-rpls-1 bat-rpls-2 
  Missing    (1): fi-ilk-m540 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110720v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-rkl-11600/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-icl-u2/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-icl-u2/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-apl-guc/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-5/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-glk-j4005/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-rkl-guc:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-rkl-guc/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-guc/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-skl-guc/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-guc/igt@i915_module_load@load.html
    - fi-kbl-soraka:      [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-soraka/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-soraka/igt@i915_module_load@load.html
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-6/igt@i915_module_load@load.html
    - fi-adl-ddr5:        [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-adl-ddr5/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-adl-ddr5/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-cfl-8109u/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-adlp-4:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlp-4/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlp-4/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-ivb-3770/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ivb-3770/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       [PASS][25] -> [DMESG-WARN][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-jsl-1}:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-jsl-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-jsl-1/igt@i915_module_load@load.html
    - {fi-jsl-1}:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-jsl-1/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-jsl-1/igt@i915_module_load@load.html
    - {bat-adlp-6}:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlp-6/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlp-6/igt@i915_module_load@load.html
    - {fi-ehl-2}:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-ehl-2/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ehl-2/igt@i915_module_load@load.html
    - {bat-jsl-3}:        [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-jsl-3/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-jsl-3/igt@i915_module_load@load.html
    - {bat-dg2-11}:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-11/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adln-1/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adln-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-rplp-1/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rplp-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-9/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-rpls-2}:       NOTRUN -> [INCOMPLETE][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rpls-2/igt@i915_module_load@load.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-adlm-1}:       [PASS][46] -> [DMESG-WARN][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-rpls-1}:       NOTRUN -> [DMESG-WARN][48] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-dg1-7}:        [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-kbl-2}:        [PASS][51] -> [DMESG-WARN][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-dg2-8}:        [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12459 and Patchwork_110720v5:

### New IGT tests (1) ###

  * igt@kms_frontbuffer_tracking:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_110720v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-skl-6700k2:      [PASS][55] -> [FAIL][56] ([i915#5032])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-skl-6700k2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-6700k2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][57] ([i915#4312])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][58] ([i915#4312])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ivb-3770/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][59] ([i915#4312])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][60] ([i915#4312])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][61] ([i915#4312])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-5/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][62] ([i915#4312])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][63] ([i915#4312])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][64] ([i915#4312])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][65] ([i915#4312] / [i915#4991])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-soraka/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][66] ([i915#4312])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-6/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][67] ([i915#4312])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][68] ([i915#4312])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-adl-ddr5/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][69] ([i915#4312] / [i915#4991]) -> [FAIL][70] ([fdo#109271] / [i915#4312] / [i915#4991])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-8809g/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7535]: https://gitlab.freedesktop.org/drm/intel/issues/7535
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12459 -> Patchwork_110720v5

  CI-20190529: 20190529
  CI_DRM_12459: 7d2ea1515d919f6e630c7f0f216bc0498322c3aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7077: ffe1b3ba95630cb1883e89fffb9e69bf95d31f62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110720v5: 7d2ea1515d919f6e630c7f0f216bc0498322c3aa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4d50ff77a8d7 Revert "drm/i915: Improve on suspend / resume time with VT-d enabled"
dbc6307a79e8 drm/i915: Refine VT-d scanout workaround
a72046688622 drm/i915: Introduce guard pages to i915_vma
5de56b9a5899 drm/i915: Wrap all access to i915_vma.node.start|size
fce44a2d553a drm/i915: Limit the display memory alignment to 32 bit instead of 64

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/index.html

--===============0248706936840491670==
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
<tr><td><b>Series:</b></td><td>add guard padding around i915_vma (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110720/">https://patchwork.freedesktop.org/series/110720/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12459 -&gt; Patchwork_110720v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110720v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110720v5, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/index.html</p>
<h2>Participating hosts (41 -&gt; 46)</h2>
<p>Additional (6): bat-dg1-6 bat-dg1-5 fi-tgl-dsi bat-atsm-1 bat-rpls-1 bat-rpls-2 <br />
  Missing    (1): fi-ilk-m540 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110720v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-icl-u2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-icl-u2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-apl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-5/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-glk-j4005/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-rkl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-soraka/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-soraka/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-6/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-adl-ddr5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-adl-ddr5/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlp-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlp-4/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ivb-3770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlp-6/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-ehl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ehl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-jsl-3/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adln-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rplp-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rpls-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12459 and Patchwork_110720v5:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_frontbuffer_tracking:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110720v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12459/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110720v5/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12459 -&gt; Patchwork_110720v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12459: 7d2ea1515d919f6e630c7f0f216bc0498322c3aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7077: ffe1b3ba95630cb1883e89fffb9e69bf95d31f62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110720v5: 7d2ea1515d919f6e630c7f0f216bc0498322c3aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4d50ff77a8d7 Revert "drm/i915: Improve on suspend / resume time with VT-d enabled"<br />
dbc6307a79e8 drm/i915: Refine VT-d scanout workaround<br />
a72046688622 drm/i915: Introduce guard pages to i915_vma<br />
5de56b9a5899 drm/i915: Wrap all access to i915_vma.node.start|size<br />
fce44a2d553a drm/i915: Limit the display memory alignment to 32 bit instead of 64</p>

</body>
</html>

--===============0248706936840491670==--
