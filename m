Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8686CDC8D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 16:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D9610E4BF;
	Wed, 29 Mar 2023 14:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E18C10E021;
 Wed, 29 Mar 2023 14:29:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04330AADD7;
 Wed, 29 Mar 2023 14:29:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5293874723535387519=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 29 Mar 2023 14:29:03 -0000
Message-ID: <168010014300.23904.16933370766747348025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
In-Reply-To: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs_=28rev?=
 =?utf-8?q?7=29?=
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

--===============5293874723535387519==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev7)
URL   : https://patchwork.freedesktop.org/series/100327/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12934 -> Patchwork_100327v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_100327v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_100327v7, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_100327v7:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@read:
    - bat-rplp-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-rplp-1/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-rplp-1/igt@fbdev@read.html

  
Known issues
------------

  Here are the changes found in Patchwork_100327v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [ABORT][4] ([i915#7911] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [PASS][5] -> [ABORT][6] ([i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [FAIL][7] ([i915#8308]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-7567u:       [ABORT][9] ([i915#8299]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][11] ([i915#7932]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:
    - fi-bsw-n3050:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:
    - bat-dg1-5:          [FAIL][15] ([fdo#103375]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_12934 -> Patchwork_100327v7

  CI-20190529: 20190529
  CI_DRM_12934: 0d5e1ccc82c11e9d26d31b55b885a8d3f6588a8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7225: e2b54c935ac78a78a4243b22c53b1a61fd04ffdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_100327v7: 0d5e1ccc82c11e9d26d31b55b885a8d3f6588a8d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1754bd781652 drm/i915/gt: Hold a wakeref for the active VM
f90b5e44a115 drm/i915: track gt pm wakerefs
13d2b5e20009 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
0592052fbf86 drm/i915: Correct type of wakeref variable
379c4682ba4f lib/ref_tracker: remove warnings in case of allocation failure
f9a6fdc4e4bf lib/ref_tracker: add printing to memory buffer
772efa080187 lib/ref_tracker: improve printing stats
bd3f7964e7d1 lib/ref_tracker: add unlocked leak print helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/index.html

--===============5293874723535387519==
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
<tr><td><b>Series:</b></td><td>drm/i915: use ref_tracker library for tracking wakerefs (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100327/">https://patchwork.freedesktop.org/series/100327/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12934 -&gt; Patchwork_100327v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_100327v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_100327v7, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_100327v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-rplp-1/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-rplp-1/igt@fbdev@read.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_100327v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12934/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v7/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12934 -&gt; Patchwork_100327v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12934: 0d5e1ccc82c11e9d26d31b55b885a8d3f6588a8d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7225: e2b54c935ac78a78a4243b22c53b1a61fd04ffdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_100327v7: 0d5e1ccc82c11e9d26d31b55b885a8d3f6588a8d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1754bd781652 drm/i915/gt: Hold a wakeref for the active VM<br />
f90b5e44a115 drm/i915: track gt pm wakerefs<br />
13d2b5e20009 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library<br />
0592052fbf86 drm/i915: Correct type of wakeref variable<br />
379c4682ba4f lib/ref_tracker: remove warnings in case of allocation failure<br />
f9a6fdc4e4bf lib/ref_tracker: add printing to memory buffer<br />
772efa080187 lib/ref_tracker: improve printing stats<br />
bd3f7964e7d1 lib/ref_tracker: add unlocked leak print helper</p>

</body>
</html>

--===============5293874723535387519==--
