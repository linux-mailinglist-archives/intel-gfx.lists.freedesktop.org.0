Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB132FFA96
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 03:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949666E980;
	Fri, 22 Jan 2021 02:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68B266E980;
 Fri, 22 Jan 2021 02:42:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62841A7DFC;
 Fri, 22 Jan 2021 02:42:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 22 Jan 2021 02:42:56 -0000
Message-ID: <161128337637.14036.11941412627307128800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106223909.34476-1-sean@poorly.run>
In-Reply-To: <20210106223909.34476-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Disable_the_QSES_check_for_HDCP_1=2E4_over_MST_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============1968385670=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1968385670==
Content-Type: multipart/alternative;
 boundary="===============6520288060557357734=="

--===============6520288060557357734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST (rev2)
URL   : https://patchwork.freedesktop.org/series/85555/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9666 -> Patchwork_19447
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19447 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19447, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19447:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_19447 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-n3050:       [PASS][5] -> [SKIP][6] ([fdo#109271]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@ring_submission:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][7] ([fdo#109271]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@ring_submission.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([i915#1161] / [i915#262])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-tgl-y/igt@gem_tiled_blits@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][12] ([i915#2940]) -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9666 -> Patchwork_19447

  CI-20190529: 20190529
  CI_DRM_9666: 9ccbc653bf2948d1f7e9ff300dd7679b888ffa25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5962: 22e3daaed82ab7890018a2f2aabf5082cd536023 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19447: 69d7db003fa406df7851ab08239dd409a78f4421 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

69d7db003fa4 drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/index.html

--===============6520288060557357734==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85555/">https://patchwork.freedesktop.org/series/85555/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9666 -&gt; Patchwork_19447</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19447 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19447, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19447:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19447 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@hugepages.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@ring_submission.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9666/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19447/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9666 -&gt; Patchwork_19447</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9666: 9ccbc653bf2948d1f7e9ff300dd7679b888ffa25 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5962: 22e3daaed82ab7890018a2f2aabf5082cd536023 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19447: 69d7db003fa406df7851ab08239dd409a78f4421 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>69d7db003fa4 drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST</p>

</body>
</html>

--===============6520288060557357734==--

--===============1968385670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1968385670==--
