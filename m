Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EB32C9510
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 03:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A948989A6D;
	Tue,  1 Dec 2020 02:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45A0689A6D;
 Tue,  1 Dec 2020 02:13:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34E3BA8836;
 Tue,  1 Dec 2020 02:13:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Tue, 01 Dec 2020 02:13:59 -0000
Message-ID: <160678883918.6988.957252463620780158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130210945.31850-1-airlied@gmail.com>
In-Reply-To: <20201130210945.31850-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_refactor_panel_backlight_control_functions=2E_=28rev2?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0901317022=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0901317022==
Content-Type: multipart/alternative;
 boundary="===============8070723746269794360=="

--===============8070723746269794360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: refactor panel backlight control functions. (rev2)
URL   : https://patchwork.freedesktop.org/series/84282/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9411 -> Patchwork_19019
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9411 and Patchwork_19019:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19019 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_pread_basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@gem_tiled_pread_basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-icl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982] / [k.org#205379])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-u2/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:
    - fi-elk-e7500:       [PASS][9] -> [FAIL][10] ([i915#2122])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@kms_psr@primary_page_flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@gem_close_race@basic-threads.html

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9411 -> Patchwork_19019

  CI-20190529: 20190529
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19019: 367f015bf565e5e060dd4c3ae8728a83488fe801 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

367f015bf565 drm/i915: refactor panel backlight control functions. (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/index.html

--===============8070723746269794360==
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
<tr><td><b>Series:</b></td><td>drm/i915: refactor panel backlight control functions. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84282/">https://patchwork.freedesktop.org/series/84282/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9411 -&gt; Patchwork_19019</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9411 and Patchwork_19019:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19019 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@gem_tiled_pread_basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-icl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@kms_psr@primary_page_flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19019/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9411 -&gt; Patchwork_19019</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19019: 367f015bf565e5e060dd4c3ae8728a83488fe801 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>367f015bf565 drm/i915: refactor panel backlight control functions. (v2)</p>

</body>
</html>

--===============8070723746269794360==--

--===============0901317022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0901317022==--
