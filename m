Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F4337654
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 15:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A116EDA1;
	Thu, 11 Mar 2021 14:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9D636EDA1;
 Thu, 11 Mar 2021 14:59:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5609A7DFB;
 Thu, 11 Mar 2021 14:59:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 11 Mar 2021 14:59:49 -0000
Message-ID: <161547478993.28797.1769031261374199096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev16=29?=
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
Content-Type: multipart/mixed; boundary="===============0961289545=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0961289545==
Content-Type: multipart/alternative;
 boundary="===============2230380723260386864=="

--===============2230380723260386864==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev16)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9849 -> Patchwork_19780
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19780 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19780, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19780:

### IGT changes ###

#### Possible regressions ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][11] ([i915#2947]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-2}:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ehl-2/igt@prime_vgem@basic-userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ehl-2/igt@prime_vgem@basic-userptr.html
    - {fi-jsl-1}:         [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-jsl-1/igt@prime_vgem@basic-userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-jsl-1/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
    - {fi-rkl-11500t}:    [PASS][21] -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19780 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][23] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][24] ([i915#3159])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][25] -> [TIMEOUT][26] ([i915#2502] / [i915#3145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][27] -> [INCOMPLETE][28] ([i915#2782] / [i915#926])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][29] -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-bsw-kefka:       [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][37] -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][39] -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7567u:       [PASS][41] -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [PASS][43] -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][45] -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][47] -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][49] -> [SKIP][50] ([fdo#109271])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [PASS][51] -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-byt-j1900:       [PASS][53] -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][55] -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][57] -> [SKIP][58] ([fdo#109271])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-soraka:      [PASS][59] -> [SKIP][60] ([fdo#109271])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][61] -> [SKIP][62] ([fdo#109271])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-kbl-8809g:       [PASS][63] -> [SKIP][64] ([fdo#109271])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
    - fi-bdw-5557u:       [PASS][65] -> [SKIP][66] ([fdo#109271])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][67] -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][69] -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-bsw-nick:        [PASS][71] -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][73] -> [SKIP][74] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][75] -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][77] -> [SKIP][78] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-icl-y:           NOTRUN -> [FAIL][79] ([i915#2782])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][80] ([i915#2502] / [i915#3145]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2947]: https://gitlab.freedesktop.org/drm/intel/issues/2947
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9849 -> Patchwork_19780

  CI-20190529: 20190529
  CI_DRM_9849: 123ebf0379ca90c2f64bff73ff32c7c2140d2b9c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19780: df3000218c205a604d53961223b1aa423b7d61b6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

df3000218c20 drm/i915: Pass ww ctx to i915_gem_object_pin_pages
01ec61981f44 drm/i915: Pass ww ctx to pin_map
2a3925c85678 drm/i915: Add ww context to prepare_(read/write)
17e1f6f13463 drm/i915: Add ww parameter to get_pages() callback
c4bcee10e1ff drm/i915: Fix pin_map in scheduler selftests
6a04f7a4fb3d drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.
6c9553a14119 drm/i915: Move gt_revoke() slightly
b54702917508 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
82341525cb30 drm/i915: Finally remove obj->mm.lock.
eccf40ac6dff drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
bfc623e7aa5a drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
b0a1c130a3e1 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
3eba970a2562 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
0d29694fa958 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
3e54a317b6a2 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
567f1fdb0fd3 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
a46ab6927106 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
d4b60b619e09 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
ae02f93ac96e drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
c60227da1d5e drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
78ac2ae0a6f3 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
ad8e58bc1d77 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
1ad052fc5083 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
a2b35549e350 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
1f422bb004d2 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
f76bff23db43 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
c518b61f2828 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
a0edf1dedfcb drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
07742daa31f1 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
25ec5fbd2244 drm/i915: Use a single page table lock for each gtt.
60f82fd9a7c9 drm/i915: Fix ww locking in shmem_create_from_object
2f5f9bca3704 drm/i915: Add missing ww lock in intel_dsb_prepare.
7bf1238f430a drm/i915: Add ww locking to dma-buf ops.
13463c86de73 drm/i915: Lock ww in ucode objects correctly
856988996488 drm/i915: Increase ww locking for perf.
aac3d8e69b16 drm/i915: Add ww locking around vm_access()
594fb9bb3edf drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
9dd394f55435 drm/i915: Prepare for obj->mm.lock removal, v2.
b84204b94870 drm/i915: Fix workarounds selftest, part 1
95dd9a5b76ad drm/i915: Fix pread/pwrite to work with new locking rules.
ab50d5ae3aa1 drm/i915: Defer pin calls in buffer pool until first use by caller.
38250623370a drm/i915: Take obj lock around set_domain ioctl
0234dc4ff4ff drm/i915: Make __engine_unpark() compatible with ww locking.
5e0e47dd8939 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.
95ab8d6067d0 drm/i915: Take reservation lock around i915_vma_pin.
1092d212be31 drm/i915: Move pinning to inside engine_wa_list_verify()
b2cecc1e4972 drm/i915: Add object locking to vm_fault_cpu
01cd746af3c5 drm/i915: Pass ww ctx to intel_pin_to_display_plane
6bf1b9e277f3 drm/i915: Rework clflush to work correctly without obj->mm.lock.
598e9ba1dfed drm/i915: Handle ww locking in init_status_page
72e9bfd7ceea drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
206f875cafc5 drm/i915: Populate logical context during first pin.
3c7404bac792 drm/i915: Flatten obj->mm.lock
b4e92512f008 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v7.
c006fd23ae00 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
40c7ada6528a drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
6cce6a791e3b drm/i915: Reject more ioctls for userptr, v2.
063d779f45a2 drm/i915: No longer allow exporting userptr through dma-buf
4f5772ae4042 drm/i915: Disable userptr pread/pwrite support.
2ff91be66b1e drm/i915: make lockdep slightly happier about execbuf.
94c02fbb4cec drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
3768448e58fc drm/i915: Rework struct phys attachment handling
98108b44d022 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
513ee4798499 drm/i915: Add gem object locking to madvise.
d3c0d6934682 drm/i915: Ensure we hold the object mutex in pin correctly.
c3e85904db1d drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
05ca8fd3489b drm/i915: Move cmd parser pinning to execbuffer
45179357f4a3 drm/i915: Pin timeline map after first timeline pin, v3.
62d87d68daa6 drm/i915: Do not share hwsp across contexts any more, v7.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/index.html

--===============2230380723260386864==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev16)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9849 -&gt; Patchwork_19780</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19780 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19780, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19780:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2947">i915#2947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ehl-2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-jsl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19780 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19780/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9849 -&gt; Patchwork_19780</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9849: 123ebf0379ca90c2f64bff73ff32c7c2140d2b9c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19780: df3000218c205a604d53961223b1aa423b7d61b6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>df3000218c20 drm/i915: Pass ww ctx to i915_gem_object_pin_pages<br />
01ec61981f44 drm/i915: Pass ww ctx to pin_map<br />
2a3925c85678 drm/i915: Add ww context to prepare_(read/write)<br />
17e1f6f13463 drm/i915: Add ww parameter to get_pages() callback<br />
c4bcee10e1ff drm/i915: Fix pin_map in scheduler selftests<br />
6a04f7a4fb3d drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.<br />
6c9553a14119 drm/i915: Move gt_revoke() slightly<br />
b54702917508 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
82341525cb30 drm/i915: Finally remove obj-&gt;mm.lock.<br />
eccf40ac6dff drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
bfc623e7aa5a drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
b0a1c130a3e1 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
3eba970a2562 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
0d29694fa958 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
3e54a317b6a2 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
567f1fdb0fd3 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
a46ab6927106 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
d4b60b619e09 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
ae02f93ac96e drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
c60227da1d5e drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
78ac2ae0a6f3 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
ad8e58bc1d77 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
1ad052fc5083 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
a2b35549e350 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
1f422bb004d2 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
f76bff23db43 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
c518b61f2828 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
a0edf1dedfcb drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
07742daa31f1 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
25ec5fbd2244 drm/i915: Use a single page table lock for each gtt.<br />
60f82fd9a7c9 drm/i915: Fix ww locking in shmem_create_from_object<br />
2f5f9bca3704 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
7bf1238f430a drm/i915: Add ww locking to dma-buf ops.<br />
13463c86de73 drm/i915: Lock ww in ucode objects correctly<br />
856988996488 drm/i915: Increase ww locking for perf.<br />
aac3d8e69b16 drm/i915: Add ww locking around vm_access()<br />
594fb9bb3edf drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
9dd394f55435 drm/i915: Prepare for obj-&gt;mm.lock removal, v2.<br />
b84204b94870 drm/i915: Fix workarounds selftest, part 1<br />
95dd9a5b76ad drm/i915: Fix pread/pwrite to work with new locking rules.<br />
ab50d5ae3aa1 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
38250623370a drm/i915: Take obj lock around set_domain ioctl<br />
0234dc4ff4ff drm/i915: Make __engine_unpark() compatible with ww locking.<br />
5e0e47dd8939 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.<br />
95ab8d6067d0 drm/i915: Take reservation lock around i915_vma_pin.<br />
1092d212be31 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
b2cecc1e4972 drm/i915: Add object locking to vm_fault_cpu<br />
01cd746af3c5 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
6bf1b9e277f3 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
598e9ba1dfed drm/i915: Handle ww locking in init_status_page<br />
72e9bfd7ceea drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
206f875cafc5 drm/i915: Populate logical context during first pin.<br />
3c7404bac792 drm/i915: Flatten obj-&gt;mm.lock<br />
b4e92512f008 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v7.<br />
c006fd23ae00 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
40c7ada6528a drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
6cce6a791e3b drm/i915: Reject more ioctls for userptr, v2.<br />
063d779f45a2 drm/i915: No longer allow exporting userptr through dma-buf<br />
4f5772ae4042 drm/i915: Disable userptr pread/pwrite support.<br />
2ff91be66b1e drm/i915: make lockdep slightly happier about execbuf.<br />
94c02fbb4cec drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
3768448e58fc drm/i915: Rework struct phys attachment handling<br />
98108b44d022 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
513ee4798499 drm/i915: Add gem object locking to madvise.<br />
d3c0d6934682 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
c3e85904db1d drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
05ca8fd3489b drm/i915: Move cmd parser pinning to execbuffer<br />
45179357f4a3 drm/i915: Pin timeline map after first timeline pin, v3.<br />
62d87d68daa6 drm/i915: Do not share hwsp across contexts any more, v7.</p>

</body>
</html>

--===============2230380723260386864==--

--===============0961289545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0961289545==--
