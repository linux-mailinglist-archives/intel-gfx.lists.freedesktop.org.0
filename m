Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50452D1127
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 13:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A736E829;
	Mon,  7 Dec 2020 12:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C6E26E7D4;
 Mon,  7 Dec 2020 12:57:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44368A0078;
 Mon,  7 Dec 2020 12:57:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "C, Ramalingam" <ramalingam.c@intel.com>
Date: Mon, 07 Dec 2020 12:57:40 -0000
Message-ID: <160734586025.8717.8478238397712086960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207102812.29931-1-ramalingam.c@intel.com>
In-Reply-To: <20201207102812.29931-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fixing_the_error_handling_of_shmem=5Fpin=5Fmap?=
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
Content-Type: multipart/mixed; boundary="===============1370940223=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1370940223==
Content-Type: multipart/alternative;
 boundary="===============7129490720791273695=="

--===============7129490720791273695==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fixing the error handling of shmem_pin_map
URL   : https://patchwork.freedesktop.org/series/84637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9453 -> Patchwork_19074
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19074:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - {fi-dg1-1}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-dg1-1/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9453 and Patchwork_19074:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19074 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
#### Possible fixes ####

  * igt@i915_hangman@error-state-basic:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_hangman@error-state-basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-tgl-y/igt@i915_hangman@error-state-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Additional (1): fi-dg1-1 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9453 -> Patchwork_19074

  CI-20190529: 20190529
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19074: 078213cdececf1a6a14eff6e67f004ff761d0cd3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

078213cdecec drm/i915/gt: Fixing the error handling of shmem_pin_map

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/index.html

--===============7129490720791273695==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fixing the error handling of shmem_pin_map</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84637/">https://patchwork.freedesktop.org/series/84637/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9453 -&gt; Patchwork_19074</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19074:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot (NEW):<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-dg1-1/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9453 and Patchwork_19074:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19074 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_getparams_basic@basic-subslice-total:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19074/fi-tgl-y/igt@i915_hangman@error-state-basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (1): fi-dg1-1 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9453 -&gt; Patchwork_19074</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19074: 078213cdececf1a6a14eff6e67f004ff761d0cd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>078213cdecec drm/i915/gt: Fixing the error handling of shmem_pin_map</p>

</body>
</html>

--===============7129490720791273695==--

--===============1370940223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1370940223==--
