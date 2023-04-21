Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B93B06EB512
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 00:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5291D10E3B9;
	Fri, 21 Apr 2023 22:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1A3510E3B9;
 Fri, 21 Apr 2023 22:41:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9D1EAADD6;
 Fri, 21 Apr 2023 22:41:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6643090161883437996=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 21 Apr 2023 22:41:03 -0000
Message-ID: <168211686386.5824.13881498849885436859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421190026.294208-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230421190026.294208-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_i915_instead_of_dev=5Fpriv_=28rev2=29?=
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

--===============6643090161883437996==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use i915 instead of dev_priv (rev2)
URL   : https://patchwork.freedesktop.org/series/116816/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13043 -> Patchwork_116816v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/index.html

Participating hosts (36 -> 36)
------------------------------

  Additional (1): bat-mtlp-8 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116816v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem:
    - {bat-mtlp-8}:       NOTRUN -> [DMESG-FAIL][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/bat-mtlp-8/igt@i915_selftest@live@gem.html

  
Known issues
------------

  Here are the changes found in Patchwork_116816v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - fi-rkl-11600:       [PASS][2] -> [FAIL][3] ([fdo#103375])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13043/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][4] ([i915#6367] / [i915#7996]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13043/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
  [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
  [i915#8368]: https://gitlab.freedesktop.org/drm/intel/issues/8368
  [i915#8369]: https://gitlab.freedesktop.org/drm/intel/issues/8369
  [i915#8379]: https://gitlab.freedesktop.org/drm/intel/issues/8379


Build changes
-------------

  * Linux: CI_DRM_13043 -> Patchwork_116816v2

  CI-20190529: 20190529
  CI_DRM_13043: 2fa9c266135355c9993507d7c27cc6722956bfec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116816v2: 2fa9c266135355c9993507d7c27cc6722956bfec @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2a9c436a72a6 drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv structure
4b2e8a9001db drm/i915/i915_drv: Use proper parameter naming in for_each_engine()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/index.html

--===============6643090161883437996==
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
<tr><td><b>Series:</b></td><td>Use i915 instead of dev_priv (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116816/">https://patchwork.freedesktop.org/series/116816/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13043 -&gt; Patchwork_116816v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>Additional (1): bat-mtlp-8 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116816v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>{bat-mtlp-8}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/bat-mtlp-8/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116816v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13043/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13043/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116816v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13043 -&gt; Patchwork_116816v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13043: 2fa9c266135355c9993507d7c27cc6722956bfec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116816v2: 2fa9c266135355c9993507d7c27cc6722956bfec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2a9c436a72a6 drm/i915/i915_drv: Use i915 instead of dev_priv insied the file_priv structure<br />
4b2e8a9001db drm/i915/i915_drv: Use proper parameter naming in for_each_engine()</p>

</body>
</html>

--===============6643090161883437996==--
