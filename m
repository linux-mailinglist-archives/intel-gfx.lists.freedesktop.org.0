Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2774251E7E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 19:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339EF6E958;
	Tue, 25 Aug 2020 17:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA4206E956;
 Tue, 25 Aug 2020 17:38:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A27F4A41FB;
 Tue, 25 Aug 2020 17:38:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 25 Aug 2020 17:38:14 -0000
Message-ID: <159837709463.23678.6366633314051854498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200825171331.17971-1-jose.souza@intel.com>
In-Reply-To: <20200825171331.17971-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/display=3A_Compute_ha?=
 =?utf-8?q?s=5Fdrrs_after_compute_has=5Fpsr?=
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
Content-Type: multipart/mixed; boundary="===============1492816013=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1492816013==
Content-Type: multipart/alternative;
 boundary="===============0222251844963389585=="

--===============0222251844963389585==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/3] drm/i915/display: Compute has_drrs after compute has_psr
URL   : https://patchwork.freedesktop.org/series/80989/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8924 -> Patchwork_18398
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html

Known issues
------------

  Here are the changes found in Patchwork_18398 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#2276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-apl-guc:         [INCOMPLETE][11] ([i915#1635] / [i915#337]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][13] ([i915#62] / [i915#95]) -> [DMESG-FAIL][14] ([i915#62])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_8924 -> Patchwork_18398

  CI-20190529: 20190529
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18398: 7d42e19c12ea5344d13aa31756cf847649e9985b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7d42e19c12ea drm/i915/display: Fix DRRS debugfs
edac1e7128f4 drm/i915/display: Disable DRRS when needed in fastsets
fd15a0e19d78 drm/i915/display: Compute has_drrs after compute has_psr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html

--===============0222251844963389585==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/3] drm/i915/display: Compute has_drrs after compute has_psr</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80989/">https://patchwork.freedesktop.org/series/80989/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8924 -&gt; Patchwork_18398</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18398 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8924 -&gt; Patchwork_18398</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18398: 7d42e19c12ea5344d13aa31756cf847649e9985b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7d42e19c12ea drm/i915/display: Fix DRRS debugfs<br />
edac1e7128f4 drm/i915/display: Disable DRRS when needed in fastsets<br />
fd15a0e19d78 drm/i915/display: Compute has_drrs after compute has_psr</p>

</body>
</html>

--===============0222251844963389585==--

--===============1492816013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1492816013==--
