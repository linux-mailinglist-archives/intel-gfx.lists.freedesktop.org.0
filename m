Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9122247E0E6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 10:36:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C7E10E2B6;
	Thu, 23 Dec 2021 09:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02E3010E2DA;
 Thu, 23 Dec 2021 09:36:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBF2EA9A42;
 Thu, 23 Dec 2021 09:36:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0859116631736235807=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 23 Dec 2021 09:36:44 -0000
Message-ID: <164025220459.20442.10158465299642777867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXBk?=
 =?utf-8?q?ate_to_GuC_version_69=2E0=2E3_=28rev3=29?=
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

--===============0859116631736235807==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update to GuC version 69.0.3 (rev3)
URL   : https://patchwork.freedesktop.org/series/98249/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11032 -> Patchwork_21902
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/index.html

Participating hosts (44 -> 36)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (9): fi-bdw-5557u bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21902 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][1] ([i915#4337])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-kbl-soraka/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-hsw-4770:        [SKIP][6] ([fdo#109271]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][8] ([i915#3921]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][10] ([i915#4269]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4337]: https://gitlab.freedesktop.org/drm/intel/issues/4337
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11032 -> Patchwork_21902

  CI-20190529: 20190529
  CI_DRM_11032: e9aa5feec24dea1306e2cc7cd3f8ff130b750ab2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6317: 704a1a42db2fad72c382e95c9da200b5bde5e5fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21902: 56e3ad6fdb0901e16f190e0d60d664d1a6a59373 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

56e3ad6fdb09 drm/i915/guc: Improve GuC loading status check/error reports
4c7171575588 drm/i915/guc: Update to GuC version 69.0.3
7c6acdb75fd4 drm/i915/guc: Temporarily bump the GuC load timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/index.html

--===============0859116631736235807==
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
<tr><td><b>Series:</b></td><td>Update to GuC version 69.0.3 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98249/">https://patchwork.freedesktop.org/series/98249/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11032 -&gt; Patchwork_21902</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/index.html</p>
<h2>Participating hosts (44 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (9): fi-bdw-5557u bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21902 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-kbl-soraka/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4337">i915#4337</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11032/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21902/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11032 -&gt; Patchwork_21902</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11032: e9aa5feec24dea1306e2cc7cd3f8ff130b750ab2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6317: 704a1a42db2fad72c382e95c9da200b5bde5e5fc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21902: 56e3ad6fdb0901e16f190e0d60d664d1a6a59373 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>56e3ad6fdb09 drm/i915/guc: Improve GuC loading status check/error reports<br />
4c7171575588 drm/i915/guc: Update to GuC version 69.0.3<br />
7c6acdb75fd4 drm/i915/guc: Temporarily bump the GuC load timeout</p>

</body>
</html>

--===============0859116631736235807==--
