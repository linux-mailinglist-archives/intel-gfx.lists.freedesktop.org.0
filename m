Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5E168A644
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 23:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8913010E939;
	Fri,  3 Feb 2023 22:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C17B10E939;
 Fri,  3 Feb 2023 22:35:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 438C3AADE6;
 Fri,  3 Feb 2023 22:35:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1793411342570372766=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Fri, 03 Feb 2023 22:35:44 -0000
Message-ID: <167546374424.8764.3340901502781520629@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230203215027.151988-1-mjrosato@linux.ibm.com>
In-Reply-To: <20230203215027.151988-1-mjrosato@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgdmZp?=
 =?utf-8?q?o=3A_fix_deadlock_between_group_lock_and_kvm_lock_=28rev8=29?=
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

--===============1793411342570372766==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: vfio: fix deadlock between group lock and kvm lock (rev8)
URL   : https://patchwork.freedesktop.org/series/113535/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12692 -> Patchwork_113535v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/index.html

Participating hosts (26 -> 25)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113535v8 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - {bat-adln-1}:       [ABORT][1] ([i915#7977]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/bat-adln-1/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/bat-adln-1/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:
    - {bat-rplp-1}:       [DMESG-WARN][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12692 -> Patchwork_113535v8

  CI-20190529: 20190529
  CI_DRM_12692: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113535v8: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6b7cb55c0149 vfio: no need to pass kvm pointer during device open
bc73b0cfbdce vfio: fix deadlock between group lock and kvm lock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/index.html

--===============1793411342570372766==
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
<tr><td><b>Series:</b></td><td>vfio: fix deadlock between group lock and kvm lock (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113535/">https://patchwork.freedesktop.org/series/113535/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12692 -&gt; Patchwork_113535v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/index.html</p>
<h2>Participating hosts (26 -&gt; 25)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113535v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/bat-adln-1/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/bat-adln-1/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113535v8/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12692 -&gt; Patchwork_113535v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12692: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113535v8: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6b7cb55c0149 vfio: no need to pass kvm pointer during device open<br />
bc73b0cfbdce vfio: fix deadlock between group lock and kvm lock</p>

</body>
</html>

--===============1793411342570372766==--
