Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6795789CAA8
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 19:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CEB1128F4;
	Mon,  8 Apr 2024 17:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8621128F2;
 Mon,  8 Apr 2024 17:22:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3879647320240794674=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_use_check=5Fadd?=
 =?utf-8?q?=5Foverflow=28=29_and_drop_local_variants_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 17:22:20 -0000
Message-ID: <171259694097.1286010.3940231288523365495@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240405202625.2525671-1-jani.nikula@intel.com>
In-Reply-To: <20240405202625.2525671-1-jani.nikula@intel.com>
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

--===============3879647320240794674==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: use check_add_overflow() and drop local variants (rev2)
URL   : https://patchwork.freedesktop.org/series/132104/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14543 -> Patchwork_132104v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): fi-kbl-7567u 
  Missing    (2): bat-dg1-7 bat-mtlp-9 

Known issues
------------

  Here are the changes found in Patchwork_132104v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-dg2-14:         [PASS][3] -> [ABORT][4] ([i915#10366] / [i915#10677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][5] +11 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - bat-arls-2:         NOTRUN -> [FAIL][6] ([i915#10690])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/bat-arls-2/igt@runner@aborted.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10677]: https://gitlab.freedesktop.org/drm/intel/issues/10677
  [i915#10690]: https://gitlab.freedesktop.org/drm/intel/issues/10690
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14543 -> Patchwork_132104v2

  CI-20190529: 20190529
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7801: 7801
  Patchwork_132104v2: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c1b23ced5610 drm/i915: use check_add_overflow() and drop local variants

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/index.html

--===============3879647320240794674==
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
<tr><td><b>Series:</b></td><td>drm/i915: use check_add_overflow() and drop local variants (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132104/">https://patchwork.freedesktop.org/series/132104/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14543 -&gt; Patchwork_132104v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-7567u <br />
  Missing    (2): bat-dg1-7 bat-mtlp-9 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132104v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/bat-dg2-14/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10677">i915#10677</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132104v2/bat-arls-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10690">i915#10690</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14543 -&gt; Patchwork_132104v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7801: 7801<br />
  Patchwork_132104v2: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c1b23ced5610 drm/i915: use check_add_overflow() and drop local variants</p>

</body>
</html>

--===============3879647320240794674==--
