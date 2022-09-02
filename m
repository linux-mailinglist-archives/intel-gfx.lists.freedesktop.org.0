Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0025ABAF3
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 00:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E9010E918;
	Fri,  2 Sep 2022 22:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87D7910E918;
 Fri,  2 Sep 2022 22:57:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51662A7DFF;
 Fri,  2 Sep 2022 22:57:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8536834057053968097=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Fri, 02 Sep 2022 22:57:08 -0000
Message-ID: <166215942831.22602.3402600190948429874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW5p?=
 =?utf-8?q?tial_Meteorlake_Support_=28rev6=29?=
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

--===============8536834057053968097==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Initial Meteorlake Support (rev6)
URL   : https://patchwork.freedesktop.org/series/106786/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12067 -> Patchwork_106786v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/index.html

Participating hosts (32 -> 31)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (2): fi-bdw-samus fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_106786v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#3012])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][2] -> [INCOMPLETE][3] ([i915#3303] / [i915#4785])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][4] -> [DMESG-FAIL][5] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271]) +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1072]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9] ([i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#4312] / [i915#6246])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-9}:        [FAIL][11] ([i915#5886]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-dg2-9/igt@gem_ringfill@basic-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/bat-dg2-9/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][13] ([i915#6367]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6580]: https://gitlab.freedesktop.org/drm/intel/issues/6580
  [i915#6670]: https://gitlab.freedesktop.org/drm/intel/issues/6670


Build changes
-------------

  * Linux: CI_DRM_12067 -> Patchwork_106786v6

  CI-20190529: 20190529
  CI_DRM_12067: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106786v6: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0dec8cb94232 drm/i915/mtl: Do not update GV point, mask value
18f5c7aa9b1a drm/i915/mtl: Update CHICKEN_TRANS* register addresses
c4449b314175 drm/i915/mtl: Update MBUS_DBOX credits
950c6ebcad62 drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
2c764dbbaee8 drm/i915/mtl: Add DP AUX support on TypeC ports
35d898d18fab drm/i915/mtl: Add display power wells
c2cd6e8132b0 drm/i915/mtl: Add gmbus and gpio support
3722a19b34cd drm/i915/mtl: Define engine context layouts
6e4220e90b99 drm/i915: Parse and set stepping for platforms with GMD
d80794796337 drm/i915: Read graphics/media/display arch version from hw
dfe734f8a689 drm/i915: Move display and media IP version to runtime info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/index.html

--===============8536834057053968097==
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
<tr><td><b>Series:</b></td><td>Initial Meteorlake Support (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106786/">https://patchwork.freedesktop.org/series/106786/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12067 -&gt; Patchwork_106786v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/index.html</p>
<h2>Participating hosts (32 -&gt; 31)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (2): fi-bdw-samus fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106786v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-dg2-9/igt@gem_ringfill@basic-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5886">i915#5886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/bat-dg2-9/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106786v6/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12067 -&gt; Patchwork_106786v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12067: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106786v6: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0dec8cb94232 drm/i915/mtl: Do not update GV point, mask value<br />
18f5c7aa9b1a drm/i915/mtl: Update CHICKEN_TRANS* register addresses<br />
c4449b314175 drm/i915/mtl: Update MBUS_DBOX credits<br />
950c6ebcad62 drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox<br />
2c764dbbaee8 drm/i915/mtl: Add DP AUX support on TypeC ports<br />
35d898d18fab drm/i915/mtl: Add display power wells<br />
c2cd6e8132b0 drm/i915/mtl: Add gmbus and gpio support<br />
3722a19b34cd drm/i915/mtl: Define engine context layouts<br />
6e4220e90b99 drm/i915: Parse and set stepping for platforms with GMD<br />
d80794796337 drm/i915: Read graphics/media/display arch version from hw<br />
dfe734f8a689 drm/i915: Move display and media IP version to runtime info</p>

</body>
</html>

--===============8536834057053968097==--
