Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD6137B09D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 23:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BDF6EADA;
	Tue, 11 May 2021 21:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAE0F6EAD9;
 Tue, 11 May 2021 21:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 960A3A0169;
 Tue, 11 May 2021 21:15:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 11 May 2021 21:15:18 -0000
Message-ID: <162076771859.32035.8075066675416422402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511170356.430284-1-matthew.auld@intel.com>
In-Reply-To: <20210511170356.430284-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/doc/rfc=3A_drop_the_i915=5Fgem=5Flmem=2Eh_header?=
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
Content-Type: multipart/mixed; boundary="===============0573360512=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0573360512==
Content-Type: multipart/alternative;
 boundary="===============1459763251444374822=="

--===============1459763251444374822==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/doc/rfc: drop the i915_gem_lmem.h header
URL   : https://patchwork.freedesktop.org/series/90040/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10071 -> Patchwork_20103
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20103 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20103, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20103:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
    - fi-bsw-kefka:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_20103 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][5] -> [FAIL][6] ([i915#3457]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-glk-dsi:         [PASS][7] -> [FAIL][8] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-bsw-kefka:       [PASS][9] -> [FAIL][10] ([i915#3457]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vecs0.html
    - fi-bsw-nick:        [PASS][11] -> [FAIL][12] ([i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u2:          [PASS][13] -> [FAIL][14] ([i915#49])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-bsw-nick:        [FAIL][15] ([i915#3457]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
    - fi-bsw-kefka:       [FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-ilk-650:         [FAIL][23] -> [FAIL][24] ([i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-elk-e7500:       [DMESG-FAIL][25] ([i915#3457]) -> [DMESG-WARN][26] ([i915#3457])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-elk-e7500/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-FAIL][27] ([i915#3462]) -> [INCOMPLETE][28] ([i915#3462])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [INCOMPLETE][29] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][30] ([i915#3462])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [INCOMPLETE][31] ([i915#3462]) -> [DMESG-FAIL][32] ([i915#3462])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][33] ([i915#1436] / [i915#3363]) -> [FAIL][34] ([i915#1436] / [i915#2426] / [i915#3363])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-x1275/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       [FAIL][35] ([i915#3363]) -> [FAIL][36] ([i915#2426] / [i915#3363])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8700k/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][37] ([i915#2426] / [i915#3363]) -> [FAIL][38] ([i915#3363])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][39] ([i915#2782] / [i915#3363]) -> [FAIL][40] ([i915#2426] / [i915#2782] / [i915#3363])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10071 -> Patchwork_20103

  CI-20190529: 20190529
  CI_DRM_10071: 77fc6f68ed347b0a4c6969f6adac70026d5b1449 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20103: 098d9b88764e8a9f93c9f06842365d544b71846e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

098d9b88764e drm/doc/rfc: drop the i915_gem_lmem.h header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/index.html

--===============1459763251444374822==
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
<tr><td><b>Series:</b></td><td>drm/doc/rfc: drop the i915_gem_lmem.h header</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90040/">https://patchwork.freedesktop.org/series/90040/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10071 -&gt; Patchwork_20103</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20103 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20103, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20103:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20103 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20103/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10071 -&gt; Patchwork_20103</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10071: 77fc6f68ed347b0a4c6969f6adac70026d5b1449 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20103: 098d9b88764e8a9f93c9f06842365d544b71846e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>098d9b88764e drm/doc/rfc: drop the i915_gem_lmem.h header</p>

</body>
</html>

--===============1459763251444374822==--

--===============0573360512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0573360512==--
