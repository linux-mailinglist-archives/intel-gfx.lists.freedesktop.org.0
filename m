Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855D36DE95C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 04:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4413510E12B;
	Wed, 12 Apr 2023 02:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0772110E12B;
 Wed, 12 Apr 2023 02:15:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7883A0078;
 Wed, 12 Apr 2023 02:15:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6667539797893308113=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 12 Apr 2023 02:15:34 -0000
Message-ID: <168126573491.10847.4210046546255075293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_CTM_stuff_mostly?=
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

--===============6667539797893308113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: CTM stuff mostly
URL   : https://patchwork.freedesktop.org/series/116345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12993 -> Patchwork_116345v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116345v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116345v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116345v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@ctm-max@pipe-b (NEW):
    - bat-dg1-7:          NOTRUN -> [SKIP][1] +35 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html

  * igt@kms_color@ctm-red-to-blue@pipe-a (NEW):
    - bat-dg2-11:         NOTRUN -> [ABORT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@kms_color@ctm-red-to-blue@pipe-a.html
    - bat-dg2-8:          NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_color@ctm-red-to-blue@pipe-a.html
    - bat-dg2-9:          NOTRUN -> [ABORT][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-a.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12993 and Patchwork_116345v1:

### New IGT tests (37) ###

  * igt@kms_color@ctm-0-25@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-a:
    - Statuses : 3 abort(s) 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-a:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-b:
    - Statuses : 20 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-c:
    - Statuses : 19 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_116345v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#8308])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-n3050:       [PASS][7] -> [ABORT][8] ([i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][9] -> [ABORT][10] ([i915#4983] / [i915#7913])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-rpls-2/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-dg2-8:          NOTRUN -> [SKIP][11] ([i915#6645])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-8:          NOTRUN -> [SKIP][12] ([i915#7828])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_color@ctm-0-25:
    - bat-atsm-1:         NOTRUN -> [SKIP][13] ([i915#6078]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-atsm-1/igt@kms_color@ctm-0-25.html

  * igt@kms_color@ctm-0-25@pipe-b (NEW):
    - {bat-kbl-2}:        NOTRUN -> [SKIP][14] ([fdo#109271]) +26 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html

  * igt@kms_color@ctm-blue-to-red@pipe-c (NEW):
    - fi-bsw-nick:        NOTRUN -> [SKIP][15] ([fdo#109271]) +26 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271]) +26 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html

  * igt@kms_color@ctm-green-to-red@pipe-c (NEW):
    - fi-kbl-8809g:       NOTRUN -> [SKIP][17] ([fdo#109271]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html

  * {igt@kms_color@ctm-signed@pipe-a} (NEW):
    - fi-kbl-x1275:       NOTRUN -> [SKIP][18] ([fdo#109271]) +26 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html

  * {igt@kms_color@ctm-signed@pipe-b} (NEW):
    - fi-elk-e7500:       NOTRUN -> [SKIP][19] ([fdo#109271]) +19 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][20] ([i915#5354])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][21] -> [FAIL][22] ([i915#7932])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][23] ([i915#5334]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-8:          [ABORT][25] ([i915#7913] / [i915#7979]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][27] ([i915#6367]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * IGT: IGT_7250 -> IGTPW_8780
  * Linux: CI_DRM_12993 -> Patchwork_116345v1

  CI-20190529: 20190529
  CI_DRM_12993: 3f6d1a580787c3aa8c9c7f174bdce5b055d6d724 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html
  IGT_7250: 2da179d399d83a6859a89176d83b7ec1d71fe27a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116345v1: 3f6d1a580787c3aa8c9c7f174bdce5b055d6d724 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

28d17a5acb8d drm/i915: Do state check for color management changes
93fa04b569e0 drm/i915: No 10bit gamma on desktop gen3 parts
adc16b5a1789 drm/i915: Implement CTM property support for VLV
e12ce0aa1d9e drm/i915: Fix CHV CGM CSC coefficient sign handling
f1e5b35bdca8 drm/i915: Expose crtc CTM property on ilk/snb
5d96883514cb drm/uapi: Document CTM matrix better

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/index.html

--===============6667539797893308113==
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
<tr><td><b>Series:</b></td><td>drm/i915: CTM stuff mostly</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116345/">https://patchwork.freedesktop.org/series/116345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12993 -&gt; Patchwork_116345v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116345v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116345v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116345v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_color@ctm-max@pipe-b (NEW):</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html">SKIP</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a (NEW):</p>
<ul>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12993 and Patchwork_116345v1:</p>
<h3>New IGT tests (37)</h3>
<ul>
<li>
<p>igt@kms_color@ctm-0-25@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a:</p>
<ul>
<li>Statuses : 3 abort(s) 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-c:</p>
<ul>
<li>Statuses : 19 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116345v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-atsm-1/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b (NEW):</p>
<ul>
<li>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c (NEW):</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c (NEW):</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-a} (NEW):</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-b} (NEW):</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7979">i915#7979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12993/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7250 -&gt; IGTPW_8780</li>
<li>Linux: CI_DRM_12993 -&gt; Patchwork_116345v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12993: 3f6d1a580787c3aa8c9c7f174bdce5b055d6d724 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html<br />
  IGT_7250: 2da179d399d83a6859a89176d83b7ec1d71fe27a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116345v1: 3f6d1a580787c3aa8c9c7f174bdce5b055d6d724 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>28d17a5acb8d drm/i915: Do state check for color management changes<br />
93fa04b569e0 drm/i915: No 10bit gamma on desktop gen3 parts<br />
adc16b5a1789 drm/i915: Implement CTM property support for VLV<br />
e12ce0aa1d9e drm/i915: Fix CHV CGM CSC coefficient sign handling<br />
f1e5b35bdca8 drm/i915: Expose crtc CTM property on ilk/snb<br />
5d96883514cb drm/uapi: Document CTM matrix better</p>

</body>
</html>

--===============6667539797893308113==--
