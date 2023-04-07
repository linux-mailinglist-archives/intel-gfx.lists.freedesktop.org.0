Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C76DA9A4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 09:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E30010E378;
	Fri,  7 Apr 2023 07:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52A7310E377;
 Fri,  7 Apr 2023 07:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49A53A7E03;
 Fri,  7 Apr 2023 07:57:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6488899577384974598=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Fri, 07 Apr 2023 07:57:11 -0000
Message-ID: <168085423125.5209.4048969374651817037@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230407071236.1960642-1-fei.yang@intel.com>
In-Reply-To: <20230407071236.1960642-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev2=29?=
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

--===============6488899577384974598==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/115980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12982 -> Patchwork_115980v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115980v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115980v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115980v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-j4005:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_engines:
    - fi-glk-j4005:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-glk-j4005:       [PASS][5] -> [DMESG-FAIL][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - fi-apl-guc:         [PASS][7] -> [DMESG-FAIL][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-apl-guc/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-apl-guc/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_115980v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [PASS][9] -> [TIMEOUT][10] ([i915#6794])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-rpls-2/igt@i915_selftest@live@mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][11] -> [ABORT][12] ([i915#4983] / [i915#7981])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-rpls-1/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][13] ([i915#3546]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][14] ([i915#7932]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12982 -> Patchwork_115980v2

  CI-20190529: 20190529
  CI_DRM_12982: 16847a8a3017f37ce0b583d7af30f33ec286d0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7244: ce91d123cc294609ce00499121469bb7b6f96c70 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115980v2: 16847a8a3017f37ce0b583d7af30f33ec286d0df @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4c6d85b25638 drm/i915: Allow user to set cache at BO creation
7be2d21981be drm/i915: making mtl pte encode generic for gen12
c05663839669 drm/i915: use pat_index instead of cache_level
413fb18f029b drm/i915: preparation for using PAT index
af6623097042 drm/i915/mtl: end support for set caching ioctl
780cd0ad2350 drm/i915/mtl: workaround coherency issue for Media
dd62bbdfa894 drm/i915/mtl: enforce mtl PTE encode
327b1fe76b30 drm/i915/mtl: Define MOCS and PAT tables for MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/index.html

--===============6488899577384974598==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Define MOCS and PAT tables for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115980/">https://patchwork.freedesktop.org/series/115980/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12982 -&gt; Patchwork_115980v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115980v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115980v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115980v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@execlists.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/fi-apl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/fi-apl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115980v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12982/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12982 -&gt; Patchwork_115980v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12982: 16847a8a3017f37ce0b583d7af30f33ec286d0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7244: ce91d123cc294609ce00499121469bb7b6f96c70 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115980v2: 16847a8a3017f37ce0b583d7af30f33ec286d0df @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4c6d85b25638 drm/i915: Allow user to set cache at BO creation<br />
7be2d21981be drm/i915: making mtl pte encode generic for gen12<br />
c05663839669 drm/i915: use pat_index instead of cache_level<br />
413fb18f029b drm/i915: preparation for using PAT index<br />
af6623097042 drm/i915/mtl: end support for set caching ioctl<br />
780cd0ad2350 drm/i915/mtl: workaround coherency issue for Media<br />
dd62bbdfa894 drm/i915/mtl: enforce mtl PTE encode<br />
327b1fe76b30 drm/i915/mtl: Define MOCS and PAT tables for MTL</p>

</body>
</html>

--===============6488899577384974598==--
