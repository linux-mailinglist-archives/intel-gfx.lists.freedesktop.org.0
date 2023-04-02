Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D87556D396A
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Apr 2023 19:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE0210E0A6;
	Sun,  2 Apr 2023 17:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F363810E045;
 Sun,  2 Apr 2023 17:22:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCFA6AADDD;
 Sun,  2 Apr 2023 17:22:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1388778068344432294=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Sun, 02 Apr 2023 17:22:49 -0000
Message-ID: <168045616986.4255.4495554635858439108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230402164826.752842-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20230402164826.752842-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW92?=
 =?utf-8?q?e_dma-buf_mmap=28=29_reservation_locking_down_to_exporters?=
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

--===============1388778068344432294==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move dma-buf mmap() reservation locking down to exporters
URL   : https://patchwork.freedesktop.org/series/116000/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12954 -> Patchwork_116000v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116000v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +21 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-6:         [PASS][2] -> [DMESG-FAIL][3] ([i915#7699])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-adlp-6/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [PASS][4] -> [DMESG-FAIL][5] ([i915#6367] / [i915#7996])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-cfl-8700k/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-rpls-1:         NOTRUN -> [SKIP][7] ([i915#7828])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#5354])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][9] ([i915#1845])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [ABORT][10] ([i915#6687] / [i915#7978]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8700k:       [ABORT][12] ([i915#8299]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bsw-nick:        [ABORT][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299


Build changes
-------------

  * Linux: CI_DRM_12954 -> Patchwork_116000v1

  CI-20190529: 20190529
  CI_DRM_12954: 25abf2df726cac2701780b068df74a9c36d60655 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7231: 94188a1dc91b6ef1cf3e9df1440ff00b6ff25935 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116000v1: 25abf2df726cac2701780b068df74a9c36d60655 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3d7650752282 drm/shmem-helper: Switch to reservation lock
ff105be6f3a1 dma-buf: Change locking policy for mmap()
34818f39707e Revert "drm: Assert held reservation lock for dma-buf mmapping"
f7722ad0da61 Revert "fastrpc: Assert held reservation lock for dma-buf mmapping"
1f7875e8bed3 Revert "udmabuf: Assert held reservation lock for dma-buf mmapping"
9aefa19deec1 Revert "dma-buf/heaps: Assert held reservation lock for dma-buf mmapping"
f5378e48b16e Revert "media: videobuf2: Assert held reservation lock for dma-buf mmapping"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/index.html

--===============1388778068344432294==
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
<tr><td><b>Series:</b></td><td>Move dma-buf mmap() reservation locking down to exporters</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116000/">https://patchwork.freedesktop.org/series/116000/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12954 -&gt; Patchwork_116000v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116000v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-adlp-6/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-cfl-8700k/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-cfl-8700k/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12954/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116000v1/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12954 -&gt; Patchwork_116000v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12954: 25abf2df726cac2701780b068df74a9c36d60655 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7231: 94188a1dc91b6ef1cf3e9df1440ff00b6ff25935 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116000v1: 25abf2df726cac2701780b068df74a9c36d60655 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3d7650752282 drm/shmem-helper: Switch to reservation lock<br />
ff105be6f3a1 dma-buf: Change locking policy for mmap()<br />
34818f39707e Revert "drm: Assert held reservation lock for dma-buf mmapping"<br />
f7722ad0da61 Revert "fastrpc: Assert held reservation lock for dma-buf mmapping"<br />
1f7875e8bed3 Revert "udmabuf: Assert held reservation lock for dma-buf mmapping"<br />
9aefa19deec1 Revert "dma-buf/heaps: Assert held reservation lock for dma-buf mmapping"<br />
f5378e48b16e Revert "media: videobuf2: Assert held reservation lock for dma-buf mmapping"</p>

</body>
</html>

--===============1388778068344432294==--
