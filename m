Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC42F06B1
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 12:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C0789D49;
	Sun, 10 Jan 2021 11:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA02889D44;
 Sun, 10 Jan 2021 11:38:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4079A8835;
 Sun, 10 Jan 2021 11:38:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 10 Jan 2021 11:38:39 -0000
Message-ID: <161027871984.22036.14930398403843649170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210110105538.31663-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210110105538.31663-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Check_for_arbitratio?=
 =?utf-8?q?n_after_writing_start_seqno?=
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
Content-Type: multipart/mixed; boundary="===============0140525211=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0140525211==
Content-Type: multipart/alternative;
 boundary="===============4099801638705469068=="

--===============4099801638705469068==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/gt: Check for arbitration after writing start seqno
URL   : https://patchwork.freedesktop.org/series/85674/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9573 -> Patchwork_19310
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19310 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19310, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19310:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@requests:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_19310 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-n3050:       [PASS][6] -> [SKIP][7] ([fdo#109271]) +20 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][8] ([fdo#109271]) +30 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#2029])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][11] ([i915#1436])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-snb-2600:        [DMESG-WARN][12] ([i915#2772]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#402]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][16] ([i915#142] / [i915#2405]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][18] ([i915#1161] / [i915#262]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2772]: https://gitlab.freedesktop.org/drm/intel/issues/2772
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9573 -> Patchwork_19310

  CI-20190529: 20190529
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19310: c833ec1d3ab5f8b7a7fe3b7dc824f12c232046f5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c833ec1d3ab5 drm/i915/selftests: Include engine name after reset failure
694571b8addc drm/i915/gt: Perform an arbitration check before busywaiting
b5dc990c34d5 drm/i915/gt: Check for arbitration after writing start seqno

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/index.html

--===============4099801638705469068==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/gt: Check for arbitration after writing start seqno</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85674/">https://patchwork.freedesktop.org/series/85674/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9573 -&gt; Patchwork_19310</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19310 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19310, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19310:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19310 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2772">i915#2772</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19310/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9573 -&gt; Patchwork_19310</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19310: c833ec1d3ab5f8b7a7fe3b7dc824f12c232046f5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c833ec1d3ab5 drm/i915/selftests: Include engine name after reset failure<br />
694571b8addc drm/i915/gt: Perform an arbitration check before busywaiting<br />
b5dc990c34d5 drm/i915/gt: Check for arbitration after writing start seqno</p>

</body>
</html>

--===============4099801638705469068==--

--===============0140525211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0140525211==--
