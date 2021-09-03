Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091183FFA99
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 08:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B41D6E848;
	Fri,  3 Sep 2021 06:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F230B6E848;
 Fri,  3 Sep 2021 06:49:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9D3BA0118;
 Fri,  3 Sep 2021 06:49:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3489349324044386430=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Sep 2021 06:49:40 -0000
Message-ID: <163065178095.21415.8983519918650537842@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915=3A_Release_i915=5Fgem=5F?=
 =?utf-8?q?context_from_a_worker_=28rev3=29?=
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

--===============3489349324044386430==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/i915: Release i915_gem_context from a worker (rev3)
URL   : https://patchwork.freedesktop.org/series/94285/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10548 -> Patchwork_20949
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/index.html

Known issues
------------

  Here are the changes found in Patchwork_20949 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#4041])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/fi-rkl-guc/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-rkl-11600:       [PASS][3] -> [SKIP][4] ([fdo#111825])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#4041]: https://gitlab.freedesktop.org/drm/intel/issues/4041


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10548 -> Patchwork_20949

  CI-20190529: 20190529
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20949: 014e30ab67f6ef7615f6cd85304475df69b91195 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

014e30ab67f6 drm/i915: Stop rcu support for i915_address_space
33c5697641ee drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
dfa039b666fa drm/i915: Drop __rcu from gem_context->vm
f1878363f69f drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
105dd8ab8137 drm/i915: Add i915_gem_context_is_full_ppgtt
0a69de4fc075 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
45f40a9d3c04 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
a8d8c7b33c91 drm/i915: Drop code to handle set-vm races from execbuf
afcffba951ab drm/i915: Keep gem ctx->vm alive until the final put
499801408807 drm/i915: Release ctx->syncobj on final put, not on ctx close
2efbabdf9808 drm/i915: Release i915_gem_context from a worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/index.html

--===============3489349324044386430==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/i915: Release i915_gem_context from a worker (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94285/">https://patchwork.freedesktop.org/series/94285/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10548 -&gt; Patchwork_20949</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20949 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/fi-rkl-guc/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4041">i915#4041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20949/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (48 -&gt; 40)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10548 -&gt; Patchwork_20949</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20949: 014e30ab67f6ef7615f6cd85304475df69b91195 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>014e30ab67f6 drm/i915: Stop rcu support for i915_address_space<br />
33c5697641ee drm/i915: use xa_lock/unlock for fpriv-&gt;vm_xa lookups<br />
dfa039b666fa drm/i915: Drop __rcu from gem_context-&gt;vm<br />
f1878363f69f drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem<br />
105dd8ab8137 drm/i915: Add i915_gem_context_is_full_ppgtt<br />
0a69de4fc075 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam<br />
45f40a9d3c04 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm<br />
a8d8c7b33c91 drm/i915: Drop code to handle set-vm races from execbuf<br />
afcffba951ab drm/i915: Keep gem ctx-&gt;vm alive until the final put<br />
499801408807 drm/i915: Release ctx-&gt;syncobj on final put, not on ctx close<br />
2efbabdf9808 drm/i915: Release i915_gem_context from a worker</p>

</body>
</html>

--===============3489349324044386430==--
