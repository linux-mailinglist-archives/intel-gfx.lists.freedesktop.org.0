Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EED301F79
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 00:03:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F2C89BA1;
	Sun, 24 Jan 2021 23:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7D0289BA1;
 Sun, 24 Jan 2021 23:03:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2C3AA73C9;
 Sun, 24 Jan 2021 23:03:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 24 Jan 2021 23:03:46 -0000
Message-ID: <161152942690.10310.15284636590504387929@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remainder_of_dbuf_state_stuff_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0716173182=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0716173182==
Content-Type: multipart/alternative;
 boundary="===============3992854118784578598=="

--===============3992854118784578598==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remainder of dbuf state stuff (rev4)
URL   : https://patchwork.freedesktop.org/series/83114/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9676 -> Patchwork_19476
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/index.html

Known issues
------------

  Here are the changes found in Patchwork_19476 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9676/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][4] ([i915#142] / [i915#2405]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9676/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9676 -> Patchwork_19476

  CI-20190529: 20190529
  CI_DRM_9676: 6816490bedd12ceff651faf657c3827b71197769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5970: 94647cd8315d63867f57f716380601bdf8595ee7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19476: 0636d62e81e3a855ed285516134b16201dca43ab @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0636d62e81e3 drm/i915: Do a bit more initial readout for dbuf
08058285382b drm/i915: Encapsulate dbuf state handling harder
fae390c08ff4 drm/i915: Extract intel_crtc_dbuf_weights()
81cfa01bd61b drm/i915: Add pipe ddb entries into the dbuf state
876a831b047d drm/i915: Introduce skl_ddb_entry_for_slices()
089f3c212ac3 drm/i915: Introduce intel_dbuf_slice_size()
192a1ce9a57e drm/i915: Pass the crtc to skl_compute_dbuf_slices()
8502dc616912 drm/i915: Extract intel_crtc_ddb_weight()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/index.html

--===============3992854118784578598==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remainder of dbuf state stuff (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83114/">https://patchwork.freedesktop.org/series/83114/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9676 -&gt; Patchwork_19476</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19476 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9676/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9676/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19476/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9676 -&gt; Patchwork_19476</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9676: 6816490bedd12ceff651faf657c3827b71197769 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5970: 94647cd8315d63867f57f716380601bdf8595ee7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19476: 0636d62e81e3a855ed285516134b16201dca43ab @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0636d62e81e3 drm/i915: Do a bit more initial readout for dbuf<br />
08058285382b drm/i915: Encapsulate dbuf state handling harder<br />
fae390c08ff4 drm/i915: Extract intel_crtc_dbuf_weights()<br />
81cfa01bd61b drm/i915: Add pipe ddb entries into the dbuf state<br />
876a831b047d drm/i915: Introduce skl_ddb_entry_for_slices()<br />
089f3c212ac3 drm/i915: Introduce intel_dbuf_slice_size()<br />
192a1ce9a57e drm/i915: Pass the crtc to skl_compute_dbuf_slices()<br />
8502dc616912 drm/i915: Extract intel_crtc_ddb_weight()</p>

</body>
</html>

--===============3992854118784578598==--

--===============0716173182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0716173182==--
