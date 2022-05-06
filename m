Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D15E851DFB7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 21:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE7110E5A4;
	Fri,  6 May 2022 19:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63FBD10E59B;
 Fri,  6 May 2022 19:43:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62859A0096;
 Fri,  6 May 2022 19:43:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2918443379934122957=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
Date: Fri, 06 May 2022 19:43:04 -0000
Message-ID: <165186618437.18818.2347898381107976720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220506190847.480320-1-michael.j.ruhl@intel.com>
In-Reply-To: <20220506190847.480320-1-michael.j.ruhl@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dmabuf=3A_dmabuf_cleanup?=
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

--===============2918443379934122957==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/dmabuf: dmabuf cleanup
URL   : https://patchwork.freedesktop.org/series/103696/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11618 -> Patchwork_103696v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/index.html

Participating hosts (35 -> 44)
------------------------------

  Additional (11): bat-adls-5 bat-dg1-6 bat-dg2-8 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 
  Missing    (2): fi-bsw-cyan fi-bdw-5557u 

Known issues
------------

  Here are the changes found in Patchwork_103696v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][1] ([i915#3690])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/fi-icl-u2/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][2] ([i915#5616])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5616]: https://gitlab.freedesktop.org/drm/intel/issues/5616
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917


Build changes
-------------

  * Linux: CI_DRM_11618 -> Patchwork_103696v1

  CI-20190529: 20190529
  CI_DRM_11618: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103696v1: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

faf34fa0cba3 drm/i915/dmabuf: Use scatterlist for_each_sg API
1383a2c06fc0 drm/i915/dmabuf: dmabuf cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/index.html

--===============2918443379934122957==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/dmabuf: dmabuf cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103696/">https://patchwork.freedesktop.org/series/103696/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11618 -&gt; Patchwork_103696v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/index.html</p>
<h2>Participating hosts (35 -&gt; 44)</h2>
<p>Additional (11): bat-adls-5 bat-dg1-6 bat-dg2-8 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-5557u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103696v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103696v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5616">i915#5616</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11618 -&gt; Patchwork_103696v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11618: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103696v1: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>faf34fa0cba3 drm/i915/dmabuf: Use scatterlist for_each_sg API<br />
1383a2c06fc0 drm/i915/dmabuf: dmabuf cleanup</p>

</body>
</html>

--===============2918443379934122957==--
