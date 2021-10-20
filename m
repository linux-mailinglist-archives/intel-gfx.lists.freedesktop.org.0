Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBD74354CA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 22:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C266E3D6;
	Wed, 20 Oct 2021 20:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E76AE6E3D2;
 Wed, 20 Oct 2021 20:51:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCCF8A00FD;
 Wed, 20 Oct 2021 20:51:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8916092525815949921=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 20:51:33 -0000
Message-ID: <163476309386.27358.7942429484825175014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020195138.1841242-1-imre.deak@intel.com>
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_handling_of_modifiers_=28rev12=29?=
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

--===============8916092525815949921==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Simplify handling of modifiers (rev12)
URL   : https://patchwork.freedesktop.org/series/95579/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10765 -> Patchwork_21393
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html

Known issues
------------

  Here are the changes found in Patchwork_21393 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][3] ([i915#2867]) -> [PASS][4] +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:
    - fi-cfl-8109u:       [FAIL][5] ([i915#4165]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][7] ([i915#4269]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][9] ([i915#295]) -> [PASS][10] +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#295]) -> [FAIL][12] ([i915#2546])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 


Build changes
-------------

  * Linux: CI_DRM_10765 -> Patchwork_21393

  CI-20190529: 20190529
  CI_DRM_10765: 19edb8bd013aa8cfd4345a405b07a0c1ef424b74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21393: a510cc2c3093e14534e5641be105d6445613e42d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a510cc2c3093 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers
605d4c7e75b3 drm/i915: Move is_ccs_modifier() to intel_fb.c
48b044ca6958 drm/i915: Add a platform independent way to check for CCS AUX planes
066204606ff2 drm/i915: Handle CCS CC planes separately from CCS AUX planes
3b5a352ccae1 drm/i915: Add a platform independent way to get the RC CCS CC plane
a57a4c9e3ddc drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
d9e1b092e0b4 drm/i915: Unexport is_semiplanar_uv_plane()
c62bf50af74c drm/i915: Simplify the modifier check for interlaced scanout support
bc09112178a4 drm/i915: Add tiling attribute to the modifier descriptor
31cf2c8a39f2 drm/i915: Move intel_get_format_info() to intel_fb.c
78f3fdfcbe6d drm/i915: Add a table with a descriptor for all i915 modifiers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html

--===============8916092525815949921==
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
<tr><td><b>Series:</b></td><td>drm/i915: Simplify handling of modifiers (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95579/">https://patchwork.freedesktop.org/series/95579/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10765 -&gt; Patchwork_21393</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21393 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10765/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21393/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10765 -&gt; Patchwork_21393</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10765: 19edb8bd013aa8cfd4345a405b07a0c1ef424b74 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21393: a510cc2c3093e14534e5641be105d6445613e42d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a510cc2c3093 drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers<br />
605d4c7e75b3 drm/i915: Move is_ccs_modifier() to intel_fb.c<br />
48b044ca6958 drm/i915: Add a platform independent way to check for CCS AUX planes<br />
066204606ff2 drm/i915: Handle CCS CC planes separately from CCS AUX planes<br />
3b5a352ccae1 drm/i915: Add a platform independent way to get the RC CCS CC plane<br />
a57a4c9e3ddc drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c<br />
d9e1b092e0b4 drm/i915: Unexport is_semiplanar_uv_plane()<br />
c62bf50af74c drm/i915: Simplify the modifier check for interlaced scanout support<br />
bc09112178a4 drm/i915: Add tiling attribute to the modifier descriptor<br />
31cf2c8a39f2 drm/i915: Move intel_get_format_info() to intel_fb.c<br />
78f3fdfcbe6d drm/i915: Add a table with a descriptor for all i915 modifiers</p>

</body>
</html>

--===============8916092525815949921==--
