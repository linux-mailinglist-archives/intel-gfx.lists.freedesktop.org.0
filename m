Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B852523B4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A6E6E09E;
	Tue, 25 Aug 2020 22:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 432A06E09E;
 Tue, 25 Aug 2020 22:36:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CAFFA7DFC;
 Tue, 25 Aug 2020 22:36:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: clinton.a.taylor@intel.com
Date: Tue, 25 Aug 2020 22:36:16 -0000
Message-ID: <159839497621.23677.694053797340390888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
In-Reply-To: <20200805232920.15085-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Implement_WA=5F1406941453_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1075029731=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1075029731==
Content-Type: multipart/alternative;
 boundary="===============8884420128700597451=="

--===============8884420128700597451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Implement WA_1406941453 (rev3)
URL   : https://patchwork.freedesktop.org/series/78243/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8924 -> Patchwork_18401
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18401 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18401, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18401:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-tgl-u2/igt@i915_selftest@live@workarounds.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-7500u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18401 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-y:           [PASS][4] -> [INCOMPLETE][5] ([i915#1958])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-y/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-icl-y/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][8] ([i915#1982]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [DMESG-WARN][12] ([i915#2203]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-apl-guc:         [INCOMPLETE][14] ([i915#1635] / [i915#337]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92]) -> [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][18] ([i915#62] / [i915#95]) -> [DMESG-FAIL][19] ([i915#62])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_8924 -> Patchwork_18401

  CI-20190529: 20190529
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18401: 2d7a904059fe899cc70cfd92b9e5cd1a3ea0072a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d7a904059fe drm/i915/gt: Implement WA_1406941453

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/index.html

--===============8884420128700597451==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Implement WA_1406941453 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/78243/">https://patchwork.freedesktop.org/series/78243/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8924 -&gt; Patchwork_18401</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18401 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18401, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18401:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18401 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-y/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-icl-y/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18401/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8924 -&gt; Patchwork_18401</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18401: 2d7a904059fe899cc70cfd92b9e5cd1a3ea0072a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2d7a904059fe drm/i915/gt: Implement WA_1406941453</p>

</body>
</html>

--===============8884420128700597451==--

--===============1075029731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1075029731==--
