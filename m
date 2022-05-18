Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6AE52B4AD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 10:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9D5113EE8;
	Wed, 18 May 2022 08:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07D0C113EE8;
 Wed, 18 May 2022 08:38:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDCF0A7DFC;
 Wed, 18 May 2022 08:38:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6239695734021241730=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Wed, 18 May 2022 08:38:07 -0000
Message-ID: <165286308793.21386.3401163672998476636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220518074540.36398-1-jouni.hogander@intel.com>
In-Reply-To: <20220518074540.36398-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Debugfs_statistics_interface_for_psr?=
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

--===============6239695734021241730==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Debugfs statistics interface for psr
URL   : https://patchwork.freedesktop.org/series/104115/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11671 -> Patchwork_104115v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/index.html

Participating hosts (44 -> 40)
------------------------------

  Missing    (4): bat-rpls-2 fi-rkl-11600 fi-icl-u2 bat-dg2-9 

Known issues
------------

  Here are the changes found in Patchwork_104115v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2] ([i915#5502] / [i915#5801])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][6] ([i915#5122]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [DMESG-FAIL][8] ([i915#4528]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_timelines:
    - {bat-adlm-1}:       [INCOMPLETE][10] ([i915#5801]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/bat-adlm-1/igt@i915_selftest@live@gt_timelines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/bat-adlm-1/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5502]: https://gitlab.freedesktop.org/drm/intel/issues/5502
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885


Build changes
-------------

  * Linux: CI_DRM_11671 -> Patchwork_104115v1

  CI-20190529: 20190529
  CI_DRM_11671: 18756156cc1e97e635bcb4dd9da7d1465278f2c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6478: 7c3ceb08b633a66f77f42e596593de394da5dccc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104115v1: 18756156cc1e97e635bcb4dd9da7d1465278f2c4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

889d0e1fb48e drm/i915: Debugfs statistics interface for psr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/index.html

--===============6239695734021241730==
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
<tr><td><b>Series:</b></td><td>drm/i915: Debugfs statistics interface for psr</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104115/">https://patchwork.freedesktop.org/series/104115/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11671 -&gt; Patchwork_104115v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/index.html</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): bat-rpls-2 fi-rkl-11600 fi-icl-u2 bat-dg2-9 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104115v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5502">i915#5502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5801">i915#5801</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11671/bat-adlm-1/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5801">i915#5801</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104115v1/bat-adlm-1/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11671 -&gt; Patchwork_104115v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11671: 18756156cc1e97e635bcb4dd9da7d1465278f2c4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6478: 7c3ceb08b633a66f77f42e596593de394da5dccc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104115v1: 18756156cc1e97e635bcb4dd9da7d1465278f2c4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>889d0e1fb48e drm/i915: Debugfs statistics interface for psr</p>

</body>
</html>

--===============6239695734021241730==--
