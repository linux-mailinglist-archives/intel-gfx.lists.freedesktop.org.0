Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540F52ED3FA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 17:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AC06E4AF;
	Thu,  7 Jan 2021 16:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06B236E4AF;
 Thu,  7 Jan 2021 16:11:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00F38AADCF;
 Thu,  7 Jan 2021 16:11:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 07 Jan 2021 16:11:52 -0000
Message-ID: <161003591299.21184.9809910097289161409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev13=29?=
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
Content-Type: multipart/mixed; boundary="===============0833890649=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0833890649==
Content-Type: multipart/alternative;
 boundary="===============3485056406387377883=="

--===============3485056406387377883==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev13)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9562 -> Patchwork_19278
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19278 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19278, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19278:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@prime_vgem@basic-userptr.html
    - fi-icl-u2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-icl-u2/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-cml-s:           [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cml-s/igt@prime_vgem@basic-userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cml-s/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-icl-y/igt@prime_vgem@basic-userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-icl-y/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cml-u2/igt@prime_vgem@basic-userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-1}:         [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ehl-1/igt@prime_vgem@basic-userptr.html
    - {fi-tgl-dsi}:       [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_19278 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [PASS][17] -> [DMESG-WARN][18] ([i915#402])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@gem_sync@basic-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        [PASS][19] -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8700k:       [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html
    - fi-skl-6600u:       [PASS][23] -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-bsw-n3050:       [PASS][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-n3050/igt@prime_vgem@basic-userptr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-n3050/igt@prime_vgem@basic-userptr.html
    - fi-bsw-kefka:       [PASS][27] -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html
    - fi-ilk-650:         [PASS][29] -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ilk-650/igt@prime_vgem@basic-userptr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ilk-650/igt@prime_vgem@basic-userptr.html
    - fi-elk-e7500:       [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-elk-e7500/igt@prime_vgem@basic-userptr.html
    - fi-skl-guc:         [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-skl-guc/igt@prime_vgem@basic-userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-skl-guc/igt@prime_vgem@basic-userptr.html
    - fi-cfl-guc:         [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bxt-dsi:         [PASS][37] -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html
    - fi-ivb-3770:        [PASS][39] -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ivb-3770/igt@prime_vgem@basic-userptr.html
    - fi-snb-2600:        [PASS][41] -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-snb-2600/igt@prime_vgem@basic-userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-snb-2600/igt@prime_vgem@basic-userptr.html
    - fi-byt-j1900:       [PASS][43] -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-byt-j1900/igt@prime_vgem@basic-userptr.html
    - fi-hsw-4770:        [PASS][45] -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-hsw-4770/igt@prime_vgem@basic-userptr.html
    - fi-kbl-7500u:       [PASS][47] -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-guc:         [PASS][49] -> [SKIP][50] ([fdo#109271])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-guc/igt@prime_vgem@basic-userptr.html
    - fi-bdw-5557u:       [PASS][51] -> [SKIP][52] ([fdo#109271])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html
    - fi-kbl-r:           [PASS][53] -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-r/igt@prime_vgem@basic-userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-r/igt@prime_vgem@basic-userptr.html
    - fi-cfl-8109u:       [PASS][55] -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html
    - fi-bsw-nick:        [PASS][57] -> [SKIP][58] ([fdo#109271])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
    - fi-glk-dsi:         [PASS][59] -> [SKIP][60] ([fdo#109271])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-glk-dsi/igt@prime_vgem@basic-userptr.html
    - fi-kbl-x1275:       [PASS][61] -> [SKIP][62] ([fdo#109271])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
    - fi-snb-2520m:       [PASS][63] -> [SKIP][64] ([fdo#109271])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-snb-2520m/igt@prime_vgem@basic-userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-snb-2520m/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][65] ([i915#402]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][67] ([i915#2411] / [i915#402]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [DMESG-WARN][69] ([i915#2605]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_5946 -> IGTPW_5364
  * Linux: CI_DRM_9562 -> Patchwork_19278

  CI-20190529: 20190529
  CI_DRM_9562: fc8d32007355b4babc37b621b3c9a4e0fe998d27 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5364: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5364/index.html
  IGT_5946: 641e5545213dd9a82d80a4e065013a138afb58ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19278: f1003593900b9def3b2df9a3987e6527c47eb181 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1003593900b drm/i915: Avoid some false positives in assert_object_held()
c3b42b7bd741 drm/i915: Move gt_revoke() slightly
b2508e46dd39 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
8a2f700c0251 drm/i915: Finally remove obj->mm.lock.
eb8696b3d237 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
b514f7e656ac drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
445321957223 drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
fbe995780783 drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
9c26cd14427b drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
757f76c2b189 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
9fc0127e0f37 drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
3767527b9676 drm/i915/selftests: Prepare execlists and lrc selftests for obj->mm.lock removal
49f49501504c drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
6f4ab34f68bd drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
5e265d322c70 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
ad4baf51502e drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
c756e2d60992 drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
47c5b0d39049 drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
a58e936c0fb1 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
4a5c2526d221 drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
2d031c9059f5 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
0f3c56470046 drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
7491321df5bb drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
fb3eb3fa4a62 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
7c6e80443e65 drm/i915: Use a single page table lock for each gtt.
be70ee3eed38 drm/i915: Fix ww locking in shmem_create_from_object
6544ccbea852 drm/i915: Add missing ww lock in intel_dsb_prepare.
4cc4a2a44fb1 drm/i915: Add ww locking to dma-buf ops.
f9780be3bf15 drm/i915: Lock ww in ucode objects correctly
1c7e3745bac7 drm/i915: Increase ww locking for perf.
61bd786460ef drm/i915: Add ww locking around vm_access()
38fb4fa98f28 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
8d709663d753 drm/i915: Prepare for obj->mm.lock removal
24a43ba8beab drm/i915: Fix workarounds selftest, part 1
735ee8499c6a drm/i915: Fix pread/pwrite to work with new locking rules.
c4a35d8beff3 drm/i915: Defer pin calls in buffer pool until first use by caller.
93fc5e38bd1e drm/i915: Take obj lock around set_domain ioctl
96ab1f267f08 drm/i915: Make __engine_unpark() compatible with ww locking.
332aba0adab3 drm/i915: Make lrc_init_wa_ctx compatible with ww locking.
a34e73844b08 drm/i915: Take reservation lock around i915_vma_pin.
fbeeff4c2e20 drm/i915: Move pinning to inside engine_wa_list_verify()
4bfb4766e4cd drm/i915: Add object locking to vm_fault_cpu
cef708148231 drm/i915: Pass ww ctx to intel_pin_to_display_plane
befedf03ef9b drm/i915: Rework clflush to work correctly without obj->mm.lock.
868eac184a45 drm/i915: Handle ww locking in init_status_page
31e23527c490 drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
a29d90e385ae drm/i915: Populate logical context during first pin.
f112822eb256 drm/i915: Flatten obj->mm.lock
3953cfa616ca drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v5.
08f97e18f8e9 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.
6221e6630d88 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.
7f3e5695a30c drm/i915: Reject more ioctls for userptr
f5dbb93bbfa1 drm/i915: No longer allow exporting userptr through dma-buf
2164b6818543 drm/i915: Disable userptr pread/pwrite support.
d319bbed11e6 drm/i915: make lockdep slightly happier about execbuf.
138d22527745 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.
f90f08586008 drm/i915: Rework struct phys attachment handling
b881f7651122 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
a6940e0503e5 drm/i915: Add gem object locking to madvise.
f4245cae4741 drm/i915: Ensure we hold the object mutex in pin correctly.
f4a0ebe47349 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.
de7db6cc5368 drm/i915: Move cmd parser pinning to execbuffer
9785c066d43f drm/i915: Pin timeline map after first timeline pin, v3.
cbc0237dc775 drm/i915: Do not share hwsp across contexts any more, v6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/index.html

--===============3485056406387377883==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9562 -&gt; Patchwork_19278</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19278 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19278, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19278:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-icl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cml-s/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-icl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cml-u2/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
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
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ehl-1/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19278 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@gem_sync@basic-each.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-8700k/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-n3050/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-n3050/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-kefka/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ilk-650/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ilk-650/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-elk-e7500/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-skl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-skl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bxt-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-ivb-3770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-snb-2600/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-snb-2600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-byt-j1900/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-7500u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bdw-5557u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-r/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-r/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-glk-dsi/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-snb-2520m/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9562/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19278/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5946 -&gt; IGTPW_5364</li>
<li>Linux: CI_DRM_9562 -&gt; Patchwork_19278</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9562: fc8d32007355b4babc37b621b3c9a4e0fe998d27 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5364: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5364/index.html<br />
  IGT_5946: 641e5545213dd9a82d80a4e065013a138afb58ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19278: f1003593900b9def3b2df9a3987e6527c47eb181 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f1003593900b drm/i915: Avoid some false positives in assert_object_held()<br />
c3b42b7bd741 drm/i915: Move gt_revoke() slightly<br />
b2508e46dd39 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
8a2f700c0251 drm/i915: Finally remove obj-&gt;mm.lock.<br />
eb8696b3d237 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
b514f7e656ac drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
445321957223 drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
fbe995780783 drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
9c26cd14427b drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
757f76c2b189 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
9fc0127e0f37 drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
3767527b9676 drm/i915/selftests: Prepare execlists and lrc selftests for obj-&gt;mm.lock removal<br />
49f49501504c drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
6f4ab34f68bd drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
5e265d322c70 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
ad4baf51502e drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
c756e2d60992 drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
47c5b0d39049 drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
a58e936c0fb1 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
4a5c2526d221 drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
2d031c9059f5 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
0f3c56470046 drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
7491321df5bb drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
fb3eb3fa4a62 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
7c6e80443e65 drm/i915: Use a single page table lock for each gtt.<br />
be70ee3eed38 drm/i915: Fix ww locking in shmem_create_from_object<br />
6544ccbea852 drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
4cc4a2a44fb1 drm/i915: Add ww locking to dma-buf ops.<br />
f9780be3bf15 drm/i915: Lock ww in ucode objects correctly<br />
1c7e3745bac7 drm/i915: Increase ww locking for perf.<br />
61bd786460ef drm/i915: Add ww locking around vm_access()<br />
38fb4fa98f28 drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
8d709663d753 drm/i915: Prepare for obj-&gt;mm.lock removal<br />
24a43ba8beab drm/i915: Fix workarounds selftest, part 1<br />
735ee8499c6a drm/i915: Fix pread/pwrite to work with new locking rules.<br />
c4a35d8beff3 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
93fc5e38bd1e drm/i915: Take obj lock around set_domain ioctl<br />
96ab1f267f08 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
332aba0adab3 drm/i915: Make lrc_init_wa_ctx compatible with ww locking.<br />
a34e73844b08 drm/i915: Take reservation lock around i915_vma_pin.<br />
fbeeff4c2e20 drm/i915: Move pinning to inside engine_wa_list_verify()<br />
4bfb4766e4cd drm/i915: Add object locking to vm_fault_cpu<br />
cef708148231 drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
befedf03ef9b drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
868eac184a45 drm/i915: Handle ww locking in init_status_page<br />
31e23527c490 drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
a29d90e385ae drm/i915: Populate logical context during first pin.<br />
f112822eb256 drm/i915: Flatten obj-&gt;mm.lock<br />
3953cfa616ca drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v5.<br />
08f97e18f8e9 drm/i915: Make compilation of userptr code depend on MMU_NOTIFIER.<br />
6221e6630d88 drm/i915: Reject UNSYNCHRONIZED for userptr, v2.<br />
7f3e5695a30c drm/i915: Reject more ioctls for userptr<br />
f5dbb93bbfa1 drm/i915: No longer allow exporting userptr through dma-buf<br />
2164b6818543 drm/i915: Disable userptr pread/pwrite support.<br />
d319bbed11e6 drm/i915: make lockdep slightly happier about execbuf.<br />
138d22527745 drm/i915: Convert i915_gem_object_attach_phys() to ww locking, v2.<br />
f90f08586008 drm/i915: Rework struct phys attachment handling<br />
b881f7651122 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
a6940e0503e5 drm/i915: Add gem object locking to madvise.<br />
f4245cae4741 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
f4a0ebe47349 drm/i915: Add missing -EDEADLK handling to execbuf pinning, v2.<br />
de7db6cc5368 drm/i915: Move cmd parser pinning to execbuffer<br />
9785c066d43f drm/i915: Pin timeline map after first timeline pin, v3.<br />
cbc0237dc775 drm/i915: Do not share hwsp across contexts any more, v6</p>

</body>
</html>

--===============3485056406387377883==--

--===============0833890649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0833890649==--
