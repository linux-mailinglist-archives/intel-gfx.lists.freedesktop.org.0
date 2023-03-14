Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 533C46B9384
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 13:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B556610E7B7;
	Tue, 14 Mar 2023 12:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63E4F10E799;
 Tue, 14 Mar 2023 12:18:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A92DA0169;
 Tue, 14 Mar 2023 12:18:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8593497354949049928=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rob Clark" <robdclark@gmail.com>
Date: Tue, 14 Mar 2023 12:18:42 -0000
Message-ID: <167879632236.26415.9133797792817820558@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230308155322.344664-1-robdclark@gmail.com>
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-fence=3A_Deadline_awareness?=
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

--===============8593497354949049928==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-fence: Deadline awareness
URL   : https://patchwork.freedesktop.org/series/114863/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12829 -> Patchwork_114863v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/index.html

Participating hosts (36 -> 32)
------------------------------

  Missing    (4): fi-kbl-soraka bat-rpls-2 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_114863v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-adlm-1:         [PASS][1] -> [DMESG-WARN][2] ([i915#2867])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-rpls-1/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][5] ([i915#5354]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354


Build changes
-------------

  * Linux: CI_DRM_12829 -> Patchwork_114863v1

  CI-20190529: 20190529
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114863v1: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e4d59b9aeb7d drm/i915: Add deadline based boost support
e742b3259de8 drm/msm/atomic: Switch to vblank_start helper
48a59e84ca34 drm/msm: Add wait-boost support
fe33a4746989 drm/msm: Add deadline based boost support
9b92768ac2a9 drm/atomic-helper: Set fence deadline for vblank
4dbaab90f7ac drm/vblank: Add helper to get next vblank time
0beaee785dfa drm/syncobj: Add deadline support for syncobj waits
ffdf43d68573 drm/scheduler: Add fence deadline support
e7e7d61968a8 dma-buf/sw_sync: Add fence deadline support
23d9eb1e47d8 dma-buf/sync_file: Add SET_DEADLINE ioctl
2cf9f56569b3 dma-buf/sync_file: Surface sync-file uABI
db34a9db372b dma-buf/dma-resv: Add a way to set fence deadline
258956ec5c34 dma-buf/fence-chain: Add fence deadline support
07eabe65acb4 dma-buf/fence-array: Add fence deadline support
249e0e53c5f7 dma-buf/dma-fence: Add deadline awareness

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/index.html

--===============8593497354949049928==
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
<tr><td><b>Series:</b></td><td>dma-fence: Deadline awareness</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114863/">https://patchwork.freedesktop.org/series/114863/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12829 -&gt; Patchwork_114863v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/index.html</p>
<h2>Participating hosts (36 -&gt; 32)</h2>
<p>Missing    (4): fi-kbl-soraka bat-rpls-2 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114863v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114863v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12829 -&gt; Patchwork_114863v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114863v1: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e4d59b9aeb7d drm/i915: Add deadline based boost support<br />
e742b3259de8 drm/msm/atomic: Switch to vblank_start helper<br />
48a59e84ca34 drm/msm: Add wait-boost support<br />
fe33a4746989 drm/msm: Add deadline based boost support<br />
9b92768ac2a9 drm/atomic-helper: Set fence deadline for vblank<br />
4dbaab90f7ac drm/vblank: Add helper to get next vblank time<br />
0beaee785dfa drm/syncobj: Add deadline support for syncobj waits<br />
ffdf43d68573 drm/scheduler: Add fence deadline support<br />
e7e7d61968a8 dma-buf/sw_sync: Add fence deadline support<br />
23d9eb1e47d8 dma-buf/sync_file: Add SET_DEADLINE ioctl<br />
2cf9f56569b3 dma-buf/sync_file: Surface sync-file uABI<br />
db34a9db372b dma-buf/dma-resv: Add a way to set fence deadline<br />
258956ec5c34 dma-buf/fence-chain: Add fence deadline support<br />
07eabe65acb4 dma-buf/fence-array: Add fence deadline support<br />
249e0e53c5f7 dma-buf/dma-fence: Add deadline awareness</p>

</body>
</html>

--===============8593497354949049928==--
