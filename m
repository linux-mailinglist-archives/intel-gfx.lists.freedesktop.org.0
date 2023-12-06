Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1A980791F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 21:06:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90B210E03C;
	Wed,  6 Dec 2023 20:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 231EA10E03C;
 Wed,  6 Dec 2023 20:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19277ACC2A;
 Wed,  6 Dec 2023 20:06:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8454950499789665396=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 06 Dec 2023 20:06:26 -0000
Message-ID: <170189318606.26423.8825141591196921470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206184322.57111-1-andi.shyti@linux.intel.com>
In-Reply-To: <20231206184322.57111-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Create_the_guc=5Fto=5Fi915=28=29_wrapper_=28rev3?=
 =?utf-8?q?=29?=
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

--===============8454950499789665396==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Create the guc_to_i915() wrapper (rev3)
URL   : https://patchwork.freedesktop.org/series/124686/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13988 -> Patchwork_124686v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-apl-guc fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_124686v3 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-mtlp-6:         [SKIP][1] -> [SKIP][2] ([i915#9792]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13988/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         [SKIP][3] ([i915#3708]) -> [SKIP][4] ([i915#3708] / [i915#9792])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13988/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_13988 -> Patchwork_124686v3

  CI-20190529: 20190529
  CI_DRM_13988: 6ae23377ae459d8506ecdd2f538bfee2f52652f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7625: f40c67d84e142095ac6215be154e1f3710f26cba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124686v3: 6ae23377ae459d8506ecdd2f538bfee2f52652f6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4874b6d46577 drm/i915/guc: Create the guc_to_i915() wrapper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/index.html

--===============8454950499789665396==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Create the guc_to_i915() wrapper (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124686/">https://patchwork.freedesktop.org/series/124686/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13988 -&gt; Patchwork_124686v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-apl-guc fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124686v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13988/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/bat-mtlp-6/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13988/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124686v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13988 -&gt; Patchwork_124686v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13988: 6ae23377ae459d8506ecdd2f538bfee2f52652f6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7625: f40c67d84e142095ac6215be154e1f3710f26cba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124686v3: 6ae23377ae459d8506ecdd2f538bfee2f52652f6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4874b6d46577 drm/i915/guc: Create the guc_to_i915() wrapper</p>

</body>
</html>

--===============8454950499789665396==--
