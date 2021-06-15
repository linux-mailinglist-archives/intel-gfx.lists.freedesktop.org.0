Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE23A7FDF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3E389B46;
	Tue, 15 Jun 2021 13:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E4D189B46;
 Tue, 15 Jun 2021 13:31:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35ADBA66C9;
 Tue, 15 Jun 2021 13:31:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 15 Jun 2021 13:31:10 -0000
Message-ID: <162376387019.8817.5157718401265703064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615122408.32347-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210615122408.32347-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Fix_memory_leaks?=
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
Content-Type: multipart/mixed; boundary="===============0324176845=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0324176845==
Content-Type: multipart/alternative;
 boundary="===============3175272262118210642=="

--===============3175272262118210642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Fix memory leaks
URL   : https://patchwork.freedesktop.org/series/91512/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10225 -> Patchwork_20370
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/index.html

Known issues
------------

  Here are the changes found in Patchwork_20370 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cml-u2:          [PASS][2] -> [DMESG-FAIL][3] ([i915#2291] / [i915#541])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][4] ([i915#3303]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][6] ([i915#2782]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3544]: https://gitlab.freedesktop.org/drm/intel/issues/3544
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (48 -> 39)
------------------------------

  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10225 -> Patchwork_20370

  CI-20190529: 20190529
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20370: d5b692ddfdfbac1e3c2eea90f5af5db802e8cc1c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d5b692ddfdfb drm/i915/ttm: Fix memory leaks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/index.html

--===============3175272262118210642==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Fix memory leaks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91512/">https://patchwork.freedesktop.org/series/91512/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10225 -&gt; Patchwork_20370</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20370 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20370/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10225 -&gt; Patchwork_20370</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20370: d5b692ddfdfbac1e3c2eea90f5af5db802e8cc1c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d5b692ddfdfb drm/i915/ttm: Fix memory leaks</p>

</body>
</html>

--===============3175272262118210642==--

--===============0324176845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0324176845==--
