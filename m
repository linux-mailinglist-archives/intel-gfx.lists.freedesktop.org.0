Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A5930AF4D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4976E867;
	Mon,  1 Feb 2021 18:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD93A6E867;
 Mon,  1 Feb 2021 18:31:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C725CA47E1;
 Mon,  1 Feb 2021 18:31:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 01 Feb 2021 18:31:19 -0000
Message-ID: <161220427978.18682.17327455415877364565@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vbt=3A_update_DP_max_link_rate_table?=
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
Content-Type: multipart/mixed; boundary="===============2084600244=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2084600244==
Content-Type: multipart/alternative;
 boundary="===============1214855066976645693=="

--===============1214855066976645693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vbt: update DP max link rate table
URL   : https://patchwork.freedesktop.org/series/86539/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9713 -> Patchwork_19554
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/index.html

Known issues
------------

  Here are the changes found in Patchwork_19554 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +26 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_basic@create-fd-close:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_basic@create-fd-close.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-tgl-y/igt@gem_basic@create-fd-close.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][5] -> [INCOMPLETE][6] ([i915#142] / [i915#2405])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#2203])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][10] ([i915#1814] / [i915#2505])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#203]) -> [PASS][12] +27 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-WARN][13] ([i915#1037]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_engines:
    - fi-cfl-8109u:       [DMESG-WARN][15] -> [PASS][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [DMESG-WARN][17] ([i915#2605]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9713 -> Patchwork_19554

  CI-20190529: 20190529
  CI_DRM_9713: cc7b6cbff2a0a75ad4fe84d055ee1a762f0ce64b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5984: ccfc101419c1e233f87ca509781c5f8e09a2f3ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19554: b92a66be8e8749b8d3498b5fd043e3a5f402ca10 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b92a66be8e87 drm/i915/vbt: update DP max link rate table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/index.html

--===============1214855066976645693==
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
<tr><td><b>Series:</b></td><td>drm/i915/vbt: update DP max link rate table</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86539/">https://patchwork.freedesktop.org/series/86539/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9713 -&gt; Patchwork_19554</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19554 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-tgl-y/igt@gem_basic@create-fd-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19554/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9713 -&gt; Patchwork_19554</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9713: cc7b6cbff2a0a75ad4fe84d055ee1a762f0ce64b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5984: ccfc101419c1e233f87ca509781c5f8e09a2f3ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19554: b92a66be8e8749b8d3498b5fd043e3a5f402ca10 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b92a66be8e87 drm/i915/vbt: update DP max link rate table</p>

</body>
</html>

--===============1214855066976645693==--

--===============2084600244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2084600244==--
