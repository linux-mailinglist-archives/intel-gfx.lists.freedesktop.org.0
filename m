Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD8989CB2D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 19:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 963D1112928;
	Mon,  8 Apr 2024 17:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10141112928;
 Mon,  8 Apr 2024 17:52:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8504938766343767574=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Panel_replay_selective_upda?=
 =?utf-8?q?te_support_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 17:52:10 -0000
Message-ID: <171259873006.1286010.2775028370774651537@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240408082212.3429193-1-jouni.hogander@intel.com>
In-Reply-To: <20240408082212.3429193-1-jouni.hogander@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8504938766343767574==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel replay selective update support (rev6)
URL   : https://patchwork.freedesktop.org/series/128193/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14543 -> Patchwork_128193v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/index.html

Participating hosts (41 -> 35)
------------------------------

  Additional (1): fi-kbl-7567u 
  Missing    (7): bat-dg1-7 bat-mtlp-9 fi-bsw-n3050 fi-glk-j4005 fi-elk-e7500 bat-jsl-1 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_128193v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [PASS][3] -> [FAIL][4] ([i915#10378])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-9:          [PASS][5] -> [ABORT][6] ([i915#10366])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][7] +11 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14543 -> Patchwork_128193v6

  CI-20190529: 20190529
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7801: 7801
  Patchwork_128193v6: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

96345b40b4d3 drm/i915/psr: Add panel replay sel update support to debugfs interface
062904b52d99 drm/i915/psr: Split intel_psr2_config_valid for panel replay
199db55732e5 drm/i915/psr: Update PSR module parameter descriptions
e260f99c4e8f drm/i915/psr: Do not apply workarounds in case of panel replay
e05125c223b1 drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
6f7247d50d00 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
5781f289e483 drm/i915/psr: Detect panel replay selective update support
e4a6e60ce39d drm/panelreplay: dpcd register definition for panelreplay SU
0e5a4bb7994f drm/i915/psr: Rename psr2_enabled as sel_update_enabled
621ed5043528 drm/i915/psr: Rename has_psr2 as has_sel_update

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/index.html

--===============8504938766343767574==
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
<tr><td><b>Series:</b></td><td>Panel replay selective update support (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128193/">https://patchwork.freedesktop.org/series/128193/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14543 -&gt; Patchwork_128193v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/index.html</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Additional (1): fi-kbl-7567u <br />
  Missing    (7): bat-dg1-7 bat-mtlp-9 fi-bsw-n3050 fi-glk-j4005 fi-elk-e7500 bat-jsl-1 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128193v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v6/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14543 -&gt; Patchwork_128193v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7801: 7801<br />
  Patchwork_128193v6: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>96345b40b4d3 drm/i915/psr: Add panel replay sel update support to debugfs interface<br />
062904b52d99 drm/i915/psr: Split intel_psr2_config_valid for panel replay<br />
199db55732e5 drm/i915/psr: Update PSR module parameter descriptions<br />
e260f99c4e8f drm/i915/psr: Do not apply workarounds in case of panel replay<br />
e05125c223b1 drm/i915/psr: Panel replay uses SRD_STATUS to track it's status<br />
6f7247d50d00 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay<br />
5781f289e483 drm/i915/psr: Detect panel replay selective update support<br />
e4a6e60ce39d drm/panelreplay: dpcd register definition for panelreplay SU<br />
0e5a4bb7994f drm/i915/psr: Rename psr2_enabled as sel_update_enabled<br />
621ed5043528 drm/i915/psr: Rename has_psr2 as has_sel_update</p>

</body>
</html>

--===============8504938766343767574==--
