Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2491844C492
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 16:42:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED586E528;
	Wed, 10 Nov 2021 15:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60F766E528;
 Wed, 10 Nov 2021 15:42:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59173A73C9;
 Wed, 10 Nov 2021 15:42:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6679550537096075717=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 10 Nov 2021 15:42:20 -0000
Message-ID: <163655894033.15663.3567333313041346117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211110114327.200470-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20211110114327.200470-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Skip_error_capture_when_wedged_on_init_=28rev2=29?=
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

--===============6679550537096075717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Skip error capture when wedged on init (rev2)
URL   : https://patchwork.freedesktop.org/series/96718/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10863 -> Patchwork_21555
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/index.html

Participating hosts (39 -> 36)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (4): fi-icl-y fi-bsw-cyan bat-adlp-4 bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_21555 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-multi-fence:
    - fi-bdw-samus:       NOTRUN -> [SKIP][1] ([fdo#109271]) +22 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-bdw-samus/igt@amdgpu/amd_basic@cs-multi-fence.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][2] ([i915#4006])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][4] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][5] ([i915#4103]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][6] ([fdo#109285])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#3301])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][8] ([i915#1602] / [i915#2722] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][9] ([i915#4269]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
    - {fi-hsw-gt1}:       [DMESG-WARN][11] ([i915#4290]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bdw-samus:       [INCOMPLETE][13] ([i915#4444]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-bdw-samus/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-bdw-samus/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4444]: https://gitlab.freedesktop.org/drm/intel/issues/4444


Build changes
-------------

  * Linux: CI_DRM_10863 -> Patchwork_21555

  CI-20190529: 20190529
  CI_DRM_10863: de2d87964c398bd4de93d264192e7f69928cf9c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6276: 955e0652ed6b1c8697e7ea5c35f86b232b4d5c32 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21555: 74e51c55ae270624b56270857e9e5fe08bf9c6e0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

74e51c55ae27 drm/i915: Skip error capture when wedged on init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/index.html

--===============6679550537096075717==
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
<tr><td><b>Series:</b></td><td>drm/i915: Skip error capture when wedged on init (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96718/">https://patchwork.freedesktop.org/series/96718/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10863 -&gt; Patchwork_21555</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (4): fi-icl-y fi-bsw-cyan bat-adlp-4 bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21555 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-multi-fence:</p>
<ul>
<li>fi-bdw-samus:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-bdw-samus/igt@amdgpu/amd_basic@cs-multi-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bdw-samus:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10863/fi-bdw-samus/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4444">i915#4444</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21555/fi-bdw-samus/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10863 -&gt; Patchwork_21555</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10863: de2d87964c398bd4de93d264192e7f69928cf9c8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6276: 955e0652ed6b1c8697e7ea5c35f86b232b4d5c32 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21555: 74e51c55ae270624b56270857e9e5fe08bf9c6e0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>74e51c55ae27 drm/i915: Skip error capture when wedged on init</p>

</body>
</html>

--===============6679550537096075717==--
