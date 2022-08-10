Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1268258F475
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 00:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F428BF0C;
	Wed, 10 Aug 2022 22:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C48011BFFF;
 Wed, 10 Aug 2022 22:39:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A3AAA363D;
 Wed, 10 Aug 2022 22:39:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4294272881543020842=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Wed, 10 Aug 2022 22:39:24 -0000
Message-ID: <166017116446.12354.11589947179805462384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <166016852965.780835.10366587502693016900.stgit@omen>
In-Reply-To: <166016852965.780835.10366587502693016900.stgit@omen>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/gvt=3A_Fix_Comet_Lake?=
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

--===============4294272881543020842==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/gvt: Fix Comet Lake
URL   : https://patchwork.freedesktop.org/series/107133/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11981 -> Patchwork_107133v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/index.html

Participating hosts (42 -> 28)
------------------------------

  Missing    (14): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_107133v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2] ([i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][4] ([i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-2}:         [DMESG-FAIL][5] ([i915#5334]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][7] ([i915#6298]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * Linux: CI_DRM_11981 -> Patchwork_107133v1

  CI-20190529: 20190529
  CI_DRM_11981: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107133v1: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1e0f87680254 i915/gvt: Fix Comet Lake

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/index.html

--===============4294272881543020842==
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
<tr><td><b>Series:</b></td><td>i915/gvt: Fix Comet Lake</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107133/">https://patchwork.freedesktop.org/series/107133/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11981 -&gt; Patchwork_107133v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/index.html</p>
<h2>Participating hosts (42 -&gt; 28)</h2>
<p>Missing    (14): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107133v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107133v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11981 -&gt; Patchwork_107133v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11981: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107133v1: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1e0f87680254 i915/gvt: Fix Comet Lake</p>

</body>
</html>

--===============4294272881543020842==--
