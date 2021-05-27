Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EAE393872
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 23:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71566EC3D;
	Thu, 27 May 2021 21:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40A516EB26;
 Thu, 27 May 2021 21:55:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EECFA47DB;
 Thu, 27 May 2021 21:55:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 27 May 2021 21:55:09 -0000
Message-ID: <162215250915.12240.4602595659917489749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527181700.1676790-1-lucas.demarchi@intel.com>
In-Reply-To: <20210527181700.1676790-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRmlu?=
 =?utf-8?q?ish_conversion_to_GRAPHICS=5FVER?=
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
Content-Type: multipart/mixed; boundary="===============1068736751=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1068736751==
Content-Type: multipart/alternative;
 boundary="===============7759765484511017096=="

--===============7759765484511017096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Finish conversion to GRAPHICS_VER
URL   : https://patchwork.freedesktop.org/series/90693/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10145 -> Patchwork_20228
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/index.html

Known issues
------------

  Here are the changes found in Patchwork_20228 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][2] ([i915#3159])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6700k2:      [PASS][3] -> [DMESG-FAIL][4] ([i915#2291] / [i915#541])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][5] -> [INCOMPLETE][6] ([i915#2782])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [INCOMPLETE][7] ([i915#3462]) -> [DMESG-FAIL][8] ([i915#3462])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][9] ([i915#3462]) -> [FAIL][10] ([i915#1602] / [i915#2029])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-bdw-5557u/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bdw-5557u/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 40)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10145 -> Patchwork_20228

  CI-20190529: 20190529
  CI_DRM_10145: 1b8b25e48b6d72ccd335a79d30c7e6641befb17b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20228: 473d823e72053a189d32c2758ea5589ede97af85 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

473d823e7205 drm/i915/display: replace IS_GEN() in commented code
39f44ce0df3a drm/i915: Add remaining conversions to GRAPHICS_VER
e466a8d9d7b2 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
5f5511830f0a drm/i915/gvt: replace IS_GEN and friends with IS_GRAPHICS_VER
bf349477ef65 drm/i915/gem: replace IS_GEN and friends with IS_GRAPHICS_VER
dc0babe0e3f4 drm/i915/gt: Add remaining conversions to GRAPHICS_VER
c7eb65fd23b6 drm/i915/gt: replace IS_GEN and friends with IS_GRAPHICS_VER

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/index.html

--===============7759765484511017096==
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
<tr><td><b>Series:</b></td><td>Finish conversion to GRAPHICS_VER</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90693/">https://patchwork.freedesktop.org/series/90693/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10145 -&gt; Patchwork_20228</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20228 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10145/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20228/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10145 -&gt; Patchwork_20228</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10145: 1b8b25e48b6d72ccd335a79d30c7e6641befb17b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20228: 473d823e72053a189d32c2758ea5589ede97af85 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>473d823e7205 drm/i915/display: replace IS_GEN() in commented code<br />
39f44ce0df3a drm/i915: Add remaining conversions to GRAPHICS_VER<br />
e466a8d9d7b2 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER<br />
5f5511830f0a drm/i915/gvt: replace IS_GEN and friends with IS_GRAPHICS_VER<br />
bf349477ef65 drm/i915/gem: replace IS_GEN and friends with IS_GRAPHICS_VER<br />
dc0babe0e3f4 drm/i915/gt: Add remaining conversions to GRAPHICS_VER<br />
c7eb65fd23b6 drm/i915/gt: replace IS_GEN and friends with IS_GRAPHICS_VER</p>

</body>
</html>

--===============7759765484511017096==--

--===============1068736751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1068736751==--
