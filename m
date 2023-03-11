Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C236B593C
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 08:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7CF10E0C3;
	Sat, 11 Mar 2023 07:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4029010E0C3;
 Sat, 11 Mar 2023 07:12:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 386B9A7DFB;
 Sat, 11 Mar 2023 07:12:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7676428095328765208=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 11 Mar 2023 07:12:39 -0000
Message-ID: <167851875920.29628.4434067309891106370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230311063714.570389-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230311063714.570389-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_error_capture_improvements_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7676428095328765208==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More error capture improvements (rev3)
URL   : https://patchwork.freedesktop.org/series/113628/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12842 -> Patchwork_113628v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_113628v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#7852])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rpls-2/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-rplp-1:         NOTRUN -> [SKIP][4] ([i915#7828])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:
    - bat-rplp-1:         NOTRUN -> [DMESG-WARN][5] ([i915#2867]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][6] ([i915#7911] / [i915#7913]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-rplp-1:         [INCOMPLETE][8] ([i915#4983] / [i915#7609] / [i915#7913]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-FAIL][10] ([i915#7699]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][12] ([i915#6997] / [i915#7913]) -> [DMESG-FAIL][13] ([i915#6367] / [i915#7913])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12842 -> Patchwork_113628v3

  CI-20190529: 20190529
  CI_DRM_12842: a8c602a36e7019429967251dd72737795ee130aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7190: f9d49501eaaadd39ae471094bc45a76a1ff93e42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113628v3: a8c602a36e7019429967251dd72737795ee130aa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

77bcd759e7f6 drm/i915: Include timeline seqno in error capture
1494255a3663 drm/i915/guc: Clean up of register capture search
c1647e384e51 drm/i915/guc: Fix missing ecodes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/index.html

--===============7676428095328765208==
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
<tr><td><b>Series:</b></td><td>More error capture improvements (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113628/">https://patchwork.freedesktop.org/series/113628/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12842 -&gt; Patchwork_113628v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113628v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/fi-bsw-nick/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12842/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113628v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12842 -&gt; Patchwork_113628v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12842: a8c602a36e7019429967251dd72737795ee130aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7190: f9d49501eaaadd39ae471094bc45a76a1ff93e42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113628v3: a8c602a36e7019429967251dd72737795ee130aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>77bcd759e7f6 drm/i915: Include timeline seqno in error capture<br />
1494255a3663 drm/i915/guc: Clean up of register capture search<br />
c1647e384e51 drm/i915/guc: Fix missing ecodes</p>

</body>
</html>

--===============7676428095328765208==--
