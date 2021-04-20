Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F061365A6B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE93F6E505;
	Tue, 20 Apr 2021 13:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E4B66E505;
 Tue, 20 Apr 2021 13:45:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B306A8832;
 Tue, 20 Apr 2021 13:45:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 20 Apr 2021 13:45:33 -0000
Message-ID: <161892633304.28021.7955419987817290538@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210420130853.10573-1-jani.nikula@intel.com>
In-Reply-To: <20210420130853.10573-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Rename_pm=5F_prefixed_functions_names?=
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
Content-Type: multipart/mixed; boundary="===============2001889710=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2001889710==
Content-Type: multipart/alternative;
 boundary="===============8215119480695161706=="

--===============8215119480695161706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Rename pm_ prefixed functions names
URL   : https://patchwork.freedesktop.org/series/89261/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9985 -> Patchwork_19955
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/index.html

Known issues
------------

  Here are the changes found in Patchwork_19955 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9985/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9985 -> Patchwork_19955

  CI-20190529: 20190529
  CI_DRM_9985: cc92ce47fdeaf67b9a47c4a291b501d30ae5a79e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6071: d293ad78a035dcf681345ca15e0256e0c3b1e7bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19955: 363ea2dc92e8511e5b75c03b5aa721f630eb7e98 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

363ea2dc92e8 drm/i915/selftests: Rename pm_ prefixed functions names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/index.html

--===============8215119480695161706==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Rename pm_ prefixed functions names</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89261/">https://patchwork.freedesktop.org/series/89261/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9985 -&gt; Patchwork_19955</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19955 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9985/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19955/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9985 -&gt; Patchwork_19955</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9985: cc92ce47fdeaf67b9a47c4a291b501d30ae5a79e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6071: d293ad78a035dcf681345ca15e0256e0c3b1e7bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19955: 363ea2dc92e8511e5b75c03b5aa721f630eb7e98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>363ea2dc92e8 drm/i915/selftests: Rename pm_ prefixed functions names</p>

</body>
</html>

--===============8215119480695161706==--

--===============2001889710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2001889710==--
