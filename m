Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 336BA2E2947
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Dec 2020 00:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C24A898A8;
	Thu, 24 Dec 2020 23:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6640289862;
 Thu, 24 Dec 2020 23:56:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 588CCA882F;
 Thu, 24 Dec 2020 23:56:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 24 Dec 2020 23:56:29 -0000
Message-ID: <160885418933.23494.14894152918531223197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201224230110.8057-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201224230110.8057-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/gt=3A_Cancel_submitted_requests_upon?=
 =?utf-8?q?_context_reset_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1889621551=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1889621551==
Content-Type: multipart/alternative;
 boundary="===============4052464501027903890=="

--===============4052464501027903890==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with drm/i915/gt: Cancel submitted requests upon context reset (rev2)
URL   : https://patchwork.freedesktop.org/series/85209/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9522 -> Patchwork_19215
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19215 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19215, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19215:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-u2:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
    - fi-skl-6700k2:      [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html
    - fi-icl-u2:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
    - fi-skl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-skl-6600u:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
    - fi-cfl-8109u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-7500u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-7500u/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-7500u/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-nick:        [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-icl-y:           [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-icl-y/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-r:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-r/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-r/igt@i915_selftest@live@hangcheck.html
    - fi-glk-dsi:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-x1275:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-kefka:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
    - fi-cml-s:           [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cml-s/igt@i915_selftest@live@hangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cml-s/igt@i915_selftest@live@hangcheck.html
    - fi-tgl-y:           [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-soraka:      [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-guc/igt@i915_selftest@live@hangcheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-n3050:       [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html
    - fi-tgl-u2:          [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [DMESG-WARN][43] ([i915#203]) -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {fi-tgl-dsi}:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html
    - {fi-ehl-1}:         [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-ehl-1/igt@i915_selftest@live@hangcheck.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-ehl-1/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_19215 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][49] -> [DMESG-WARN][50] ([i915#402])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][51] -> [DMESG-FAIL][52] ([i915#2601])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [DMESG-WARN][53] ([i915#402]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@gem_flink_basic@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [DMESG-WARN][55] ([i915#1037]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-apl-guc:         [DMESG-WARN][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@ring_submission:
    - fi-apl-guc:         [DMESG-WARN][59] ([i915#203]) -> [PASS][60] +23 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@ring_submission.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@ring_submission.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9522 -> Patchwork_19215

  CI-20190529: 20190529
  CI_DRM_9522: 2384222e087b158e3cb9dd3b74a0561ed9be6dc6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19215: 13f70ef110c3b3a54776b44cc3a176ed849a4b56 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

13f70ef110c3 drm/i915/gem: Peek at the inflight context
63b7e925c1c2 drm/i915/gt: Pull context closure check from request submit to schedule-in
7df04a055695 drm/i915/gt: Cancel submitted requests upon context reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/index.html

--===============4052464501027903890==
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
<tr><td><b>Series:</b></td><td>series starting with drm/i915/gt: Cancel submitted requests upon context reset (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85209/">https://patchwork.freedesktop.org/series/85209/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9522 -&gt; Patchwork_19215</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19215 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19215, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19215:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-6700k2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-8109u/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-7500u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-7500u/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-icl-y/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-r/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-r/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-x1275/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cml-s/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cml-s/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-cfl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-cfl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-ehl-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-ehl-1/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19215 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9522/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19215/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">PASS</a> +23 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9522 -&gt; Patchwork_19215</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9522: 2384222e087b158e3cb9dd3b74a0561ed9be6dc6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19215: 13f70ef110c3b3a54776b44cc3a176ed849a4b56 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>13f70ef110c3 drm/i915/gem: Peek at the inflight context<br />
63b7e925c1c2 drm/i915/gt: Pull context closure check from request submit to schedule-in<br />
7df04a055695 drm/i915/gt: Cancel submitted requests upon context reset</p>

</body>
</html>

--===============4052464501027903890==--

--===============1889621551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1889621551==--
