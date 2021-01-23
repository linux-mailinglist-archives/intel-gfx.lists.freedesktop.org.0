Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AFB301289
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 04:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82DA6EAB6;
	Sat, 23 Jan 2021 03:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD6026EAAD;
 Sat, 23 Jan 2021 03:12:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4E0FA73C7;
 Sat, 23 Jan 2021 03:12:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 23 Jan 2021 03:12:00 -0000
Message-ID: <161137152073.14870.14235461406250629897@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv5=2C01/18=5D_drm/i915/display/vrr=3A?=
 =?utf-8?q?_Create_VRR_file_and_add_VRR_capability_check?=
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
Content-Type: multipart/mixed; boundary="===============1011508453=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1011508453==
Content-Type: multipart/alternative;
 boundary="===============2845773614345775253=="

--===============2845773614345775253==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,v5,01/18] drm/i915/display/vrr: Create VRR file and add VRR capability check
URL   : https://patchwork.freedesktop.org/series/86200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9671 -> Patchwork_19471
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/index.html

Known issues
------------

  Here are the changes found in Patchwork_19471 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [PASS][2] -> [INCOMPLETE][3] ([i915#2268])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#1602] / [i915#2029] / [i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@fbdev@write.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-y/igt@fbdev@write.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [DMESG-WARN][9] ([i915#2605]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-kbl-7500u/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#142] / [i915#2405]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9671 -> Patchwork_19471

  CI-20190529: 20190529
  CI_DRM_9671: b91884d8aeac7dbad7ec084e4de0a5b2f596233b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19471: 18720c9902829cfac4b7ded2f665dd7cb65c6cc2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18720c990282 drm/i915: Fix vblank evasion with vrr
9eed16977998 drm/i915: Fix vblank timestamps with VRR
b1334816df79 drm/i915: Add vrr state dump
7f17d642e8f1 drm/i915/display: Helpers for VRR vblank min and max start
724f6a1f1ba3 drm/i915/display: Add HW state readout for VRR
bf13d338a8ff drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
e8988415381c drm/i915/display/vrr: Disable VRR in modeset disable path
1837fb59b38f drm/i915/display/vrr: Send VRR push to flip the frame
e1f2da61b65e drm/i915/display/vrr: Configure and enable VRR in modeset enable
cae5397c3bb6 drm/i915: Rename VRR_CTL reg fields
3fdc3159d4da drm/i915/display: VRR + DRRS cannot be enabled together
c07ce2d2dd17 drm/i915/display/dp: Do not enable PSR if VRR is enabled
6c0a888785aa drm/i915/display/dp: Compute VRR state in atomic_check
35ab39f45ccc drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()
0915823391cc drm/i915: Extract intel_mode_vblank_start()
a563d636fc26 drm/i915: Store framestart_delay in dev_priv
46575a3d1f83 drm/i915/display/dp: Attach and set drm connector VRR property
aa71ea851089 drm/i915/display/vrr: Create VRR file and add VRR capability check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/index.html

--===============2845773614345775253==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,v5,01/18] drm/i915/display/vrr: Create VRR file and add VRR capability check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86200/">https://patchwork.freedesktop.org/series/86200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9671 -&gt; Patchwork_19471</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19471 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-tgl-y/igt@fbdev@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9671/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19471/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9671 -&gt; Patchwork_19471</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9671: b91884d8aeac7dbad7ec084e4de0a5b2f596233b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19471: 18720c9902829cfac4b7ded2f665dd7cb65c6cc2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>18720c990282 drm/i915: Fix vblank evasion with vrr<br />
9eed16977998 drm/i915: Fix vblank timestamps with VRR<br />
b1334816df79 drm/i915: Add vrr state dump<br />
7f17d642e8f1 drm/i915/display: Helpers for VRR vblank min and max start<br />
724f6a1f1ba3 drm/i915/display: Add HW state readout for VRR<br />
bf13d338a8ff drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink<br />
e8988415381c drm/i915/display/vrr: Disable VRR in modeset disable path<br />
1837fb59b38f drm/i915/display/vrr: Send VRR push to flip the frame<br />
e1f2da61b65e drm/i915/display/vrr: Configure and enable VRR in modeset enable<br />
cae5397c3bb6 drm/i915: Rename VRR_CTL reg fields<br />
3fdc3159d4da drm/i915/display: VRR + DRRS cannot be enabled together<br />
c07ce2d2dd17 drm/i915/display/dp: Do not enable PSR if VRR is enabled<br />
6c0a888785aa drm/i915/display/dp: Compute VRR state in atomic_check<br />
35ab39f45ccc drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()<br />
0915823391cc drm/i915: Extract intel_mode_vblank_start()<br />
a563d636fc26 drm/i915: Store framestart_delay in dev_priv<br />
46575a3d1f83 drm/i915/display/dp: Attach and set drm connector VRR property<br />
aa71ea851089 drm/i915/display/vrr: Create VRR file and add VRR capability check</p>

</body>
</html>

--===============2845773614345775253==--

--===============1011508453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1011508453==--
