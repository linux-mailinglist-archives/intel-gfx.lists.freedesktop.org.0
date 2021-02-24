Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A243244CE
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 20:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D88F6E07F;
	Wed, 24 Feb 2021 19:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 121EC6E07D;
 Wed, 24 Feb 2021 19:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A607A73C9;
 Wed, 24 Feb 2021 19:59:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
Date: Wed, 24 Feb 2021 19:59:25 -0000
Message-ID: <161419676501.17230.2793936853428937511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210224152925.1969970-1-piotr.piorkowski@intel.com>
In-Reply-To: <20210224152925.1969970-1-piotr.piorkowski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Verify_dma=5Faddr_in_gen8=5Fggtt=5Fpte=5Fencode?=
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
Content-Type: multipart/mixed; boundary="===============1430321944=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1430321944==
Content-Type: multipart/alternative;
 boundary="===============6144751966796990808=="

--===============6144751966796990808==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Verify dma_addr in gen8_ggtt_pte_encode
URL   : https://patchwork.freedesktop.org/series/87352/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9798 -> Patchwork_19727
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/index.html

Known issues
------------

  Here are the changes found in Patchwork_19727 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/fi-tgl-y/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/fi-tgl-y/igt@fbdev@write.html

  
#### Possible fixes ####

  * igt@i915_hangman@error-state-basic:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/fi-tgl-y/igt@i915_hangman@error-state-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/fi-tgl-y/igt@i915_hangman@error-state-basic.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9798 -> Patchwork_19727

  CI-20190529: 20190529
  CI_DRM_9798: 70e2e79cd772b97799f4cecd823539f452063562 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6013: a6c7181747850161377dae5161d33c0675ab273e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19727: 201369a1d91fbc03775a97d3e776dab86436e45f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

201369a1d91f drm/i915: Verify dma_addr in gen8_ggtt_pte_encode

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/index.html

--===============6144751966796990808==
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
<tr><td><b>Series:</b></td><td>drm/i915: Verify dma_addr in gen8_ggtt_pte_encode</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87352/">https://patchwork.freedesktop.org/series/87352/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9798 -&gt; Patchwork_19727</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19727 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@fbdev@write:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/fi-tgl-y/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/fi-tgl-y/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19727/fi-tgl-y/igt@i915_hangman@error-state-basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9798 -&gt; Patchwork_19727</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9798: 70e2e79cd772b97799f4cecd823539f452063562 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6013: a6c7181747850161377dae5161d33c0675ab273e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19727: 201369a1d91fbc03775a97d3e776dab86436e45f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>201369a1d91f drm/i915: Verify dma_addr in gen8_ggtt_pte_encode</p>

</body>
</html>

--===============6144751966796990808==--

--===============1430321944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1430321944==--
