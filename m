Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 275FC306D92
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 07:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD966E8DE;
	Thu, 28 Jan 2021 06:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 098356E8DE;
 Thu, 28 Jan 2021 06:22:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03C67A73C9;
 Thu, 28 Jan 2021 06:22:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Thu, 28 Jan 2021 06:22:48 -0000
Message-ID: <161181496801.13619.10797377830419012100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128053024.23540-1-aditya.swarup@intel.com>
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRmlu?=
 =?utf-8?q?al_set_of_patches_for_ADLS_enabling_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1410060142=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1410060142==
Content-Type: multipart/alternative;
 boundary="===============6391733645745774886=="

--===============6391733645745774886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Final set of patches for ADLS enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/86322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9690 -> Patchwork_19525
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/index.html

Known issues
------------

  Here are the changes found in Patchwork_19525 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#2868])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#2411] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9690 -> Patchwork_19525

  CI-20190529: 20190529
  CI_DRM_9690: 9aaca070110254fe08a15ec909f8793c47ada2bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5975: e2a754840c4d413b7b7a642caca47f7d174d6304 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19525: 234b877a1668b4773b50b8407a610cb21b340d79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

234b877a1668 drm/i915/adl_s: Add GT and CTX WAs for ADL-S
28a8fca6f022 drm/i915/adl_s: Add display WAs for ADL-S
9d4007d2b51b drm/i915/adl_s: Update memory bandwidth parameters
804019e4857d drm/i915/adl_s: Load DMC
cd49856755a6 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
2344dadc51da drm/i915/adl_s: Re-use TGL GuC/HuC firmware
83ca04828dec drm/i915/adl_s: Add power wells
8cede37510f4 drm/i915/adl_s: MCHBAR memory info registers are moved
36f14b084aab drm/i915/adl_s: Update PHY_MISC programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/index.html

--===============6391733645745774886==
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
<tr><td><b>Series:</b></td><td>Final set of patches for ADLS enabling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86322/">https://patchwork.freedesktop.org/series/86322/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9690 -&gt; Patchwork_19525</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19525 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-bdw-5557u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9690/fi-tgl-y/igt@gem_flink_basic@bad-open.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19525/fi-tgl-y/igt@gem_flink_basic@bad-open.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9690 -&gt; Patchwork_19525</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9690: 9aaca070110254fe08a15ec909f8793c47ada2bc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5975: e2a754840c4d413b7b7a642caca47f7d174d6304 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19525: 234b877a1668b4773b50b8407a610cb21b340d79 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>234b877a1668 drm/i915/adl_s: Add GT and CTX WAs for ADL-S<br />
28a8fca6f022 drm/i915/adl_s: Add display WAs for ADL-S<br />
9d4007d2b51b drm/i915/adl_s: Update memory bandwidth parameters<br />
804019e4857d drm/i915/adl_s: Load DMC<br />
cd49856755a6 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION<br />
2344dadc51da drm/i915/adl_s: Re-use TGL GuC/HuC firmware<br />
83ca04828dec drm/i915/adl_s: Add power wells<br />
8cede37510f4 drm/i915/adl_s: MCHBAR memory info registers are moved<br />
36f14b084aab drm/i915/adl_s: Update PHY_MISC programming</p>

</body>
</html>

--===============6391733645745774886==--

--===============1410060142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1410060142==--
