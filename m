Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9064459C79
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 07:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81BA6E0B8;
	Tue, 23 Nov 2021 06:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FAEC6E0B8;
 Tue, 23 Nov 2021 06:58:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08D00A363C;
 Tue, 23 Nov 2021 06:58:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8836022301945071110=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 23 Nov 2021 06:58:31 -0000
Message-ID: <163765071101.2116.4709741088669359383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev9=29?=
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

--===============8836022301945071110==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Async migration (rev9)
URL   : https://patchwork.freedesktop.org/series/96798/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10917 -> Patchwork_21665
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21665 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21665, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/index.html

Participating hosts (40 -> 34)
------------------------------

  Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21665:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [INCOMPLETE][3] ([i915#4547]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_21665 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +31 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][7] -> [INCOMPLETE][8] ([i915#3921])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#533])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][12] ([fdo#109271]) +41 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       [FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [INCOMPLETE][15] ([i915#4006]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10917 -> Patchwork_21665

  CI-20190529: 20190529
  CI_DRM_10917: de9a03c2007f3c69c5fa86ef007841a4a9194aac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21665: 029777eed3e35085ace580283739ab9badde550c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

029777eed3e3 drm/i915/ttm: Update i915_gem_obj_copy_ttm() to be asynchronous
702822fa678f drm/i915/ttm: Implement asynchronous TTM moves
3a1de265c2b7 drm/i915/ttm: Correctly handle waiting for gpu when shrinking
6ebbafd32ddc drm/i915/ttm: Drop region reference counting
4276e151a9cb drm/i915/ttm: Move the i915_gem_obj_copy_ttm() function
fa5d1e10b510 drm/i915: Add support for moving fence waiting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/index.html

--===============8836022301945071110==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Async migration (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96798/">https://patchwork.freedesktop.org/series/96798/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10917 -&gt; Patchwork_21665</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21665 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21665, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/index.html</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): bat-dg1-6 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21665:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21665 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-kbl-8809g/igt@core_auth@basic-auth.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-kbl-8809g/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21665/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10917 -&gt; Patchwork_21665</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10917: de9a03c2007f3c69c5fa86ef007841a4a9194aac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21665: 029777eed3e35085ace580283739ab9badde550c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>029777eed3e3 drm/i915/ttm: Update i915_gem_obj_copy_ttm() to be asynchronous<br />
702822fa678f drm/i915/ttm: Implement asynchronous TTM moves<br />
3a1de265c2b7 drm/i915/ttm: Correctly handle waiting for gpu when shrinking<br />
6ebbafd32ddc drm/i915/ttm: Drop region reference counting<br />
4276e151a9cb drm/i915/ttm: Move the i915_gem_obj_copy_ttm() function<br />
fa5d1e10b510 drm/i915: Add support for moving fence waiting</p>

</body>
</html>

--===============8836022301945071110==--
