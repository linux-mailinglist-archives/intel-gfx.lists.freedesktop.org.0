Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C3D30AD0E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 17:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3583D89BFC;
	Mon,  1 Feb 2021 16:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2615189BFC;
 Mon,  1 Feb 2021 16:51:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EA60A9A42;
 Mon,  1 Feb 2021 16:51:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 01 Feb 2021 16:51:58 -0000
Message-ID: <161219831811.18680.16379986987401959142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev15=29?=
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
Content-Type: multipart/mixed; boundary="===============0311879338=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0311879338==
Content-Type: multipart/alternative;
 boundary="===============6435243756161777012=="

--===============6435243756161777012==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev15)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9712 -> Patchwork_19553
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19553 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19553, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19553:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-soraka:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-soraka/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-soraka/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-kefka/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-kefka/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-n3050:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-nick:        [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html
    - fi-apl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-apl-guc/igt@gem_exec_fence@basic-await@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-apl-guc/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][16] -> [SKIP][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][18] -> [SKIP][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][20] -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-1}:         [PASS][25] -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][27] -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
    - {fi-rkl-11500t}:    [PASS][29] -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19553 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-tgl-u2:          NOTRUN -> [SKIP][31] ([fdo#109315] / [i915#2575]) +17 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][32] -> [DMESG-WARN][33] ([i915#402]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@fbdev@read.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@fbdev@read.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][34] ([i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][36] ([fdo#109285])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][37] -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][39] -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][41] -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][43] -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][45] -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [PASS][47] -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][49] -> [SKIP][50] ([fdo#109271])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][51] -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][53] -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [PASS][55] -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-snb-2600:        [PASS][57] -> [SKIP][58] ([fdo#109271])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-snb-2600/igt@prime_vgem@basic-userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-snb-2600/igt@prime_vgem@basic-userptr.html
    - fi-byt-j1900:       [PASS][59] -> [SKIP][60] ([fdo#109271])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][61] -> [SKIP][62] ([fdo#109271])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][63] -> [SKIP][64] ([fdo#109271])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][65] -> [SKIP][66] ([fdo#109271])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bdw-5557u:       [PASS][67] -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][69] -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][71] -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][73] -> [SKIP][74] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][75] -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][77] -> [SKIP][78] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][79] ([i915#1982] / [i915#402]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][81] ([i915#402]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][83] ([i915#1161] / [i915#262]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9712 -> Patchwork_19553

  CI-20190529: 20190529
  CI_DRM_9712: 5276d4e84db68c095d7bacc0f3943936b49ef829 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5982: cfb04c4a6171575f8782fe1dd5c63700ad33799e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19553: 8ab032d70f47dc0f0277ca2f053345a017f4d9a0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ab032d70f47 drm/i915: Move gt_revoke() slightly
c85f57702ce1 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
641f2e740ff6 drm/i915: Finally remove obj->mm.lock.
325da5a86175 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
a56c8ca85c79 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
4a28bc1426f9 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
5acb91d27ad0 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
9b4bd3071441 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
7b52d2b3a1f8 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
97668c8567a2 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
b45a42f29a23 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
7e21973469e3 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
01f98b1dfe6e drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
50ea3c745c98 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
75523329b421 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
594edb885bc3 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
0e921a7eab2e drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
1a0dbb7f8ecb drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
d6af768177e0 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
609e04c0894e drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
929041a527c3 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
92187ad6c6ad drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
8e74e7c8d76b drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
8c32f4096702 drm/i915: Use a single page table lock for each gtt.
762d4baf907e drm/i915: Fix ww locking in shmem_create_from_object
638827b1e83b drm/i915: Add missing ww lock in intel_dsb_prepare.
3135c081ba14 drm/i915: Add ww locking to dma-buf ops.
71203de8e9f5 drm/i915: Lock ww in ucode objects correctly
99e0b442e802 drm/i915: Increase ww locking for perf.
e66895cf87c7 drm/i915: Add ww locking around vm_access()
e5d2ab9746ba drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
e9bd5e802a66 drm/i915: Prepare for obj->mm.lock removal, v2.
60a8f5b73fbd drm/i915: Fix workarounds selftest, part 1
0db2d2331c6e drm/i915: Fix pread/pwrite to work with new locking rules.
4ad9b374dd7a drm/i915: Defer pin calls in buffer pool until first use by caller.
93eee0a7a322 drm/i915: Take obj lock around set_domain ioctl
793dfad85bea drm/i915: Make __engine_unpark() compatible with ww locking.
1dcd569ab851 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.
77733fcfab41 drm/i915: Take reservation lock around i915_vma_pin.
07b44b3e99af drm/i915: Move pinning to inside engine_wa_list_verify()
63e6c29d1f69 drm/i915: Add object locking to vm_fault_cpu
630b96502382 drm/i915: Pass ww ctx to intel_pin_to_display_plane
e777b1cee6b4 drm/i915: Rework clflush to work correctly without obj->mm.lock.
90eae03df78b drm/i915: Handle ww locking in init_status_page
4d5e3e29cd87 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
ba5f067f99dc drm/i915: Populate logical context during first pin.
74741a99ceb5 drm/i915: Flatten obj->mm.lock
c7c52c71e7fc drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v6.
aa5a5def3109 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
328987128852 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
2d322394c180 drm/i915: Reject more ioctls for userptr
f93855602e74 drm/i915: No longer allow exporting userptr through dma-buf
2eed0a020370 drm/i915: Disable userptr pread/pwrite support.
665d9a22caaf drm/i915: make lockdep slightly happier about execbuf.
0c6535d68e59 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
80061aa1ca02 drm/i915: Rework struct phys attachment handling
a4e7aa974cf8 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
fde3ccd32619 drm/i915: Add gem object locking to madvise.
721c91fa2495 drm/i915: Ensure we hold the object mutex in pin correctly.
03ff19321733 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
054247719a7a drm/i915: Move cmd parser pinning to execbuffer
20421e599a08 drm/i915: Pin timeline map after first timeline pin, v3.
7875c5f4807c drm/i915: Do not share hwsp across contexts any more, v7.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/index.html

--===============6435243756161777012==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev15)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9712 -&gt; Patchwork_19553</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19553 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19553, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19553:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-soraka/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-kefka/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-kefka/igt@gem_busy@busy@all.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-apl-guc/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-apl-guc/igt@gem_exec_fence@basic-await@vcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
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
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19553 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-snb-2600/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-snb-2600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19553/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9712 -&gt; Patchwork_19553</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9712: 5276d4e84db68c095d7bacc0f3943936b49ef829 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5982: cfb04c4a6171575f8782fe1dd5c63700ad33799e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19553: 8ab032d70f47dc0f0277ca2f053345a017f4d9a0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8ab032d70f47 drm/i915: Move gt_revoke() slightly<br />
c85f57702ce1 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
641f2e740ff6 drm/i915: Finally remove obj-&gt;mm.lock.<br />
325da5a86175 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
a56c8ca85c79 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
4a28bc1426f9 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
5acb91d27ad0 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
9b4bd3071441 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
7b52d2b3a1f8 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
97668c8567a2 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
b45a42f29a23 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
7e21973469e3 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
01f98b1dfe6e drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
50ea3c745c98 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
75523329b421 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
594edb885bc3 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
0e921a7eab2e drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
1a0dbb7f8ecb drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
d6af768177e0 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
609e04c0894e drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
929041a527c3 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
92187ad6c6ad drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
8e74e7c8d76b drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
8c32f4096702 drm/i915: Use a single page table lock for each gtt.<br />
762d4baf907e drm/i915: Fix ww locking in shmem_create_from_object<br />
638827b1e83b drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
3135c081ba14 drm/i915: Add ww locking to dma-buf ops.<br />
71203de8e9f5 drm/i915: Lock ww in ucode objects correctly<br />
99e0b442e802 drm/i915: Increase ww locking for perf.<br />
e66895cf87c7 drm/i915: Add ww locking around vm_access()<br />
e5d2ab9746ba drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
e9bd5e802a66 drm/i915: Prepare for obj-&gt;mm.lock removal, v2.<br />
60a8f5b73fbd drm/i915: Fix workarounds selftest, part 1<br />
0db2d2331c6e drm/i915: Fix pread/pwrite to work with new locking rules.<br />
4ad9b374dd7a drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
93eee0a7a322 drm/i915: Take obj lock around set_domain ioctl<br />
793dfad85bea drm/i915: Make __engine_unpark() compatible with ww locking.<br />
1dcd569ab851 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.<br />
77733fcfab41 drm/i915: Take reservation lock around i915_vma_pin.<br />
07b44b3e99af drm/i915: Move pinning to inside engine_wa_list_verify()<br />
63e6c29d1f69 drm/i915: Add object locking to vm_fault_cpu<br />
630b96502382 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
e777b1cee6b4 drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
90eae03df78b drm/i915: Handle ww locking in init_status_page<br />
4d5e3e29cd87 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
ba5f067f99dc drm/i915: Populate logical context during first pin.<br />
74741a99ceb5 drm/i915: Flatten obj-&gt;mm.lock<br />
c7c52c71e7fc drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v6.<br />
aa5a5def3109 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
328987128852 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
2d322394c180 drm/i915: Reject more ioctls for userptr<br />
f93855602e74 drm/i915: No longer allow exporting userptr through dma-buf<br />
2eed0a020370 drm/i915: Disable userptr pread/pwrite support.<br />
665d9a22caaf drm/i915: make lockdep slightly happier about execbuf.<br />
0c6535d68e59 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
80061aa1ca02 drm/i915: Rework struct phys attachment handling<br />
a4e7aa974cf8 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
fde3ccd32619 drm/i915: Add gem object locking to madvise.<br />
721c91fa2495 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
03ff19321733 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
054247719a7a drm/i915: Move cmd parser pinning to execbuffer<br />
20421e599a08 drm/i915: Pin timeline map after first timeline pin, v3.<br />
7875c5f4807c drm/i915: Do not share hwsp across contexts any more, v7.</p>

</body>
</html>

--===============6435243756161777012==--

--===============0311879338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0311879338==--
