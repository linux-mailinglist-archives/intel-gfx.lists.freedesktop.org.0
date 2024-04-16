Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132318A782B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DF1112EDF;
	Tue, 16 Apr 2024 22:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4487112EDF;
 Tue, 16 Apr 2024 22:51:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3411375841114938940=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Few_MTL/DSC_?=
 =?utf-8?q?and_a_UHBR_monitor_fix_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Apr 2024 22:51:08 -0000
Message-ID: <171330786886.1452189.12173349416432638586@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240416221010.376865-1-imre.deak@intel.com>
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
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

--===============3411375841114938940==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Few MTL/DSC and a UHBR monitor fix (rev2)
URL   : https://patchwork.freedesktop.org/series/131386/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14591 -> Patchwork_131386v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/index.html

Participating hosts (39 -> 34)
------------------------------

  Additional (2): fi-kbl-7567u bat-kbl-2 
  Missing    (7): bat-dg1-7 fi-bsw-n3050 fi-apl-guc fi-snb-2520m fi-cfl-8109u bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_131386v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] +39 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][5] +11 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - bat-adls-6:         [TIMEOUT][6] ([i915#10795]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14591/bat-adls-6/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-adls-6/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#10795]: https://gitlab.freedesktop.org/drm/intel/issues/10795
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14591 -> Patchwork_131386v2

  CI-20190529: 20190529
  CI_DRM_14591: 6eb009a883a7ae925b3b0f0363b64a026bb4333a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7809: 3a71f659700859cab49b8e05a198ba18a5cbd24a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131386v2: 6eb009a883a7ae925b3b0f0363b64a026bb4333a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f796b82d062e drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates
c0632c3ed743 drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports
1ac53dd2d610 drm/dp_mst: Add drm_dp_mst_aux_for_parent()
a2cf3329ac68 drm/dp_mst: Factor out drm_dp_mst_port_is_logical()
a1727e858c02 drm/dp: Add drm_dp_uhbr_channel_coding_supported()
e7e6403dbb1d drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit
085cd830e1b2 drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL
5211a42a485e drm/i915/dp_mst: Account for channel coding efficiency in the DSC DPT bpp limit
a91633a13451 drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp
07caca67f93f drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp limit
9b372aec4ebb drm/i915/dp: Fix DSC line buffer depth programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/index.html

--===============3411375841114938940==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Few MTL/DSC and a UHBR monitor fix (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131386/">https://patchwork.freedesktop.org/series/131386/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14591 -&gt; Patchwork_131386v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Additional (2): fi-kbl-7567u bat-kbl-2 <br />
  Missing    (7): bat-dg1-7 fi-bsw-n3050 fi-apl-guc fi-snb-2520m fi-cfl-8109u bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131386v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14591/bat-adls-6/igt@i915_selftest@live@execlists.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10795">i915#10795</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131386v2/bat-adls-6/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14591 -&gt; Patchwork_131386v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14591: 6eb009a883a7ae925b3b0f0363b64a026bb4333a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7809: 3a71f659700859cab49b8e05a198ba18a5cbd24a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131386v2: 6eb009a883a7ae925b3b0f0363b64a026bb4333a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f796b82d062e drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates<br />
c0632c3ed743 drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports<br />
1ac53dd2d610 drm/dp_mst: Add drm_dp_mst_aux_for_parent()<br />
a2cf3329ac68 drm/dp_mst: Factor out drm_dp_mst_port_is_logical()<br />
a1727e858c02 drm/dp: Add drm_dp_uhbr_channel_coding_supported()<br />
e7e6403dbb1d drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit<br />
085cd830e1b2 drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL<br />
5211a42a485e drm/i915/dp_mst: Account for channel coding efficiency in the DSC DPT bpp limit<br />
a91633a13451 drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp<br />
07caca67f93f drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp limit<br />
9b372aec4ebb drm/i915/dp: Fix DSC line buffer depth programming</p>

</body>
</html>

--===============3411375841114938940==--
