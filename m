Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857E7346543
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 17:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49B06E90F;
	Tue, 23 Mar 2021 16:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B02FA6E8B2;
 Tue, 23 Mar 2021 16:35:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FD22A73C7;
 Tue, 23 Mar 2021 16:35:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
Date: Tue, 23 Mar 2021 16:35:13 -0000
Message-ID: <161651731364.20053.9755422431644131516@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev18=29?=
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
Content-Type: multipart/mixed; boundary="===============1089439389=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1089439389==
Content-Type: multipart/alternative;
 boundary="===============0424938611933201967=="

--===============0424938611933201967==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev18)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9885 -> Patchwork_19841
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19841 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19841, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19841:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@contexts:
    - {fi-rkl-11500t}:    [FAIL][13] ([i915#3277] / [i915#3283]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@gem_exec_parallel@engines@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - {fi-rkl-11500t}:    [FAIL][15] ([i915#3283]) -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-2}:         [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ehl-2/igt@prime_vgem@basic-userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ehl-2/igt@prime_vgem@basic-userptr.html
    - {fi-jsl-1}:         [PASS][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-jsl-1/igt@prime_vgem@basic-userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-jsl-1/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][21] -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][23] -> [SKIP][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
    - {fi-rkl-11500t}:    [PASS][25] -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19841 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][27] ([i915#2947])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [PASS][28] -> [DMESG-WARN][29] ([i915#402]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_tiled_blits@basic.html
    - fi-kbl-8809g:       [PASS][30] -> [TIMEOUT][31] ([i915#2502] / [i915#3145])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][32] -> [SKIP][33] ([fdo#109271])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][34] -> [SKIP][35] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][38] -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][40] -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7567u:       [PASS][42] -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [PASS][44] -> [SKIP][45] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][46] -> [SKIP][47] ([fdo#109271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][48] -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][50] -> [SKIP][51] ([fdo#109271])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [PASS][52] -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-snb-2600:        [PASS][54] -> [SKIP][55] ([fdo#109271])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-snb-2600/igt@prime_vgem@basic-userptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-snb-2600/igt@prime_vgem@basic-userptr.html
    - fi-byt-j1900:       [PASS][56] -> [SKIP][57] ([fdo#109271])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][58] -> [SKIP][59] ([fdo#109271])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][60] -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-soraka:      [PASS][62] -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][64] -> [SKIP][65] ([fdo#109271])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-kbl-8809g:       [PASS][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
    - fi-bdw-5557u:       [PASS][68] -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][70] -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][72] -> [SKIP][73] ([fdo#109271])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][74] -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][76] -> [SKIP][77] ([fdo#109271])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][78] -> [SKIP][79] ([fdo#109271])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][80] ([i915#1610])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][81] ([i915#1610])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][82] ([i915#2947])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][83] ([i915#1610])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][84] ([i915#3145]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][86] ([i915#2411] / [i915#402]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [DMESG-WARN][88] ([i915#402]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][90] ([i915#3047]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-glk-dsi/igt@i915_selftest@live@client.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][92] ([i915#165]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][94] ([i915#2426]) -> [FAIL][95] ([i915#1610] / [i915#2426])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-apl-guc/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2947]: https://gitlab.freedesktop.org/drm/intel/issues/2947
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (48 -> 43)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9885 -> Patchwork_19841

  CI-20190529: 20190529
  CI_DRM_9885: 370158d493f88d52f5aae76794228f47dd04cfe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6042: 529e182e30117d083ac0693011f1af04357d0115 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19841: 0872f4e47cc76e382aefac08dcdb1c9c0cc76b5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0872f4e47cc7 drm/i915: Remove asynchronous vma binding
e0b2dcbb577c drm/i915: Pass ww ctx to i915_gem_object_pin_pages
c961b851f0f4 drm/i915: Pass ww ctx to pin_map
009aea508019 drm/i915: Add ww context to prepare_(read/write)
fa9a3aa7cc32 drm/i915: Add ww parameter to get_pages() callback
79181322b8c3 drm/i915: Fix pin_map in scheduler selftests
28e263d3572c drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.
96d6bd170d7a drm/i915: Move gt_revoke() slightly
9fc64b960321 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
2e2e7b38f85a drm/i915: Finally remove obj->mm.lock.
89f6f29df407 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
bb69aac3ea77 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
e2bb3c22cac0 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
7b48384cbdf2 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
170ae0178b2b drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
538601003e61 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
1412f472559a drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
e85b79c98be5 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
b30d31903984 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
adfc47aa25f8 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
a25c41efc1e7 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
56166af1f1c8 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
ccf4fc27e7ac drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
554806522541 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
112ffa7bb2d9 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
ba8a88aed80f drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
7d53063f4923 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
be577dd52aef drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
fc461b458635 drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
d02a3c08b6c8 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
7990b3f44593 drm/i915: Use a single page table lock for each gtt.
a953ed1b87c6 drm/i915: Fix ww locking in shmem_create_from_object
afe92b46fb0e drm/i915: Add missing ww lock in intel_dsb_prepare.
a5ad0fac0fc8 drm/i915: Add ww locking to dma-buf ops, v2.
e03a1006484c drm/i915: Lock ww in ucode objects correctly
6019d6c0eb3f drm/i915: Increase ww locking for perf.
ef70b0b8e290 drm/i915: Add ww locking around vm_access()
aee3fe87816c drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
327f719d9bcd drm/i915: Prepare for obj->mm.lock removal, v2.
c721b167ca40 drm/i915: Fix workarounds selftest, part 1
bd2246c91faf drm/i915: Fix pread/pwrite to work with new locking rules.
8bc8d48fa1f5 drm/i915: Defer pin calls in buffer pool until first use by caller.
4c3c4d4088f1 drm/i915: Take obj lock around set_domain ioctl
173f4f1b1c63 drm/i915: Make __engine_unpark() compatible with ww locking.
d3246765f63f drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.
f7d9dda62c90 drm/i915: Take reservation lock around i915_vma_pin.
dedde1a8aad4 drm/i915: Move pinning to inside engine_wa_list_verify()
baa8f9fbc98e drm/i915: Add object locking to vm_fault_cpu
72088f888965 drm/i915: Pass ww ctx to intel_pin_to_display_plane
b1a804919d47 drm/i915: Rework clflush to work correctly without obj->mm.lock.
ef351a4e9f96 drm/i915: Handle ww locking in init_status_page
e5f8a7149fca drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
50d8873b420a drm/i915: Populate logical context during first pin.
fd4b18d157a8 drm/i915: Flatten obj->mm.lock
1f380a5600a4 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v7.
efd70139bae3 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
76fa2e87da9c drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
13f46a38f0eb drm/i915: Reject more ioctls for userptr, v2.
e170f0547221 drm/i915: No longer allow exporting userptr through dma-buf
81d63e3444e2 drm/i915: Disable userptr pread/pwrite support.
cd80a5137639 drm/i915: make lockdep slightly happier about execbuf.
c5121d3bf030 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
f1417f7189ac drm/i915: Rework struct phys attachment handling
ec224070faa9 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
5f9f5fded601 drm/i915: Add gem object locking to madvise.
d0fd03b71eac drm/i915: Ensure we hold the object mutex in pin correctly.
263d87a59478 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
61e73e406004 drm/i915: Move cmd parser pinning to execbuffer
3dcc3090a8aa drm/i915: Pin timeline map after first timeline pin, v4.
21e30af84d60 drm/i915: Do not share hwsp across contexts any more, v8.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/index.html

--===============0424938611933201967==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev18)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9885 -&gt; Patchwork_19841</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19841 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19841, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19841:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3277">i915#3277</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3283">i915#3283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@gem_exec_parallel@engines@contexts.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3283">i915#3283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ehl-2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-jsl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19841 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@amdgpu/amd_prime@amd-to-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2947">i915#2947</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-snb-2600/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-snb-2600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2947">i915#2947</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19841/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 43)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9885 -&gt; Patchwork_19841</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9885: 370158d493f88d52f5aae76794228f47dd04cfe3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6042: 529e182e30117d083ac0693011f1af04357d0115 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19841: 0872f4e47cc76e382aefac08dcdb1c9c0cc76b5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0872f4e47cc7 drm/i915: Remove asynchronous vma binding<br />
e0b2dcbb577c drm/i915: Pass ww ctx to i915_gem_object_pin_pages<br />
c961b851f0f4 drm/i915: Pass ww ctx to pin_map<br />
009aea508019 drm/i915: Add ww context to prepare_(read/write)<br />
fa9a3aa7cc32 drm/i915: Add ww parameter to get_pages() callback<br />
79181322b8c3 drm/i915: Fix pin_map in scheduler selftests<br />
28e263d3572c drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.<br />
96d6bd170d7a drm/i915: Move gt_revoke() slightly<br />
9fc64b960321 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
2e2e7b38f85a drm/i915: Finally remove obj-&gt;mm.lock.<br />
89f6f29df407 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
bb69aac3ea77 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
e2bb3c22cac0 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
7b48384cbdf2 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
170ae0178b2b drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
538601003e61 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
1412f472559a drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
e85b79c98be5 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
b30d31903984 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
adfc47aa25f8 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
a25c41efc1e7 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
56166af1f1c8 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
ccf4fc27e7ac drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
554806522541 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
112ffa7bb2d9 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
ba8a88aed80f drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
7d53063f4923 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
be577dd52aef drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
fc461b458635 drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
d02a3c08b6c8 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
7990b3f44593 drm/i915: Use a single page table lock for each gtt.<br />
a953ed1b87c6 drm/i915: Fix ww locking in shmem_create_from_object<br />
afe92b46fb0e drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
a5ad0fac0fc8 drm/i915: Add ww locking to dma-buf ops, v2.<br />
e03a1006484c drm/i915: Lock ww in ucode objects correctly<br />
6019d6c0eb3f drm/i915: Increase ww locking for perf.<br />
ef70b0b8e290 drm/i915: Add ww locking around vm_access()<br />
aee3fe87816c drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
327f719d9bcd drm/i915: Prepare for obj-&gt;mm.lock removal, v2.<br />
c721b167ca40 drm/i915: Fix workarounds selftest, part 1<br />
bd2246c91faf drm/i915: Fix pread/pwrite to work with new locking rules.<br />
8bc8d48fa1f5 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
4c3c4d4088f1 drm/i915: Take obj lock around set_domain ioctl<br />
173f4f1b1c63 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
d3246765f63f drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.<br />
f7d9dda62c90 drm/i915: Take reservation lock around i915_vma_pin.<br />
dedde1a8aad4 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
baa8f9fbc98e drm/i915: Add object locking to vm_fault_cpu<br />
72088f888965 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
b1a804919d47 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
ef351a4e9f96 drm/i915: Handle ww locking in init_status_page<br />
e5f8a7149fca drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
50d8873b420a drm/i915: Populate logical context during first pin.<br />
fd4b18d157a8 drm/i915: Flatten obj-&gt;mm.lock<br />
1f380a5600a4 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v7.<br />
efd70139bae3 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
76fa2e87da9c drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
13f46a38f0eb drm/i915: Reject more ioctls for userptr, v2.<br />
e170f0547221 drm/i915: No longer allow exporting userptr through dma-buf<br />
81d63e3444e2 drm/i915: Disable userptr pread/pwrite support.<br />
cd80a5137639 drm/i915: make lockdep slightly happier about execbuf.<br />
c5121d3bf030 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
f1417f7189ac drm/i915: Rework struct phys attachment handling<br />
ec224070faa9 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
5f9f5fded601 drm/i915: Add gem object locking to madvise.<br />
d0fd03b71eac drm/i915: Ensure we hold the object mutex in pin correctly.<br />
263d87a59478 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
61e73e406004 drm/i915: Move cmd parser pinning to execbuffer<br />
3dcc3090a8aa drm/i915: Pin timeline map after first timeline pin, v4.<br />
21e30af84d60 drm/i915: Do not share hwsp across contexts any more, v8.</p>

</body>
</html>

--===============0424938611933201967==--

--===============1089439389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1089439389==--
