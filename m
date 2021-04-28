Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA28F36DEE5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 20:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184C86EC0D;
	Wed, 28 Apr 2021 18:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 439FE6EC0D;
 Wed, 28 Apr 2021 18:18:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14522A47EB;
 Wed, 28 Apr 2021 18:18:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Wed, 28 Apr 2021 18:18:10 -0000
Message-ID: <161963389007.24075.2507323392818610471@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210428173021.38241-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20210428173021.38241-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms?=
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
Content-Type: multipart/mixed; boundary="===============1851114165=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1851114165==
Content-Type: multipart/alternative;
 boundary="===============0565414436094432008=="

--===============0565414436094432008==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add relocation exceptions for two other platforms
URL   : https://patchwork.freedesktop.org/series/89594/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10023 -> Patchwork_20017
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html

Known issues
------------

  Here are the changes found in Patchwork_20017 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@vcs0:
    - {fi-rkl-11500t}:    [FAIL][1] ([i915#3276]) -> [PASS][2] +22 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_parallel@engines@fds:
    - {fi-rkl-11500t}:    [FAIL][3] ([i915#3283]) -> [PASS][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_store@basic:
    - {fi-rkl-11500t}:    [FAIL][5] ([i915#3277]) -> [PASS][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_store@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_store@basic.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][7] ([i915#1849] / [i915#3180]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10023 -> Patchwork_20017

  CI-20190529: 20190529
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20017: fcbabd445c5707a6699da0a665a399273dc73ab0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fcbabd445c57 drm/i915: Add relocation exceptions for two other platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html

--===============0565414436094432008==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add relocation exceptions for two other platforms</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89594/">https://patchwork.freedesktop.org/series/89594/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10023 -&gt; Patchwork_20017</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20017 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3276">i915#3276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3283">i915#3283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_parallel@engines@fds.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@gem_exec_store@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3277">i915#3277</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@gem_exec_store@basic.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10023/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10023 -&gt; Patchwork_20017</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20017: fcbabd445c5707a6699da0a665a399273dc73ab0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fcbabd445c57 drm/i915: Add relocation exceptions for two other platforms</p>

</body>
</html>

--===============0565414436094432008==--

--===============1851114165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1851114165==--
