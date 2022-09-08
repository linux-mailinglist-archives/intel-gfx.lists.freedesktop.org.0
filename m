Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B77F5B1219
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 03:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C3310E936;
	Thu,  8 Sep 2022 01:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2FDB10E934;
 Thu,  8 Sep 2022 01:28:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBB80A77A5;
 Thu,  8 Sep 2022 01:28:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6488590922228596340=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Thu, 08 Sep 2022 01:28:16 -0000
Message-ID: <166260049673.27232.7095074567621412820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW5p?=
 =?utf-8?q?tial_Meteorlake_Support_=28rev8=29?=
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

--===============6488590922228596340==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Initial Meteorlake Support (rev8)
URL   : https://patchwork.freedesktop.org/series/106786/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12091 -> Patchwork_106786v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_106786v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] ([i915#3428] / [i915#6217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6] ([i915#146] / [i915#6598] / [i915#6712])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-skl-6600u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-skl-6600u:       [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][12] ([i915#4785]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][14] ([i915#6298]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][16] ([fdo#103375]) -> [INCOMPLETE][17] ([i915#5982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6730]: https://gitlab.freedesktop.org/drm/intel/issues/6730


Build changes
-------------

  * Linux: CI_DRM_12091 -> Patchwork_106786v8

  CI-20190529: 20190529
  CI_DRM_12091: 09caa2a40c9e377e8386ffbc48c26884cc4b00bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106786v8: 09caa2a40c9e377e8386ffbc48c26884cc4b00bc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f0101bc5af3a drm/i915/mtl: Do not update GV point, mask value
ad92175b102e drm/i915/mtl: Update CHICKEN_TRANS* register addresses
fdca83745b26 drm/i915/mtl: Update MBUS_DBOX credits
6a36a13ad434 drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
cde9df9c2e8c drm/i915/mtl: Add DP AUX support on TypeC ports
112f495a05ed drm/i915/mtl: Add display power wells
9fa1be2c73ec drm/i915/mtl: Add gmbus and gpio support
2191842911eb drm/i915/mtl: Define engine context layouts
a8d494d9585c drm/i915: Parse and set stepping for platforms with GMD
eee048792c0b drm/i915: Read graphics/media/display arch version from hw
4fcee36d4900 drm/i915: Move display and media IP version to runtime info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/index.html

--===============6488590922228596340==
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
<tr><td><b>Series:</b></td><td>Initial Meteorlake Support (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106786/">https://patchwork.freedesktop.org/series/106786/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12091 -&gt; Patchwork_106786v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106786v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-skl-6600u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-skl-6600u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v8/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12091 -&gt; Patchwork_106786v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12091: 09caa2a40c9e377e8386ffbc48c26884cc4b00bc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106786v8: 09caa2a40c9e377e8386ffbc48c26884cc4b00bc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f0101bc5af3a drm/i915/mtl: Do not update GV point, mask value<br />
ad92175b102e drm/i915/mtl: Update CHICKEN_TRANS* register addresses<br />
fdca83745b26 drm/i915/mtl: Update MBUS_DBOX credits<br />
6a36a13ad434 drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox<br />
cde9df9c2e8c drm/i915/mtl: Add DP AUX support on TypeC ports<br />
112f495a05ed drm/i915/mtl: Add display power wells<br />
9fa1be2c73ec drm/i915/mtl: Add gmbus and gpio support<br />
2191842911eb drm/i915/mtl: Define engine context layouts<br />
a8d494d9585c drm/i915: Parse and set stepping for platforms with GMD<br />
eee048792c0b drm/i915: Read graphics/media/display arch version from hw<br />
4fcee36d4900 drm/i915: Move display and media IP version to runtime info</p>

</body>
</html>

--===============6488590922228596340==--
