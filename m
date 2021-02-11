Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733B33185AC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 08:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFB36E8D7;
	Thu, 11 Feb 2021 07:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA8016E3F0;
 Thu, 11 Feb 2021 07:30:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9B71A0118;
 Thu, 11 Feb 2021 07:30:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 11 Feb 2021 07:30:26 -0000
Message-ID: <161302862680.27071.6908771297284543351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
In-Reply-To: <20210129080043.24614-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_HDCP_capability_enc_NULL_check_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1650832375=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1650832375==
Content-Type: multipart/alternative;
 boundary="===============7505906912815486624=="

--===============7505906912815486624==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/debugfs: HDCP capability enc NULL check (rev2)
URL   : https://patchwork.freedesktop.org/series/86440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9761 -> Patchwork_19657
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/index.html

Known issues
------------

  Here are the changes found in Patchwork_19657 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@gem_linear_blits@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@gem_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9761 -> Patchwork_19657

  CI-20190529: 20190529
  CI_DRM_9761: fc52fc2a7332bd301f802ca3a0444a8fb9fe4f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6001: d0d6f5e14ef181c93e4b503b05d9c18fa480e09d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19657: 78edb3ea251872417662b5eee6a039047b3e7694 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

78edb3ea2518 drm/i915/debugfs: HDCP capability enc NULL check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/index.html

--===============7505906912815486624==
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
<tr><td><b>Series:</b></td><td>drm/i915/debugfs: HDCP capability enc NULL check (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86440/">https://patchwork.freedesktop.org/series/86440/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9761 -&gt; Patchwork_19657</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19657 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19657/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9761 -&gt; Patchwork_19657</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9761: fc52fc2a7332bd301f802ca3a0444a8fb9fe4f7f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6001: d0d6f5e14ef181c93e4b503b05d9c18fa480e09d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19657: 78edb3ea251872417662b5eee6a039047b3e7694 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>78edb3ea2518 drm/i915/debugfs: HDCP capability enc NULL check</p>

</body>
</html>

--===============7505906912815486624==--

--===============1650832375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1650832375==--
