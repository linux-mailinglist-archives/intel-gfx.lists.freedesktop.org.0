Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DD53BA5F8
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jul 2021 00:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1716E212;
	Fri,  2 Jul 2021 22:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8EE36E212;
 Fri,  2 Jul 2021 22:29:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A4F4A47E1;
 Fri,  2 Jul 2021 22:29:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 02 Jul 2021 22:29:24 -0000
Message-ID: <162526496461.22029.4096453979982903221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_Rework_CFB_stride/size_calculations?=
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
Content-Type: multipart/mixed; boundary="===============0255087383=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0255087383==
Content-Type: multipart/alternative;
 boundary="===============8611616574602134678=="

--===============8611616574602134678==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: Rework CFB stride/size calculations
URL   : https://patchwork.freedesktop.org/series/92163/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10304 -> Patchwork_20523
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/index.html

Known issues
------------

  Here are the changes found in Patchwork_20523 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][2] ([i915#2782]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [FAIL][4] ([i915#3449]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][6] ([i915#1372]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449


Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10304 -> Patchwork_20523

  CI-20190529: 20190529
  CI_DRM_10304: 3d3b5479895dd6dd133571ded4318adf595708ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20523: 1a6338102e7402b04550d6d1ba533ad8f5ad6410 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1a6338102e74 drm/i915/fbc: Allow higher compression limits on FBC1
c43b5d4d5ee5 drm/i915/fbc: Implement Wa_16011863758 for icl+
e7a875531eb4 drm/i915/fbc: Align FBC segments to 512B on glk+
9fce51c1d980 drm/i915/fbc: Rework cfb stride/size calculations
1c684d0e6024 drm/i915/fbc: Polish the skl+ FBC stride override handling
fc475b3b46e9 drm/i915/fbc: Move the "recompress on activate" to a central place
faaa5f8aa77e drm/i915/fbc: Extract intel_fbc_update()
df6e25b7503e drm/i915/fbc: Rewrite the FBC tiling check a bit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/index.html

--===============8611616574602134678==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: Rework CFB stride/size calculations</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92163/">https://patchwork.freedesktop.org/series/92163/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10304 -&gt; Patchwork_20523</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20523 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20523/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10304 -&gt; Patchwork_20523</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10304: 3d3b5479895dd6dd133571ded4318adf595708ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20523: 1a6338102e7402b04550d6d1ba533ad8f5ad6410 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1a6338102e74 drm/i915/fbc: Allow higher compression limits on FBC1<br />
c43b5d4d5ee5 drm/i915/fbc: Implement Wa_16011863758 for icl+<br />
e7a875531eb4 drm/i915/fbc: Align FBC segments to 512B on glk+<br />
9fce51c1d980 drm/i915/fbc: Rework cfb stride/size calculations<br />
1c684d0e6024 drm/i915/fbc: Polish the skl+ FBC stride override handling<br />
fc475b3b46e9 drm/i915/fbc: Move the "recompress on activate" to a central place<br />
faaa5f8aa77e drm/i915/fbc: Extract intel_fbc_update()<br />
df6e25b7503e drm/i915/fbc: Rewrite the FBC tiling check a bit</p>

</body>
</html>

--===============8611616574602134678==--

--===============0255087383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0255087383==--
