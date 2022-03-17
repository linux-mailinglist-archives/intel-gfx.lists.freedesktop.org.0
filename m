Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C78824DD0E2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 23:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6253610E092;
	Thu, 17 Mar 2022 22:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D23210E092;
 Thu, 17 Mar 2022 22:48:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8987CA0078;
 Thu, 17 Mar 2022 22:48:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3703052895807098793=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 17 Mar 2022 22:48:45 -0000
Message-ID: <164755732552.32161.1188235725196245101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_=28rev3=29?=
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

--===============3703052895807098793==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling (rev3)
URL   : https://patchwork.freedesktop.org/series/101496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11378 -> Patchwork_22599
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/index.html

Participating hosts (48 -> 44)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (5): shard-tglu fi-bsw-cyan fi-kbl-8809g shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22599:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {bat-adlm-1}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-adlm-1/igt@runner@aborted.html
    - {fi-rkl-11600}:     NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-rkl-11600/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22599 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][7] ([i915#3690])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][8] ([i915#2426])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-dg1-6/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][9] ([i915#2426])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-dg1-5/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-bsw-nick/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][11] ([i915#2426])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [FAIL][12] ([i915#3194]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5137]: https://gitlab.freedesktop.org/drm/intel/issues/5137
  [i915#5169]: https://gitlab.freedesktop.org/drm/intel/issues/5169
  [i915#5269]: https://gitlab.freedesktop.org/drm/intel/issues/5269


Build changes
-------------

  * Linux: CI_DRM_11378 -> Patchwork_22599

  CI-20190529: 20190529
  CI_DRM_11378: 3ec612f871c18232b04e5530e485992c76bf13a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6385: f3df40281d93d5a63ee98fa30e90852d780673c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22599: 028a04f589005c443412aec0d430941655764430 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

028a04f58900 drm/i915: Respect VBT seamless DRRS min refresh rate
c04a3e89df19 drm/i915/bios: Parse the seamless DRRS min refresh rate
008090abbd52 drm/i915/bios: Get access to the tail end of the LFP data block
954a9b37adaa drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
79016ff6119f drm/i915/bios: Reorder panel DTD parsing
b88f44efc47e drm/i915/bios: Validate the panel_name table
3163d2ce4d8e drm/i915/bios: Trust the LFP data pointers
4d30945afa1f drm/i915/bios: Validate LFP data table pointers
2b5fbda9a559 drm/i915/bios: Use the copy of the LFP data table always
b9aaa74b14b4 drm/i915/bios: Make copies of VBT data blocks
f78f0208e580 drm/i915/bios: Extract struct lvds_lfp_data_ptr_table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/index.html

--===============3703052895807098793==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101496/">https://patchwork.freedesktop.org/series/101496/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11378 -&gt; Patchwork_22599</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/index.html</p>
<h2>Participating hosts (48 -&gt; 44)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (5): shard-tglu fi-bsw-cyan fi-kbl-8809g shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22599:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-adlm-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-rkl-11600}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22599 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22599/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11378 -&gt; Patchwork_22599</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11378: 3ec612f871c18232b04e5530e485992c76bf13a6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6385: f3df40281d93d5a63ee98fa30e90852d780673c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22599: 028a04f589005c443412aec0d430941655764430 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>028a04f58900 drm/i915: Respect VBT seamless DRRS min refresh rate<br />
c04a3e89df19 drm/i915/bios: Parse the seamless DRRS min refresh rate<br />
008090abbd52 drm/i915/bios: Get access to the tail end of the LFP data block<br />
954a9b37adaa drm/i915/bios: Generate LFP data table pointers if the VBT lacks them<br />
79016ff6119f drm/i915/bios: Reorder panel DTD parsing<br />
b88f44efc47e drm/i915/bios: Validate the panel_name table<br />
3163d2ce4d8e drm/i915/bios: Trust the LFP data pointers<br />
4d30945afa1f drm/i915/bios: Validate LFP data table pointers<br />
2b5fbda9a559 drm/i915/bios: Use the copy of the LFP data table always<br />
b9aaa74b14b4 drm/i915/bios: Make copies of VBT data blocks<br />
f78f0208e580 drm/i915/bios: Extract struct lvds_lfp_data_ptr_table</p>

</body>
</html>

--===============3703052895807098793==--
