Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0BE51D825
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 14:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7AF11214E;
	Fri,  6 May 2022 12:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D3CE11214E;
 Fri,  6 May 2022 12:47:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BEF9A7DFB;
 Fri,  6 May 2022 12:47:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7339970905037891044=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 06 May 2022 12:47:13 -0000
Message-ID: <165184123341.18815.2207980607688695453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651830938.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_introduce_struct_drm=5Fedid_=28rev2=29?=
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

--===============7339970905037891044==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: introduce struct drm_edid (rev2)
URL   : https://patchwork.freedesktop.org/series/103665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11616 -> Patchwork_103665v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103665v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103665v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/index.html

Participating hosts (42 -> 36)
------------------------------

  Additional (3): fi-icl-u2 bat-jsl-1 bat-dg2-9 
  Missing    (9): fi-kbl-7567u fi-bdw-5557u bat-adlm-1 fi-bsw-cyan fi-ilk-650 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 fi-snb-2600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103665v2:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-bdw-gvtdvm:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bdw-gvtdvm/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bdw-gvtdvm/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-pnv-d510:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html
    - fi-blb-e6850:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_103665v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][9] ([i915#2403] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-pnv-d510/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][10] ([i915#3690])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-icl-u2/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bwr-2160/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][12] ([i915#2403] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5616]: https://gitlab.freedesktop.org/drm/intel/issues/5616
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917


Build changes
-------------

  * Linux: CI_DRM_11616 -> Patchwork_103665v2

  CI-20190529: 20190529
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103665v2: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9734c8e38d6c drm/edid: convert version_greater() to drm_edid
8939e8e87b70 drm/displayid: convert to drm_edid
4616e8e39130 drm/edid: add drm_edid helper for drm_update_tile_info()
ce9cf6c3f3bd drm/edid: convert drm_edid_iter_begin() to drm_edid
88cf2acc4d23 drm/edid: convert cea_db_iter_edid_begin() to drm_edid
3697803e34fc drm/edid: add drm_edid helper for drm_detect_monitor_audio()
198071639b3e drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
c7c8274be0e0 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
10ad8b7391e0 drm/edid: add drm_edid helper for drm_edid_to_sad()
e891c81d67f3 drm/edid: convert drm_for_each_detailed_block() to drm_edid
5f5a1c1c2508 drm/edid: convert get_monitor_name() to drm_edid
e488770c1462 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
461fcc87fa90 drm/edid: convert drm_mode_std() and children to drm_edid
2292e72bfeff drm/edid: convert drm_cvt_modes_for_range() to drm_edid
5eb20e63d105 drm/edid: convert drm_gtf_modes_for_range() to drm_edid
5a4739a67af5 drm/edid: convert drm_dmt_modes_for_range() to drm_edid
53332e0d363d drm/edid: convert drm_mode_detailed() to drm_edid
2ef1277233e0 drm/edid: convert struct detailed_mode_closure to drm_edid
fc6369e1dd6b drm/edid: convert drm_edid_connector_update() to drm_edid fully
ab18c2b15aa4 drm/edid: propagate drm_edid to drm_edid_to_eld()
3497e0a93c43 drm/edid: keep propagating drm_edid to display info
a80e2228c7dc drm/edid: start propagating drm_edid to lower levels
e0347abd18f2 drm/edid: add struct drm_edid container
ea83471aa394 drm/edid: convert drm_for_each_detailed_block() to edid iter
78a0dd405bf8 drm/edid: use else-if in CTA extension parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/index.html

--===============7339970905037891044==
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
<tr><td><b>Series:</b></td><td>drm/edid: introduce struct drm_edid (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103665/">https://patchwork.freedesktop.org/series/103665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11616 -&gt; Patchwork_103665v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103665v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103665v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Additional (3): fi-icl-u2 bat-jsl-1 bat-dg2-9 <br />
  Missing    (9): fi-kbl-7567u fi-bdw-5557u bat-adlm-1 fi-bsw-cyan fi-ilk-650 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 fi-snb-2600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103665v2:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bdw-gvtdvm/boot.html">FAIL</a></li>
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
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-pnv-d510/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bwr-2160/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-blb-e6850/igt@kms_force_connector_basic@force-connector-state.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103665v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v2/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11616 -&gt; Patchwork_103665v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103665v2: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9734c8e38d6c drm/edid: convert version_greater() to drm_edid<br />
8939e8e87b70 drm/displayid: convert to drm_edid<br />
4616e8e39130 drm/edid: add drm_edid helper for drm_update_tile_info()<br />
ce9cf6c3f3bd drm/edid: convert drm_edid_iter_begin() to drm_edid<br />
88cf2acc4d23 drm/edid: convert cea_db_iter_edid_begin() to drm_edid<br />
3697803e34fc drm/edid: add drm_edid helper for drm_detect_monitor_audio()<br />
198071639b3e drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()<br />
c7c8274be0e0 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()<br />
10ad8b7391e0 drm/edid: add drm_edid helper for drm_edid_to_sad()<br />
e891c81d67f3 drm/edid: convert drm_for_each_detailed_block() to drm_edid<br />
5f5a1c1c2508 drm/edid: convert get_monitor_name() to drm_edid<br />
e488770c1462 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid<br />
461fcc87fa90 drm/edid: convert drm_mode_std() and children to drm_edid<br />
2292e72bfeff drm/edid: convert drm_cvt_modes_for_range() to drm_edid<br />
5eb20e63d105 drm/edid: convert drm_gtf_modes_for_range() to drm_edid<br />
5a4739a67af5 drm/edid: convert drm_dmt_modes_for_range() to drm_edid<br />
53332e0d363d drm/edid: convert drm_mode_detailed() to drm_edid<br />
2ef1277233e0 drm/edid: convert struct detailed_mode_closure to drm_edid<br />
fc6369e1dd6b drm/edid: convert drm_edid_connector_update() to drm_edid fully<br />
ab18c2b15aa4 drm/edid: propagate drm_edid to drm_edid_to_eld()<br />
3497e0a93c43 drm/edid: keep propagating drm_edid to display info<br />
a80e2228c7dc drm/edid: start propagating drm_edid to lower levels<br />
e0347abd18f2 drm/edid: add struct drm_edid container<br />
ea83471aa394 drm/edid: convert drm_for_each_detailed_block() to edid iter<br />
78a0dd405bf8 drm/edid: use else-if in CTA extension parsing</p>

</body>
</html>

--===============7339970905037891044==--
