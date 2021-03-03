Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA51732BF36
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 00:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B916E420;
	Wed,  3 Mar 2021 23:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54D556E419;
 Wed,  3 Mar 2021 23:36:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E5A3A9A42;
 Wed,  3 Mar 2021 23:36:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 03 Mar 2021 23:36:18 -0000
Message-ID: <161481457829.23597.15064093689955650951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1614682842.git.jani.nikula@intel.com>
In-Reply-To: <cover.1614682842.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_complete_eDP_MSO_support_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0121280626=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0121280626==
Content-Type: multipart/alternative;
 boundary="===============5671922545233600059=="

--===============5671922545233600059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: complete eDP MSO support (rev3)
URL   : https://patchwork.freedesktop.org/series/87536/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9825 -> Patchwork_19754
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/index.html

Known issues
------------

  Here are the changes found in Patchwork_19754 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][2] ([i915#3145]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][4] ([i915#2502] / [i915#3145]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][6] ([i915#2782]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9825 -> Patchwork_19754

  CI-20190529: 20190529
  CI_DRM_9825: 51348fd0276ac3c65e3ba55c5639d26859cddfaa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19754: 34e7052355d2728263b42823498150a95a6f0694 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

34e7052355d2 drm/i915/edp: enable eDP MSO during link training
eede9af6628f drm/i915/edp: modify fixed and downclock modes for MSO
0407b376d500 drm/i915/mso: add splitter state check
8fa6c6207773 drm/i915/mso: add splitter state readout for platforms that support it

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/index.html

--===============5671922545233600059==
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
<tr><td><b>Series:</b></td><td>drm/i915: complete eDP MSO support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87536/">https://patchwork.freedesktop.org/series/87536/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9825 -&gt; Patchwork_19754</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19754 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9825/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19754/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9825 -&gt; Patchwork_19754</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9825: 51348fd0276ac3c65e3ba55c5639d26859cddfaa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19754: 34e7052355d2728263b42823498150a95a6f0694 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>34e7052355d2 drm/i915/edp: enable eDP MSO during link training<br />
eede9af6628f drm/i915/edp: modify fixed and downclock modes for MSO<br />
0407b376d500 drm/i915/mso: add splitter state check<br />
8fa6c6207773 drm/i915/mso: add splitter state readout for platforms that support it</p>

</body>
</html>

--===============5671922545233600059==--

--===============0121280626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0121280626==--
