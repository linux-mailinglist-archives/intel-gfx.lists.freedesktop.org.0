Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCD5347949
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 14:13:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB006E9C4;
	Wed, 24 Mar 2021 13:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DF1D6E9AD;
 Wed, 24 Mar 2021 13:13:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76102A47E2;
 Wed, 24 Mar 2021 13:13:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 24 Mar 2021 13:13:39 -0000
Message-ID: <161659161944.19034.2971870497035378199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev19=29?=
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
Content-Type: multipart/mixed; boundary="===============1312284356=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1312284356==
Content-Type: multipart/alternative;
 boundary="===============3207124152320046397=="

--===============3207124152320046397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev19)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9889 -> Patchwork_19846
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19846 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19846, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19846:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@fds:
    - {fi-rkl-11500t}:    [FAIL][11] ([i915#3283]) -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-2}:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ehl-2/igt@prime_vgem@basic-userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ehl-2/igt@prime_vgem@basic-userptr.html
    - {fi-jsl-1}:         [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-jsl-1/igt@prime_vgem@basic-userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-jsl-1/igt@prime_vgem@basic-userptr.html
    - {fi-ehl-1}:         [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
    - {fi-rkl-11500t}:    [PASS][21] -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19846 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][23] ([fdo#109271]) +27 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][24] ([i915#2283])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][25] -> [DMESG-WARN][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@gem_flink_basic@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][27] ([fdo#109271]) +28 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html
    - fi-skl-guc:         NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2190])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [PASS][29] -> [TIMEOUT][30] ([i915#3145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-guc:         NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#533])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-skl-guc:         NOTRUN -> [SKIP][35] ([fdo#109271]) +26 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][38] -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][40] -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][42] -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][44] -> [SKIP][45] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7567u:       [PASS][46] -> [SKIP][47] ([fdo#109271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][48] -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][50] -> [SKIP][51] ([fdo#109271])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][52] -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-skl-6700k2:      [PASS][54] -> [SKIP][55] ([fdo#109271])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html
    - fi-snb-2600:        [PASS][56] -> [SKIP][57] ([fdo#109271])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-snb-2600/igt@prime_vgem@basic-userptr.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-snb-2600/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][58] -> [SKIP][59] ([fdo#109271])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][60] -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-soraka:      [PASS][62] -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][64] -> [SKIP][65] ([fdo#109271])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-kbl-8809g:       [PASS][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][68] -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][70] -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][72] -> [SKIP][73] ([fdo#109271])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][74] -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][76] -> [SKIP][77] ([fdo#109271])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][78] ([i915#1610])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][79] ([i915#1610])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][80] ([i915#1610])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][81] ([i915#3145]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [DMESG-WARN][83] ([i915#402]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][85] ([i915#2502] / [i915#3145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][87] ([i915#2426]) -> [FAIL][88] ([i915#1610] / [i915#2426])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-apl-guc/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 42)
------------------------------

  Additional (2): fi-byt-j1900 fi-skl-guc 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9889 -> Patchwork_19846

  CI-20190529: 20190529
  CI_DRM_9889: c42d2e7296ecebf00ae234a847059cc92e41a86c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6044: 2c2fc6470646eb5e25fc6ea02449ef744f8b70c2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19846: d4dd9871da735e83a89e7c90b6699563ac25e291 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d4dd9871da73 drm/i915: Remove asynchronous vma binding
773dc3de6596 drm/i915: Pass ww ctx to i915_gem_object_pin_pages
1838932ac410 drm/i915: Pass ww ctx to pin_map, v2.
f19b90e4051f drm/i915: Add ww context to prepare_(read/write)
1b8a97bf76e4 drm/i915: Add ww parameter to get_pages() callback
937b7b336124 drm/i915: Fix pin_map in scheduler selftests
f30f8d856dc0 drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.
b60fda6f637c drm/i915: Move gt_revoke() slightly
3c31e30a540f drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
639c726b63d3 drm/i915: Finally remove obj->mm.lock.
645f38afdfb6 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
a9348f7d7af5 drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
bf5b62cc1b09 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
c46141f1c8a9 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
9d7a0ca250e2 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
191880d613cb drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
4dd3d0a41383 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
5dc1c66912d5 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
5260b516a0b4 drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
a30f2a574fc6 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
353b198fd4f3 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
5a8ba3c68f93 drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
c127f7834259 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
e90ca54d1588 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
6b79c1ece060 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
431757d3b0cf drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
ef440a231423 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
8fbb8e8028ae drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
00f331e776db drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
19c3e972dcbe drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
266422b377b3 drm/i915: Use a single page table lock for each gtt.
159abb16fd82 drm/i915: Fix ww locking in shmem_create_from_object
b8c627b7b31e drm/i915: Add missing ww lock in intel_dsb_prepare.
6624e17b46e9 drm/i915: Add ww locking to dma-buf ops, v2.
48ae3768e16f drm/i915: Lock ww in ucode objects correctly
39a8452f67ba drm/i915: Increase ww locking for perf.
381f59ff8365 drm/i915: Add ww locking around vm_access()
e15b66ef7c0a drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
aba89877a4e3 drm/i915: Prepare for obj->mm.lock removal, v2.
f89028ebe93f drm/i915: Fix workarounds selftest, part 1
f6e7879dabe3 drm/i915: Fix pread/pwrite to work with new locking rules.
50c0931d366a drm/i915: Defer pin calls in buffer pool until first use by caller.
baedd2415a58 drm/i915: Take obj lock around set_domain ioctl
1d9e2b1a0405 drm/i915: Make __engine_unpark() compatible with ww locking.
671403460031 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.
aa8dafd5125e drm/i915: Take reservation lock around i915_vma_pin.
6af3ef7f5246 drm/i915: Move pinning to inside engine_wa_list_verify()
9a0dbf433859 drm/i915: Add object locking to vm_fault_cpu
736efe12efc4 drm/i915: Pass ww ctx to intel_pin_to_display_plane
f85c237c33ac drm/i915: Rework clflush to work correctly without obj->mm.lock.
04a410dbb633 drm/i915: Handle ww locking in init_status_page
296ebb3ca034 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
2f83508e63d5 drm/i915: Populate logical context during first pin.
3d0d50b2e548 drm/i915: Flatten obj->mm.lock
69f0b61a7b66 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v7.
01e5685490be drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
2be23f28351b drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
d23647f81abc drm/i915: Reject more ioctls for userptr, v2.
89563fe547df drm/i915: No longer allow exporting userptr through dma-buf
e3be2c7ee753 drm/i915: Disable userptr pread/pwrite support.
7a8d57cfb1b9 drm/i915: make lockdep slightly happier about execbuf.
604b6dd53a23 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
fb3105de5e0a drm/i915: Rework struct phys attachment handling
e6572ea0afd5 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
9ac3e1ad6487 drm/i915: Add gem object locking to madvise.
35b116fcc9ea drm/i915: Ensure we hold the object mutex in pin correctly.
f9d4561631e8 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
e747b5a66262 drm/i915: Move cmd parser pinning to execbuffer
dd6b0831f824 drm/i915: Pin timeline map after first timeline pin, v4.
f2f3d15b07cd drm/i915: Do not share hwsp across contexts any more, v8.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/index.html

--===============3207124152320046397==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev19)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9889 -&gt; Patchwork_19846</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19846 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19846, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19846:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3283">i915#3283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ehl-2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ehl-2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-jsl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-jsl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19846 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-7567u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-skl-6700k2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-snb-2600/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-snb-2600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-soraka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-tgl-y/igt@gem_flink_basic@bad-open.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-tgl-y/igt@gem_flink_basic@bad-open.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19846/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (2): fi-byt-j1900 fi-skl-guc <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9889 -&gt; Patchwork_19846</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9889: c42d2e7296ecebf00ae234a847059cc92e41a86c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6044: 2c2fc6470646eb5e25fc6ea02449ef744f8b70c2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19846: d4dd9871da735e83a89e7c90b6699563ac25e291 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d4dd9871da73 drm/i915: Remove asynchronous vma binding<br />
773dc3de6596 drm/i915: Pass ww ctx to i915_gem_object_pin_pages<br />
1838932ac410 drm/i915: Pass ww ctx to pin_map, v2.<br />
f19b90e4051f drm/i915: Add ww context to prepare_(read/write)<br />
1b8a97bf76e4 drm/i915: Add ww parameter to get_pages() callback<br />
937b7b336124 drm/i915: Fix pin_map in scheduler selftests<br />
f30f8d856dc0 drm/i915: Add missing -EDEADLK path in execbuffer ggtt pinning.<br />
b60fda6f637c drm/i915: Move gt_revoke() slightly<br />
3c31e30a540f drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
639c726b63d3 drm/i915: Finally remove obj-&gt;mm.lock.<br />
645f38afdfb6 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
a9348f7d7af5 drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
bf5b62cc1b09 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
c46141f1c8a9 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
9d7a0ca250e2 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
191880d613cb drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
4dd3d0a41383 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
5dc1c66912d5 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
5260b516a0b4 drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
a30f2a574fc6 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
353b198fd4f3 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
5a8ba3c68f93 drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
c127f7834259 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
e90ca54d1588 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
6b79c1ece060 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
431757d3b0cf drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
ef440a231423 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
8fbb8e8028ae drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
00f331e776db drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
19c3e972dcbe drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
266422b377b3 drm/i915: Use a single page table lock for each gtt.<br />
159abb16fd82 drm/i915: Fix ww locking in shmem_create_from_object<br />
b8c627b7b31e drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
6624e17b46e9 drm/i915: Add ww locking to dma-buf ops, v2.<br />
48ae3768e16f drm/i915: Lock ww in ucode objects correctly<br />
39a8452f67ba drm/i915: Increase ww locking for perf.<br />
381f59ff8365 drm/i915: Add ww locking around vm_access()<br />
e15b66ef7c0a drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
aba89877a4e3 drm/i915: Prepare for obj-&gt;mm.lock removal, v2.<br />
f89028ebe93f drm/i915: Fix workarounds selftest, part 1<br />
f6e7879dabe3 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
50c0931d366a drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
baedd2415a58 drm/i915: Take obj lock around set_domain ioctl<br />
1d9e2b1a0405 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
671403460031 drm/i915: Make lrc_init_wa_ctx compatible with ww locking, v3.<br />
aa8dafd5125e drm/i915: Take reservation lock around i915_vma_pin.<br />
6af3ef7f5246 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
9a0dbf433859 drm/i915: Add object locking to vm_fault_cpu<br />
736efe12efc4 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
f85c237c33ac drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
04a410dbb633 drm/i915: Handle ww locking in init_status_page<br />
296ebb3ca034 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
2f83508e63d5 drm/i915: Populate logical context during first pin.<br />
3d0d50b2e548 drm/i915: Flatten obj-&gt;mm.lock<br />
69f0b61a7b66 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v7.<br />
01e5685490be drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
2be23f28351b drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
d23647f81abc drm/i915: Reject more ioctls for userptr, v2.<br />
89563fe547df drm/i915: No longer allow exporting userptr through dma-buf<br />
e3be2c7ee753 drm/i915: Disable userptr pread/pwrite support.<br />
7a8d57cfb1b9 drm/i915: make lockdep slightly happier about execbuf.<br />
604b6dd53a23 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
fb3105de5e0a drm/i915: Rework struct phys attachment handling<br />
e6572ea0afd5 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
9ac3e1ad6487 drm/i915: Add gem object locking to madvise.<br />
35b116fcc9ea drm/i915: Ensure we hold the object mutex in pin correctly.<br />
f9d4561631e8 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
e747b5a66262 drm/i915: Move cmd parser pinning to execbuffer<br />
dd6b0831f824 drm/i915: Pin timeline map after first timeline pin, v4.<br />
f2f3d15b07cd drm/i915: Do not share hwsp across contexts any more, v8.</p>

</body>
</html>

--===============3207124152320046397==--

--===============1312284356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1312284356==--
