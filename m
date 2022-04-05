Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC244F4716
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 01:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C11010ED0A;
	Tue,  5 Apr 2022 23:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3753610ED0A;
 Tue,  5 Apr 2022 23:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33D62A47EB;
 Tue,  5 Apr 2022 23:27:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5891675961425862221=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 05 Apr 2022 23:27:16 -0000
Message-ID: <164920123618.24156.14697942584893234882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epanel=5Fty?=
 =?utf-8?q?pe_matching?=
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

--===============5891675961425862221==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching
URL   : https://patchwork.freedesktop.org/series/102213/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11458 -> Patchwork_22788
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22788 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22788, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22788:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-rkl-11600/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-bwr-2160/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-rkl-guc/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-bxt-dsi/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-adl-ddr5/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22788 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][9] -> [INCOMPLETE][10] ([i915#4785])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][11] ([fdo#109271] / [i915#2722] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-hsw-4770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][12] ([i915#3690])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][13] ([i915#3690])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-tgl-u2/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][14] ([i915#2403])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785


Build changes
-------------

  * Linux: CI_DRM_11458 -> Patchwork_22788

  CI-20190529: 20190529
  CI_DRM_11458: 7b4967c734a7c99ff69154d062a071181021e49d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6410: cc359d5d2d3fc8be50340ba0379bacaf5c37bc5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22788: e1e2c24beed668c078fd7851a4e3ec8ee87329d8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e1e2c24beed6 drm/i915/bios: Dump PNPID and panel name
39a5b7b20e53 drm/edid: Extract drm_edid_decode_mfg_id()
2d62931bb39e drm/i915: Respect VBT seamless DRRS min refresh rate
00d122192a92 drm/i915/bios: Parse the seamless DRRS min refresh rate
179efa1ac625 drm/i915/bios: Determine panel type via PNPID match
53decd0e521a drm/i915/bios: Refactor panel_type code
2c6005cc3af9 drm/i915/bios: Extract get_panel_type()
90cb9845428d drm/i915/bios: Do panel specific VBT parsing later
258da58b3f75 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
d1fd524d3ca5 drm/i915/pps: Split PPS init+sanitize in two
36484fb6dd23 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
e1742d2d9cf5 drm/i915/bios: Split parse_driver_features() into two parts
f00aa539537f drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
d07d7dcf7c2d drm/i915/bios: Get access to the tail end of the LFP data block
086e15f0d645 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
057a8b805d81 drm/i915/bios: Reorder panel DTD parsing
0ca5de1a6532 drm/i915/bios: Validate the panel_name table
73c2bd353d63 drm/i915/bios: Trust the LFP data pointers
cccb9f6e5310 drm/i915/bios: Validate LFP data table pointers
90add1560515 drm/i915/bios: Use the copy of the LFP data table always
578166bc3056 drm/i915/bios: Make copies of VBT data blocks
05d9638c2980 drm/i915/bios: Use the cached BDB version

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/index.html

--===============5891675961425862221==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling and PNPID-&gt;panel_type matching</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102213/">https://patchwork.freedesktop.org/series/102213/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11458 -&gt; Patchwork_22788</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22788 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22788, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22788:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22788 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22788/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11458 -&gt; Patchwork_22788</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11458: 7b4967c734a7c99ff69154d062a071181021e49d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6410: cc359d5d2d3fc8be50340ba0379bacaf5c37bc5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22788: e1e2c24beed668c078fd7851a4e3ec8ee87329d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e1e2c24beed6 drm/i915/bios: Dump PNPID and panel name<br />
39a5b7b20e53 drm/edid: Extract drm_edid_decode_mfg_id()<br />
2d62931bb39e drm/i915: Respect VBT seamless DRRS min refresh rate<br />
00d122192a92 drm/i915/bios: Parse the seamless DRRS min refresh rate<br />
179efa1ac625 drm/i915/bios: Determine panel type via PNPID match<br />
53decd0e521a drm/i915/bios: Refactor panel_type code<br />
2c6005cc3af9 drm/i915/bios: Extract get_panel_type()<br />
90cb9845428d drm/i915/bios: Do panel specific VBT parsing later<br />
258da58b3f75 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed<br />
d1fd524d3ca5 drm/i915/pps: Split PPS init+sanitize in two<br />
36484fb6dd23 drm/i915/bios: Split VBT parsing to global vs. panel specific parts<br />
e1742d2d9cf5 drm/i915/bios: Split parse_driver_features() into two parts<br />
f00aa539537f drm/i915/bios: Assume panel_type==0 if the VBT has bogus data<br />
d07d7dcf7c2d drm/i915/bios: Get access to the tail end of the LFP data block<br />
086e15f0d645 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them<br />
057a8b805d81 drm/i915/bios: Reorder panel DTD parsing<br />
0ca5de1a6532 drm/i915/bios: Validate the panel_name table<br />
73c2bd353d63 drm/i915/bios: Trust the LFP data pointers<br />
cccb9f6e5310 drm/i915/bios: Validate LFP data table pointers<br />
90add1560515 drm/i915/bios: Use the copy of the LFP data table always<br />
578166bc3056 drm/i915/bios: Make copies of VBT data blocks<br />
05d9638c2980 drm/i915/bios: Use the cached BDB version</p>

</body>
</html>

--===============5891675961425862221==--
