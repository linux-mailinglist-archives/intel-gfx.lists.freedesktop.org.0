Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D60C2302D39
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 22:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97DDE6E0B8;
	Mon, 25 Jan 2021 21:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89EA46E0B8;
 Mon, 25 Jan 2021 21:07:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81D2BA7DFF;
 Mon, 25 Jan 2021 21:07:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 25 Jan 2021 21:07:02 -0000
Message-ID: <161160882250.3418.3111738053689860145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv6=5D_drm/i915/display/vrr=3A_Create_?=
 =?utf-8?q?VRR_file_and_add_VRR_capability_check_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0890464421=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0890464421==
Content-Type: multipart/alternative;
 boundary="===============8238920834157176364=="

--===============8238920834157176364==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,v6] drm/i915/display/vrr: Create VRR file and add VRR capability check (rev2)
URL   : https://patchwork.freedesktop.org/series/86200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680 -> Patchwork_19492
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19492:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr@cursor_plane_move:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][1] +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9680 and Patchwork_19492:

### New IGT tests (1) ###

  * igt@fbdev@info:
    - Statuses : 29 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19492 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][2] ([fdo#109315] / [i915#2575])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] ([i915#1161] / [i915#262])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (39 -> 36)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9680 -> Patchwork_19492

  CI-20190529: 20190529
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19492: e6f1e331f9957c9eb7662c26db3ba44a53964bb8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e6f1e331f995 drm/i915: Fix vblank evasion with vrr
58b14daa2aa2 drm/i915: Fix vblank timestamps with VRR
e4b1a4ab29b6 drm/i915: Add vrr state dump
7422bf611bda drm/i915/display: Helpers for VRR vblank min and max start
fccf4001ed51 drm/i915/display: Add HW state readout for VRR
fd521ea70cf2 drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
f58744d7fa53 drm/i915/display/vrr: Disable VRR in modeset disable path
9afbc5d3d2c7 drm/i915/display/vrr: Send VRR push to flip the frame
7fafcbdaedbf drm/i915/display/vrr: Configure and enable VRR in modeset enable
9b63d63f6613 drm/i915: Rename VRR_CTL reg fields
48ea525edcf8 drm/i915/display: VRR + DRRS cannot be enabled together
348ab07c113b drm/i915/display/dp: Do not enable PSR if VRR is enabled
d042de272b5c drm/i915/display/dp: Compute VRR state in atomic_check
e09f65af8a5b drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()
b6d69ba3c3f2 drm/i915: Extract intel_mode_vblank_start()
215e991209ec drm/i915: Store framestart_delay in dev_priv
f52206f4d61d drm/i915/display/dp: Attach and set drm connector VRR property
62a318f6e2ec drm/i915/display/vrr: Create VRR file and add VRR capability check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/index.html

--===============8238920834157176364==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,v6] drm/i915/display/vrr: Create VRR file and add VRR capability check (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86200/">https://patchwork.freedesktop.org/series/86200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680 -&gt; Patchwork_19492</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19492:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html">SKIP</a> +23 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9680 and Patchwork_19492:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@fbdev@info:<ul>
<li>Statuses : 29 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19492 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19492/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9680 -&gt; Patchwork_19492</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19492: e6f1e331f9957c9eb7662c26db3ba44a53964bb8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e6f1e331f995 drm/i915: Fix vblank evasion with vrr<br />
58b14daa2aa2 drm/i915: Fix vblank timestamps with VRR<br />
e4b1a4ab29b6 drm/i915: Add vrr state dump<br />
7422bf611bda drm/i915/display: Helpers for VRR vblank min and max start<br />
fccf4001ed51 drm/i915/display: Add HW state readout for VRR<br />
fd521ea70cf2 drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink<br />
f58744d7fa53 drm/i915/display/vrr: Disable VRR in modeset disable path<br />
9afbc5d3d2c7 drm/i915/display/vrr: Send VRR push to flip the frame<br />
7fafcbdaedbf drm/i915/display/vrr: Configure and enable VRR in modeset enable<br />
9b63d63f6613 drm/i915: Rename VRR_CTL reg fields<br />
48ea525edcf8 drm/i915/display: VRR + DRRS cannot be enabled together<br />
348ab07c113b drm/i915/display/dp: Do not enable PSR if VRR is enabled<br />
d042de272b5c drm/i915/display/dp: Compute VRR state in atomic_check<br />
e09f65af8a5b drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()<br />
b6d69ba3c3f2 drm/i915: Extract intel_mode_vblank_start()<br />
215e991209ec drm/i915: Store framestart_delay in dev_priv<br />
f52206f4d61d drm/i915/display/dp: Attach and set drm connector VRR property<br />
62a318f6e2ec drm/i915/display/vrr: Create VRR file and add VRR capability check</p>

</body>
</html>

--===============8238920834157176364==--

--===============0890464421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0890464421==--
