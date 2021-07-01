Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4813B905D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 12:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BD46EACE;
	Thu,  1 Jul 2021 10:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 602796EACE;
 Thu,  1 Jul 2021 10:11:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5992EA47EB;
 Thu,  1 Jul 2021 10:11:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 01 Jul 2021 10:11:29 -0000
Message-ID: <162513428936.15053.12994892589914423202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701090326.1056452-1-matthew.auld@intel.com>
In-Reply-To: <20210701090326.1056452-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_check_if_compressed=5Fllb_was_allocated?=
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
Content-Type: multipart/mixed; boundary="===============1230154510=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1230154510==
Content-Type: multipart/alternative;
 boundary="===============6334987097772455503=="

--===============6334987097772455503==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: check if compressed_llb was allocated
URL   : https://patchwork.freedesktop.org/series/92100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10296 -> Patchwork_20503
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/index.html

Known issues
------------

  Here are the changes found in Patchwork_20503 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][1] ([i915#1982]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10296 -> Patchwork_20503

  CI-20190529: 20190529
  CI_DRM_10296: 1ad092a7879a55938159b58a5b662370cab95ec8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20503: fc420969e0c01726cf0f4bbf2ac12d596f7ceb10 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fc420969e0c0 drm/i915/display: check if compressed_llb was allocated

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/index.html

--===============6334987097772455503==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: check if compressed_llb was allocated</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92100/">https://patchwork.freedesktop.org/series/92100/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10296 -&gt; Patchwork_20503</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20503 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20503/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10296 -&gt; Patchwork_20503</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10296: 1ad092a7879a55938159b58a5b662370cab95ec8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20503: fc420969e0c01726cf0f4bbf2ac12d596f7ceb10 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fc420969e0c0 drm/i915/display: check if compressed_llb was allocated</p>

</body>
</html>

--===============6334987097772455503==--

--===============1230154510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1230154510==--
