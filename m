Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF3163B485
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 22:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DC110E248;
	Mon, 28 Nov 2022 21:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6414E10E248;
 Mon, 28 Nov 2022 21:54:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E613AADD8;
 Mon, 28 Nov 2022 21:54:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0830560893112474395=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Mon, 28 Nov 2022 21:54:47 -0000
Message-ID: <166967248737.8066.5414189870282332525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123235417.1475709-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221123235417.1475709-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_always_init_the_delayed_load_fence_=28rev2=29?=
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

--===============0830560893112474395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/huc: always init the delayed load fence (rev2)
URL   : https://patchwork.freedesktop.org/series/111288/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12440 -> Patchwork_111288v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/index.html

Participating hosts (34 -> 31)
------------------------------

  Missing    (3): bat-kbl-2 bat-adlp-4 bat-jsl-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111288v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s3-without-i915:
    - {bat-rpls-1}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2:
    - {bat-dg2-11}:       [PASS][2] -> [FAIL][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_111288v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-pnv-d510:        [PASS][4] -> [SKIP][5] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-pnv-d510/igt@gem_linear_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@gem_linear_blits@basic.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-blb-e6850:       NOTRUN -> [SKIP][7] ([fdo#109271]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-rkl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#4983])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [INCOMPLETE][10] ([i915#7605]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
    - fi-pnv-d510:        [INCOMPLETE][12] ([i915#7605]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7605]: https://gitlab.freedesktop.org/drm/intel/issues/7605


Build changes
-------------

  * Linux: CI_DRM_12440 -> Patchwork_111288v2

  CI-20190529: 20190529
  CI_DRM_12440: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7073: d021d66e389f4a759dc749b5f74f278ecd2e6cbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111288v2: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1d52f400e75d drm/i915/huc: always init the delayed load fence

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/index.html

--===============0830560893112474395==
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
<tr><td><b>Series:</b></td><td>drm/i915/huc: always init the delayed load fence (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111288/">https://patchwork.freedesktop.org/series/111288/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12440 -&gt; Patchwork_111288v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/index.html</p>
<h2>Participating hosts (34 -&gt; 31)</h2>
<p>Missing    (3): bat-kbl-2 bat-adlp-4 bat-jsl-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111288v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-2.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111288v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-pnv-d510/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-blb-e6850/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7605">i915#7605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7605">i915#7605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111288v2/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12440 -&gt; Patchwork_111288v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12440: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7073: d021d66e389f4a759dc749b5f74f278ecd2e6cbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111288v2: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1d52f400e75d drm/i915/huc: always init the delayed load fence</p>

</body>
</html>

--===============0830560893112474395==--
