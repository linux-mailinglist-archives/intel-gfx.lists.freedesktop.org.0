Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32A6BDFE8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 05:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB98510E02C;
	Fri, 17 Mar 2023 04:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9FCC10E274;
 Fri, 17 Mar 2023 04:04:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5C2BA0169;
 Fri, 17 Mar 2023 04:04:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6454248784149881339=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Date: Fri, 17 Mar 2023 04:04:19 -0000
Message-ID: <167902585993.12990.17198242354955444976@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
In-Reply-To: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/audio=3A_update_audio_keepalive_clock_values?=
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

--===============6454248784149881339==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/audio: update audio keepalive clock values
URL   : https://patchwork.freedesktop.org/series/115300/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12872 -> Patchwork_115300v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html

Participating hosts (35 -> 36)
------------------------------

  Additional (2): bat-atsm-1 fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_115300v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-atsm-1:         NOTRUN -> [SKIP][1] ([i915#2582]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@fbdev@eof.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][2] ([i915#4083])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_sync@basic-each:
    - bat-atsm-1:         NOTRUN -> [FAIL][3] ([i915#8062]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_sync@basic-each.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][4] ([i915#4077]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#4079]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_hangman@error-state-basic:
    - bat-atsm-1:         NOTRUN -> [ABORT][6] ([i915#8060])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][7] -> [ABORT][8] ([i915#7911])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][9] -> [DMESG-WARN][10] ([i915#8073])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [PASS][11] -> [DMESG-FAIL][12] ([i915#6367])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg1-5:          NOTRUN -> [SKIP][13] ([i915#7828])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adln-1:         NOTRUN -> [SKIP][14] ([i915#7828])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][15] ([fdo#109271]) +38 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-adln-1:         [FAIL][16] ([i915#8064]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-adln-1:         [ABORT][18] ([i915#8144]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [ABORT][20] ([i915#4983]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][22] ([i915#7699]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8060]: https://gitlab.freedesktop.org/drm/intel/issues/8060
  [i915#8062]: https://gitlab.freedesktop.org/drm/intel/issues/8062
  [i915#8064]: https://gitlab.freedesktop.org/drm/intel/issues/8064
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073
  [i915#8144]: https://gitlab.freedesktop.org/drm/intel/issues/8144


Build changes
-------------

  * Linux: CI_DRM_12872 -> Patchwork_115300v1

  CI-20190529: 20190529
  CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115300v1: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7cfc984a0970 drm/i915/audio: update audio keepalive clock values

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html

--===============6454248784149881339==
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
<tr><td><b>Series:</b></td><td>drm/i915/audio: update audio keepalive clock values</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115300/">https://patchwork.freedesktop.org/series/115300/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12872 -&gt; Patchwork_115300v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html</p>
<h2>Participating hosts (35 -&gt; 36)</h2>
<p>Additional (2): bat-atsm-1 fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115300v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_sync@basic-each.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8062">i915#8062</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-atsm-1/igt@i915_hangman@error-state-basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8060">i915#8060</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8064">i915#8064</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8144">i915#8144</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12872 -&gt; Patchwork_115300v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115300v1: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7cfc984a0970 drm/i915/audio: update audio keepalive clock values</p>

</body>
</html>

--===============6454248784149881339==--
