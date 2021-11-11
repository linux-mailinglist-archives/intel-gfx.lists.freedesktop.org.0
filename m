Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2643F44DDBB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 23:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036BF89AB7;
	Thu, 11 Nov 2021 22:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7103C89AB7;
 Thu, 11 Nov 2021 22:05:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D0FBA8169;
 Thu, 11 Nov 2021 22:05:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6304121233459001429=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 11 Nov 2021 22:05:33 -0000
Message-ID: <163666833344.5312.11054360846651921818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211111212000.2237-1-matthew.brost@intel.com>
In-Reply-To: <20211111212000.2237-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Weak_parallel_submission_support_for_execlis?=
 =?utf-8?b?dHMgKHJldjIp?=
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

--===============6304121233459001429==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/execlists: Weak parallel submission support for execlists (rev2)
URL   : https://patchwork.freedesktop.org/series/96088/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10872 -> Patchwork_21564
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/index.html

Participating hosts (29 -> 24)
------------------------------

  Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21564 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2] ([i915#146])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] ([i915#3239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239


Build changes
-------------

  * Linux: CI_DRM_10872 -> Patchwork_21564

  CI-20190529: 20190529
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21564: e312b797eb26b121cb1e1bb827aee03c69d561f4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e312b797eb26 drm/i915/execlists: Weak parallel submission support for execlists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/index.html

--===============6304121233459001429==
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
<tr><td><b>Series:</b></td><td>drm/i915/execlists: Weak parallel submission support for execlists (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96088/">https://patchwork.freedesktop.org/series/96088/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10872 -&gt; Patchwork_21564</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/index.html</p>
<h2>Participating hosts (29 -&gt; 24)</h2>
<p>Missing    (5): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21564 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10872/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21564/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10872 -&gt; Patchwork_21564</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10872: 50c74a91cbcff9d1ca50d3774391c4757e9816b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6279: 1c70b17877974491273ac3fb1de93ba75309df79 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21564: e312b797eb26b121cb1e1bb827aee03c69d561f4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e312b797eb26 drm/i915/execlists: Weak parallel submission support for execlists</p>

</body>
</html>

--===============6304121233459001429==--
