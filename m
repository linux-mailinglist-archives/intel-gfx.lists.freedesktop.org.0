Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130FD398BFF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 16:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503486E956;
	Wed,  2 Jun 2021 14:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D2A56E956;
 Wed,  2 Jun 2021 14:12:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 359A2A47E2;
 Wed,  2 Jun 2021 14:12:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 02 Jun 2021 14:12:12 -0000
Message-ID: <162264313221.11229.8472039437062257874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601092357.536364-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210601092357.536364-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Only_set_bind=5Fasync=5Fflags_when_concurrent_access_w?=
 =?utf-8?q?a_is_not_active=2C_v3=2E_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1056408094=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1056408094==
Content-Type: multipart/alternative;
 boundary="===============8010246177002124881=="

--===============8010246177002124881==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3. (rev3)
URL   : https://patchwork.freedesktop.org/series/90818/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10160 -> Patchwork_20264
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20264 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20264, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20264:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_20264 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#2782])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-kbl-soraka/igt@i915_selftest@live@requests.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] ([i915#2416])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [INCOMPLETE][7] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][8] ([i915#3462])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [INCOMPLETE][9] ([i915#3462]) -> [DMESG-FAIL][10] ([i915#3462])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-cml-s/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-cml-s/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][11] ([i915#2782] / [i915#3363]) -> [FAIL][12] ([i915#2426] / [i915#2782] / [i915#3363])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-icl-u2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-icl-u2/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][13] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][14] ([i915#1436] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-kbl-soraka/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-kbl-soraka/igt@runner@aborted.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10160 -> Patchwork_20264

  CI-20190529: 20190529
  CI_DRM_10160: b45c894e406d6e822f0fbf9d35ba4c9255707111 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20264: 056e7f6133a97a43c5ffea6076524018312bbf26 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

056e7f6133a9 drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/index.html

--===============8010246177002124881==
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
<tr><td><b>Series:</b></td><td>drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90818/">https://patchwork.freedesktop.org/series/90818/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10160 -&gt; Patchwork_20264</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20264 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20264, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20264:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@engines@fds:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20264 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-kbl-soraka/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-cml-s/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10160/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20264/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10160 -&gt; Patchwork_20264</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10160: b45c894e406d6e822f0fbf9d35ba4c9255707111 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20264: 056e7f6133a97a43c5ffea6076524018312bbf26 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>056e7f6133a9 drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3.</p>

</body>
</html>

--===============8010246177002124881==--

--===============1056408094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1056408094==--
