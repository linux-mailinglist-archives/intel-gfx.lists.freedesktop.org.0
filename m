Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B7D3FF39D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 20:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C198E6E7EC;
	Thu,  2 Sep 2021 18:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 468BC6E7EC;
 Thu,  2 Sep 2021 18:55:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30BBFA7E03;
 Thu,  2 Sep 2021 18:55:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6483852823983309786=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 18:55:33 -0000
Message-ID: <163060893316.29439.537699592148218513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915=3A_Release_i915=5Fgem=5F?=
 =?utf-8?q?context_from_a_worker_=28rev2=29?=
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

--===============6483852823983309786==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/i915: Release i915_gem_context from a worker (rev2)
URL   : https://patchwork.freedesktop.org/series/94285/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10548 -> Patchwork_20945
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20945 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20945, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20945:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-rkl-11600:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_20945 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#3958])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][6] -> [INCOMPLETE][7] ([i915#3921])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-rkl-11600:       [PASS][8] -> [SKIP][9] ([fdo#111825])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-rkl-11600:       NOTRUN -> [SKIP][10] ([i915#3669])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][11] ([i915#1602] / [i915#2029])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-bdw-5557u/igt@runner@aborted.html

  
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3669]: https://gitlab.freedesktop.org/drm/intel/issues/3669
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10548 -> Patchwork_20945

  CI-20190529: 20190529
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20945: 6dc5fca7a0a04d024a130b497a278fb5a1925ecb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6dc5fca7a0a0 drm/i915: Stop rcu support for i915_address_space
6d5eef0fbd0f drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
7f80bb33cd1e drm/i915: Drop __rcu from gem_context->vm
1d14230abadc drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
2da493a5ca5a drm/i915: Add i915_gem_context_is_full_ppgtt
5a071ebff40f drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
3084a349e937 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
29e6c891c5c4 drm/i915: Drop code to handle set-vm races from execbuf
b9dd2188735b drm/i915: Keep gem ctx->vm alive until the final put
0bc3da3c498c drm/i915: Release ctx->syncobj on final put, not on ctx close
64372bd0168a drm/i915: Release i915_gem_context from a worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/index.html

--===============6483852823983309786==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/i915: Release i915_gem_context from a worker (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94285/">https://patchwork.freedesktop.org/series/94285/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10548 -&gt; Patchwork_20945</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20945 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20945, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20945:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms:<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20945 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3669">i915#3669</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20945/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (48 -&gt; 40)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10548 -&gt; Patchwork_20945</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20945: 6dc5fca7a0a04d024a130b497a278fb5a1925ecb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6dc5fca7a0a0 drm/i915: Stop rcu support for i915_address_space<br />
6d5eef0fbd0f drm/i915: use xa_lock/unlock for fpriv-&gt;vm_xa lookups<br />
7f80bb33cd1e drm/i915: Drop __rcu from gem_context-&gt;vm<br />
1d14230abadc drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem<br />
2da493a5ca5a drm/i915: Add i915_gem_context_is_full_ppgtt<br />
5a071ebff40f drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam<br />
3084a349e937 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm<br />
29e6c891c5c4 drm/i915: Drop code to handle set-vm races from execbuf<br />
b9dd2188735b drm/i915: Keep gem ctx-&gt;vm alive until the final put<br />
0bc3da3c498c drm/i915: Release ctx-&gt;syncobj on final put, not on ctx close<br />
64372bd0168a drm/i915: Release i915_gem_context from a worker</p>

</body>
</html>

--===============6483852823983309786==--
