Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7772B62F509
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 13:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E63610E720;
	Fri, 18 Nov 2022 12:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD02410E720;
 Fri, 18 Nov 2022 12:38:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB868AADD5;
 Fri, 18 Nov 2022 12:38:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2297260205417298045=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 18 Nov 2022 12:38:21 -0000
Message-ID: <166877510169.25643.5156949526353936023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118115249.2683946-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221118115249.2683946-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_workarounds_on_Gen2-3?=
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

--===============2297260205417298045==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix workarounds on Gen2-3
URL   : https://patchwork.freedesktop.org/series/111067/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12398 -> Patchwork_111067v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Additional (1): bat-rpls-1 
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus bat-dg1-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111067v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2:
    - {bat-rpls-1}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_111067v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [INCOMPLETE][4] ([i915#7073]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12398/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][6] ([i915#6298]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12398/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12398 -> Patchwork_111067v1

  CI-20190529: 20190529
  CI_DRM_12398: 6ff9396457d55a1915566b11121e8fe6f9068b1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7068: 5c0ec905b6bbecfb8df8b8f3315d0470539e6ae3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111067v1: 6ff9396457d55a1915566b11121e8fe6f9068b1c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6d14a386ece3 drm/i915: Fix workarounds on Gen2-3

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/index.html

--===============2297260205417298045==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix workarounds on Gen2-3</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111067/">https://patchwork.freedesktop.org/series/111067/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12398 -&gt; Patchwork_111067v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Additional (1): bat-rpls-1 <br />
  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus bat-dg1-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111067v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2:<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111067v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12398/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12398/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111067v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12398 -&gt; Patchwork_111067v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12398: 6ff9396457d55a1915566b11121e8fe6f9068b1c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7068: 5c0ec905b6bbecfb8df8b8f3315d0470539e6ae3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111067v1: 6ff9396457d55a1915566b11121e8fe6f9068b1c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6d14a386ece3 drm/i915: Fix workarounds on Gen2-3</p>

</body>
</html>

--===============2297260205417298045==--
