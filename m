Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223878CD6E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 22:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A9D10E497;
	Tue, 29 Aug 2023 20:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89BF110E497;
 Tue, 29 Aug 2023 20:17:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FCC4A0BA8;
 Tue, 29 Aug 2023 20:17:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2420939820446502974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 29 Aug 2023 20:17:02 -0000
Message-ID: <169334022248.16747.8598393298036971735@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829160422.1251087-1-uma.shankar@intel.com>
In-Reply-To: <20230829160422.1251087-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_Support_for_Plane_Color_Pipeline?=
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

--===============2420939820446502974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add Support for Plane Color Pipeline
URL   : https://patchwork.freedesktop.org/series/123023/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13574 -> Patchwork_123023v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123023v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123023v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123023v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-11:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-adlp-11/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-adlp-11/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - bat-dg2-11:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-11/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-11/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-9/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-9/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [DMESG-WARN][7] ([i915#8879]) -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-13/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [DMESG-WARN][9] ([i915#8879]) -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-14/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-14/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_123023v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [PASS][11] -> [ABORT][12] ([i915#7978] / [i915#8668])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         NOTRUN -> [ABORT][13] ([i915#8442] / [i915#8668] / [i915#8712])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
#### Warnings ####

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [ABORT][14] ([i915#8469] / [i915#8668]) -> [SKIP][15] ([i915#1072])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13574 -> Patchwork_123023v1

  CI-20190529: 20190529
  CI_DRM_13574: 2a7ec376910bf7ab4ae8a2594e73d9b5c1570046 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7459: 7459
  Patchwork_123023v1: 2a7ec376910bf7ab4ae8a2594e73d9b5c1570046 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ecc6154eb822 drm/i915/color: Add example implementation for vendor specific color operation
c10cba0b8b80 drm/i915/color: Add a dummy pipeline with 3D LUT
6e9e83d26c3d drm/i915/color: Enable plane color features
cd9576deea7b drm/i915/color: Enable Plane CSC
5074441371bb drm/i915/xelpd: Program Plane Post CSC Registers
89decd8c4135 drm/i915/xelpd: Add register definitions for Plane Post CSC
a8a81ddbe737 drm/i915/color: Program Plane Pre-CSC Registers
57032feab0b9 drm/i915/color: Add color functions for ADL
b3d1021ff46e drm/i915/xelpd: Add register definitions for Plane Degamma
98d568bd1d0a drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
34b5a55fbbab drm/i915/color: Load plane color luts from atomic flip
d8d431692734 drm/i915/color: Add plane color callbacks
22ea46c5f4db drm/i915/color: Create and attach set color pipeline property
13852a46688b drm/i915/color: Add color pipelines to plane
5666e64f3220 drm/i915/color: Add SDR plane LUT range data to color pipeline
95df87f4d41d drm/i915/color: Add HDR plane LUT range data to color pipeline
d4bc2af110fe drm/i915/color: Add color pipeline for SDR planes
5ba690dfd71c drm/i915/color: Add color pipeline for HDR planes
6e555e736ce4 drm/i915/color: Add lut range for HDR planes
f08d49d53577 drm/i915/color: Add lut range for SDR planes
bdd8237bbb19 drm: Reset plane color state on pipeline switch request
835faea2c02e drm: Reset pipeline when user sends NULL blob
f207dc394c37 drm: Replace individual color blobs
9191449a2b6d drm: Manage color blob states
3c033443a4d7 drm: Add color information to plane state
c4886eb7d358 drm: Add color lut range structure
f86cbf894428 drm: Add Enhanced Gamma LUT precision structure
fcca79be7769 drm: Add set colorpipeline property
66caa50d297f drm: Add structures for setting color pipeline
49719816cfa5 drm: Add helper to add color pipeline
a0c8dce28b55 drm: Add plane get color pipeline property
9d16aa3dfca1 drm: Add color operation structure
761ad4cedd79 drm/doc/rfc: Add RFC document for proposed Plane Color Pipeline

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/index.html

--===============2420939820446502974==
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
<tr><td><b>Series:</b></td><td>Add Support for Plane Color Pipeline</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123023/">https://patchwork.freedesktop.org/series/123023/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13574 -&gt; Patchwork_123023v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123023v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123023v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123023v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-adlp-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-adlp-11/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-dg2-14/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123023v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8712">i915#8712</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13574/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123023v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13574 -&gt; Patchwork_123023v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13574: 2a7ec376910bf7ab4ae8a2594e73d9b5c1570046 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7459: 7459<br />
  Patchwork_123023v1: 2a7ec376910bf7ab4ae8a2594e73d9b5c1570046 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ecc6154eb822 drm/i915/color: Add example implementation for vendor specific color operation<br />
c10cba0b8b80 drm/i915/color: Add a dummy pipeline with 3D LUT<br />
6e9e83d26c3d drm/i915/color: Enable plane color features<br />
cd9576deea7b drm/i915/color: Enable Plane CSC<br />
5074441371bb drm/i915/xelpd: Program Plane Post CSC Registers<br />
89decd8c4135 drm/i915/xelpd: Add register definitions for Plane Post CSC<br />
a8a81ddbe737 drm/i915/color: Program Plane Pre-CSC Registers<br />
57032feab0b9 drm/i915/color: Add color functions for ADL<br />
b3d1021ff46e drm/i915/xelpd: Add register definitions for Plane Degamma<br />
98d568bd1d0a drm/i915/xelpd: Add plane color check to glk_plane_color_ctl<br />
34b5a55fbbab drm/i915/color: Load plane color luts from atomic flip<br />
d8d431692734 drm/i915/color: Add plane color callbacks<br />
22ea46c5f4db drm/i915/color: Create and attach set color pipeline property<br />
13852a46688b drm/i915/color: Add color pipelines to plane<br />
5666e64f3220 drm/i915/color: Add SDR plane LUT range data to color pipeline<br />
95df87f4d41d drm/i915/color: Add HDR plane LUT range data to color pipeline<br />
d4bc2af110fe drm/i915/color: Add color pipeline for SDR planes<br />
5ba690dfd71c drm/i915/color: Add color pipeline for HDR planes<br />
6e555e736ce4 drm/i915/color: Add lut range for HDR planes<br />
f08d49d53577 drm/i915/color: Add lut range for SDR planes<br />
bdd8237bbb19 drm: Reset plane color state on pipeline switch request<br />
835faea2c02e drm: Reset pipeline when user sends NULL blob<br />
f207dc394c37 drm: Replace individual color blobs<br />
9191449a2b6d drm: Manage color blob states<br />
3c033443a4d7 drm: Add color information to plane state<br />
c4886eb7d358 drm: Add color lut range structure<br />
f86cbf894428 drm: Add Enhanced Gamma LUT precision structure<br />
fcca79be7769 drm: Add set colorpipeline property<br />
66caa50d297f drm: Add structures for setting color pipeline<br />
49719816cfa5 drm: Add helper to add color pipeline<br />
a0c8dce28b55 drm: Add plane get color pipeline property<br />
9d16aa3dfca1 drm: Add color operation structure<br />
761ad4cedd79 drm/doc/rfc: Add RFC document for proposed Plane Color Pipeline</p>

</body>
</html>

--===============2420939820446502974==--
