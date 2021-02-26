Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D2326553
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 17:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6A689AB6;
	Fri, 26 Feb 2021 16:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C4D889AB6;
 Fri, 26 Feb 2021 16:14:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24EC6A47E2;
 Fri, 26 Feb 2021 16:14:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 26 Feb 2021 16:14:55 -0000
Message-ID: <161435609512.4757.2863896826587861879@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_up_TGL+_SAGV_watermarks?=
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
Content-Type: multipart/mixed; boundary="===============0097305354=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0097305354==
Content-Type: multipart/alternative;
 boundary="===============7757797142223525874=="

--===============7757797142223525874==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix up TGL+ SAGV watermarks
URL   : https://patchwork.freedesktop.org/series/87433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9814 -> Patchwork_19733
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/index.html

Known issues
------------

  Here are the changes found in Patchwork_19733 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [PASS][4] -> [TIMEOUT][5] ([i915#2502])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       NOTRUN -> [INCOMPLETE][6] ([i915#142] / [i915#2405])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][8] ([i915#1814] / [i915#2505])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-tgl-y/igt@gem_tiled_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3004]: https://gitlab.freedesktop.org/drm/intel/issues/3004
  [i915#3005]: https://gitlab.freedesktop.org/drm/intel/issues/3005
  [i915#3011]: https://gitlab.freedesktop.org/drm/intel/issues/3011
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3013]: https://gitlab.freedesktop.org/drm/intel/issues/3013
  [i915#3014]: https://gitlab.freedesktop.org/drm/intel/issues/3014
  [i915#3015]: https://gitlab.freedesktop.org/drm/intel/issues/3015
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (39 -> 37)
------------------------------

  Additional (2): fi-byt-j1900 fi-hsw-gt1 
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9814 -> Patchwork_19733

  CI-20190529: 20190529
  CI_DRM_9814: 83c6d819595dc35a5058c8f71d0ee5f38e199940 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6015: aa44cddf4ef689f8a3726fcbeedc03f08b12bd82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19733: 2d828095e91e29a09838241ce5ba9c78d7f4f5e8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d828095e91e drm/i915: Clean up verify_wm_state()
1d2e11c235a9 drm/i915: Check tgl+ SAGV watermarks properly
44e389eea600 drm/i915: Introduce SAGV transtion watermark
7d23b537945f drm/i915: Stuff SAGV watermark into a sub-structure
75118b227742 drm/i915: Print wm changes if sagv_wm0 changes
f0b33a40d933 drm/i915: Zero out SAGV wm when we don't have enough DDB for it
ccc6bba5464d drm/i915: Fix TGL+ plane SAGV watermark programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/index.html

--===============7757797142223525874==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix up TGL+ SAGV watermarks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87433/">https://patchwork.freedesktop.org/series/87433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9814 -&gt; Patchwork_19733</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19733 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9814/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19733/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (2): fi-byt-j1900 fi-hsw-gt1 <br />
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9814 -&gt; Patchwork_19733</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9814: 83c6d819595dc35a5058c8f71d0ee5f38e199940 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6015: aa44cddf4ef689f8a3726fcbeedc03f08b12bd82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19733: 2d828095e91e29a09838241ce5ba9c78d7f4f5e8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2d828095e91e drm/i915: Clean up verify_wm_state()<br />
1d2e11c235a9 drm/i915: Check tgl+ SAGV watermarks properly<br />
44e389eea600 drm/i915: Introduce SAGV transtion watermark<br />
7d23b537945f drm/i915: Stuff SAGV watermark into a sub-structure<br />
75118b227742 drm/i915: Print wm changes if sagv_wm0 changes<br />
f0b33a40d933 drm/i915: Zero out SAGV wm when we don't have enough DDB for it<br />
ccc6bba5464d drm/i915: Fix TGL+ plane SAGV watermark programming</p>

</body>
</html>

--===============7757797142223525874==--

--===============0097305354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0097305354==--
