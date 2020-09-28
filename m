Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0E827B02F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 16:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133A789B97;
	Mon, 28 Sep 2020 14:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74CEB89B8F;
 Mon, 28 Sep 2020 14:45:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61518A8832;
 Mon, 28 Sep 2020 14:45:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 28 Sep 2020 14:45:04 -0000
Message-ID: <160130430436.8775.14738923442785445638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200928121255.21494-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200928121255.21494-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Cancel_outstanding?=
 =?utf-8?q?_work_after_disabling_heartbeats_on_an_engine?=
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
Content-Type: multipart/mixed; boundary="===============1760290054=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1760290054==
Content-Type: multipart/alternative;
 boundary="===============2423045148309394187=="

--===============2423045148309394187==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/3] drm/i915: Cancel outstanding work after disabling heartbeats on an engine
URL   : https://patchwork.freedesktop.org/series/82153/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9064 -> Patchwork_18582
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18582 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18582, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18582:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-6700k2/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-6700k2/igt@gem_busy@busy@all.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-guc/igt@gem_close_race@basic-threads.html
    - fi-icl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-icl-y/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-icl-y/igt@gem_close_race@basic-threads.html
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
    - fi-cfl-8109u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
    - fi-kbl-r:           [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-r/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-r/igt@gem_close_race@basic-threads.html
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-guc/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-guc/igt@gem_close_race@basic-threads.html
    - fi-kbl-x1275:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
    - fi-cml-s:           [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cml-s/igt@gem_close_race@basic-threads.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cml-s/igt@gem_close_race@basic-threads.html
    - fi-skl-lmem:        [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-lmem/igt@gem_close_race@basic-threads.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-lmem/igt@gem_close_race@basic-threads.html
    - fi-icl-u2:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-icl-u2/igt@gem_close_race@basic-threads.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-icl-u2/igt@gem_close_race@basic-threads.html
    - fi-cml-u2:          [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cml-u2/igt@gem_close_race@basic-threads.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cml-u2/igt@gem_close_race@basic-threads.html
    - fi-cfl-8700k:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-8700k/igt@gem_close_race@basic-threads.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-8700k/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - fi-glk-dsi:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-glk-dsi/igt@gem_ctx_create@basic-files.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-glk-dsi/igt@gem_ctx_create@basic-files.html
    - fi-skl-6600u:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-6600u/igt@gem_ctx_create@basic-files.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-6600u/igt@gem_ctx_create@basic-files.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-dsi}:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@engines@contexts:
    - {fi-ehl-1}:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-ehl-1/igt@gem_exec_parallel@engines@contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-ehl-1/igt@gem_exec_parallel@engines@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_18582 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-kbl-guc:         [PASS][35] -> [INCOMPLETE][36] ([CI#80])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-guc/igt@gem_close_race@basic-threads.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - fi-bxt-dsi:         [PASS][37] -> [INCOMPLETE][38] ([i915#1635])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
    - fi-apl-guc:         [PASS][39] -> [INCOMPLETE][40] ([i915#1635])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-apl-guc/igt@gem_ctx_create@basic-files.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [PASS][41] -> [DMESG-WARN][42] ([i915#1982])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9064 -> Patchwork_18582

  CI-20190529: 20190529
  CI_DRM_9064: 522915a5295e60ee46192e13bc0601678adc5a5a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5790: 722a3eb9734f04030508d244df9dff55c5ab686c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18582: 26d4f9b88bb4a1e434db86f7531e782e90f8909d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

26d4f9b88bb4 drm/i915/gem: Always test execution status on closing the context
8c08ab993441 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat
b433eb469e70 drm/i915: Cancel outstanding work after disabling heartbeats on an engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/index.html

--===============2423045148309394187==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/3] drm/i915: Cancel outstanding work after disabling heartbeats on an engine</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82153/">https://patchwork.freedesktop.org/series/82153/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9064 -&gt; Patchwork_18582</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18582 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18582, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18582:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-6700k2/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-6700k2/igt@gem_busy@busy@all.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-guc/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-icl-y/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-icl-y/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-8109u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-8109u/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-r/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-r/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-guc/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-x1275/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-x1275/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cml-s/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cml-s/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-lmem/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-lmem/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-icl-u2/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-icl-u2/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cml-u2/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cml-u2/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-cfl-8700k/igt@gem_close_race@basic-threads.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-glk-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-glk-dsi/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-skl-6600u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-skl-6600u/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-ehl-1/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-ehl-1/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18582 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-kbl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-kbl-guc/igt@gem_close_race@basic-threads.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-apl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9064/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18582/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9064 -&gt; Patchwork_18582</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9064: 522915a5295e60ee46192e13bc0601678adc5a5a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5790: 722a3eb9734f04030508d244df9dff55c5ab686c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18582: 26d4f9b88bb4a1e434db86f7531e782e90f8909d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>26d4f9b88bb4 drm/i915/gem: Always test execution status on closing the context<br />
8c08ab993441 drm/i915/gt: Always send a pulse down the engine after disabling heartbeat<br />
b433eb469e70 drm/i915: Cancel outstanding work after disabling heartbeats on an engine</p>

</body>
</html>

--===============2423045148309394187==--

--===============1760290054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1760290054==--
