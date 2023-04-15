Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51AD6E3183
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Apr 2023 15:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4AF10E276;
	Sat, 15 Apr 2023 13:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB97310E2C5;
 Sat, 15 Apr 2023 13:09:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B31BFAADD2;
 Sat, 15 Apr 2023 13:09:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2693109933737102728=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 15 Apr 2023 13:09:39 -0000
Message-ID: <168156417972.19225.1113960982516929960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_CTM_stuff_mostly_=28rev4=29?=
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

--===============2693109933737102728==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: CTM stuff mostly (rev4)
URL   : https://patchwork.freedesktop.org/series/116345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13010 -> Patchwork_116345v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116345v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116345v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116345v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adln-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adln-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adln-1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@ctm-blue-to-red@pipe-d (NEW):
    - bat-adlp-9:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adlp-9/igt@kms_color@ctm-blue-to-red@pipe-d.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13010 and Patchwork_116345v4:

### New IGT tests (37) ###

  * igt@kms_color@ctm-0-25@pipe-a:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-b:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-d:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-a:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-b:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-d:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-a:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-b:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-d:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-a:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-b:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-d:
    - Statuses : 1 fail(s) 7 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-a:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-d:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-a:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-b:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-d:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-a:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-b:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-d:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-a:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-b:
    - Statuses : 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-d:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-a:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-b:
    - Statuses : 22 pass(s) 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-d:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_116345v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [PASS][4] -> [DMESG-FAIL][5] ([i915#6367] / [i915#7996])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_color@ctm-0-25:
    - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#6078]) +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-atsm-1/igt@kms_color@ctm-0-25.html

  * igt@kms_color@ctm-0-25@pipe-b (NEW):
    - {bat-kbl-2}:        NOTRUN -> [SKIP][7] ([fdo#109271]) +26 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html

  * igt@kms_color@ctm-0-25@pipe-d (NEW):
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#5354]) +15 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-11/igt@kms_color@ctm-0-25@pipe-d.html

  * igt@kms_color@ctm-0-50@pipe-b (NEW):
    - fi-bsw-n3050:       NOTRUN -> [SKIP][9] ([fdo#109271]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_color@ctm-blue-to-red@pipe-c (NEW):
    - fi-bsw-nick:        NOTRUN -> [SKIP][10] ([fdo#109271]) +26 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271]) +26 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html

  * igt@kms_color@ctm-green-to-red@pipe-a (NEW):
    - fi-elk-e7500:       NOTRUN -> [SKIP][12] ([fdo#109271]) +19 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-elk-e7500/igt@kms_color@ctm-green-to-red@pipe-a.html

  * igt@kms_color@ctm-green-to-red@pipe-c (NEW):
    - fi-kbl-8809g:       NOTRUN -> [SKIP][13] ([fdo#109271]) +26 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html

  * igt@kms_color@ctm-max@pipe-b (NEW):
    - bat-dg1-7:          NOTRUN -> [SKIP][14] ([i915#5354]) +35 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html

  * igt@kms_color@ctm-red-to-blue@pipe-c (NEW):
    - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#5354]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-c.html

  * {igt@kms_color@ctm-signed@pipe-a} (NEW):
    - fi-kbl-x1275:       NOTRUN -> [SKIP][16] ([fdo#109271]) +26 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][17] -> [FAIL][18] ([i915#7932])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [DMESG-FAIL][19] ([i915#7699]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adlp-9/igt@i915_selftest@live@migrate.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * IGT: IGT_7256 -> IGTPW_8780
  * Linux: CI_DRM_13010 -> Patchwork_116345v4

  CI-20190529: 20190529
  CI_DRM_13010: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116345v4: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

af259a32e71b drm/i915: Do state check for color management changes
28c881be352d drm/i915: No 10bit gamma on desktop gen3 parts
9437db2d8a7e drm/i915: Implement CTM property support for VLV
b4d07a3e43c8 drm/i915: Always enable CGM CSC on CHV
27a5115c8722 drm/i915: Fix CHV CGM CSC coefficient sign handling
b84b3cad1253 drm/i915: Expose crtc CTM property on ilk/snb
5aff7356c78f drm/uapi: Document CTM matrix better

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/index.html

--===============2693109933737102728==
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
<tr><td><b>Series:</b></td><td>drm/i915: CTM stuff mostly (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116345/">https://patchwork.freedesktop.org/series/116345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13010 -&gt; Patchwork_116345v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116345v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116345v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116345v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adln-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adln-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-d (NEW):</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adlp-9/igt@kms_color@ctm-blue-to-red@pipe-d.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13010 and Patchwork_116345v4:</p>
<h3>New IGT tests (37)</h3>
<ul>
<li>
<p>igt@kms_color@ctm-0-25@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-d:</p>
<ul>
<li>Statuses : 1 fail(s) 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-d:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-d:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
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
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-d:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116345v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-atsm-1/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b (NEW):</p>
<ul>
<li>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d (NEW):</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-11/igt@kms_color@ctm-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b (NEW):</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c (NEW):</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a (NEW):</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-elk-e7500/igt@kms_color@ctm-green-to-red@pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c (NEW):</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b (NEW):</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-c (NEW):</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-a} (NEW):</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v4/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7256 -&gt; IGTPW_8780</li>
<li>Linux: CI_DRM_13010 -&gt; Patchwork_116345v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13010: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html<br />
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116345v4: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>af259a32e71b drm/i915: Do state check for color management changes<br />
28c881be352d drm/i915: No 10bit gamma on desktop gen3 parts<br />
9437db2d8a7e drm/i915: Implement CTM property support for VLV<br />
b4d07a3e43c8 drm/i915: Always enable CGM CSC on CHV<br />
27a5115c8722 drm/i915: Fix CHV CGM CSC coefficient sign handling<br />
b84b3cad1253 drm/i915: Expose crtc CTM property on ilk/snb<br />
5aff7356c78f drm/uapi: Document CTM matrix better</p>

</body>
</html>

--===============2693109933737102728==--
