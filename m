Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9080C5A834
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 00:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D93510E95D;
	Thu, 13 Nov 2025 23:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104A610E95C;
 Thu, 13 Nov 2025 23:21:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8773716998520779630=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/xe=3A_use_the_same_vg?=
 =?utf-8?q?a_decode_code_as_i915?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Nov 2025 23:21:14 -0000
Message-ID: <176307607405.53357.14834195910093920906@10055242dc62>
X-Patchwork-Hint: ignore
References: <cover.1763027774.git.jani.nikula@intel.com>
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8773716998520779630==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe: use the same vga decode code as i915
URL   : https://patchwork.freedesktop.org/series/157489/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17542 -> Patchwork_157489v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_157489v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_157489v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_157489v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-twl-2:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@core_hotunplug@unbind-rebind.html
    - bat-adlp-9:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - bat-adlp-9:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@i915_module_load@load.html

  * igt@i915_selftest@live@coherency:
    - bat-adlp-11:        [PASS][9] -> [DMESG-WARN][10] +41 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-11/igt@i915_selftest@live@coherency.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-11/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-twl-1:          [PASS][11] -> [DMESG-WARN][12] +41 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][13] -> [DMESG-WARN][14] +41 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - bat-twl-2:          [PASS][15] -> [FAIL][16] +65 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:
    - bat-adlp-9:         [PASS][17] -> [FAIL][18] +68 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-rplp-1:         [PASS][19] -> [FAIL][20] +64 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-twl-2:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html
    - bat-twl-1:          [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@kms_pm_backlight@basic-brightness.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@kms_pm_backlight@basic-brightness.html
    - bat-rplp-1:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip@edp-1:
    - bat-twl-1:          [PASS][27] -> [FAIL][28] +62 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_157489v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][29] -> [FAIL][30] ([i915#14867])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-twl-2:          [PASS][31] -> [SKIP][32] ([i915#3708])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@prime_vgem@basic-fence-flip.html
    - bat-adlp-9:         [PASS][33] -> [SKIP][34] ([i915#3708])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html
    - bat-twl-1:          [PASS][35] -> [SKIP][36] ([i915#3708])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@prime_vgem@basic-fence-flip.html
    - bat-rplp-1:         [PASS][37] -> [SKIP][38] ([i915#3708])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-FAIL][39] ([i915#13774]) -> [PASS][40] +1 other test pass
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-jsl-1/igt@i915_selftest@live.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-jsl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][41] ([i915#12061]) -> [PASS][42] +1 other test pass
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [DMESG-FAIL][43] ([i915#12061]) -> [PASS][44] +1 other test pass
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][45] ([i915#12061]) -> [PASS][46] +1 other test pass
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708


Build changes
-------------

  * Linux: CI_DRM_17542 -> Patchwork_157489v1

  CI-20190529: 20190529
  CI_DRM_17542: efff261d878490433669a252a1f40412e784ef92 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8622: 8622
  Patchwork_157489v1: efff261d878490433669a252a1f40412e784ef92 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/index.html

--===============8773716998520779630==
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
<tr><td><b>Series:</b></td><td>drm/xe: use the same vga decode code as i915</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157489/">https://patchwork.freedesktop.org/series/157489/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17542 -&gt; Patchwork_157489v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_157489v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_157489v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_157489v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@i915_module_load@load.html">DMESG-WARN</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-11/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-11/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> +65 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">FAIL</a> +68 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">FAIL</a> +64 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip@edp-1:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@kms_psr@psr-primary-page-flip@edp-1.html">FAIL</a> +62 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157489v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-adlp-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-twl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-rplp-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17542/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157489v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17542 -&gt; Patchwork_157489v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17542: efff261d878490433669a252a1f40412e784ef92 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8622: 8622<br />
  Patchwork_157489v1: efff261d878490433669a252a1f40412e784ef92 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8773716998520779630==--
