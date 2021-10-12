Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0F6429E03
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 08:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E2E6E54C;
	Tue, 12 Oct 2021 06:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF11F89F49;
 Tue, 12 Oct 2021 06:50:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7868A47DF;
 Tue, 12 Oct 2021 06:50:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6779203564151613486=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Oct 2021 06:50:10 -0000
Message-ID: <163402141065.14288.4111599397030231366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211012061205.9012-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20211012061205.9012-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev6=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6779203564151613486==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update memory bandwidth formulae (rev6)
URL   : https://patchwork.freedesktop.org/series/95138/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10720 -> Patchwork_21315
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/index.html

Known issues
------------

  Here are the changes found in Patchwork_21315 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-elk-e7500:       NOTRUN -> [SKIP][1] ([fdo#109271]) +49 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +23 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#4221])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6] ([i915#3239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][7] -> [INCOMPLETE][8] ([i915#3921])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4221]: https://gitlab.freedesktop.org/drm/intel/issues/4221


Participating hosts (35 -> 31)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (5): fi-jsl-1 fi-icl-u2 fi-bsw-cyan fi-icl-y fi-ehl-2 


Build changes
-------------

  * Linux: CI_DRM_10720 -> Patchwork_21315

  CI-20190529: 20190529
  CI_DRM_10720: 8a8d1f74b64edddbbb43fa4be5e438a12ba70707 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21315: 48451a63ca40cd66aca0ab19d162baf06bf5b2a2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

48451a63ca40 drm/i915: Update memory bandwidth formulae

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/index.html

--===============6779203564151613486==
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
<tr><td><b>Series:</b></td><td>drm/i915: Update memory bandwidth formulae (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95138/">https://patchwork.freedesktop.org/series/95138/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10720 -&gt; Patchwork_21315</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21315 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-elk-e7500/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4221">i915#4221</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10720/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21315/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (35 -&gt; 31)</h2>
<p>Additional (1): fi-elk-e7500 <br />
  Missing    (5): fi-jsl-1 fi-icl-u2 fi-bsw-cyan fi-icl-y fi-ehl-2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10720 -&gt; Patchwork_21315</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10720: 8a8d1f74b64edddbbb43fa4be5e438a12ba70707 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21315: 48451a63ca40cd66aca0ab19d162baf06bf5b2a2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>48451a63ca40 drm/i915: Update memory bandwidth formulae</p>

</body>
</html>

--===============6779203564151613486==--
