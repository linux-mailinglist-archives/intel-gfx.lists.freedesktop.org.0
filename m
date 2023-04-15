Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B2F6E3383
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Apr 2023 22:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F36310E21E;
	Sat, 15 Apr 2023 20:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86DAD10E065;
 Sat, 15 Apr 2023 20:23:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCCDDAA917;
 Sat, 15 Apr 2023 20:23:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9112023144165729576=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 15 Apr 2023 20:23:19 -0000
Message-ID: <168159019973.19227.11268743145193828738@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_CTM_stuff_mostly_=28rev5=29?=
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

--===============9112023144165729576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: CTM stuff mostly (rev5)
URL   : https://patchwork.freedesktop.org/series/116345/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13010 -> Patchwork_116345v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116345v5:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_color@ctm-signed@pipe-a} (NEW):
    - bat-dg2-11:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@kms_color@ctm-signed@pipe-a.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13010 and Patchwork_116345v5:

### New IGT tests (37) ###

  * igt@kms_color@ctm-0-25@pipe-a:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-b:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-d:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-a:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-b:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-d:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-a:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-b:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-d:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-a:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-b:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-d:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-a:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-d:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-a:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-b:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-d:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-a:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-b:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-d:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-a:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-b:
    - Statuses : 22 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-c:
    - Statuses : 22 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-d:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-a:
    - Statuses : 1 fail(s) 21 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-b:
    - Statuses : 21 pass(s) 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-c:
    - Statuses : 21 pass(s) 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-d:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_116345v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-rplp-1:         [PASS][2] -> [INCOMPLETE][3] ([i915#7609] / [i915#7913])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][4] -> [DMESG-WARN][5] ([i915#7699])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][6] -> [ABORT][7] ([i915#4983] / [i915#7911])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-1/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][8] ([i915#6367] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][9] ([i915#7828])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_color@ctm-0-25:
    - bat-atsm-1:         NOTRUN -> [SKIP][10] ([i915#6078]) +9 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-atsm-1/igt@kms_color@ctm-0-25.html

  * igt@kms_color@ctm-0-25@pipe-b (NEW):
    - {bat-kbl-2}:        NOTRUN -> [SKIP][11] ([fdo#109271]) +26 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html

  * igt@kms_color@ctm-0-25@pipe-d (NEW):
    - bat-dg2-11:         NOTRUN -> [SKIP][12] ([i915#5354]) +15 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@kms_color@ctm-0-25@pipe-d.html

  * igt@kms_color@ctm-0-50@pipe-b (NEW):
    - fi-bsw-n3050:       NOTRUN -> [SKIP][13] ([fdo#109271]) +17 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_color@ctm-0-75@pipe-a (NEW):
    - bat-rpls-2:         NOTRUN -> [SKIP][14] ([i915#5354]) +17 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_color@ctm-0-75@pipe-a.html

  * igt@kms_color@ctm-blue-to-red@pipe-c (NEW):
    - fi-bsw-nick:        NOTRUN -> [SKIP][15] ([fdo#109271]) +26 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271]) +26 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html

  * igt@kms_color@ctm-green-to-red@pipe-c (NEW):
    - fi-kbl-8809g:       NOTRUN -> [SKIP][17] ([fdo#109271]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html

  * igt@kms_color@ctm-max@pipe-b (NEW):
    - bat-dg1-7:          NOTRUN -> [SKIP][18] ([i915#5354]) +35 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html

  * {igt@kms_color@ctm-signed@pipe-a} (NEW):
    - fi-kbl-x1275:       NOTRUN -> [SKIP][19] ([fdo#109271]) +26 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html

  * {igt@kms_color@ctm-signed@pipe-b} (NEW):
    - fi-elk-e7500:       NOTRUN -> [SKIP][20] ([fdo#109271]) +19 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][21] ([i915#3546]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][22] ([i915#1845])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [DMESG-FAIL][23] ([i915#7699]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-adlp-9/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][25] ([i915#4983] / [i915#7913] / [i915#7981]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-2/igt@i915_selftest@live@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * IGT: IGT_7256 -> IGTPW_8780
  * Linux: CI_DRM_13010 -> Patchwork_116345v5

  CI-20190529: 20190529
  CI_DRM_13010: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116345v5: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d12db96c87c7 drm/i915: Do state check for color management changes
0bcbf5cbe2d8 drm/i915: No 10bit gamma on desktop gen3 parts
c9c0d20df271 drm/i915: Implement CTM property support for VLV
b814b27cecd8 drm/i915: Always enable CGM CSC on CHV
cc8ea7ed3bdb drm/i915: Fix CHV CGM CSC coefficient sign handling
d6fb60e7053f drm/i915: Expose crtc CTM property on ilk/snb
7096d228beef drm/uapi: Document CTM matrix better

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/index.html

--===============9112023144165729576==
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
<tr><td><b>Series:</b></td><td>drm/i915: CTM stuff mostly (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116345/">https://patchwork.freedesktop.org/series/116345/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13010 -&gt; Patchwork_116345v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116345v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>{igt@kms_color@ctm-signed@pipe-a} (NEW):<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@kms_color@ctm-signed@pipe-a.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13010 and Patchwork_116345v5:</p>
<h3>New IGT tests (37)</h3>
<ul>
<li>
<p>igt@kms_color@ctm-0-25@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
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
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
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
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
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
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
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
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
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
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-a:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
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
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b:</p>
<ul>
<li>Statuses : 22 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-c:</p>
<ul>
<li>Statuses : 22 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
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
<li>Statuses : 1 fail(s) 21 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-b:</p>
<ul>
<li>Statuses : 21 pass(s) 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-c:</p>
<ul>
<li>Statuses : 21 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-d:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116345v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-atsm-1/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b (NEW):</p>
<ul>
<li>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d (NEW):</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg2-11/igt@kms_color@ctm-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b (NEW):</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a (NEW):</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_color@ctm-0-75@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c (NEW):</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c (NEW):</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b (NEW):</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-a} (NEW):</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-b} (NEW):</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13010/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v5/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7256 -&gt; IGTPW_8780</li>
<li>Linux: CI_DRM_13010 -&gt; Patchwork_116345v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13010: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html<br />
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116345v5: a3cb6a082228cf82afbc828b6074b53b118144cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d12db96c87c7 drm/i915: Do state check for color management changes<br />
0bcbf5cbe2d8 drm/i915: No 10bit gamma on desktop gen3 parts<br />
c9c0d20df271 drm/i915: Implement CTM property support for VLV<br />
b814b27cecd8 drm/i915: Always enable CGM CSC on CHV<br />
cc8ea7ed3bdb drm/i915: Fix CHV CGM CSC coefficient sign handling<br />
d6fb60e7053f drm/i915: Expose crtc CTM property on ilk/snb<br />
7096d228beef drm/uapi: Document CTM matrix better</p>

</body>
</html>

--===============9112023144165729576==--
