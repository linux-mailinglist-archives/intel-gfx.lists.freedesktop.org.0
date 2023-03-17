Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC366BDF1C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 03:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7863B10E239;
	Fri, 17 Mar 2023 02:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE3CE10E0A2;
 Fri, 17 Mar 2023 02:56:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D66DCAADD6;
 Fri, 17 Mar 2023 02:56:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8789964988557306686=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Fri, 17 Mar 2023 02:56:20 -0000
Message-ID: <167902178084.12997.1162589706947799563@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_MTL_WA_and_powerwell_patches_=28rev2=29?=
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

--===============8789964988557306686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More MTL WA and powerwell patches (rev2)
URL   : https://patchwork.freedesktop.org/series/115292/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12872 -> Patchwork_115292v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115292v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115292v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/index.html

Participating hosts (35 -> 35)
------------------------------

  Additional (2): bat-atsm-1 fi-pnv-d510 
  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115292v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg2-11:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-11/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-11/igt@i915_module_load@load.html
    - bat-adlm-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adlm-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adlm-1/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_115292v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#2582]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@fbdev@eof.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#4083])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_sync@basic-each:
    - bat-atsm-1:         NOTRUN -> [FAIL][7] ([i915#8062]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_sync@basic-each.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][8] ([i915#4077]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][9] ([i915#4079]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_hangman@error-state-basic:
    - bat-atsm-1:         NOTRUN -> [ABORT][10] ([i915#8060])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][11] -> [ABORT][12] ([i915#7911])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [PASS][13] -> [DMESG-FAIL][14] ([i915#6367])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][15] ([i915#7828])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adln-1:         NOTRUN -> [SKIP][16] ([i915#7828])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3:
    - bat-dg2-9:          [PASS][17] -> [FAIL][18] ([fdo#103375]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
    - bat-dg2-9:          [PASS][19] -> [FAIL][20] ([fdo#103375] / [i915#7932])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][21] ([fdo#109271]) +38 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-adln-1:         [FAIL][22] ([i915#8064]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-adln-1:         [ABORT][24] ([i915#8144]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [ABORT][26] ([i915#4983]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8060]: https://gitlab.freedesktop.org/drm/intel/issues/8060
  [i915#8062]: https://gitlab.freedesktop.org/drm/intel/issues/8062
  [i915#8064]: https://gitlab.freedesktop.org/drm/intel/issues/8064
  [i915#8144]: https://gitlab.freedesktop.org/drm/intel/issues/8144


Build changes
-------------

  * Linux: CI_DRM_12872 -> Patchwork_115292v2

  CI-20190529: 20190529
  CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115292v2: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f2cb9ac39f74 drm/i915/mtl: WA to clear RDOP clock gating
69acbf599183 drm/i915/mtl: Synchronize i915/BIOS on C6 enabling
8c5ddb6aadac drm/i915/mtl: Extend Wa_22011802037 to MTL A-step
baf84b01bec6 drm/i915/mtl: Re-use ADL-P's "DC off" power well
ffa4a6bde432 drm/i915: Use separate "DC off" power well for ADL-P and DG2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/index.html

--===============8789964988557306686==
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
<tr><td><b>Series:</b></td><td>More MTL WA and powerwell patches (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115292/">https://patchwork.freedesktop.org/series/115292/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12872 -&gt; Patchwork_115292v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115292v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115292v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>Additional (2): bat-atsm-1 fi-pnv-d510 <br />
  Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115292v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115292v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_sync@basic-each.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8062">i915#8062</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-atsm-1/igt@i915_hangman@error-state-basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8060">i915#8060</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8064">i915#8064</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8144">i915#8144</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115292v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12872 -&gt; Patchwork_115292v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115292v2: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f2cb9ac39f74 drm/i915/mtl: WA to clear RDOP clock gating<br />
69acbf599183 drm/i915/mtl: Synchronize i915/BIOS on C6 enabling<br />
8c5ddb6aadac drm/i915/mtl: Extend Wa_22011802037 to MTL A-step<br />
baf84b01bec6 drm/i915/mtl: Re-use ADL-P's "DC off" power well<br />
ffa4a6bde432 drm/i915: Use separate "DC off" power well for ADL-P and DG2</p>

</body>
</html>

--===============8789964988557306686==--
