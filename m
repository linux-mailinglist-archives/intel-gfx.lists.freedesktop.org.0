Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F736C622
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 14:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF1B6E95B;
	Tue, 27 Apr 2021 12:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A49F46E95B;
 Tue, 27 Apr 2021 12:34:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B643A66C9;
 Tue, 27 Apr 2021 12:34:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 27 Apr 2021 12:34:56 -0000
Message-ID: <161952689647.17487.2547306455110691201@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427103620.402437-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210427103620.402437-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_userptr_locking_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2059701491=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2059701491==
Content-Type: multipart/alternative;
 boundary="===============2563358720207916161=="

--===============2563358720207916161==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Simplify userptr locking (rev2)
URL   : https://patchwork.freedesktop.org/series/88974/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10016 -> Patchwork_20000
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20000:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-cml-drallion}:  NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-cml-drallion/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_20000 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3] ([i915#155])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10016/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-glk-dsi:         NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#533])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271]) +28 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-cml-drallion}:  [INCOMPLETE][8] ([i915#1614]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10016/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1614]: https://gitlab.freedesktop.org/drm/intel/issues/1614
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (44 -> 38)
------------------------------

  Additional (1): fi-glk-dsi 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bdw-gvtdvm fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10016 -> Patchwork_20000

  CI-20190529: 20190529
  CI_DRM_10016: b8032d21f3a1dfc475d966479991b0a0a6162cf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20000: 2649dda6a356781eeb04bd3cf902f4312dfac60c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2649dda6a356 drm/i915: Simplify userptr locking

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/index.html

--===============2563358720207916161==
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
<tr><td><b>Series:</b></td><td>drm/i915: Simplify userptr locking (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88974/">https://patchwork.freedesktop.org/series/88974/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10016 -&gt; Patchwork_20000</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20000:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>{fi-cml-drallion}:  NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-cml-drallion/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20000 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10016/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>{fi-cml-drallion}:  <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10016/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1614">i915#1614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20000/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Additional (1): fi-glk-dsi <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bdw-gvtdvm fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10016 -&gt; Patchwork_20000</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10016: b8032d21f3a1dfc475d966479991b0a0a6162cf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20000: 2649dda6a356781eeb04bd3cf902f4312dfac60c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2649dda6a356 drm/i915: Simplify userptr locking</p>

</body>
</html>

--===============2563358720207916161==--

--===============2059701491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2059701491==--
