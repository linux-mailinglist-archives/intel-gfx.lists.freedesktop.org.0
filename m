Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0A825953A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 17:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470F46E826;
	Tue,  1 Sep 2020 15:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F07C6E826;
 Tue,  1 Sep 2020 15:49:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 374EBA3C0D;
 Tue,  1 Sep 2020 15:49:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Tue, 01 Sep 2020 15:49:14 -0000
Message-ID: <159897535419.31089.9900528761247335270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_regression_leading_to_display_audio_probe_failure_?=
 =?utf-8?q?on_GLK?=
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
Content-Type: multipart/mixed; boundary="===============0406699408=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0406699408==
Content-Type: multipart/alternative;
 boundary="===============4712445502305740732=="

--===============4712445502305740732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix regression leading to display audio probe failure on GLK
URL   : https://patchwork.freedesktop.org/series/81227/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8951 -> Patchwork_18429
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/index.html

Known issues
------------

  Here are the changes found in Patchwork_18429 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1635] / [i915#2398])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4] ([i915#2398] / [i915#794])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#2398])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-skl-lmem/igt@gem_exec_parallel@engines@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-skl-lmem/igt@gem_exec_parallel@engines@fds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [PASS][9] -> [DMESG-WARN][10] ([i915#2203])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (38 -> 33)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8951 -> Patchwork_18429

  CI-20190529: 20190529
  CI_DRM_8951: 5f8c53e35ef01a1d5e97db6005d3c308d3734bac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5775: 58cb0aea18fa471af43c11ee9f587554721a7815 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18429: 7db2227d72fdf96d49b2fbb535732d0f0d442f87 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7db2227d72fd drm/i915: fix regression leading to display audio probe failure on GLK

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/index.html

--===============4712445502305740732==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix regression leading to display audio probe failure on GLK</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81227/">https://patchwork.freedesktop.org/series/81227/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8951 -&gt; Patchwork_18429</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18429 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-apl-guc/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-kbl-7500u/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-skl-lmem/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-skl-lmem/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8951/fi-cml-s/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18429/fi-cml-s/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8951 -&gt; Patchwork_18429</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8951: 5f8c53e35ef01a1d5e97db6005d3c308d3734bac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5775: 58cb0aea18fa471af43c11ee9f587554721a7815 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18429: 7db2227d72fdf96d49b2fbb535732d0f0d442f87 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7db2227d72fd drm/i915: fix regression leading to display audio probe failure on GLK</p>

</body>
</html>

--===============4712445502305740732==--

--===============0406699408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0406699408==--
