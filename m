Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A640A6BE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 08:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D313C6E419;
	Tue, 14 Sep 2021 06:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9162C6E418;
 Tue, 14 Sep 2021 06:36:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89535A9A42;
 Tue, 14 Sep 2021 06:36:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3190571670678378536=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 06:36:05 -0000
Message-ID: <163160136555.3455.1517894517914685295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914050956.30685-1-matthew.brost@intel.com>
In-Reply-To: <20210914050956.30685-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRG8g?=
 =?utf-8?q?error_capture_async=2C_flush_G2H_processing_on_reset_=28rev2=29?=
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

--===============3190571670678378536==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Do error capture async, flush G2H processing on reset (rev2)
URL   : https://patchwork.freedesktop.org/series/94642/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10576 -> Patchwork_21035
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21035 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21035, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21035:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7567u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-kbl-guc/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cfl-8109u/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-cfl-8700k:       NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-jsl-1}:         [INCOMPLETE][11] -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-jsl-1/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-jsl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - {fi-jsl-1}:         NOTRUN -> [INCOMPLETE][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-jsl-1/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_21035 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-rkl-guc:         NOTRUN -> [SKIP][14] ([i915#3669])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][15] ([i915#2426] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][16] ([i915#2426] / [i915#3363] / [i915#3690])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [INCOMPLETE][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [INCOMPLETE][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cml-u2:          [FAIL][23] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][24] ([i915#2722] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cml-u2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cml-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3669]: https://gitlab.freedesktop.org/drm/intel/issues/3669
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10576 -> Patchwork_21035

  CI-20190529: 20190529
  CI_DRM_10576: 881240262b8bd204464f1f5f663348688484b867 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21035: ee89055cacf0d8a57a3877abbae5701d6f69d096 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee89055cacf0 drm/i915/guc: Refcount context during error capture
65c7ecfceb43 drm/i915/guc: Flush G2H work queue during reset
4bbb41208b02 drm/i915/guc: Do error capture asynchronously
acc3118b7aaa drm/i915/guc: Move guc_ids under submission_state sub-structure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/index.html

--===============3190571670678378536==
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
<tr><td><b>Series:</b></td><td>Do error capture async, flush G2H processing on reset (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94642/">https://patchwork.freedesktop.org/series/94642/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10576 -&gt; Patchwork_21035</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21035 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21035, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21035:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8109u/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-jsl-1/igt@i915_module_load@reload.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-jsl-1/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21035 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3669">i915#3669</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10576/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21035/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10576 -&gt; Patchwork_21035</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10576: 881240262b8bd204464f1f5f663348688484b867 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21035: ee89055cacf0d8a57a3877abbae5701d6f69d096 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ee89055cacf0 drm/i915/guc: Refcount context during error capture<br />
65c7ecfceb43 drm/i915/guc: Flush G2H work queue during reset<br />
4bbb41208b02 drm/i915/guc: Do error capture asynchronously<br />
acc3118b7aaa drm/i915/guc: Move guc_ids under submission_state sub-structure</p>

</body>
</html>

--===============3190571670678378536==--
