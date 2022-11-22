Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7175C634418
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CEE10E43B;
	Tue, 22 Nov 2022 18:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23CB610E442;
 Tue, 22 Nov 2022 18:56:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22360AADE7;
 Tue, 22 Nov 2022 18:56:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7212139278096386185=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Tue, 22 Nov 2022 18:56:20 -0000
Message-ID: <166914338013.2187.11475931893706779084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
In-Reply-To: <20221122121343.18136-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Update_DG2_DMC_version_to_v2=2E08_=28rev2=29?=
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

--===============7212139278096386185==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Update DG2 DMC version to v2.08 (rev2)
URL   : https://patchwork.freedesktop.org/series/111164/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12418 -> Patchwork_111164v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html

Participating hosts (33 -> 32)
------------------------------

  Missing    (1): fi-hsw-4770 

Known issues
------------

  Here are the changes found in Patchwork_111164v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       [DMESG-WARN][1] ([i915#6434]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@guc:
    - {bat-rpls-2}:       [DMESG-WARN][3] ([i915#6471]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-rpls-2/igt@i915_selftest@live@guc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adlm-1}:       [INCOMPLETE][5] ([i915#4983]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-adlm-1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346


Build changes
-------------

  * Linux: CI_DRM_12418 -> Patchwork_111164v2

  CI-20190529: 20190529
  CI_DRM_12418: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7071: 0801475083ccb938b1d3b358502ff97fdb435585 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111164v2: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e2ce3d2a3646 drm/i915/dmc: Update DG2 DMC version to v2.08

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html

--===============7212139278096386185==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Update DG2 DMC version to v2.08 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111164/">https://patchwork.freedesktop.org/series/111164/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12418 -&gt; Patchwork_111164v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html</p>
<h2>Participating hosts (33 -&gt; 32)</h2>
<p>Missing    (1): fi-hsw-4770 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111164v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6471">i915#6471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12418 -&gt; Patchwork_111164v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12418: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7071: 0801475083ccb938b1d3b358502ff97fdb435585 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111164v2: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e2ce3d2a3646 drm/i915/dmc: Update DG2 DMC version to v2.08</p>

</body>
</html>

--===============7212139278096386185==--
