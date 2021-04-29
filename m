Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D136F284
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 00:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5816F4D6;
	Thu, 29 Apr 2021 22:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FA866F4D3;
 Thu, 29 Apr 2021 22:19:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57AEAA0019;
 Thu, 29 Apr 2021 22:19:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 29 Apr 2021 22:19:39 -0000
Message-ID: <161973477932.20425.3270236198942841270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429212503.21355-1-nikola.cornij@amd.com>
In-Reply-To: <20210429212503.21355-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/drm=5Fmst=3A_Use_Extended_Base_Receiver_Capability_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============0792801344=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0792801344==
Content-Type: multipart/alternative;
 boundary="===============7125274091210174825=="

--===============7125274091210174825==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/drm_mst: Use Extended Base Receiver Capability (rev7)
URL   : https://patchwork.freedesktop.org/series/89590/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10028 -> Patchwork_20041
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/index.html

Known issues
------------

  Here are the changes found in Patchwork_20041 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][3] ([i915#2283])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][5] ([i915#2782]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-cml-s:           [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-cml-s/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-cml-s/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10028 -> Patchwork_20041

  CI-20190529: 20190529
  CI_DRM_10028: d6c61ca97601e774c28aa62b1a84158294d3ec57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20041: 4f516e9a3f900563910fc9dc38f0c8ee9a59c7bd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f516e9a3f90 drm/drm_mst: Use Extended Base Receiver Capability DPCD space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/index.html

--===============7125274091210174825==
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
<tr><td><b>Series:</b></td><td>drm/drm_mst: Use Extended Base Receiver Capability (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89590/">https://patchwork.freedesktop.org/series/89590/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10028 -&gt; Patchwork_20041</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20041 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-cml-s/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20041/fi-cml-s/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10028 -&gt; Patchwork_20041</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10028: d6c61ca97601e774c28aa62b1a84158294d3ec57 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20041: 4f516e9a3f900563910fc9dc38f0c8ee9a59c7bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4f516e9a3f90 drm/drm_mst: Use Extended Base Receiver Capability DPCD space</p>

</body>
</html>

--===============7125274091210174825==--

--===============0792801344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0792801344==--
