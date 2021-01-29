Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBBB30894F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 14:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED566EB35;
	Fri, 29 Jan 2021 13:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E253A6EB26;
 Fri, 29 Jan 2021 13:24:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAEECA47E9;
 Fri, 29 Jan 2021 13:24:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 Jan 2021 13:24:59 -0000
Message-ID: <161192669986.15525.2989498004016618985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210129120620.6516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210129120620.6516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ignore_error_capturing_a_closed_context?=
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
Content-Type: multipart/mixed; boundary="===============0539662038=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0539662038==
Content-Type: multipart/alternative;
 boundary="===============6239840633672947276=="

--===============6239840633672947276==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ignore error capturing a closed context
URL   : https://patchwork.freedesktop.org/series/86447/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9699 -> Patchwork_19541
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19541:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {fi-cml-drallion}:  NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-cml-drallion/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_19541 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-cml-drallion}:  [INCOMPLETE][4] ([i915#1614]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1614]: https://gitlab.freedesktop.org/drm/intel/issues/1614
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9699 -> Patchwork_19541

  CI-20190529: 20190529
  CI_DRM_9699: 227f6526730330c19bbf781bc59e684ccf373de8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5978: e1e5b3fea2baafdae0160940ecb8bf0242703840 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19541: c7f7ce9089990f52885e8d1b8247351049e01a21 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c7f7ce908999 drm/i915/gt: Ignore error capturing a closed context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html

--===============6239840633672947276==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ignore error capturing a closed context</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86447/">https://patchwork.freedesktop.org/series/86447/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9699 -&gt; Patchwork_19541</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19541:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@a-edp1:<ul>
<li>{fi-cml-drallion}:  NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-cml-drallion/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19541 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-cml-drallion}:  <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1614">i915#1614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9699 -&gt; Patchwork_19541</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9699: 227f6526730330c19bbf781bc59e684ccf373de8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5978: e1e5b3fea2baafdae0160940ecb8bf0242703840 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19541: c7f7ce9089990f52885e8d1b8247351049e01a21 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c7f7ce908999 drm/i915/gt: Ignore error capturing a closed context</p>

</body>
</html>

--===============6239840633672947276==--

--===============0539662038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0539662038==--
