Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA66C4E1EED
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 03:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E624B10E127;
	Mon, 21 Mar 2022 02:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D89B610E127;
 Mon, 21 Mar 2022 02:00:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7D76A3C0D;
 Mon, 21 Mar 2022 02:00:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0070834869204702563=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Mon, 21 Mar 2022 02:00:13 -0000
Message-ID: <164782801378.18158.6991044869272712814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317072333.1048130-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220317072333.1048130-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Don=27t_evict_unmappable_VMAs_when_pinning_with_PI?=
 =?utf-8?q?N=5FMAPPABLE_=28rev2=29?=
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

--===============0070834869204702563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Don't evict unmappable VMAs when pinning with PIN_MAPPABLE (rev2)
URL   : https://patchwork.freedesktop.org/series/101460/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11385 -> Patchwork_22621
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/index.html

Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-bdw-5557u shard-tglu fi-skl-guc fi-bsw-cyan fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22621:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - {bat-adlm-1}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - {bat-adlm-1}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_flip@basic-flip-vs-modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_22621 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][4] -> [INCOMPLETE][5] ([i915#4785])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#165])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       [PASS][8] -> [DMESG-WARN][9] ([i915#165] / [i915#295] / [i915#5341])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#165] / [i915#295]) +13 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][12] ([fdo#109271] / [i915#1436] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][13] ([i915#3576]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-adlm-1}:       [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-rkl-guc:         [SKIP][17] ([i915#4070] / [i915#4103]) -> [SKIP][18] ([i915#4103]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-guc:         [SKIP][19] ([i915#4070] / [i915#533]) -> [SKIP][20] ([i915#533])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356


Build changes
-------------

  * Linux: CI_DRM_11385 -> Patchwork_22621

  CI-20190529: 20190529
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22621: eab8d340d0a328193f6a40a0cd2bb37371fbc1e9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eab8d340d0a3 drm/i915/gem: Don't evict unmappable VMAs when pinning with PIN_MAPPABLE (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/index.html

--===============0070834869204702563==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Don&#39;t evict unmappable VMAs when pinning with PIN_MAPPABLE (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101460/">https://patchwork.freedesktop.org/series/101460/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11385 -&gt; Patchwork_22621</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/index.html</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): fi-bdw-5557u shard-tglu fi-skl-guc fi-bsw-cyan fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22621:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_flip@basic-flip-vs-modeset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22621 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22621/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11385 -&gt; Patchwork_22621</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22621: eab8d340d0a328193f6a40a0cd2bb37371fbc1e9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eab8d340d0a3 drm/i915/gem: Don't evict unmappable VMAs when pinning with PIN_MAPPABLE (v2)</p>

</body>
</html>

--===============0070834869204702563==--
