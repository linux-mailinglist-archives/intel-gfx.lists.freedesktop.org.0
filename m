Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687DA5230E0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 12:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E1410ED10;
	Wed, 11 May 2022 10:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33DF410ED10;
 Wed, 11 May 2022 10:42:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2881AAADD3;
 Wed, 11 May 2022 10:42:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6771823965933426280=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 11 May 2022 10:42:47 -0000
Message-ID: <165226576715.2699.8260497659249869396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1652097712.git.jani.nikula@intel.com>
In-Reply-To: <cover.1652097712.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_introduce_struct_drm=5Fedid_=28rev6=29?=
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

--===============6771823965933426280==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: introduce struct drm_edid (rev6)
URL   : https://patchwork.freedesktop.org/series/103665/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11635 -> Patchwork_103665v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/index.html

Participating hosts (42 -> 34)
------------------------------

  Missing    (8): fi-bdw-samus bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 bat-rpls-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_103665v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][1] -> [DMESG-FAIL][2] ([i915#3987])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4] ([i915#4785])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][5] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#4312] / [i915#5594])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][7] ([i915#5122]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@coherency:
    - fi-bdw-5557u:       [INCOMPLETE][9] ([i915#5674] / [i915#5685]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-bdw-5557u/igt@i915_selftest@live@coherency.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@vma:
    - fi-bdw-5557u:       [INCOMPLETE][11] ([i915#5681]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-bdw-5557u/igt@i915_selftest@live@vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@vma.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5674]: https://gitlab.freedesktop.org/drm/intel/issues/5674
  [i915#5681]: https://gitlab.freedesktop.org/drm/intel/issues/5681
  [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685


Build changes
-------------

  * Linux: CI_DRM_11635 -> Patchwork_103665v6

  CI-20190529: 20190529
  CI_DRM_11635: aa0155fd1466e1ee5e649ec07562dd93623fad8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103665v6: aa0155fd1466e1ee5e649ec07562dd93623fad8d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f1105153ae3c drm/edid: convert version_greater() to drm_edid
0c24b4139e53 drm/displayid: convert to drm_edid
00383ed4afc3 drm/edid: add drm_edid helper for drm_update_tile_info()
b243c1f6c54a drm/edid: convert drm_edid_iter_begin() to drm_edid
cc77b9fdd987 drm/edid: convert cea_db_iter_edid_begin() to drm_edid
b8711174bdff drm/edid: add drm_edid helper for drm_detect_monitor_audio()
faa071ea915c drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
dfe030f6dd38 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
4d0f59cc8334 drm/edid: add drm_edid helper for drm_edid_to_sad()
de4a141847bc drm/edid: convert drm_for_each_detailed_block() to drm_edid
f83f434e7fd5 drm/edid: convert get_monitor_name() to drm_edid
586c81dd661f drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
89137d2a0e75 drm/edid: convert drm_mode_std() and children to drm_edid
ab0d2f1c4e0a drm/edid: convert drm_cvt_modes_for_range() to drm_edid
8d7bd2200671 drm/edid: convert drm_gtf_modes_for_range() to drm_edid
27987cc7e23a drm/edid: convert drm_dmt_modes_for_range() to drm_edid
6d13f5844e1d drm/edid: convert drm_mode_detailed() to drm_edid
36409d914255 drm/edid: convert struct detailed_mode_closure to drm_edid
dfa33ccc2771 drm/edid: convert drm_edid_connector_update() to drm_edid fully
1b76e36f573a drm/edid: propagate drm_edid to drm_edid_to_eld()
e197e8bc1805 drm/edid: keep propagating drm_edid to display info
785f91c0e4bf drm/edid: start propagating drm_edid to lower levels
b5b967c8ede7 drm/edid: add struct drm_edid container
b843e54c621d drm/edid: convert drm_for_each_detailed_block() to edid iter
3a1750347de1 drm/edid: use else-if in CTA extension parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/index.html

--===============6771823965933426280==
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
<tr><td><b>Series:</b></td><td>drm/edid: introduce struct drm_edid (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103665/">https://patchwork.freedesktop.org/series/103665/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11635 -&gt; Patchwork_103665v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/index.html</p>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Missing    (8): fi-bdw-samus bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-ctg-p8600 bat-rpls-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103665v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5674">i915#5674</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5685">i915#5685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11635/fi-bdw-5557u/igt@i915_selftest@live@vma.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5681">i915#5681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v6/fi-bdw-5557u/igt@i915_selftest@live@vma.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11635 -&gt; Patchwork_103665v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11635: aa0155fd1466e1ee5e649ec07562dd93623fad8d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103665v6: aa0155fd1466e1ee5e649ec07562dd93623fad8d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f1105153ae3c drm/edid: convert version_greater() to drm_edid<br />
0c24b4139e53 drm/displayid: convert to drm_edid<br />
00383ed4afc3 drm/edid: add drm_edid helper for drm_update_tile_info()<br />
b243c1f6c54a drm/edid: convert drm_edid_iter_begin() to drm_edid<br />
cc77b9fdd987 drm/edid: convert cea_db_iter_edid_begin() to drm_edid<br />
b8711174bdff drm/edid: add drm_edid helper for drm_detect_monitor_audio()<br />
faa071ea915c drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()<br />
dfe030f6dd38 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()<br />
4d0f59cc8334 drm/edid: add drm_edid helper for drm_edid_to_sad()<br />
de4a141847bc drm/edid: convert drm_for_each_detailed_block() to drm_edid<br />
f83f434e7fd5 drm/edid: convert get_monitor_name() to drm_edid<br />
586c81dd661f drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid<br />
89137d2a0e75 drm/edid: convert drm_mode_std() and children to drm_edid<br />
ab0d2f1c4e0a drm/edid: convert drm_cvt_modes_for_range() to drm_edid<br />
8d7bd2200671 drm/edid: convert drm_gtf_modes_for_range() to drm_edid<br />
27987cc7e23a drm/edid: convert drm_dmt_modes_for_range() to drm_edid<br />
6d13f5844e1d drm/edid: convert drm_mode_detailed() to drm_edid<br />
36409d914255 drm/edid: convert struct detailed_mode_closure to drm_edid<br />
dfa33ccc2771 drm/edid: convert drm_edid_connector_update() to drm_edid fully<br />
1b76e36f573a drm/edid: propagate drm_edid to drm_edid_to_eld()<br />
e197e8bc1805 drm/edid: keep propagating drm_edid to display info<br />
785f91c0e4bf drm/edid: start propagating drm_edid to lower levels<br />
b5b967c8ede7 drm/edid: add struct drm_edid container<br />
b843e54c621d drm/edid: convert drm_for_each_detailed_block() to edid iter<br />
3a1750347de1 drm/edid: use else-if in CTA extension parsing</p>

</body>
</html>

--===============6771823965933426280==--
