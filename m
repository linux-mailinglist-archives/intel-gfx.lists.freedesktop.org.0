Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B5128F366
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 15:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AAD46ED0D;
	Thu, 15 Oct 2020 13:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 637EB6ED0D;
 Thu, 15 Oct 2020 13:37:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B340A47E2;
 Thu, 15 Oct 2020 13:37:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 15 Oct 2020 13:37:37 -0000
Message-ID: <160276905736.13182.17574247752589555141@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0503111183=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0503111183==
Content-Type: multipart/alternative;
 boundary="===============5315843565068294140=="

--===============5315843565068294140==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove obj->mm.lock! (rev3)
URL   : https://patchwork.freedesktop.org/series/82337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9140 -> Patchwork_18703
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18703:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - fi-kbl-r:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html
    - {fi-tgl-dsi}:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-blb-e6850:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-nick:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-y:           [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2520m:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-u2:          [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html
    - fi-icl-u2:          [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-u2:          NOTRUN -> [DMESG-FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html
    - {fi-ehl-1}:         [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6600u:       [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-n3050:       [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html
    - fi-byt-j1900:       [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html
    - fi-hsw-4770:        [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html
    - fi-cml-s:           [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html
    - fi-ilk-650:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html
    - fi-elk-e7500:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html
    - fi-cfl-guc:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-soraka:      [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-6700k2:      [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html
    - fi-skl-lmem:        [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html
    - fi-glk-dsi:         [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-x1275:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html
    - fi-snb-2600:        [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html
    - fi-tgl-y:           [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-7500u:       [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html
    - fi-kbl-guc:         [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html
    - fi-bsw-kefka:       [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-gvtdvm:      [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html
    - fi-bdw-5557u:       [PASS][65] -> [DMESG-FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18703 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][67] ([i915#2417]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-lmem:        [FAIL][69] ([i915#1436] / [i915#2439]) -> [FAIL][70] ([i915#2398] / [i915#2439])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-lmem/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9140 -> Patchwork_18703

  CI-20190529: 20190529
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18703: 61cd49cc7f1d7ed032d8511897a86affc834c9cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

61cd49cc7f1d drm/i915: Keep lazy reference to userptr pages
9ff2dbec02c1 drm/i915: Idea to implement eviction locking
ffa7eb948163 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.
d48f071fd0db drm/i915: Finally remove obj->mm.lock.
135e45899449 drm/i915/selftests: Prepare gtt tests for obj->mm.lock removal
4df2c5801bef drm/i915/selftests: Prepare cs engine tests for obj->mm.lock removal
c081d7e17c8b drm/i915/selftests: Prepare memory region tests for obj->mm.lock removal
3c9c1a5ddaff drm/i915/selftests: Prepare i915_request tests for obj->mm.lock removal
853948ea51a4 drm/i915/selftests: Prepare timeline tests for obj->mm.lock removal
0481554c6894 drm/i915/selftests: Prepare ring submission for obj->mm.lock removal
428290f8289c drm/i915/selftests: Prepare mocs tests for obj->mm.lock removal
2d5a80056c2e drm/i915/selftests: Prepare execlists for obj->mm.lock removal
b5831f57952b drm/i915/selftests: Prepare hangcheck for obj->mm.lock removal
ae7debf30f00 drm/i915/selftests: Prepare context selftest for obj->mm.lock removal
51748645f2d5 drm/i915/selftests: Prepare igt_gem_utils for obj->mm.lock removal
957fd6d746ac drm/i915/selftests: Prepare object blit tests for obj->mm.lock removal.
f54ecd6bac1c drm/i915/selftests: Prepare object tests for obj->mm.lock removal.
bf606ed2df1e drm/i915/selftests: Prepare mman testcases for obj->mm.lock removal.
790863ab8235 drm/i915/selftests: Prepare execbuf tests for obj->mm.lock removal.
78c5bb187f6b drm/i915/selftests: Prepare dma-buf tests for obj->mm.lock removal.
7e0846ca1737 drm/i915/selftests: Prepare context tests for obj->mm.lock removal.
ec19378542fb drm/i915/selftests: Prepare coherency tests for obj->mm.lock removal.
4164fa6a8f49 drm/i915/selftests: Prepare client blit for obj->mm.lock removal.
c444c91b2ab0 drm/i915/selftests: Prepare huge_pages testcases for obj->mm.lock removal.
d9cbec998e7d drm/i915: Use a single page table lock for each gtt.
ead477c41e05 drm/i915: Fix ww locking in shmem_create_from_object
929b4826615b drm/i915: Add missing ww lock in intel_dsb_prepare.
38dfd5400402 drm/i915: Add ww locking to dma-buf ops.
78cf25d2059c drm/i915: Lock ww in ucode objects correctly
1676bdc1ed2e drm/i915: Increase ww locking for perf.
d220a1bf467a drm/i915: Add ww locking around vm_access()
2f504829281d drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.
9d404723b28b drm/i915: Prepare for obj->mm.lock removal
e648311856d5 drm/i915: Fix workarounds selftest, part 1
6728383c5033 drm/i915: Fix pread/pwrite to work with new locking rules.
a28dce1923d9 drm/i915: Defer pin calls in buffer pool until first use by caller.
ec1d61a7843a drm/i915: Take obj lock around set_domain ioctl
52f4f0994829 drm/i915: Make __engine_unpark() compatible with ww locking.
7aa2b4b7eab9 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
605d60eb1494 drm/i915: Take reservation lock around i915_vma_pin.
5c4f1b8547df drm/i915: Move pinning to inside engine_wa_list_verify()
8623814b93d2 drm/i915: Add object locking to vm_fault_cpu
8e3b1eed034a drm/i915: Pass ww ctx to intel_pin_to_display_plane
a5600bf6d23a drm/i915: Rework clflush to work correctly without obj->mm.lock.
75e706407c5e drm/i915: Handle ww locking in init_status_page
372d3f54f47f drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
0ddefffcf870 drm/i915: Populate logical context during first pin.
f71980dabbdf drm/i915: Flatten obj->mm.lock
733050ed7f31 drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v3.
6f485e50888c drm/i915: Reject UNSYNCHRONIZED for userptr
415cc556a463 drm/i915: Reject more ioctls for userptr
942724c1e6a7 drm/i915: No longer allow exporting userptr through dma-buf
371cbc9d8c27 drm/i915: Disable userptr pread/pwrite support.
6f0824c8b9c0 drm/i915: make lockdep slightly happier about execbuf.
174f857c33e0 drm/i915: Convert i915_gem_object_attach_phys() to ww locking
a0e592a97856 drm/i915: Rework struct phys attachment handling
f59341469336 drm/i915: Move HAS_STRUCT_PAGE to obj->flags
3078927638f1 drm/i915: Add gem object locking to madvise.
5204c04e1783 drm/i915: Ensure we hold the object mutex in pin correctly.
afc484a312e1 drm/i915: Pin timeline map after first timeline pin, v3.
d304ddd05bc2 drm/i915: Do not share hwsp across contexts any more, v3.
85953c769887 drm/i915: Add missing -EDEADLK handling to execbuf pinning
80a8f48f229f drm/i915: Move cmd parser pinning to execbuffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html

--===============5315843565068294140==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove obj-&gt;mm.lock! (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82337/">https://patchwork.freedesktop.org/series/82337/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9140 -&gt; Patchwork_18703</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18703:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_exec_parallel@engines@userptr}:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-r/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-8109u/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-blb-e6850/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-nick/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-snb-2520m/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cml-u2/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-8700k/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-icl-u2/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-u2/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ehl-1/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-6600u/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-n3050/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-byt-j1900/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7560u/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cml-s/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ilk-650/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-elk-e7500/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-cfl-guc/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-soraka/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-6700k2/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-lmem/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-glk-dsi/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-x1275/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-snb-2600/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-tgl-y/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7500u/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-guc/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bsw-kefka/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-bdw-5557u/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18703 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18703/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9140 -&gt; Patchwork_18703</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18703: 61cd49cc7f1d7ed032d8511897a86affc834c9cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>61cd49cc7f1d drm/i915: Keep lazy reference to userptr pages<br />
9ff2dbec02c1 drm/i915: Idea to implement eviction locking<br />
ffa7eb948163 drm/i915: Keep userpointer bindings if seqcount is unchanged, v2.<br />
d48f071fd0db drm/i915: Finally remove obj-&gt;mm.lock.<br />
135e45899449 drm/i915/selftests: Prepare gtt tests for obj-&gt;mm.lock removal<br />
4df2c5801bef drm/i915/selftests: Prepare cs engine tests for obj-&gt;mm.lock removal<br />
c081d7e17c8b drm/i915/selftests: Prepare memory region tests for obj-&gt;mm.lock removal<br />
3c9c1a5ddaff drm/i915/selftests: Prepare i915_request tests for obj-&gt;mm.lock removal<br />
853948ea51a4 drm/i915/selftests: Prepare timeline tests for obj-&gt;mm.lock removal<br />
0481554c6894 drm/i915/selftests: Prepare ring submission for obj-&gt;mm.lock removal<br />
428290f8289c drm/i915/selftests: Prepare mocs tests for obj-&gt;mm.lock removal<br />
2d5a80056c2e drm/i915/selftests: Prepare execlists for obj-&gt;mm.lock removal<br />
b5831f57952b drm/i915/selftests: Prepare hangcheck for obj-&gt;mm.lock removal<br />
ae7debf30f00 drm/i915/selftests: Prepare context selftest for obj-&gt;mm.lock removal<br />
51748645f2d5 drm/i915/selftests: Prepare igt_gem_utils for obj-&gt;mm.lock removal<br />
957fd6d746ac drm/i915/selftests: Prepare object blit tests for obj-&gt;mm.lock removal.<br />
f54ecd6bac1c drm/i915/selftests: Prepare object tests for obj-&gt;mm.lock removal.<br />
bf606ed2df1e drm/i915/selftests: Prepare mman testcases for obj-&gt;mm.lock removal.<br />
790863ab8235 drm/i915/selftests: Prepare execbuf tests for obj-&gt;mm.lock removal.<br />
78c5bb187f6b drm/i915/selftests: Prepare dma-buf tests for obj-&gt;mm.lock removal.<br />
7e0846ca1737 drm/i915/selftests: Prepare context tests for obj-&gt;mm.lock removal.<br />
ec19378542fb drm/i915/selftests: Prepare coherency tests for obj-&gt;mm.lock removal.<br />
4164fa6a8f49 drm/i915/selftests: Prepare client blit for obj-&gt;mm.lock removal.<br />
c444c91b2ab0 drm/i915/selftests: Prepare huge_pages testcases for obj-&gt;mm.lock removal.<br />
d9cbec998e7d drm/i915: Use a single page table lock for each gtt.<br />
ead477c41e05 drm/i915: Fix ww locking in shmem_create_from_object<br />
929b4826615b drm/i915: Add missing ww lock in intel_dsb_prepare.<br />
38dfd5400402 drm/i915: Add ww locking to dma-buf ops.<br />
78cf25d2059c drm/i915: Lock ww in ucode objects correctly<br />
1676bdc1ed2e drm/i915: Increase ww locking for perf.<br />
d220a1bf467a drm/i915: Add ww locking around vm_access()<br />
2f504829281d drm/i915: Add igt_spinner_pin() to allow for ww locking around spinner.<br />
9d404723b28b drm/i915: Prepare for obj-&gt;mm.lock removal<br />
e648311856d5 drm/i915: Fix workarounds selftest, part 1<br />
6728383c5033 drm/i915: Fix pread/pwrite to work with new locking rules.<br />
a28dce1923d9 drm/i915: Defer pin calls in buffer pool until first use by caller.<br />
ec1d61a7843a drm/i915: Take obj lock around set_domain ioctl<br />
52f4f0994829 drm/i915: Make __engine_unpark() compatible with ww locking.<br />
7aa2b4b7eab9 drm/i915: Make intel_init_workaround_bb more compatible with ww locking.<br />
605d60eb1494 drm/i915: Take reservation lock around i915_vma_pin.<br />
5c4f1b8547df drm/i915: Move pinning to inside engine_wa_list_verify()<br />
8623814b93d2 drm/i915: Add object locking to vm_fault_cpu<br />
8e3b1eed034a drm/i915: Pass ww ctx to intel_pin_to_display_plane<br />
a5600bf6d23a drm/i915: Rework clflush to work correctly without obj-&gt;mm.lock.<br />
75e706407c5e drm/i915: Handle ww locking in init_status_page<br />
372d3f54f47f drm/i915: Make ring submission compatible with obj-&gt;mm.lock removal, v2.<br />
0ddefffcf870 drm/i915: Populate logical context during first pin.<br />
f71980dabbdf drm/i915: Flatten obj-&gt;mm.lock<br />
733050ed7f31 drm/i915: Fix userptr so we do not have to worry about obj-&gt;mm.lock, v3.<br />
6f485e50888c drm/i915: Reject UNSYNCHRONIZED for userptr<br />
415cc556a463 drm/i915: Reject more ioctls for userptr<br />
942724c1e6a7 drm/i915: No longer allow exporting userptr through dma-buf<br />
371cbc9d8c27 drm/i915: Disable userptr pread/pwrite support.<br />
6f0824c8b9c0 drm/i915: make lockdep slightly happier about execbuf.<br />
174f857c33e0 drm/i915: Convert i915_gem_object_attach_phys() to ww locking<br />
a0e592a97856 drm/i915: Rework struct phys attachment handling<br />
f59341469336 drm/i915: Move HAS_STRUCT_PAGE to obj-&gt;flags<br />
3078927638f1 drm/i915: Add gem object locking to madvise.<br />
5204c04e1783 drm/i915: Ensure we hold the object mutex in pin correctly.<br />
afc484a312e1 drm/i915: Pin timeline map after first timeline pin, v3.<br />
d304ddd05bc2 drm/i915: Do not share hwsp across contexts any more, v3.<br />
85953c769887 drm/i915: Add missing -EDEADLK handling to execbuf pinning<br />
80a8f48f229f drm/i915: Move cmd parser pinning to execbuffer</p>

</body>
</html>

--===============5315843565068294140==--

--===============0503111183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0503111183==--
