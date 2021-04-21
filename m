Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 770F13672DD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 20:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998ED6E9B1;
	Wed, 21 Apr 2021 18:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 814066E0D9;
 Wed, 21 Apr 2021 18:50:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 793ECA3ECB;
 Wed, 21 Apr 2021 18:50:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 21 Apr 2021 18:50:29 -0000
Message-ID: <161903102947.19926.11902397158724143246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421172804.70877-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210421172804.70877-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_engine_cycles?=
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
Content-Type: multipart/mixed; boundary="===============0278555993=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0278555993==
Content-Type: multipart/alternative;
 boundary="===============7121593662611699953=="

--===============7121593662611699953==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for querying engine cycles
URL   : https://patchwork.freedesktop.org/series/89314/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9993 -> Patchwork_19966
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/index.html

Known issues
------------

  Here are the changes found in Patchwork_19966 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][3] ([i915#1849] / [i915#3180]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6072 -> IGTPW_5757
  * Linux: CI_DRM_9993 -> Patchwork_19966

  CI-20190529: 20190529
  CI_DRM_9993: 629d3809e6d926c77ba5e9c5405e64eeba564560 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5757: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5757/index.html
  IGT_6072: 0a51f49df9f5ca535fc0206a27a6780de6b52320 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19966: ca44314a5a5d70c39de70db3f333a2228809e1d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ca44314a5a5d i915/query: Correlate engine and cpu timestamps with better accuracy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/index.html

--===============7121593662611699953==
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
<tr><td><b>Series:</b></td><td>Add support for querying engine cycles</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89314/">https://patchwork.freedesktop.org/series/89314/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9993 -&gt; Patchwork_19966</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19966 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19966/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6072 -&gt; IGTPW_5757</li>
<li>Linux: CI_DRM_9993 -&gt; Patchwork_19966</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9993: 629d3809e6d926c77ba5e9c5405e64eeba564560 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5757: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5757/index.html<br />
  IGT_6072: 0a51f49df9f5ca535fc0206a27a6780de6b52320 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19966: ca44314a5a5d70c39de70db3f333a2228809e1d4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ca44314a5a5d i915/query: Correlate engine and cpu timestamps with better accuracy</p>

</body>
</html>

--===============7121593662611699953==--

--===============0278555993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0278555993==--
