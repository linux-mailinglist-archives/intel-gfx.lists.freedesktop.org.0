Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8DD501A13
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 19:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D7B10E190;
	Thu, 14 Apr 2022 17:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 806EE10E190;
 Thu, 14 Apr 2022 17:35:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70776A0096;
 Thu, 14 Apr 2022 17:35:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4606675107410090718=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 17:35:32 -0000
Message-ID: <164995773242.1347.16673685498719890255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649948562.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_CEA_data_block_iterators=2C_and_more_=28rev2=29?=
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

--===============4606675107410090718==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: CEA data block iterators, and more (rev2)
URL   : https://patchwork.freedesktop.org/series/102703/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11500 -> Patchwork_102703v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/index.html

Participating hosts (48 -> 47)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102703v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_102703v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4] ([i915#146])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [PASS][5] -> [FAIL][6] ([i915#3049])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - fi-kbl-soraka:      [PASS][7] -> [INCOMPLETE][8] ([i915#5633])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][9] -> [INCOMPLETE][10] ([i915#3921])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#5341])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][12] ([fdo#109271]) +39 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_busy@busy@all:
    - {bat-dg2-8}:        [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/bat-dg2-8/igt@gem_busy@busy@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/bat-dg2-8/igt@gem_busy@busy@all.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][15] ([i915#402]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-tgl-u2/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5633]: https://gitlab.freedesktop.org/drm/intel/issues/5633


Build changes
-------------

  * Linux: CI_DRM_11500 -> Patchwork_102703v2

  CI-20190529: 20190529
  CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102703v2: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9223856ed1eb drm/edid: sunset drm_find_cea_extension()
db7b7fdf7f0c drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
9e5b33ac68fa drm/edid: detect color formats and CTA revision in all CTA extensions
fb5fbb402f29 drm/edid: detect basic audio in all CEA extensions
e8082107cbac drm/edid: restore some type safety to cea_db_*() functions
b63883522572 drm/edid: sunset the old unused cea data block iterators
1696c71fd1ed drm/edid: convert drm_edid_to_eld() to use cea db iter
063cfa28250a drm/edid: convert drm_parse_cea_ext() to use cea db iter
c64da09cdf7d drm/edid: convert drm_detect_monitor_audio() to use cea db iter
5a6de5e87e03 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
0d6f553e930e drm/edid: convert drm_edid_to_sad() to use cea db iter
e2f35f18a68a drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
c13bbdd4a927 drm/edid: convert add_cea_modes() to use cea db iter
64d36038701c drm/edid: clean up cea_db_is_*() functions
3f5f3afd7083 drm/edid: add iterator for CTA data blocks
34940349c867 drm/edid: add iterator for EDID base and extension blocks
36f816d19c5a drm/edid: clean up CTA data block tag definitions
b358e1e3dcb3 drm/edid: check for HF-SCDB block
878d37ca31da drm/edid: reset display info in drm_add_edid_modes() for NULL edid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/index.html

--===============4606675107410090718==
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
<tr><td><b>Series:</b></td><td>drm/edid: CEA data block iterators, and more (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102703/">https://patchwork.freedesktop.org/series/102703/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11500 -&gt; Patchwork_102703v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/index.html</p>
<h2>Participating hosts (48 -&gt; 47)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102703v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102703v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5633">i915#5633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/bat-dg2-8/igt@gem_busy@busy@all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/bat-dg2-8/igt@gem_busy@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v2/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11500 -&gt; Patchwork_102703v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102703v2: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9223856ed1eb drm/edid: sunset drm_find_cea_extension()<br />
db7b7fdf7f0c drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev<br />
9e5b33ac68fa drm/edid: detect color formats and CTA revision in all CTA extensions<br />
fb5fbb402f29 drm/edid: detect basic audio in all CEA extensions<br />
e8082107cbac drm/edid: restore some type safety to cea_db_<em>() functions<br />
b63883522572 drm/edid: sunset the old unused cea data block iterators<br />
1696c71fd1ed drm/edid: convert drm_edid_to_eld() to use cea db iter<br />
063cfa28250a drm/edid: convert drm_parse_cea_ext() to use cea db iter<br />
c64da09cdf7d drm/edid: convert drm_detect_monitor_audio() to use cea db iter<br />
5a6de5e87e03 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter<br />
0d6f553e930e drm/edid: convert drm_edid_to_sad() to use cea db iter<br />
e2f35f18a68a drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter<br />
c13bbdd4a927 drm/edid: convert add_cea_modes() to use cea db iter<br />
64d36038701c drm/edid: clean up cea_db_is_</em>() functions<br />
3f5f3afd7083 drm/edid: add iterator for CTA data blocks<br />
34940349c867 drm/edid: add iterator for EDID base and extension blocks<br />
36f816d19c5a drm/edid: clean up CTA data block tag definitions<br />
b358e1e3dcb3 drm/edid: check for HF-SCDB block<br />
878d37ca31da drm/edid: reset display info in drm_add_edid_modes() for NULL edid</p>

</body>
</html>

--===============4606675107410090718==--
