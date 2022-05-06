Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FBA51D6CD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 13:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2142110E58B;
	Fri,  6 May 2022 11:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B171D10E58B;
 Fri,  6 May 2022 11:38:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B02FEA363D;
 Fri,  6 May 2022 11:38:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1357138910990954882=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 06 May 2022 11:38:09 -0000
Message-ID: <165183708971.18815.17619262711517511155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651830938.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_introduce_struct_drm=5Fedid?=
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

--===============1357138910990954882==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: introduce struct drm_edid
URL   : https://patchwork.freedesktop.org/series/103665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11616 -> Patchwork_103665v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103665v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103665v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/index.html

Participating hosts (42 -> 36)
------------------------------

  Additional (3): fi-icl-u2 bat-jsl-1 bat-dg2-9 
  Missing    (9): fi-kbl-7567u fi-bxt-dsi fi-bdw-5557u bat-adlm-1 fi-bsw-cyan fi-ilk-650 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103665v1:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-bdw-gvtdvm:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bdw-gvtdvm/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bdw-gvtdvm/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-pnv-d510:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html
    - fi-blb-e6850:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_103665v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-snb-2600:        [PASS][9] -> [FAIL][10] ([i915#4338])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-snb-2600/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-snb-2600/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][11] ([i915#2403] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][12] ([i915#3690])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-icl-u2/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][13] ([i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bwr-2160/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][14] ([i915#2403] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5616]: https://gitlab.freedesktop.org/drm/intel/issues/5616
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917


Build changes
-------------

  * Linux: CI_DRM_11616 -> Patchwork_103665v1

  CI-20190529: 20190529
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103665v1: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c116ae5ca936 drm/edid: convert version_greater() to drm_edid
17eb09103c8a drm/displayid: convert to drm_edid
4e57cd1461b2 drm/edid: add drm_edid helper for drm_update_tile_info()
93fc0eff94e8 drm/edid: convert drm_edid_iter_begin() to drm_edid
136b20f635b7 drm/edid: convert cea_db_iter_edid_begin() to drm_edid
77204a25d5c7 drm/edid: add drm_edid helper for drm_detect_monitor_audio()
86538967d77a drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
85805b1d0dc0 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
21679cbce550 drm/edid: add drm_edid helper for drm_edid_to_sad()
8b8b71902254 drm/edid: convert drm_for_each_detailed_block() to drm_edid
3791f409191d drm/edid: convert get_monitor_name() to drm_edid
092fdd563ce8 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
17571a777d37 drm/edid: convert drm_mode_std() and children to drm_edid
cfcfbe8b5034 drm/edid: convert drm_cvt_modes_for_range() to drm_edid
bf07a27fa8bc drm/edid: convert drm_gtf_modes_for_range() to drm_edid
5e4a874a1c68 drm/edid: convert drm_dmt_modes_for_range() to drm_edid
d847764f12cd drm/edid: convert drm_mode_detailed() to drm_edid
519aa79fb462 drm/edid: convert struct detailed_mode_closure to drm_edid
7d68d3a03888 drm/edid: convert drm_edid_connector_update() to drm_edid fully
4bc3fd0f32a2 drm/edid: propagate drm_edid to drm_edid_to_eld()
487f7eb750d7 drm/edid: keep propagating drm_edid to display info
b3351d6e209d drm/edid: start propagating drm_edid to lower levels
d9762b9c5962 drm/edid: add struct drm_edid container
412e9da080b4 drm/edid: convert drm_for_each_detailed_block() to edid iter
09baca11b6c4 drm/edid: use else-if in CTA extension parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/index.html

--===============1357138910990954882==
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
<tr><td><b>Series:</b></td><td>drm/edid: introduce struct drm_edid</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103665/">https://patchwork.freedesktop.org/series/103665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11616 -&gt; Patchwork_103665v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103665v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103665v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Additional (3): fi-icl-u2 bat-jsl-1 bat-dg2-9 <br />
  Missing    (9): fi-kbl-7567u fi-bxt-dsi fi-bdw-5557u bat-adlm-1 fi-bsw-cyan fi-ilk-650 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103665v1:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bdw-gvtdvm/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103665v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-snb-2600/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4338">i915#4338</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11616 -&gt; Patchwork_103665v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103665v1: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c116ae5ca936 drm/edid: convert version_greater() to drm_edid<br />
17eb09103c8a drm/displayid: convert to drm_edid<br />
4e57cd1461b2 drm/edid: add drm_edid helper for drm_update_tile_info()<br />
93fc0eff94e8 drm/edid: convert drm_edid_iter_begin() to drm_edid<br />
136b20f635b7 drm/edid: convert cea_db_iter_edid_begin() to drm_edid<br />
77204a25d5c7 drm/edid: add drm_edid helper for drm_detect_monitor_audio()<br />
86538967d77a drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()<br />
85805b1d0dc0 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()<br />
21679cbce550 drm/edid: add drm_edid helper for drm_edid_to_sad()<br />
8b8b71902254 drm/edid: convert drm_for_each_detailed_block() to drm_edid<br />
3791f409191d drm/edid: convert get_monitor_name() to drm_edid<br />
092fdd563ce8 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid<br />
17571a777d37 drm/edid: convert drm_mode_std() and children to drm_edid<br />
cfcfbe8b5034 drm/edid: convert drm_cvt_modes_for_range() to drm_edid<br />
bf07a27fa8bc drm/edid: convert drm_gtf_modes_for_range() to drm_edid<br />
5e4a874a1c68 drm/edid: convert drm_dmt_modes_for_range() to drm_edid<br />
d847764f12cd drm/edid: convert drm_mode_detailed() to drm_edid<br />
519aa79fb462 drm/edid: convert struct detailed_mode_closure to drm_edid<br />
7d68d3a03888 drm/edid: convert drm_edid_connector_update() to drm_edid fully<br />
4bc3fd0f32a2 drm/edid: propagate drm_edid to drm_edid_to_eld()<br />
487f7eb750d7 drm/edid: keep propagating drm_edid to display info<br />
b3351d6e209d drm/edid: start propagating drm_edid to lower levels<br />
d9762b9c5962 drm/edid: add struct drm_edid container<br />
412e9da080b4 drm/edid: convert drm_for_each_detailed_block() to edid iter<br />
09baca11b6c4 drm/edid: use else-if in CTA extension parsing</p>

</body>
</html>

--===============1357138910990954882==--
