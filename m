Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0E312B74
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 09:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C428C6E400;
	Mon,  8 Feb 2021 08:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A7B76E400;
 Mon,  8 Feb 2021 08:06:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 625BEA0BA8;
 Mon,  8 Feb 2021 08:06:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 08 Feb 2021 08:06:41 -0000
Message-ID: <161277160137.27713.4790223847288153820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210208055554.24357-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210208055554.24357-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Fix_HAS=5FLSPCON_macro_for_platforms_between_GEN9_and_GEN1?=
 =?utf-8?q?0?=
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
Content-Type: multipart/mixed; boundary="===============0538123253=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0538123253==
Content-Type: multipart/alternative;
 boundary="===============7381552281385649388=="

--===============7381552281385649388==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Fix HAS_LSPCON macro for platforms between GEN9 and GEN10
URL   : https://patchwork.freedesktop.org/series/86832/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9745 -> Patchwork_19624
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/index.html

Known issues
------------

  Here are the changes found in Patchwork_19624 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_basic@bad-close:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-tgl-y/igt@gem_basic@bad-close.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-tgl-y/igt@gem_basic@bad-close.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bxt-dsi:         [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][6] ([i915#3047]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-glk-dsi/igt@i915_selftest@live@client.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][8] ([i915#2927]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [FAIL][10] ([i915#2128]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-tgl-y/igt@vgem_basic@create.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-tgl-y/igt@vgem_basic@create.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2128]: https://gitlab.freedesktop.org/drm/intel/issues/2128
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9745 -> Patchwork_19624

  CI-20190529: 20190529
  CI_DRM_9745: ef43e66b8c7bc46d8be9c1177c23583f535c5f0f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5997: 2f27f54d9fae945a4b7cffc7d7370abb7a41caf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19624: ae562891ed6be14ce777c4cfefa47f75d70000d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae562891ed6b i915: Fix HAS_LSPCON macro for platforms between GEN9 and GEN10

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/index.html

--===============7381552281385649388==
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
<tr><td><b>Series:</b></td><td>i915: Fix HAS_LSPCON macro for platforms between GEN9 and GEN10</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86832/">https://patchwork.freedesktop.org/series/86832/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9745 -&gt; Patchwork_19624</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19624 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-tgl-y/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-tgl-y/igt@gem_basic@bad-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2128">i915#2128</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9745/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19624/fi-tgl-y/igt@vgem_basic@create.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9745 -&gt; Patchwork_19624</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9745: ef43e66b8c7bc46d8be9c1177c23583f535c5f0f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5997: 2f27f54d9fae945a4b7cffc7d7370abb7a41caf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19624: ae562891ed6be14ce777c4cfefa47f75d70000d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ae562891ed6b i915: Fix HAS_LSPCON macro for platforms between GEN9 and GEN10</p>

</body>
</html>

--===============7381552281385649388==--

--===============0538123253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0538123253==--
