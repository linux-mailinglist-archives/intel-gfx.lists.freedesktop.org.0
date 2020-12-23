Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 596092E2063
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 19:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11AF6E06E;
	Wed, 23 Dec 2020 18:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6C1C89D6C;
 Wed, 23 Dec 2020 18:23:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0AFCA8169;
 Wed, 23 Dec 2020 18:23:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 23 Dec 2020 18:23:40 -0000
Message-ID: <160874782062.26587.1132406292212316607@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201223154509.14155-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201223154509.14155-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Remove_redundant_live=5Fcontext_for_eviction?=
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
Content-Type: multipart/mixed; boundary="===============1365995924=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1365995924==
Content-Type: multipart/alternative;
 boundary="===============8759312784043225463=="

--===============8759312784043225463==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Remove redundant live_context for eviction
URL   : https://patchwork.freedesktop.org/series/85189/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9517 -> Patchwork_19205
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19205 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19205, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19205:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_19205 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-kefka:       [PASS][5] -> [INCOMPLETE][6] ([i915#2369])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-kefka:       [PASS][7] -> [DMESG-WARN][8] ([i915#2826])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][9] ([i915#1436])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#2029])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@active:
    - fi-icl-y:           [DMESG-FAIL][13] ([i915#2291]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-icl-y/igt@i915_selftest@live@active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-icl-y/igt@i915_selftest@live@active.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2826]: https://gitlab.freedesktop.org/drm/intel/issues/2826
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9517 -> Patchwork_19205

  CI-20190529: 20190529
  CI_DRM_9517: 325ec6b5e94e6b2b5c9be9a8234fdf698c2ee18d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19205: 834509d2790d0a2aaffc5f0b5f41132d3b348f98 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

834509d2790d drm/i915/selftests: Remove redundant live_context for eviction

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/index.html

--===============8759312784043225463==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Remove redundant live_context for eviction</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85189/">https://patchwork.freedesktop.org/series/85189/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9517 -&gt; Patchwork_19205</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19205 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19205, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19205:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@hdmi-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19205 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2826">i915#2826</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9517/fi-icl-y/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19205/fi-icl-y/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9517 -&gt; Patchwork_19205</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9517: 325ec6b5e94e6b2b5c9be9a8234fdf698c2ee18d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19205: 834509d2790d0a2aaffc5f0b5f41132d3b348f98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>834509d2790d drm/i915/selftests: Remove redundant live_context for eviction</p>

</body>
</html>

--===============8759312784043225463==--

--===============1365995924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1365995924==--
