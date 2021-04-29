Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D4936EEDE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A806F40E;
	Thu, 29 Apr 2021 17:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E23276F40C;
 Thu, 29 Apr 2021 17:26:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB629A00C9;
 Thu, 29 Apr 2021 17:26:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 29 Apr 2021 17:26:08 -0000
Message-ID: <161971716889.20426.9749299395682503446@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429105101.25667-1-tzimmermann@suse.de>
In-Reply-To: <20210429105101.25667-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0171103716=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0171103716==
Content-Type: multipart/alternative;
 boundary="===============8957385133935853988=="

--===============8957385133935853988==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Move struct drm_device.pdev to legacy (rev8)
URL   : https://patchwork.freedesktop.org/series/84205/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10027 -> Patchwork_20035
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/index.html

Known issues
------------

  Here are the changes found in Patchwork_20035 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][1] ([i915#1602] / [i915#2029])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][2] ([i915#1888]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][4] ([i915#1849] / [i915#3180]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10027 -> Patchwork_20035

  CI-20190529: 20190529
  CI_DRM_10027: 1748cb1e8bdf543570b86f39487b171ad4c1f896 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20035: 7a800d87d89109e093bb075df3064ae1950749a0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7a800d87d891 drm: Move struct drm_device.pdev to legacy section
0dcccce8fbd9 drm/i915: Don't assign to struct drm_device.pdev
01040200ca25 drm/i915: Remove reference to struct drm_device.pdev
a03ae470d1af drm/i915/gt: Remove reference to struct drm_device.pdev
5c97f2a1a75d drm/ast: Remove reference to struct drm_device.pdev

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/index.html

--===============8957385133935853988==
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
<tr><td><b>Series:</b></td><td>drm: Move struct drm_device.pdev to legacy (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84205/">https://patchwork.freedesktop.org/series/84205/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10027 -&gt; Patchwork_20035</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20035 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10027/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3180">i915#3180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20035/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10027 -&gt; Patchwork_20035</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10027: 1748cb1e8bdf543570b86f39487b171ad4c1f896 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20035: 7a800d87d89109e093bb075df3064ae1950749a0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7a800d87d891 drm: Move struct drm_device.pdev to legacy section<br />
0dcccce8fbd9 drm/i915: Don't assign to struct drm_device.pdev<br />
01040200ca25 drm/i915: Remove reference to struct drm_device.pdev<br />
a03ae470d1af drm/i915/gt: Remove reference to struct drm_device.pdev<br />
5c97f2a1a75d drm/ast: Remove reference to struct drm_device.pdev</p>

</body>
</html>

--===============8957385133935853988==--

--===============0171103716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0171103716==--
