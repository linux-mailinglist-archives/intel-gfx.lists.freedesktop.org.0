Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C5728A35
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 23:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAE510E0EA;
	Thu,  8 Jun 2023 21:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54A7910E0EA;
 Thu,  8 Jun 2023 21:23:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CB7BAA01E;
 Thu,  8 Jun 2023 21:23:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6297599957080373681=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 08 Jun 2023 21:23:55 -0000
Message-ID: <168625943527.18384.17048067062083363257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_ICL+_DSI_modeset_sequence_fixes_=28rev2=29?=
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

--===============6297599957080373681==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: ICL+ DSI modeset sequence fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/116926/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13253 -> Patchwork_116926v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_116926v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [PASS][1] -> [INCOMPLETE][2] ([i915#7609] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-glk-j4005:       NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-glk-j4005/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][6] -> [FAIL][7] ([i915#7932])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-glk-j4005:       [ABORT][10] ([i915#6217]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][12] ([i915#6794] / [i915#7392]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-rpls-2/igt@i915_selftest@live@mman.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-rpls-2/igt@i915_selftest@live@mman.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13253 -> Patchwork_116926v2

  CI-20190529: 20190529
  CI_DRM_13253: b5faf562ea160e9dcd7f95b737753ce44134b266 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116926v2: b5faf562ea160e9dcd7f95b737753ce44134b266 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

430cfe4adebd drm/i915/dsi: Remove weird has_pch_encoder asserts
403862f286ee drm/i915/dsi: Grab the crtc from the customary place
c9a83a8c16af drm/i915/dsi: Move panel reset+power off to be the last thing
0eb315508c57 drm/i915/dsi: Respect power_off_delay on icl+
cb97f1341a8a drm/i915/dsi: Do DSC/scaler disable earlier on icl+
a0247abd1c35 drm/i915/dsi: Move most things from .disable() into .post_disable() on icl+
8d7a016914da drm/i915/dsi: Implement encoder->shutdown() for icl+
b3e2d46a3f9c drm/i915/dsi: Respect power cycle delay on icl+
81d11f03bf5a drm/i915/dsi: Gate DSI clocks earlier
0ba7355775f6 drm/i915/dsi: Split icl+ D-PHY vs. DSI timing steps
f39968a588b0 drm/i915/dsi: Print the VBT MIPI sequence delay duration
9c43153c92fb drm/i915/dsi: Do display on sequence later on icl+
fb9cab7a4143 drm/i915/dsi: Do panel power on + reset deassert earlier on icl+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/index.html

--===============6297599957080373681==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: ICL+ DSI modeset sequence fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116926/">https://patchwork.freedesktop.org/series/116926/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13253 -&gt; Patchwork_116926v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116926v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-glk-j4005/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13253/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116926v2/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13253 -&gt; Patchwork_116926v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13253: b5faf562ea160e9dcd7f95b737753ce44134b266 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7322: 2dd77d6d827a308caae49ce3eba759c2bab394ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116926v2: b5faf562ea160e9dcd7f95b737753ce44134b266 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>430cfe4adebd drm/i915/dsi: Remove weird has_pch_encoder asserts<br />
403862f286ee drm/i915/dsi: Grab the crtc from the customary place<br />
c9a83a8c16af drm/i915/dsi: Move panel reset+power off to be the last thing<br />
0eb315508c57 drm/i915/dsi: Respect power_off_delay on icl+<br />
cb97f1341a8a drm/i915/dsi: Do DSC/scaler disable earlier on icl+<br />
a0247abd1c35 drm/i915/dsi: Move most things from .disable() into .post_disable() on icl+<br />
8d7a016914da drm/i915/dsi: Implement encoder-&gt;shutdown() for icl+<br />
b3e2d46a3f9c drm/i915/dsi: Respect power cycle delay on icl+<br />
81d11f03bf5a drm/i915/dsi: Gate DSI clocks earlier<br />
0ba7355775f6 drm/i915/dsi: Split icl+ D-PHY vs. DSI timing steps<br />
f39968a588b0 drm/i915/dsi: Print the VBT MIPI sequence delay duration<br />
9c43153c92fb drm/i915/dsi: Do display on sequence later on icl+<br />
fb9cab7a4143 drm/i915/dsi: Do panel power on + reset deassert earlier on icl+</p>

</body>
</html>

--===============6297599957080373681==--
