Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92C3B2FE1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 15:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292E46EB84;
	Thu, 24 Jun 2021 13:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA6656EB84;
 Thu, 24 Jun 2021 13:17:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E40AAAA0ED;
 Thu, 24 Jun 2021 13:17:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
Date: Thu, 24 Jun 2021 13:17:11 -0000
Message-ID: <162454063190.1851.11068306616196460060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Fix_state_mismatch_in_drm_infoframe_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1662101141=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1662101141==
Content-Type: multipart/alternative;
 boundary="===============4553457978268022615=="

--===============4553457978268022615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix state mismatch in drm infoframe (rev5)
URL   : https://patchwork.freedesktop.org/series/89225/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10274 -> Patchwork_20453
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/index.html

Known issues
------------

  Here are the changes found in Patchwork_20453 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][2] ([i915#3159])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2782] / [i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10274/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159


Participating hosts (43 -> 40)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10274 -> Patchwork_20453

  CI-20190529: 20190529
  CI_DRM_10274: 0f49e4d085430915c86c990722817b8ddec84480 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20453: 588c71ac65adcf7ab6a0a5c382b7196b425d0611 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

588c71ac65ad drm/i915/display: Fix state mismatch in drm infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/index.html

--===============4553457978268022615==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix state mismatch in drm infoframe (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89225/">https://patchwork.freedesktop.org/series/89225/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10274 -&gt; Patchwork_20453</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20453 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10274/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20453/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10274 -&gt; Patchwork_20453</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10274: 0f49e4d085430915c86c990722817b8ddec84480 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20453: 588c71ac65adcf7ab6a0a5c382b7196b425d0611 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>588c71ac65ad drm/i915/display: Fix state mismatch in drm infoframe</p>

</body>
</html>

--===============4553457978268022615==--

--===============1662101141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1662101141==--
