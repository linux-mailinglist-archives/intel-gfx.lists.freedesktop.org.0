Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDF5C9911D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 21:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC7710E487;
	Mon,  1 Dec 2025 20:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4BFF10E487;
 Mon,  1 Dec 2025 20:43:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6900590320500915073=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/xe/compat=3A_remove_u?=
 =?utf-8?q?nused_i915=5Factive=2Eh_and_i915=5Factive=5Ftypes=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 01 Dec 2025 20:43:20 -0000
Message-ID: <176462180078.46175.10713341382697328516@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251201171050.2145833-1-jani.nikula@intel.com>
In-Reply-To: <20251201171050.2145833-1-jani.nikula@intel.com>
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

--===============6900590320500915073==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/compat: remove unused i915_active.h and i915_active_types.h
URL   : https://patchwork.freedesktop.org/series/158311/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17616 -> Patchwork_158311v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158311v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158311v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): bat-apl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158311v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-kbl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-kbl-guc/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4] +5 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
Known issues
------------

  Here are the changes found in Patchwork_158311v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#14837])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-kbl-guc/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-kbl-guc/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-skl-6600u:       [DMESG-WARN][13] -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-skl-6600u/igt@kms_flip@basic-flip-vs-modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-skl-6600u/igt@kms_flip@basic-flip-vs-modeset.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837


Build changes
-------------

  * Linux: CI_DRM_17616 -> Patchwork_158311v1

  CI-20190529: 20190529
  CI_DRM_17616: b199e4bb77ebb447ce72d03bb2289b29713af7dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8647: 8647
  Patchwork_158311v1: b199e4bb77ebb447ce72d03bb2289b29713af7dd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/index.html

--===============6900590320500915073==
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
<tr><td><b>Series:</b></td><td>drm/xe/compat: remove unused i915_active.h and i915_active_types.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158311/">https://patchwork.freedesktop.org/series/158311/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17616 -&gt; Patchwork_158311v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158311v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158311v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): bat-apl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158311v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-kbl-guc/igt@i915_selftest@live@client.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> +5 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158311v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-kbl-guc/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-kbl-guc/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837">i915#14837</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17616/fi-skl-6600u/igt@kms_flip@basic-flip-vs-modeset.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158311v1/fi-skl-6600u/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17616 -&gt; Patchwork_158311v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17616: b199e4bb77ebb447ce72d03bb2289b29713af7dd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8647: 8647<br />
  Patchwork_158311v1: b199e4bb77ebb447ce72d03bb2289b29713af7dd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6900590320500915073==--
