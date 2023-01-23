Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937E267852C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 19:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95A510E223;
	Mon, 23 Jan 2023 18:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFA9E10E070;
 Mon, 23 Jan 2023 18:43:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C91B4AADD2;
 Mon, 23 Jan 2023 18:43:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6896060729172714675=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 23 Jan 2023 18:43:06 -0000
Message-ID: <167449938678.348.14022646726584647547@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Implement_workaround_for_CDCLK_PLL_disable/enable?=
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

--===============6896060729172714675==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implement workaround for CDCLK PLL disable/enable
URL   : https://patchwork.freedesktop.org/series/113226/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12624 -> Patchwork_113226v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113226v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113226v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113226v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_113226v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][3] -> [INCOMPLETE][4] ([i915#6972] / [i915#7911])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6] ([i915#7911])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][7] -> [INCOMPLETE][8] ([i915#4983])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][9] ([fdo#109271]) +44 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-n3050/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][11] ([fdo#109271] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-blb-e6850:       [SKIP][12] ([fdo#109271]) -> [PASS][13] +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-blb-e6850/igt@fbdev@write.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-blb-e6850/igt@fbdev@write.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-rpls-1}:       [DMESG-FAIL][14] ([i915#7059]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [INCOMPLETE][16] ([i915#6257]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-2/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-2/igt@i915_selftest@live@requests.html
    - {bat-rpls-1}:       [INCOMPLETE][18] ([i915#4983]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][20] ([i915#6298]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7931]: https://gitlab.freedesktop.org/drm/intel/issues/7931


Build changes
-------------

  * Linux: CI_DRM_12624 -> Patchwork_113226v1

  CI-20190529: 20190529
  CI_DRM_12624: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7134: 61b8c0a0c8a9611c47749c0b1a262843892cccd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113226v1: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

053a75699d24 drm/i915: Implement workaround for CDCLK PLL disable/enable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/index.html

--===============6896060729172714675==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implement workaround for CDCLK PLL disable/enable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113226/">https://patchwork.freedesktop.org/series/113226/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12624 -&gt; Patchwork_113226v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113226v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113226v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113226v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113226v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-blb-e6850/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-blb-e6850/igt@fbdev@write.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-2/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113226v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12624 -&gt; Patchwork_113226v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12624: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7134: 61b8c0a0c8a9611c47749c0b1a262843892cccd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113226v1: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>053a75699d24 drm/i915: Implement workaround for CDCLK PLL disable/enable</p>

</body>
</html>

--===============6896060729172714675==--
