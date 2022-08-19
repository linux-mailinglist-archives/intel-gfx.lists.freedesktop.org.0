Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C8F5992DC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 04:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B1410EB77;
	Fri, 19 Aug 2022 02:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DAFE10EB77;
 Fri, 19 Aug 2022 02:01:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 441CFA00E8;
 Fri, 19 Aug 2022 02:01:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6051580752482644666=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 19 Aug 2022 02:01:22 -0000
Message-ID: <166087448223.23793.9088505386573377137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818230243.3921066-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220818230243.3921066-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HuC_loading_for_DG2?=
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

--===============6051580752482644666==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: HuC loading for DG2
URL   : https://patchwork.freedesktop.org/series/107477/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12002 -> Patchwork_107477v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/index.html

Participating hosts (32 -> 29)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (4): fi-kbl-soraka bat-rpls-1 bat-rpls-2 fi-icl-u2 

Known issues
------------

  Here are the changes found in Patchwork_107477v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#3012])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-hsw-g3258:       NOTRUN -> [INCOMPLETE][2] ([i915#4817] / [i915#6598])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][3] ([i915#4817] / [i915#6598])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271]) +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1072]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][7] ([i915#3303] / [i915#4785]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12002/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598


Build changes
-------------

  * IGT: IGT_6632 -> IGTPW_7662
  * Linux: CI_DRM_12002 -> Patchwork_107477v1

  CI-20190529: 20190529
  CI_DRM_12002: d97b20df74df568772dda6a32ee447884fd4286a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7662: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7662/index.html
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107477v1: d97b20df74df568772dda6a32ee447884fd4286a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d69c444af1a7 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
ebb1075aba55 drm/i915/huc: define gsc-compatible HuC fw for DG2
546717645510 drm/i915/huc: better define HuC status getparam possible return values.
97cd08208651 drm/i915/huc: stall media submission until HuC is loaded
5d49441d3467 drm/i915/huc: track delayed HuC load with a fence
0e490e878eca drm/i915/dg2: setup HuC loading via GSC
77139fef6cc4 drm/i915/pxp: add huc authentication and loading command
bddf8e6db3ec drm/i915/pxp: implement function for sending tee stream command
562439da26d3 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
e5589ae597c1 mei: pxp: support matching with a gfx discrete card
01a11eb16cfa mei: pxp: add command streamer API to the PXP driver
0a1d082d869f mei: bus: extend bus API to support command streamer API
d3dce26ea4f4 mei: bus: enable sending gsc commands
cb36467054a3 mei: add support to GSC extended header
729d8ec1feb4 HAX: mei: GSC support for XeHP SDV and DG2 platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/index.html

--===============6051580752482644666==
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
<tr><td><b>Series:</b></td><td>drm/i915: HuC loading for DG2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107477/">https://patchwork.freedesktop.org/series/107477/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12002 -&gt; Patchwork_107477v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/index.html</p>
<h2>Participating hosts (32 -&gt; 29)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (4): fi-kbl-soraka bat-rpls-1 bat-rpls-2 fi-icl-u2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107477v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12002/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107477v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6632 -&gt; IGTPW_7662</li>
<li>Linux: CI_DRM_12002 -&gt; Patchwork_107477v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12002: d97b20df74df568772dda6a32ee447884fd4286a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7662: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7662/index.html<br />
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107477v1: d97b20df74df568772dda6a32ee447884fd4286a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d69c444af1a7 HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI<br />
ebb1075aba55 drm/i915/huc: define gsc-compatible HuC fw for DG2<br />
546717645510 drm/i915/huc: better define HuC status getparam possible return values.<br />
97cd08208651 drm/i915/huc: stall media submission until HuC is loaded<br />
5d49441d3467 drm/i915/huc: track delayed HuC load with a fence<br />
0e490e878eca drm/i915/dg2: setup HuC loading via GSC<br />
77139fef6cc4 drm/i915/pxp: add huc authentication and loading command<br />
bddf8e6db3ec drm/i915/pxp: implement function for sending tee stream command<br />
562439da26d3 drm/i915/pxp: load the pxp module when we have a gsc-loaded huc<br />
e5589ae597c1 mei: pxp: support matching with a gfx discrete card<br />
01a11eb16cfa mei: pxp: add command streamer API to the PXP driver<br />
0a1d082d869f mei: bus: extend bus API to support command streamer API<br />
d3dce26ea4f4 mei: bus: enable sending gsc commands<br />
cb36467054a3 mei: add support to GSC extended header<br />
729d8ec1feb4 HAX: mei: GSC support for XeHP SDV and DG2 platform</p>

</body>
</html>

--===============6051580752482644666==--
