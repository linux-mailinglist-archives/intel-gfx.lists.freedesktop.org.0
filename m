Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4364B3B8763
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 19:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8E26EA59;
	Wed, 30 Jun 2021 17:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 998996EA58;
 Wed, 30 Jun 2021 17:06:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 915CCA0003;
 Wed, 30 Jun 2021 17:06:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 30 Jun 2021 17:06:54 -0000
Message-ID: <162507281456.10375.1933466120351734867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210630095228.6665-1-tzimmermann@suse.de>
In-Reply-To: <20210630095228.6665-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_IRQ_fixes_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1955137982=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1955137982==
Content-Type: multipart/alternative;
 boundary="===============3367812191575192898=="

--===============3367812191575192898==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: IRQ fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/92053/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10295 -> Patchwork_20491
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20491:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@gem_migrate}:
    - {fi-dg1-1}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-dg1-1/igt@i915_selftest@live@gem_migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-dg1-1/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-2}:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-dg1-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20491 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-kbl-soraka:      [PASS][6] -> [INCOMPLETE][7] ([i915#2782])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-kbl-soraka/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-bsw-kefka:       [PASS][8] -> [FAIL][9] ([i915#2122])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#1602] / [i915#2029])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][11] ([i915#1436] / [i915#3363])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-kbl-soraka/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10295 -> Patchwork_20491

  CI-20190529: 20190529
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20491: c59dbcab463129aebc932254b2d1ba366629118d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c59dbcab4631 drm/i915: Drop all references to DRM IRQ midlayer
2d086f7fab68 drm/i915: Use the correct IRQ during resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/index.html

--===============3367812191575192898==
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
<tr><td><b>Series:</b></td><td>drm/i915: IRQ fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92053/">https://patchwork.freedesktop.org/series/92053/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10295 -&gt; Patchwork_20491</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20491:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@i915_selftest@live@gem_migrate}:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-dg1-1/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-dg1-1/igt@i915_selftest@live@gem_migrate.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-dg1-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20491 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-kbl-soraka/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10295/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20491/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10295 -&gt; Patchwork_20491</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10295: 683b7f160eb6993ccfc19e67e3c7111f12946bea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6124: 357d5477c93f2bdd3354afe91b89ccfd4ee4fd56 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20491: c59dbcab463129aebc932254b2d1ba366629118d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c59dbcab4631 drm/i915: Drop all references to DRM IRQ midlayer<br />
2d086f7fab68 drm/i915: Use the correct IRQ during resume</p>

</body>
</html>

--===============3367812191575192898==--

--===============1955137982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1955137982==--
