Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6312F78EF5D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 16:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77FC910E07B;
	Thu, 31 Aug 2023 14:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4292F10E07B;
 Thu, 31 Aug 2023 14:13:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 397D7AADE3;
 Thu, 31 Aug 2023 14:13:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5156585107344028141=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 31 Aug 2023 14:13:59 -0000
Message-ID: <169349123919.12507.11775412224489295398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Populate_connector-=3Eddc_always_=28rev2=29?=
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

--===============5156585107344028141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Populate connector->ddc always (rev2)
URL   : https://patchwork.freedesktop.org/series/123006/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13579 -> Patchwork_123006v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123006v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123006v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/index.html

Participating hosts (39 -> 40)
------------------------------

  Additional (2): bat-adlp-11 fi-bsw-n3050 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123006v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@unused-pitches:
    - fi-apl-guc:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-apl-guc/igt@kms_addfb_basic@unused-pitches.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-apl-guc/igt@kms_addfb_basic@unused-pitches.html

  
Known issues
------------

  Here are the changes found in Patchwork_123006v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-11:        NOTRUN -> [SKIP][3] ([i915#7456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [PASS][4] -> [INCOMPLETE][5] ([i915#6311])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][6] ([fdo#109271]) +18 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][8] -> [DMESG-WARN][9] ([i915#7699])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][10] ([i915#7978] / [i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-11:        NOTRUN -> [SKIP][11] ([i915#4103]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-11:        NOTRUN -> [SKIP][12] ([i915#4093]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:
    - bat-adlp-11:        NOTRUN -> [ABORT][13] ([i915#8668])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [FAIL][14] ([fdo#103375]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-1:         [INCOMPLETE][16] ([i915#7677]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-rpls-1/igt@i915_selftest@live@hangcheck.html

  * igt@vgem_basic@debugfs:
    - fi-kbl-soraka:      [INCOMPLETE][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-kbl-soraka/igt@vgem_basic@debugfs.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-kbl-soraka/igt@vgem_basic@debugfs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13579 -> Patchwork_123006v2

  CI-20190529: 20190529
  CI_DRM_13579: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7460: 30b4034ea562952039ba6af58106791d5c39999e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123006v2: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

273b20660680 drm/i915/sdvo: Constify mapping structs
0c1374091f6b drm/i915/hdmi: Remove old i2c symlink
59b712054582 drm/i915/hdmi: Nuke hdmi->ddc_bus
8cc2551cdec9 drm/i915/hdmi: Use connector->ddc everwhere
940af2a1f0e7 drm/i915/mst: Populate connector->ddc
09fdd6566182 drm/i915/dp: Populate connector->ddc
4cd6f31e2d91 drm/i915/dvo: Populate connector->ddc
fcf2335beab6 drm/i915/crt: Populate connector->ddc
d6ec2e073182 drm/i915/lvds: Populate connector->ddc
bddae6fbdf46 drm/i915: Call the DDC bus i2c adapter "ddc"
a18e691ff227 drm/sysfs: Register "ddc" symlink later
a92e158b84a1 drm: Reorder drm_sysfs_connector_remove() vs. drm_debugfs_connector_remove()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/index.html

--===============5156585107344028141==
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
<tr><td><b>Series:</b></td><td>drm/i915: Populate connector-&gt;ddc always (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123006/">https://patchwork.freedesktop.org/series/123006/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13579 -&gt; Patchwork_123006v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123006v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123006v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/index.html</p>
<h2>Participating hosts (39 -&gt; 40)</h2>
<p>Additional (2): bat-adlp-11 fi-bsw-n3050 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123006v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_addfb_basic@unused-pitches:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-apl-guc/igt@kms_addfb_basic@unused-pitches.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-apl-guc/igt@kms_addfb_basic@unused-pitches.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123006v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7677">i915#7677</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@debugfs:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/fi-kbl-soraka/igt@vgem_basic@debugfs.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123006v2/fi-kbl-soraka/igt@vgem_basic@debugfs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13579 -&gt; Patchwork_123006v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13579: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7460: 30b4034ea562952039ba6af58106791d5c39999e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123006v2: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>273b20660680 drm/i915/sdvo: Constify mapping structs<br />
0c1374091f6b drm/i915/hdmi: Remove old i2c symlink<br />
59b712054582 drm/i915/hdmi: Nuke hdmi-&gt;ddc_bus<br />
8cc2551cdec9 drm/i915/hdmi: Use connector-&gt;ddc everwhere<br />
940af2a1f0e7 drm/i915/mst: Populate connector-&gt;ddc<br />
09fdd6566182 drm/i915/dp: Populate connector-&gt;ddc<br />
4cd6f31e2d91 drm/i915/dvo: Populate connector-&gt;ddc<br />
fcf2335beab6 drm/i915/crt: Populate connector-&gt;ddc<br />
d6ec2e073182 drm/i915/lvds: Populate connector-&gt;ddc<br />
bddae6fbdf46 drm/i915: Call the DDC bus i2c adapter "ddc"<br />
a18e691ff227 drm/sysfs: Register "ddc" symlink later<br />
a92e158b84a1 drm: Reorder drm_sysfs_connector_remove() vs. drm_debugfs_connector_remove()</p>

</body>
</html>

--===============5156585107344028141==--
