Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3EC83888A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B5D10E119;
	Tue, 23 Jan 2024 08:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64C110E119;
 Tue, 23 Jan 2024 08:09:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8755134179845293513=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/psr=3A_Request_mod?=
 =?utf-8?q?eset_on_initial_commit_to_compute_PSR_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Tue, 23 Jan 2024 08:09:36 -0000
Message-ID: <170599737687.666090.17232628235630314874@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
In-Reply-To: <20240123071103.2147760-1-jouni.hogander@intel.com>
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

--===============8755134179845293513==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Request modeset on initial commit to compute PSR state
URL   : https://patchwork.freedesktop.org/series/129068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14160 -> Patchwork_129068v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_129068v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][1] -> [INCOMPLETE][2] ([i915#9275])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-7567u:       [DMESG-WARN][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/fi-kbl-7567u/igt@gem_exec_parallel@engines@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/fi-kbl-7567u/igt@gem_exec_parallel@engines@fds.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - fi-kbl-7567u:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/fi-kbl-7567u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_14160 -> Patchwork_129068v1

  CI-20190529: 20190529
  CI_DRM_14160: 1cd8b030edf847fb2aaf5dae007e93eea64f704f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7685: 7685
  Patchwork_129068v1: 1cd8b030edf847fb2aaf5dae007e93eea64f704f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

014ea2461dfb drm/i915/psr: Request modeset on initial commit to compute PSR state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/index.html

--===============8755134179845293513==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Request modeset on initial commit to compute PSR state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129068/">https://patchwork.freedesktop.org/series/129068/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14160 -&gt; Patchwork_129068v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129068v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/fi-kbl-7567u/igt@gem_exec_parallel@engines@fds.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/fi-kbl-7567u/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14160/fi-kbl-7567u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129068v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14160 -&gt; Patchwork_129068v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14160: 1cd8b030edf847fb2aaf5dae007e93eea64f704f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7685: 7685<br />
  Patchwork_129068v1: 1cd8b030edf847fb2aaf5dae007e93eea64f704f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>014ea2461dfb drm/i915/psr: Request modeset on initial commit to compute PSR state</p>

</body>
</html>

--===============8755134179845293513==--
