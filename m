Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDD730CA18
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 19:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D6386E98B;
	Tue,  2 Feb 2021 18:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 223C4897AC;
 Tue,  2 Feb 2021 18:40:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1099CA363B;
 Tue,  2 Feb 2021 18:40:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 18:40:28 -0000
Message-ID: <161229122803.19547.10969792931692543715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210202154318.19246-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210202154318.19246-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Remove_notion_of_GEM_fr?=
 =?utf-8?q?om_i915=5Fgem=5Fshrinker=5Ftaints=5Fmutex?=
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
Content-Type: multipart/mixed; boundary="===============0886730533=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0886730533==
Content-Type: multipart/alternative;
 boundary="===============1514710791180258856=="

--===============1514710791180258856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex
URL   : https://patchwork.freedesktop.org/series/86587/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9718 -> Patchwork_19561
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19561 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19561, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19561:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-r:           NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_19561 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-r:           NOTRUN -> [SKIP][2] ([fdo#109271]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-r:           NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-r:           NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#533])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@prime_vgem@basic-read.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][10] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2295]) -> [FAIL][11] ([i915#2292] / [i915#2426] / [k.org#204565])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-kbl-r/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-jsl-1 fi-bsw-cyan fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9718 -> Patchwork_19561

  CI-20190529: 20190529
  CI_DRM_9718: e123813e002aaa9a6a9d81b0294c93dd1edf9b4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19561: 249a5647a02ecc41e5e605b6fe63658a12a72b87 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

249a5647a02e drm/i915: Lift marking a lock as used to utils
ae8fd4977377 drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/index.html

--===============1514710791180258856==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86587/">https://patchwork.freedesktop.org/series/86587/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9718 -&gt; Patchwork_19561</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19561 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19561, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19561:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19561 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19561/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=204565">k.org#204565</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-jsl-1 fi-bsw-cyan fi-bsw-nick fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9718 -&gt; Patchwork_19561</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9718: e123813e002aaa9a6a9d81b0294c93dd1edf9b4f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19561: 249a5647a02ecc41e5e605b6fe63658a12a72b87 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>249a5647a02e drm/i915: Lift marking a lock as used to utils<br />
ae8fd4977377 drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex</p>

</body>
</html>

--===============1514710791180258856==--

--===============0886730533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0886730533==--
