Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249767C878
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 11:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BC510E135;
	Thu, 26 Jan 2023 10:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A15C310E135;
 Thu, 26 Jan 2023 10:24:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B229A00E8;
 Thu, 26 Jan 2023 10:24:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9058604686179330274=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 26 Jan 2023 10:24:17 -0000
Message-ID: <167472865760.542.6054751606556926292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125114852.748337-1-imre.deak@intel.com>
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=5Fmst=3A_Fix_MST_payload_removal_during_output_disabli?=
 =?utf-8?b?bmcgKHJldjIp?=
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

--===============9058604686179330274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Fix MST payload removal during output disabling (rev2)
URL   : https://patchwork.freedesktop.org/series/113329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12640 -> Patchwork_113329v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/index.html

Participating hosts (37 -> 32)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (6): fi-hsw-4770 fi-pnv-d510 fi-ivb-3770 fi-elk-e7500 fi-skl-6700k2 fi-snb-2600 

Known issues
------------

  Here are the changes found in Patchwork_113329v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][2] ([fdo#109271]) +26 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlp-9}:       [DMESG-WARN][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][5] ([i915#7911]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][7] ([i915#7699]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - fi-bsw-n3050:       [FAIL][9] ([i915#2346]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][11] ([fdo#103375]) -> [INCOMPLETE][12] ([i915#4817])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_12640 -> Patchwork_113329v2

  CI-20190529: 20190529
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113329v2: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0df0c78ffaa0 drm/i915/dp_mst: Verify the MST state of modesetted outputs
7ee016e8e926 drm/display/dp_mst: Add a helper to verify the MST payload state
6aa79aba8b9d drm/i915/dp_mst: Move getting the MST topology state earlier to connector check
a137bc9cdd61 drm/i915: Factor out helpers for modesetting CRTCs and connectors
c5253fcf27b5 drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()
b5e560ea5fbb drm/i915/dp_mst: Fix payload removal during output disabling
41b769e22aea drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
531938b86df9 drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()
c3ae029adaa1 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/index.html

--===============9058604686179330274==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Fix MST payload removal during output disabling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113329/">https://patchwork.freedesktop.org/series/113329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12640 -&gt; Patchwork_113329v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/index.html</p>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (6): fi-hsw-4770 fi-pnv-d510 fi-ivb-3770 fi-elk-e7500 fi-skl-6700k2 fi-snb-2600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113329v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113329v2/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12640 -&gt; Patchwork_113329v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113329v2: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0df0c78ffaa0 drm/i915/dp_mst: Verify the MST state of modesetted outputs<br />
7ee016e8e926 drm/display/dp_mst: Add a helper to verify the MST payload state<br />
6aa79aba8b9d drm/i915/dp_mst: Move getting the MST topology state earlier to connector check<br />
a137bc9cdd61 drm/i915: Factor out helpers for modesetting CRTCs and connectors<br />
c5253fcf27b5 drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()<br />
b5e560ea5fbb drm/i915/dp_mst: Fix payload removal during output disabling<br />
41b769e22aea drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()<br />
531938b86df9 drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()<br />
c3ae029adaa1 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs</p>

</body>
</html>

--===============9058604686179330274==--
