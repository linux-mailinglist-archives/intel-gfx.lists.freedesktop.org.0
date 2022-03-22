Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5C34E4938
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 23:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1BE10E112;
	Tue, 22 Mar 2022 22:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F95410E12A;
 Tue, 22 Mar 2022 22:37:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F13CAADD6;
 Tue, 22 Mar 2022 22:37:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4994106411464011157=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 22 Mar 2022 22:37:15 -0000
Message-ID: <164798863557.20008.11315115518678033944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1647985054.git.jani.nikula@intel.com>
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_overhaul_CEA_data_block_iteration?=
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

--===============4994106411464011157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: overhaul CEA data block iteration
URL   : https://patchwork.freedesktop.org/series/101659/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11397 -> Patchwork_22648
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html

Participating hosts (48 -> 40)
------------------------------

  Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22648 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-hsw-4770:        [PASS][2] -> [SKIP][3] ([fdo#109271]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-glk-dsi:         [DMESG-WARN][4] ([i915#2943]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][6] ([i915#4494] / [i915#4957]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [INCOMPLETE][8] ([i915#3303]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][10] ([i915#3576]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-adlp-6/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5338]: https://gitlab.freedesktop.org/drm/intel/issues/5338


Build changes
-------------

  * Linux: CI_DRM_11397 -> Patchwork_22648

  CI-20190529: 20190529
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22648: a6b8101aaa65a5a20a66a7603f13e9173d9bcef5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a6b8101aaa65 drm/edid: sunset drm_find_cea_extension()
13cc175a8ee2 drm/edid: skip CEA extension scan in drm_edid_to_eld() just for CEA rev
6fa348a171ae drm/edid: detect color formats and CEA revision only on CEA extension
3fc75617d81c drm/edid: detect basic audio only on CEA extension
e3edc2173219 drm/edid: restore some type safety to cea_db_*() functions
0ba046c15f17 drm/edid: sunset the old unused cea data block iterators
bdf077ccb603 drm/edid: convert drm_edid_to_eld() to use cea db iter
ade266ca2a2d drm/edid: convert drm_parse_cea_ext() to use cea db iter
ffdd375908fd drm/edid: convert drm_detect_monitor_audio() to use cea db iter
22a1b23994a7 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
1d63449f0022 drm/edid: convert drm_edid_to_sad() to use cea db iter
d7bef300e712 drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
db6dc8dd41fb drm/edid: convert add_cea_modes() to use cea db iter
8f74ddc1652a drm/edid: clean up cea_db_is_*() functions
4c530a148bfe drm/edid: add iterator for CEA data blocks
0d0acb1b0708 drm/edid: add iterator for EDID base and extension blocks
a946b4b8093f drm/edid: clean up CEA data block tag definitions
a04b9a47ee0e drm: use drm_edid_extension_block_count() and drm_edid_size()
a1fd8fea9724 drm/edid: add drm_edid_extension_block_count() and drm_edid_size()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html

--===============4994106411464011157==
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
<tr><td><b>Series:</b></td><td>drm/edid: overhaul CEA data block iteration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101659/">https://patchwork.freedesktop.org/series/101659/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11397 -&gt; Patchwork_22648</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/index.html</p>
<h2>Participating hosts (48 -&gt; 40)</h2>
<p>Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22648 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22648/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11397 -&gt; Patchwork_22648</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22648: a6b8101aaa65a5a20a66a7603f13e9173d9bcef5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a6b8101aaa65 drm/edid: sunset drm_find_cea_extension()<br />
13cc175a8ee2 drm/edid: skip CEA extension scan in drm_edid_to_eld() just for CEA rev<br />
6fa348a171ae drm/edid: detect color formats and CEA revision only on CEA extension<br />
3fc75617d81c drm/edid: detect basic audio only on CEA extension<br />
e3edc2173219 drm/edid: restore some type safety to cea_db_<em>() functions<br />
0ba046c15f17 drm/edid: sunset the old unused cea data block iterators<br />
bdf077ccb603 drm/edid: convert drm_edid_to_eld() to use cea db iter<br />
ade266ca2a2d drm/edid: convert drm_parse_cea_ext() to use cea db iter<br />
ffdd375908fd drm/edid: convert drm_detect_monitor_audio() to use cea db iter<br />
22a1b23994a7 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter<br />
1d63449f0022 drm/edid: convert drm_edid_to_sad() to use cea db iter<br />
d7bef300e712 drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter<br />
db6dc8dd41fb drm/edid: convert add_cea_modes() to use cea db iter<br />
8f74ddc1652a drm/edid: clean up cea_db_is_</em>() functions<br />
4c530a148bfe drm/edid: add iterator for CEA data blocks<br />
0d0acb1b0708 drm/edid: add iterator for EDID base and extension blocks<br />
a946b4b8093f drm/edid: clean up CEA data block tag definitions<br />
a04b9a47ee0e drm: use drm_edid_extension_block_count() and drm_edid_size()<br />
a1fd8fea9724 drm/edid: add drm_edid_extension_block_count() and drm_edid_size()</p>

</body>
</html>

--===============4994106411464011157==--
