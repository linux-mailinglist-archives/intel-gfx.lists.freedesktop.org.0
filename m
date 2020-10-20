Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03E22936DF
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 10:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC0B6EC2F;
	Tue, 20 Oct 2020 08:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9685C6EC33;
 Tue, 20 Oct 2020 08:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D965AA916;
 Tue, 20 Oct 2020 08:34:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Tue, 20 Oct 2020 08:34:37 -0000
Message-ID: <160318287757.24449.12956821529469098989@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201020074555.24315-1-khaled.almahallawy@intel.com>
In-Reply-To: <20201020074555.24315-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Set_drm=5Fcrtc=5Fstate=2Eactive=3Dfalse_for_all_ad?=
 =?utf-8?q?ded_disconnected_CRTCs_sharing_MST_stream=2E?=
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
Content-Type: multipart/mixed; boundary="===============1869410080=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1869410080==
Content-Type: multipart/alternative;
 boundary="===============7996877573799353587=="

--===============7996877573799353587==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl: Set drm_crtc_state.active=false for all added disconnected CRTCs sharing MST stream.
URL   : https://patchwork.freedesktop.org/series/82858/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9166 -> Patchwork_18739
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/index.html

Known issues
------------

  Here are the changes found in Patchwork_18739 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-icl-y/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-icl-y/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@unload:
    - fi-skl-guc:         [PASS][5] -> [DMESG-WARN][6] ([i915#2203])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-skl-guc/igt@vgem_basic@unload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-skl-guc/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9166 -> Patchwork_18739

  CI-20190529: 20190529
  CI_DRM_9166: f10a69af784776f63cf892611a6baa33e8c35fca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18739: 70477df4f55c58d84f8416fa12e7b7f45e65fd2f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70477df4f55c drm/i915/tgl: Set drm_crtc_state.active=false for all added disconnected CRTCs sharing MST stream.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/index.html

--===============7996877573799353587==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl: Set drm_crtc_state.active=false for all added disconnected CRTCs sharing MST stream.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82858/">https://patchwork.freedesktop.org/series/82858/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9166 -&gt; Patchwork_18739</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18739 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-skl-guc/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-skl-guc/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9166/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18739/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9166 -&gt; Patchwork_18739</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9166: f10a69af784776f63cf892611a6baa33e8c35fca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18739: 70477df4f55c58d84f8416fa12e7b7f45e65fd2f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>70477df4f55c drm/i915/tgl: Set drm_crtc_state.active=false for all added disconnected CRTCs sharing MST stream.</p>

</body>
</html>

--===============7996877573799353587==--

--===============1869410080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1869410080==--
