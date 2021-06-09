Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79383A1FF9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 00:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AFA6EB59;
	Wed,  9 Jun 2021 22:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 857DC6EB38;
 Wed,  9 Jun 2021 22:22:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 787F8A008A;
 Wed,  9 Jun 2021 22:22:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 22:22:51 -0000
Message-ID: <162327737146.27477.10310426291681597006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609212959.471209-1-jason@jlekstrand.net>
In-Reply-To: <20210609212959.471209-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-fence=2C_i915=3A_Stop_allowing_SLAB=5FTYPESAFE=5FBY=5FRCU_for_?=
 =?utf-8?q?dma=5Ffence?=
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
Content-Type: multipart/mixed; boundary="===============0755383057=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0755383057==
Content-Type: multipart/alternative;
 boundary="===============6638830578046128759=="

--===============6638830578046128759==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-fence, i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
URL   : https://patchwork.freedesktop.org/series/91299/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10199 -> Patchwork_20323
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20323 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20323, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20323:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all@dma_fence:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2520m/igt@dmabuf@all@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2520m/igt@dmabuf@all@dma_fence.html
    - fi-ilk-650:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-ilk-650/igt@dmabuf@all@dma_fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ilk-650/igt@dmabuf@all@dma_fence.html
    - fi-ivb-3770:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-ivb-3770/igt@dmabuf@all@dma_fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ivb-3770/igt@dmabuf@all@dma_fence.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-elk-e7500/igt@dmabuf@all@dma_fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-elk-e7500/igt@dmabuf@all@dma_fence.html
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-hsw-4770/igt@dmabuf@all@dma_fence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-4770/igt@dmabuf@all@dma_fence.html
    - fi-bwr-2160:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-bwr-2160/igt@dmabuf@all@dma_fence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bwr-2160/igt@dmabuf@all@dma_fence.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2520m/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@dmabuf@all@dma_fence:
    - {fi-hsw-gt1}:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-hsw-gt1/igt@dmabuf@all@dma_fence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-gt1/igt@dmabuf@all@dma_fence.html

  
Known issues
------------

  Here are the changes found in Patchwork_20323 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all@dma_fence:
    - fi-pnv-d510:        [PASS][19] -> [INCOMPLETE][20] ([i915#299])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-pnv-d510/igt@dmabuf@all@dma_fence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-pnv-d510/igt@dmabuf@all@dma_fence.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][21] -> [INCOMPLETE][22] ([i915#2782])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][23] ([i915#2403] / [i915#2505] / [i915#2722])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-pnv-d510/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][24] ([i915#2505] / [i915#2722])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][25] ([i915#2505] / [i915#2722])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][26] ([i915#1888]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][28] ([i915#2203]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][30] ([fdo#109271]) -> [FAIL][31] ([i915#579])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][32] ([i915#2782] / [i915#2940] / [i915#3462]) -> [DMESG-FAIL][33] ([i915#3462])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][34] ([i915#2426] / [i915#3363]) -> [FAIL][35] ([i915#3363])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cfl-8700k/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cfl-8700k/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][36] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][37] ([i915#1436] / [i915#3363])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-8809g/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][38] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][39] ([i915#1436] / [i915#3363])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][40] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][41] ([i915#3363] / [i915#3462])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cml-s/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][42] ([i915#3363]) -> [FAIL][43] ([i915#2426] / [i915#3363])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cfl-guc/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][44] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][45] ([i915#1436] / [i915#3363])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-skl-guc/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10199 -> Patchwork_20323

  CI-20190529: 20190529
  CI_DRM_10199: d4794202e1d6fa9a44262056a6f69a38eab240a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6103: 3aa79e55e73d4a49a5222e5dfde486b800a29fe7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20323: 3515a69ecbaf1ecd3b5154bfd3ec59e10e1236d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_20323/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST modules-only.symvers
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed
make[1]: *** [modules-only.symvers] Error 1
make[1]: *** Deleting file 'modules-only.symvers'
Makefile:1759: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

3515a69ecbaf DONOTMERGE: dma-buf: Get rid of dma_fence_get_rcu_safe
6f5eaff5c611 dma-buf: Stop using SLAB_TYPESAFE_BY_RCU in selftests
425024c191b4 drm/i915: Stop using SLAB_TYPESAFE_BY_RCU for i915_request
a566e7614443 drm/i915: Use a simpler scheme for caching i915_request
c4dee3b6c2a0 drm/i915: Move intel_engine_free_request_pool to i915_request.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/index.html

--===============6638830578046128759==
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
<tr><td><b>Series:</b></td><td>dma-fence, i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91299/">https://patchwork.freedesktop.org/series/91299/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10199 -&gt; Patchwork_20323</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20323 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20323, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20323:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2520m/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2520m/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-ilk-650/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ilk-650/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-ivb-3770/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ivb-3770/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-elk-e7500/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-elk-e7500/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-hsw-4770/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-4770/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-bwr-2160/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bwr-2160/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@dmabuf@all@dma_fence:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-hsw-gt1/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-gt1/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20323 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-pnv-d510/igt@dmabuf@all@dma_fence.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20323/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10199 -&gt; Patchwork_20323</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10199: d4794202e1d6fa9a44262056a6f69a38eab240a0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6103: 3aa79e55e73d4a49a5222e5dfde486b800a29fe7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20323: 3515a69ecbaf1ecd3b5154bfd3ec59e10e1236d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_20323/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
Kernel: arch/x86/boot/bzImage is ready  (#1)<br />
  MODPOST modules-only.symvers<br />
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2520m/igt@dmabuf@all@dma_fence.html">1</a>: <strong><em> [modules-only.symvers] Error 1<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10199/fi-snb-2520m/igt@dmabuf@all@dma_fence.html">1</a>: </em></strong> Deleting file 'modules-only.symvers'<br />
Makefile:1759: recipe for target 'modules' failed<br />
make: *** [modules] Error 2</p>
<p>== Linux commits ==</p>
<p>3515a69ecbaf DONOTMERGE: dma-buf: Get rid of dma_fence_get_rcu_safe<br />
6f5eaff5c611 dma-buf: Stop using SLAB_TYPESAFE_BY_RCU in selftests<br />
425024c191b4 drm/i915: Stop using SLAB_TYPESAFE_BY_RCU for i915_request<br />
a566e7614443 drm/i915: Use a simpler scheme for caching i915_request<br />
c4dee3b6c2a0 drm/i915: Move intel_engine_free_request_pool to i915_request.c</p>

</body>
</html>

--===============6638830578046128759==--

--===============0755383057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0755383057==--
