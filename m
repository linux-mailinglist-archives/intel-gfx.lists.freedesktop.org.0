Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91154843BC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 15:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E946910E392;
	Tue,  4 Jan 2022 14:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7231A10E392;
 Tue,  4 Jan 2022 14:51:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70367AA0EB;
 Tue,  4 Jan 2022 14:51:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3224236732084833266=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 04 Jan 2022 14:51:18 -0000
Message-ID: <164130787845.30367.8431068063918430672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220104085421.213793-1-jani.nikula@intel.com>
In-Reply-To: <20220104085421.213793-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_remove_useless_enum?=
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

--===============3224236732084833266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: remove useless enum
URL   : https://patchwork.freedesktop.org/series/98468/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11045 -> Patchwork_21913
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21913 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21913, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/index.html

Participating hosts (49 -> 42)
------------------------------

  Missing    (7): bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-pnv-d510 bat-rpls-1 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21913:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-samus:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-bdw-samus/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-bdw-samus/igt@gem_exec_suspend@basic-s3@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_21913 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][4] -> [INCOMPLETE][5] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4200u:       [PASS][6] -> [DMESG-WARN][7] ([i915#3303])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-hsw-4200u/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-hsw-4200u/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][8] ([i915#4312]) -> [FAIL][9] ([i915#2722] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-skl-6600u/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-skl-6600u/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11045 -> Patchwork_21913

  CI-20190529: 20190529
  CI_DRM_11045: fe1b95163fc06f02b5a02722801221e7343947ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6322: b0b7679b358b300b7b6bf42c6921d0aa1fc14388 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21913: f473e770ab2d362be52f624005a737111f5fde2e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f473e770ab2d drm/i915/psr: remove useless enum

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/index.html

--===============3224236732084833266==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: remove useless enum</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98468/">https://patchwork.freedesktop.org/series/98468/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11045 -&gt; Patchwork_21913</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21913 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21913, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/index.html</p>
<h2>Participating hosts (49 -&gt; 42)</h2>
<p>Missing    (7): bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-pnv-d510 bat-rpls-1 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21913:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-bdw-samus:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-bdw-samus/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-bdw-samus/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21913 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4200u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-hsw-4200u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-hsw-4200u/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11045/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21913/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11045 -&gt; Patchwork_21913</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11045: fe1b95163fc06f02b5a02722801221e7343947ae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6322: b0b7679b358b300b7b6bf42c6921d0aa1fc14388 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21913: f473e770ab2d362be52f624005a737111f5fde2e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f473e770ab2d drm/i915/psr: remove useless enum</p>

</body>
</html>

--===============3224236732084833266==--
