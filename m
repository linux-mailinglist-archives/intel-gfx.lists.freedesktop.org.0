Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A08BF82B3F9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D11C10E952;
	Thu, 11 Jan 2024 17:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A5910E952;
 Thu, 11 Jan 2024 17:22:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3568823113637376964=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_=28stolen=29_me?=
 =?utf-8?q?mory_region_related_fixes_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 11 Jan 2024 17:22:30 -0000
Message-ID: <170499375053.290001.8111053082368848925@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3568823113637376964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: (stolen) memory region related fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/127721/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14116 -> Patchwork_127721v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_127721v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - bat-rpls-2:         [PASS][1] -> [ABORT][2] ([i915#8668])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@sanitycheck:
    - fi-skl-6600u:       [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/fi-skl-6600u/igt@dmabuf@all-tests@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/fi-skl-6600u/igt@dmabuf@all-tests@sanitycheck.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][5] ([fdo#109271]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][7] ([i915#5591]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
    - {bat-dg2-14}:       [ABORT][9] ([i915#9840]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-dg2-14/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-dg2-14/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9840]: https://gitlab.freedesktop.org/drm/intel/issues/9840


Build changes
-------------

  * Linux: CI_DRM_14116 -> Patchwork_127721v5

  CI-20190529: 20190529
  CI_DRM_14116: 3b92a66f4bc89f4fa6e9e9369ac8243e23670030 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7670: 1b32bcdb2d9965090234739aba891a90743e01c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127721v5: 3b92a66f4bc89f4fa6e9e9369ac8243e23670030 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b44e3bd253b7 drm/i915: Try to relocate the BIOS fb to the start of ggtt
63e83ce02b17 drm/i915: Tweak BIOS fb reuse check
5486c763e82a drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
8fa90e75e9e9 drm/i915: Simplify intel_initial_plane_config() calling convention
f134e8fe51bc drm/i915: Split the smem and lmem plane readout apart
6a873b3b0e44 drm/i915: s/phys_base/dma_addr/
e49d77f51bba drm/i915: Fix MTL initial plane readout
a629e227ead7 drm/i915: Fix region start during initial plane readout
fd8d35c7c33b drm/i915: Fix PTE decode during initial plane readout
14526faaec91 drm/i915: Rename the DSM/GSM registers
ee6e84bd5f90 drm/i915: Disable the "binder"
0a0fc6d273ec drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
300e51e5f4c5 drm/i915: Remove ad-hoc lmem/stolen debugs
823dcb4b409e drm/i915: Print memory region info during probe
192e895f5c33 drm/i915: Use struct resource for memory region IO as well

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/index.html

--===============3568823113637376964==
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
<tr><td><b>Series:</b></td><td>drm/i915: (stolen) memory region related fixes (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127721/">https://patchwork.freedesktop.org/series/127721/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14116 -&gt; Patchwork_127721v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-adls-6 <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127721v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/fi-skl-6600u/igt@dmabuf@all-tests@sanitycheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/fi-skl-6600u/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14116/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9840">i915#9840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v5/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14116 -&gt; Patchwork_127721v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14116: 3b92a66f4bc89f4fa6e9e9369ac8243e23670030 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7670: 1b32bcdb2d9965090234739aba891a90743e01c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127721v5: 3b92a66f4bc89f4fa6e9e9369ac8243e23670030 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b44e3bd253b7 drm/i915: Try to relocate the BIOS fb to the start of ggtt<br />
63e83ce02b17 drm/i915: Tweak BIOS fb reuse check<br />
5486c763e82a drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects<br />
8fa90e75e9e9 drm/i915: Simplify intel_initial_plane_config() calling convention<br />
f134e8fe51bc drm/i915: Split the smem and lmem plane readout apart<br />
6a873b3b0e44 drm/i915: s/phys_base/dma_addr/<br />
e49d77f51bba drm/i915: Fix MTL initial plane readout<br />
a629e227ead7 drm/i915: Fix region start during initial plane readout<br />
fd8d35c7c33b drm/i915: Fix PTE decode during initial plane readout<br />
14526faaec91 drm/i915: Rename the DSM/GSM registers<br />
ee6e84bd5f90 drm/i915: Disable the "binder"<br />
0a0fc6d273ec drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access<br />
300e51e5f4c5 drm/i915: Remove ad-hoc lmem/stolen debugs<br />
823dcb4b409e drm/i915: Print memory region info during probe<br />
192e895f5c33 drm/i915: Use struct resource for memory region IO as well</p>

</body>
</html>

--===============3568823113637376964==--
