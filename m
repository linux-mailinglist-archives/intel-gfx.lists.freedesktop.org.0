Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE1B307DB9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 19:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D646E996;
	Thu, 28 Jan 2021 18:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 796F56E222;
 Thu, 28 Jan 2021 18:20:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68616AA912;
 Thu, 28 Jan 2021 18:20:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 28 Jan 2021 18:20:02 -0000
Message-ID: <161185800242.13619.1231479644387504727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev14=29?=
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
Content-Type: multipart/mixed; boundary="===============1665954910=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1665954910==
Content-Type: multipart/alternative;
 boundary="===============5600655825443447385=="

--===============5600655825443447385==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev14)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9695 -> Patchwork_19530
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19530 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19530, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19530:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-kefka/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-kefka/igt@gem_busy@busy@all.html
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-n3050/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-n3050/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-nick:        [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-apl-guc:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-apl-guc/igt@gem_exec_fence@nb-await@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-apl-guc/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@userptr:
    - {fi-tgl-dsi}:       [PASS][24] -> [FAIL][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-1}:         [PASS][26] -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][28] -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
    - {fi-rkl-11500t}:    [PASS][30] -> [SKIP][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19530 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][32] -> [DMESG-WARN][33] ([i915#402]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][34] -> [SKIP][35] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][38] -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][40] -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][42] -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [PASS][44] -> [SKIP][45] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][46] -> [SKIP][47] ([fdo#109271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][48] -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][50] -> [SKIP][51] ([fdo#109271])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [PASS][52] -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-snb-2600:        [PASS][54] -> [SKIP][55] ([fdo#109271])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-snb-2600/igt@prime_vgem@basic-userptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-snb-2600/igt@prime_vgem@basic-userptr.html
    - fi-byt-j1900:       [PASS][56] -> [SKIP][57] ([fdo#109271])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][58] -> [SKIP][59] ([fdo#109271])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][60] -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-soraka:      [PASS][62] -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][64] -> [SKIP][65] ([fdo#109271])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bdw-5557u:       [PASS][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][68] -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][70] -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][72] -> [SKIP][73] ([fdo#109271])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][74] -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][76] -> [SKIP][77] ([fdo#109271])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][78] ([i915#402]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][80] ([i915#2426]) -> [FAIL][81] ([i915#2295])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-apl-guc/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9695 -> Patchwork_19530

  CI-20190529: 20190529
  CI_DRM_9695: 67e514b158700703fcaaed71c3fb1eea8b2e645c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5977: 0b6967520b15e73773eace7937ed8c17ba411bc0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19530: 662734223c5f8a0fff60028290a34cd737197a86 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

662734223c5f drm/i915: Move gt_revoke() slightly
9c9874f35cba drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
961e9c18fb48 drm/i915: Finally remove obj->mm.lock.
4800c2a64500 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
503ade404ea1 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
4309bd623b24 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
89771ac8616d drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
36f6b0b7722c drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
141ae6ad925c drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
5aecbdc13ffe drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
7993a281f247 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
5f70e9fc7fdc drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
4154db61a3c9 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
8ed31699898a drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
39eb2256f43f drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
b250bbb9edab drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
6e441016c863 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
74a44c1f5ffe drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
3a539bdf2dfd drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
f31a3e48d470 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
38c9614dd45f drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
1eb93d4af2a7 drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
7bc938897064 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
f266c8a9473f drm/i915: Use a single page table lock for each gtt.
cb7cd7698571 drm/i915: Fix ww locking in shmem_create_from_object
cc1ce63c2ad4 drm/i915: Add missing ww lock in intel_dsb_prepare.
4199fe13c42d drm/i915: Add ww locking to dma-buf ops.
c2163fd77906 drm/i915: Lock ww in ucode objects correctly
62459a8f2cba drm/i915: Increase ww locking for perf.
9aff11278b83 drm/i915: Add ww locking around vm_access()
bf7108bf8725 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
35b658f67d68 drm/i915: Prepare for obj->mm.lock removal, v2.
e9d297ba04ae drm/i915: Fix workarounds selftest, part 1
62f9dacbb071 drm/i915: Fix pread/pwrite to work with new locking rules.
95795e4bbb7e drm/i915: Defer pin calls in buffer pool until first use by caller.
3b81df55bcf2 drm/i915: Take obj lock around set_domain ioctl
78bd91c8070b drm/i915: Make __engine_unpark() compatible with ww locking.
980529fa17fc drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v2.
42dff2ca5598 drm/i915: Take reservation lock around i915_vma_pin.
f4419802939b drm/i915: Move pinning to inside engine_wa_list_verify()
0b72262b7ad1 drm/i915: Add object locking to vm_fault_cpu
22fd424d670c drm/i915: Pass ww ctx to intel_pin_to_display_plane
b7166f878991 drm/i915: Rework clflush to work correctly without obj->mm.lock.
3abcb0076a68 drm/i915: Handle ww locking in init_status_page
01ca4854c93e drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
6fb47c6d71c7 drm/i915: Populate logical context during first pin.
1d108228e705 drm/i915: Flatten obj->mm.lock
a653a892ff43 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v6.
4acda00724a9 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
229733dcc336 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
e06a0adf3a6f drm/i915: Reject more ioctls for userptr
c973c01f3065 drm/i915: No longer allow exporting userptr through dma-buf
0cbd23b2d726 drm/i915: Disable userptr pread/pwrite support.
372b944d10b8 drm/i915: make lockdep slightly happier about execbuf.
ba20fbbe4737 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
0f0d96bdbcb2 drm/i915: Rework struct phys attachment handling
e4fe993ac962 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
13b9209c078e drm/i915: Add gem object locking to madvise.
e74b81617eb0 drm/i915: Ensure we hold the object mutex in pin correctly.
8b3ce40a27dc drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
cfa8d0589b53 drm/i915: Move cmd parser pinning to execbuffer
2e13b870eff3 drm/i915: Pin timeline map after first timeline pin, v3.
f0caa76735a7 drm/i915: Do not share hwsp across contexts any more, v7.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html

--===============5600655825443447385==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev14)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9695 -&gt; Patchwork_19530</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19530 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19530, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19530:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-kefka/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-kefka/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-n3050/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-n3050/igt@gem_busy@busy@all.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-apl-guc/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-apl-guc/igt@gem_exec_fence@nb-await@vecs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19530 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-snb-2600/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-snb-2600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_render_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9695/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19530/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9695 -&gt; Patchwork_19530</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9695: 67e514b158700703fcaaed71c3fb1eea8b2e645c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5977: 0b6967520b15e73773eace7937ed8c17ba411bc0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19530: 662734223c5f8a0fff60028290a34cd737197a86 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>662734223c5f drm/i915: Move gt_revoke() slightly<br />
9c9874f35cba drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
961e9c18fb48 drm/i915: Finally remove obj-&gt;mm.lock.<br />
4800c2a64500 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
503ade404ea1 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
4309bd623b24 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
89771ac8616d drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
36f6b0b7722c drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
141ae6ad925c drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
5aecbdc13ffe drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
7993a281f247 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
5f70e9fc7fdc drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
4154db61a3c9 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
8ed31699898a drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
39eb2256f43f drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
b250bbb9edab drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
6e441016c863 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
74a44c1f5ffe drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
3a539bdf2dfd drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
f31a3e48d470 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
38c9614dd45f drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
1eb93d4af2a7 drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
7bc938897064 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
f266c8a9473f drm/i915: Use a single page table lock for each gtt.<br />
cb7cd7698571 drm/i915: Fix ww locking in shmem_create_from_object<br />
cc1ce63c2ad4 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
4199fe13c42d drm/i915: Add ww locking to dma-buf ops.<br />
c2163fd77906 drm/i915: Lock ww in ucode objects correctly<br />
62459a8f2cba drm/i915: Increase ww locking for perf.<br />
9aff11278b83 drm/i915: Add ww locking around vm_access()<br />
bf7108bf8725 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
35b658f67d68 drm/i915: Prepare for obj-&gt;mm.lock removal, v2.<br />
e9d297ba04ae drm/i915: Fix workarounds selftest, part 1<br />
62f9dacbb071 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
95795e4bbb7e drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
3b81df55bcf2 drm/i915: Take obj lock around set_domain ioctl<br />
78bd91c8070b drm/i915: Make __engine_unpark() compatible with ww locking.<br />
980529fa17fc drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v2.<br />
42dff2ca5598 drm/i915: Take reservation lock around i915_vma_pin.<br />
f4419802939b drm/i915: Move pinning to inside engine_wa_list_verify()<br />
0b72262b7ad1 drm/i915: Add object locking to vm_fault_cpu<br />
22fd424d670c drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
b7166f878991 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
3abcb0076a68 drm/i915: Handle ww locking in init_status_page<br />
01ca4854c93e drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
6fb47c6d71c7 drm/i915: Populate logical context during first pin.<br />
1d108228e705 drm/i915: Flatten obj-&gt;mm.lock<br />
a653a892ff43 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v6.<br />
4acda00724a9 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
229733dcc336 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
e06a0adf3a6f drm/i915: Reject more ioctls for userptr<br />
c973c01f3065 drm/i915: No longer allow exporting userptr through dma-buf<br />
0cbd23b2d726 drm/i915: Disable userptr pread/pwrite support.<br />
372b944d10b8 drm/i915: make lockdep slightly happier about execbuf.<br />
ba20fbbe4737 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
0f0d96bdbcb2 drm/i915: Rework struct phys attachment handling<br />
e4fe993ac962 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
13b9209c078e drm/i915: Add gem object locking to madvise.<br />
e74b81617eb0 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
8b3ce40a27dc drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
cfa8d0589b53 drm/i915: Move cmd parser pinning to execbuffer<br />
2e13b870eff3 drm/i915: Pin timeline map after first timeline pin, v3.<br />
f0caa76735a7 drm/i915: Do not share hwsp across contexts any more, v7.</p>

</body>
</html>

--===============5600655825443447385==--

--===============1665954910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1665954910==--
