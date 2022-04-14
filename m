Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F6950170D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1657110E076;
	Thu, 14 Apr 2022 15:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11F5710E076;
 Thu, 14 Apr 2022 15:57:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DE97A00A0;
 Thu, 14 Apr 2022 15:57:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0275588107722354215=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 15:57:27 -0000
Message-ID: <164995184702.1346.9846749350576318400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649948562.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_CEA_data_block_iterators=2C_and_more?=
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

--===============0275588107722354215==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: CEA data block iterators, and more
URL   : https://patchwork.freedesktop.org/series/102703/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11500 -> Patchwork_102703v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102703v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102703v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/index.html

Participating hosts (48 -> 47)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102703v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_102703v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#5341])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +39 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_busy@busy@all:
    - {bat-dg2-8}:        [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/bat-dg2-8/igt@gem_busy@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/bat-dg2-8/igt@gem_busy@busy@all.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [DMESG-FAIL][9] ([i915#3674]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-tgl-u2/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341


Build changes
-------------

  * Linux: CI_DRM_11500 -> Patchwork_102703v1

  CI-20190529: 20190529
  CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102703v1: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0991b767d773 drm/edid: sunset drm_find_cea_extension()
b358da72e973 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
bff250b6d20e drm/edid: detect color formats and CTA revision in all CTA extensions
46dde44e497f drm/edid: detect basic audio in all CEA extensions
842e7e440967 drm/edid: restore some type safety to cea_db_*() functions
bc5301125bfa drm/edid: sunset the old unused cea data block iterators
67122fff9aa9 drm/edid: convert drm_edid_to_eld() to use cea db iter
1281f7cb28aa drm/edid: convert drm_parse_cea_ext() to use cea db iter
bc3d741b147d drm/edid: convert drm_detect_monitor_audio() to use cea db iter
06ccfc613c86 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
fdfa91093144 drm/edid: convert drm_edid_to_sad() to use cea db iter
e088c4b7dd1c drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
9650d478a736 drm/edid: convert add_cea_modes() to use cea db iter
5ca05c008863 drm/edid: clean up cea_db_is_*() functions
f5d94e3c55e8 drm/edid: add iterator for CTA data blocks
4629eb0f90f1 drm/edid: add iterator for EDID base and extension blocks
77b5301ab23d drm/edid: clean up CTA data block tag definitions
4de335d12534 drm/edid: check for HF-SCDB block
53d26c484def drm/edid: reset display info in drm_add_edid_modes() for NULL edid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/index.html

--===============0275588107722354215==
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
<tr><td><b>Series:</b></td><td>drm/edid: CEA data block iterators, and more</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102703/">https://patchwork.freedesktop.org/series/102703/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11500 -&gt; Patchwork_102703v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102703v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102703v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/index.html</p>
<h2>Participating hosts (48 -&gt; 47)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102703v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102703v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/bat-dg2-8/igt@gem_busy@busy@all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/bat-dg2-8/igt@gem_busy@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102703v1/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11500 -&gt; Patchwork_102703v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102703v1: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0991b767d773 drm/edid: sunset drm_find_cea_extension()<br />
b358da72e973 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev<br />
bff250b6d20e drm/edid: detect color formats and CTA revision in all CTA extensions<br />
46dde44e497f drm/edid: detect basic audio in all CEA extensions<br />
842e7e440967 drm/edid: restore some type safety to cea_db_<em>() functions<br />
bc5301125bfa drm/edid: sunset the old unused cea data block iterators<br />
67122fff9aa9 drm/edid: convert drm_edid_to_eld() to use cea db iter<br />
1281f7cb28aa drm/edid: convert drm_parse_cea_ext() to use cea db iter<br />
bc3d741b147d drm/edid: convert drm_detect_monitor_audio() to use cea db iter<br />
06ccfc613c86 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter<br />
fdfa91093144 drm/edid: convert drm_edid_to_sad() to use cea db iter<br />
e088c4b7dd1c drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter<br />
9650d478a736 drm/edid: convert add_cea_modes() to use cea db iter<br />
5ca05c008863 drm/edid: clean up cea_db_is_</em>() functions<br />
f5d94e3c55e8 drm/edid: add iterator for CTA data blocks<br />
4629eb0f90f1 drm/edid: add iterator for EDID base and extension blocks<br />
77b5301ab23d drm/edid: clean up CTA data block tag definitions<br />
4de335d12534 drm/edid: check for HF-SCDB block<br />
53d26c484def drm/edid: reset display info in drm_add_edid_modes() for NULL edid</p>

</body>
</html>

--===============0275588107722354215==--
