Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C818228F44F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 16:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8BD6ED1B;
	Thu, 15 Oct 2020 14:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 051D26ED18;
 Thu, 15 Oct 2020 14:05:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F05B1A41FB;
 Thu, 15 Oct 2020 14:05:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Oct 2020 14:05:40 -0000
Message-ID: <160277074095.13181.4652411107916208576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015115820.665-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201015115820.665-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Support_parsing_of_oversize_batches_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0546772361=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0546772361==
Content-Type: multipart/alternative;
 boundary="===============7008011641078807091=="

--===============7008011641078807091==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Support parsing of oversize batches (rev2)
URL   : https://patchwork.freedesktop.org/series/82716/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9140 -> Patchwork_18704
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/index.html

Known issues
------------

  Here are the changes found in Patchwork_18704 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [INCOMPLETE][9] ([CI#80]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [INCOMPLETE][11] ([i915#2276]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-y/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#2411]) -> [DMESG-WARN][20] ([i915#2411] / [i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 37)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9140 -> Patchwork_18704

  CI-20190529: 20190529
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18704: fc79df7663622c1dd14119323153fc0afee5c81b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fc79df766362 drm/i915/gem: Support parsing of oversize batches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/index.html

--===============7008011641078807091==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Support parsing of oversize batches (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82716/">https://patchwork.freedesktop.org/series/82716/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9140 -&gt; Patchwork_18704</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18704 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_flink_basic@double-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_flink_basic@double-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_flink_basic@bad-open.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_flink_basic@bad-open.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-skl-lmem/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-skl-lmem/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18704/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-blb-e6850 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9140 -&gt; Patchwork_18704</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18704: fc79df7663622c1dd14119323153fc0afee5c81b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fc79df766362 drm/i915/gem: Support parsing of oversize batches</p>

</body>
</html>

--===============7008011641078807091==--

--===============0546772361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0546772361==--
