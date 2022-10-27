Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE95660ED22
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 02:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7CB10E5F7;
	Thu, 27 Oct 2022 00:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BAE310E5FC;
 Thu, 27 Oct 2022 00:45:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 944A0A0003;
 Thu, 27 Oct 2022 00:45:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8336758554860386315=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 27 Oct 2022 00:45:42 -0000
Message-ID: <166683154258.4254.15320414718170105871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221022001008.2340224-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_prepare_for_uC_loading_on_MTL_=28rev5=29?=
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

--===============8336758554860386315==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: prepare for uC loading on MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/108925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12302 -> Patchwork_108925v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (2): fi-ctg-p8600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108925v5:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {bat-adlp-6}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/bat-adlp-6/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_108925v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][4] -> [SKIP][5] ([fdo#109271]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [PASS][6] -> [DMESG-WARN][7] ([i915#5591])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][8] ([fdo#111827]) +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([i915#4103])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-11}:       [FAIL][11] ([i915#7029]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/bat-dg2-11/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][15] ([i915#6298]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][17] ([i915#62]) -> [PASS][18] +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029


Build changes
-------------

  * Linux: CI_DRM_12302 -> Patchwork_108925v5

  CI-20190529: 20190529
  CI_DRM_12302: e4a79db53c61cea3bff214c6c5937c84db8195ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108925v5: e4a79db53c61cea3bff214c6c5937c84db8195ce @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ef067db57321 drm/i915/guc: handle interrupts from media GuC
1135eca49d27 drm/i915/guc: define media GT GuC send regs
256d0bee0140 drm/i915/mtl: Handle wopcm per-GT and limit calculations.
e690aa4952fc drm/i915/guc: Add GuC deprivilege feature to MTL
4d278be130f8 drm/i915/uc: use different ggtt pin offsets for uc loads
78e4fecd5356 drm/i915/uc: fetch uc firmwares for each GT
65f030cd825b drm/i915/huc: only load HuC on GTs that have VCS engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/index.html

--===============8336758554860386315==
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
<tr><td><b>Series:</b></td><td>drm/i915: prepare for uC loading on MTL (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108925/">https://patchwork.freedesktop.org/series/108925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12302 -&gt; Patchwork_108925v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (2): fi-ctg-p8600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108925v5:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/bat-adlp-6/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108925v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12302/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108925v5/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +15 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12302 -&gt; Patchwork_108925v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12302: e4a79db53c61cea3bff214c6c5937c84db8195ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108925v5: e4a79db53c61cea3bff214c6c5937c84db8195ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ef067db57321 drm/i915/guc: handle interrupts from media GuC<br />
1135eca49d27 drm/i915/guc: define media GT GuC send regs<br />
256d0bee0140 drm/i915/mtl: Handle wopcm per-GT and limit calculations.<br />
e690aa4952fc drm/i915/guc: Add GuC deprivilege feature to MTL<br />
4d278be130f8 drm/i915/uc: use different ggtt pin offsets for uc loads<br />
78e4fecd5356 drm/i915/uc: fetch uc firmwares for each GT<br />
65f030cd825b drm/i915/huc: only load HuC on GTs that have VCS engines</p>

</body>
</html>

--===============8336758554860386315==--
