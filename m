Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C791F5F6887
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 15:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7186310E2C2;
	Thu,  6 Oct 2022 13:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0769510E2C2;
 Thu,  6 Oct 2022 13:49:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00C81AA0ED;
 Thu,  6 Oct 2022 13:49:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5105464124305616080=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Thu, 06 Oct 2022 13:49:50 -0000
Message-ID: <166506419097.5836.5062762097603649352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220726153935.2272777-1-bob.beckett@collabora.com>
In-Reply-To: <20220726153935.2272777-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_using_swiotlb_=28rev7=29?=
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

--===============5105464124305616080==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: stop using swiotlb (rev7)
URL   : https://patchwork.freedesktop.org/series/106589/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12222 -> Patchwork_106589v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106589v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106589v7, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/index.html

Participating hosts (43 -> 39)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (5): fi-hsw-4200u bat-dg2-8 bat-dg2-9 fi-ctg-p8600 fi-hsw-4770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106589v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-j4005:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-glk-j4005/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-glk-j4005/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_106589v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][4] -> [INCOMPLETE][5] ([i915#3303] / [i915#4785])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-apl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271]) +11 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-glk-j4005:       NOTRUN -> [FAIL][8] ([i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-glk-j4005/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][12] ([i915#5334]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@guc:
    - {bat-rpls-2}:       [DMESG-WARN][14] ([i915#6471]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/bat-rpls-2/igt@i915_selftest@live@guc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/bat-rpls-2/igt@i915_selftest@live@guc.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][16] ([fdo#103375]) -> [INCOMPLETE][17] ([i915#5982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856


Build changes
-------------

  * Linux: CI_DRM_12222 -> Patchwork_106589v7

  CI-20190529: 20190529
  CI_DRM_12222: 6278acf81fd635214b7e310bb325c218e72e0349 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7001: d21216f0db39457717274d74b4d2e3db6683aa63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106589v7: 6278acf81fd635214b7e310bb325c218e72e0349 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8861a110df4e drm/i915: stop using swiotlb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/index.html

--===============5105464124305616080==
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
<tr><td><b>Series:</b></td><td>drm/i915: stop using swiotlb (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106589/">https://patchwork.freedesktop.org/series/106589/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12222 -&gt; Patchwork_106589v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106589v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106589v7, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (5): fi-hsw-4200u bat-dg2-8 bat-dg2-9 fi-ctg-p8600 fi-hsw-4770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106589v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-glk-j4005/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-glk-j4005/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106589v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6471">i915#6471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12222/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v7/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12222 -&gt; Patchwork_106589v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12222: 6278acf81fd635214b7e310bb325c218e72e0349 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7001: d21216f0db39457717274d74b4d2e3db6683aa63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106589v7: 6278acf81fd635214b7e310bb325c218e72e0349 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8861a110df4e drm/i915: stop using swiotlb</p>

</body>
</html>

--===============5105464124305616080==--
