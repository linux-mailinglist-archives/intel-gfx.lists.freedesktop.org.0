Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9993EC259
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Aug 2021 13:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E371D6E831;
	Sat, 14 Aug 2021 11:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 494626E831;
 Sat, 14 Aug 2021 11:19:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 422F7AADDC;
 Sat, 14 Aug 2021 11:19:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6373663584718552887=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Aug 2021 11:19:51 -0000
Message-ID: <162893999124.13074.16597992666329185031@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915=3A_Release_i915=5Fgem=5Fcontext_from?=
 =?utf-8?q?_a_worker_=28rev2=29?=
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

--===============6373663584718552887==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with drm/i915: Release i915_gem_context from a worker (rev2)
URL   : https://patchwork.freedesktop.org/series/93693/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10484 -> Patchwork_20822
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/index.html

Known issues
------------

  Here are the changes found in Patchwork_20822 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][2] ([i915#3958])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][3] ([i915#1982] / [k.org#205379]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [DMESG-FAIL][5] ([i915#3928]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10484 -> Patchwork_20822

  CI-20190529: 20190529
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20822: ce80c060cbb0fdbaf11f5c9e54e70048600fdee6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce80c060cbb0 drm/i915: Stop rcu support for i915_address_space
dcd0c89767ee drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
d5d3e981bd04 drm/i915: Drop __rcu from gem_context->vm
0286c52c3f12 drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
e40cf3c567e6 drm/i915: Add i915_gem_context_is_full_ppgtt
9b1dc2d805d6 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
4aa6a88a50ab drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
7726f2246bfb drm/i915: Drop code to handle set-vm races from execbuf
f2eb67b88f1a drm/i915: Keep gem ctx->vm alive until the final put
ad55490a42e9 drm/i915: Release ctx->syncobj on final put, not on ctx close
9d0fdbfd766c drm/i915: Release i915_gem_context from a worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/index.html

--===============6373663584718552887==
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
<tr><td><b>Series:</b></td><td>series starting with drm/i915: Release i915_gem_context from a worker (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93693/">https://patchwork.freedesktop.org/series/93693/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10484 -&gt; Patchwork_20822</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20822 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20822/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10484 -&gt; Patchwork_20822</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20822: ce80c060cbb0fdbaf11f5c9e54e70048600fdee6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ce80c060cbb0 drm/i915: Stop rcu support for i915_address_space<br />
dcd0c89767ee drm/i915: use xa_lock/unlock for fpriv-&gt;vm_xa lookups<br />
d5d3e981bd04 drm/i915: Drop __rcu from gem_context-&gt;vm<br />
0286c52c3f12 drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem<br />
e40cf3c567e6 drm/i915: Add i915_gem_context_is_full_ppgtt<br />
9b1dc2d805d6 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam<br />
4aa6a88a50ab drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm<br />
7726f2246bfb drm/i915: Drop code to handle set-vm races from execbuf<br />
f2eb67b88f1a drm/i915: Keep gem ctx-&gt;vm alive until the final put<br />
ad55490a42e9 drm/i915: Release ctx-&gt;syncobj on final put, not on ctx close<br />
9d0fdbfd766c drm/i915: Release i915_gem_context from a worker</p>

</body>
</html>

--===============6373663584718552887==--
