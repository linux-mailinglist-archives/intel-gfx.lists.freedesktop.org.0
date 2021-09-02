Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D403FF22F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 19:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608036E082;
	Thu,  2 Sep 2021 17:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7128F6E082;
 Thu,  2 Sep 2021 17:20:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69EB2A9932;
 Thu,  2 Sep 2021 17:20:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5364847470547436099=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 17:20:01 -0000
Message-ID: <163060320139.29442.5599527789670508322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915=3A_Release_i915=5Fgem=5F?=
 =?utf-8?q?context_from_a_worker?=
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

--===============5364847470547436099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/i915: Release i915_gem_context from a worker
URL   : https://patchwork.freedesktop.org/series/94285/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10548 -> Patchwork_20944
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20944 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20944, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20944:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-rkl-11600:       [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
Known issues
------------

  Here are the changes found in Patchwork_20944 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][5] -> [INCOMPLETE][6] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436] / [i915#3428])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-bsw-kefka/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10548 -> Patchwork_20944

  CI-20190529: 20190529
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20944: 57e1781bcd3d3639fa403938f6360a416fce176e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

57e1781bcd3d drm/i915: Stop rcu support for i915_address_space
9385b69266f4 drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
f2790c652851 drm/i915: Drop __rcu from gem_context->vm
c21c8cf7feb9 drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
fe6b0688e81f drm/i915: Add i915_gem_context_is_full_ppgtt
f226388f453a drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
f0920f57f420 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
04166caa0331 drm/i915: Drop code to handle set-vm races from execbuf
c5a1cb3e71ba drm/i915: Keep gem ctx->vm alive until the final put
c04cf2142dbe drm/i915: Release ctx->syncobj on final put, not on ctx close
54d95644f2a9 drm/i915: Release i915_gem_context from a worker

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/index.html

--===============5364847470547436099==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/i915: Release i915_gem_context from a worker</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94285/">https://patchwork.freedesktop.org/series/94285/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10548 -&gt; Patchwork_20944</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20944 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20944, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20944:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20944 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20944/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (48 -&gt; 40)</h2>
<p>Missing    (8): fi-ilk-m540 bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10548 -&gt; Patchwork_20944</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10548: 50be9d6f82904be755ea5b04efbd6c5e19e2d945 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20944: 57e1781bcd3d3639fa403938f6360a416fce176e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>57e1781bcd3d drm/i915: Stop rcu support for i915_address_space<br />
9385b69266f4 drm/i915: use xa_lock/unlock for fpriv-&gt;vm_xa lookups<br />
f2790c652851 drm/i915: Drop __rcu from gem_context-&gt;vm<br />
c21c8cf7feb9 drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem<br />
fe6b0688e81f drm/i915: Add i915_gem_context_is_full_ppgtt<br />
f226388f453a drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam<br />
f0920f57f420 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm<br />
04166caa0331 drm/i915: Drop code to handle set-vm races from execbuf<br />
c5a1cb3e71ba drm/i915: Keep gem ctx-&gt;vm alive until the final put<br />
c04cf2142dbe drm/i915: Release ctx-&gt;syncobj on final put, not on ctx close<br />
54d95644f2a9 drm/i915: Release i915_gem_context from a worker</p>

</body>
</html>

--===============5364847470547436099==--
