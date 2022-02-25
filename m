Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FD04C5138
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 23:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A65410EA89;
	Fri, 25 Feb 2022 22:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5E9A10EA87;
 Fri, 25 Feb 2022 22:08:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D134CA008A;
 Fri, 25 Feb 2022 22:08:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2004444248502886922=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Fri, 25 Feb 2022 22:08:14 -0000
Message-ID: <164582689482.6269.11792444737254835874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225141550.162490-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220225141550.162490-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUENJ?=
 =?utf-8?q?=3A_vmd=3A_Prevent_recursive_locking_on_interrupt_allocation?=
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

--===============2004444248502886922==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: PCI: vmd: Prevent recursive locking on interrupt allocation
URL   : https://patchwork.freedesktop.org/series/100743/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11289 -> Patchwork_22415
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-cyan bat-jsl-2 

Known issues
------------

  Here are the changes found in Patchwork_22415 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][3] ([i915#579]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][5] ([i915#3576]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Build changes
-------------

  * Linux: CI_DRM_11289 -> Patchwork_22415

  CI-20190529: 20190529
  CI_DRM_11289: a560f8f58a191a7ff533db6448b09eb779da603e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22415: cfcb4f87270de52f4ff90d57540e471fa3b48b55 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cfcb4f87270d PCI: vmd: Prevent recursive locking on interrupt allocation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/index.html

--===============2004444248502886922==
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
<tr><td><b>Series:</b></td><td>PCI: vmd: Prevent recursive locking on interrupt allocation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100743/">https://patchwork.freedesktop.org/series/100743/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11289 -&gt; Patchwork_22415</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-cyan bat-jsl-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22415 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11289/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22415/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11289 -&gt; Patchwork_22415</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11289: a560f8f58a191a7ff533db6448b09eb779da603e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22415: cfcb4f87270de52f4ff90d57540e471fa3b48b55 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cfcb4f87270d PCI: vmd: Prevent recursive locking on interrupt allocation</p>

</body>
</html>

--===============2004444248502886922==--
