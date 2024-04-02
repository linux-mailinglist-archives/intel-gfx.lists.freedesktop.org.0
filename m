Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE029895B2A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 19:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5213010E472;
	Tue,  2 Apr 2024 17:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA3210E290;
 Tue,  2 Apr 2024 17:53:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2060478026715567395=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Implemnt_vblank?=
 =?utf-8?q?_sycnhronized_mbus_joining_changes_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Apr 2024 17:53:08 -0000
Message-ID: <171208038829.1155666.16212057673443399717@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

--===============2060478026715567395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implemnt vblank sycnhronized mbus joining changes (rev3)
URL   : https://patchwork.freedesktop.org/series/131700/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14516 -> Patchwork_131700v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/index.html

Participating hosts (37 -> 34)
------------------------------

  Additional (2): fi-cfl-8109u fi-kbl-8809g 
  Missing    (5): bat-dg1-7 fi-snb-2520m bat-dg2-11 fi-bsw-nick bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_131700v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg2-8:          [PASS][3] -> [INCOMPLETE][4] ([i915#10583] / [i915#2295])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pm_rpm@basic-rte:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] +14 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][6] ([i915#4991])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-kbl-8809g/igt@runner@aborted.html

  
  [i915#10583]: https://gitlab.freedesktop.org/drm/intel/issues/10583
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991


Build changes
-------------

  * Linux: CI_DRM_14516 -> Patchwork_131700v3

  CI-20190529: 20190529
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131700v3: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

97b4459423db drm/i915: Optimize out redundant dbuf slice updates
cc8ef49ad736 drm/i915: Use a plain old int for the cdclk/mdclk ratio
0b7ae17afa8f drm/i915: Implement vblank synchronized MBUS join changes
a170abea595f drm/i915: Use the correct mdclk/cdclk ratio in MBUS updates
c7b8dd0b2ed6 drm/i915: Use old mbus_join value when increasing CDCLK
1e446d439134 drm/i915: Add debugs for mbus joining and dbuf ratio programming
11a3a410d938 drm/i915: Extract intel_dbuf_mdclk_min_tracker_update()
5568a37c27ae drm/i915: Extract intel_dbuf_mbus_join_update()
4bb6fd91461f drm/i915: Relocate intel_mbus_dbox_update()
2a778d017929 drm/i915: Loop over all active pipes in intel_mbus_dbox_update
fd6b0dd31d0d drm/i915/cdclk: Indicate whether CDCLK change happens during pre or post plane update
8588464a74e7 drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
a32776e3a36b drm/i915/cdclk: Fix voltage_level programming edge case
75619744b0c5 drm/i915/cdclk: Fix CDCLK programming order when pipes are active

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/index.html

--===============2060478026715567395==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implemnt vblank sycnhronized mbus joining changes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131700/">https://patchwork.freedesktop.org/series/131700/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14516 -&gt; Patchwork_131700v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Additional (2): fi-cfl-8109u fi-kbl-8809g <br />
  Missing    (5): bat-dg1-7 fi-snb-2520m bat-dg2-11 fi-bsw-nick bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131700v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10583">i915#10583</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-cfl-8109u/igt@kms_pm_rpm@basic-rte.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v3/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14516 -&gt; Patchwork_131700v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131700v3: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>97b4459423db drm/i915: Optimize out redundant dbuf slice updates<br />
cc8ef49ad736 drm/i915: Use a plain old int for the cdclk/mdclk ratio<br />
0b7ae17afa8f drm/i915: Implement vblank synchronized MBUS join changes<br />
a170abea595f drm/i915: Use the correct mdclk/cdclk ratio in MBUS updates<br />
c7b8dd0b2ed6 drm/i915: Use old mbus_join value when increasing CDCLK<br />
1e446d439134 drm/i915: Add debugs for mbus joining and dbuf ratio programming<br />
11a3a410d938 drm/i915: Extract intel_dbuf_mdclk_min_tracker_update()<br />
5568a37c27ae drm/i915: Extract intel_dbuf_mbus_join_update()<br />
4bb6fd91461f drm/i915: Relocate intel_mbus_dbox_update()<br />
2a778d017929 drm/i915: Loop over all active pipes in intel_mbus_dbox_update<br />
fd6b0dd31d0d drm/i915/cdclk: Indicate whether CDCLK change happens during pre or post plane update<br />
8588464a74e7 drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks<br />
a32776e3a36b drm/i915/cdclk: Fix voltage_level programming edge case<br />
75619744b0c5 drm/i915/cdclk: Fix CDCLK programming order when pipes are active</p>

</body>
</html>

--===============2060478026715567395==--
