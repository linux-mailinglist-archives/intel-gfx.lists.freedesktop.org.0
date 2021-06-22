Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E283AFB10
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 04:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81136E07D;
	Tue, 22 Jun 2021 02:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66DE36E07B;
 Tue, 22 Jun 2021 02:28:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EAB9A73C9;
 Tue, 22 Jun 2021 02:28:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 22 Jun 2021 02:28:18 -0000
Message-ID: <162432889835.30778.5124119056058688143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210621234515.9433-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210621234515.9433-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRE1D?=
 =?utf-8?q?_Updates_for_RKL=2C_TGL_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0112638431=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0112638431==
Content-Type: multipart/alternative;
 boundary="===============4390761615446654633=="

--===============4390761615446654633==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DMC Updates for RKL, TGL (rev2)
URL   : https://patchwork.freedesktop.org/series/91751/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10258_full -> Patchwork_20423_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20423_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20423_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20423_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-iclb1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-tglb8/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  
Known issues
------------

  Here are the changes found in Patchwork_20423_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-glk:          NOTRUN -> [DMESG-WARN][4] ([i915#1610])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][5] ([i915#1610]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-apl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][6] ([i915#1610])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-kbl2/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][7] ([i915#1610])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-skl8/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          NOTRUN -> [SKIP][8] ([fdo#109271]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@sysfs_clients@fair-0:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-snb7/igt@sysfs_clients@fair-0.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][10] ([i915#1610]) -> [DMESG-WARN][11] ([i915#1610] / [i915#180])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10258/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
    - shard-skl:          [DMESG-WARN][12] ([i915#1610]) -> [INCOMPLETE][13] ([i915#146] / [i915#198] / [i915#2828])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10258/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_10258 -> Patchwork_20423

  CI-20190529: 20190529
  CI_DRM_10258: 4789dfd564f8e115f56f3526d2354552597ebf85 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6115: 4ef420186b82f1a6d9c9b69d2f8de4fd100a2af3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20423: 30e271d88fd121d1322dca61b6d9849dcadeaa07 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/index.html

--===============4390761615446654633==
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
<tr><td><b>Series:</b></td><td>DMC Updates for RKL, TGL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91751/">https://patchwork.freedesktop.org/series/91751/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10258_full -&gt; Patchwork_20423_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20423_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20423_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20423_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-iclb1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-tglb8/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20423_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-apl1/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-kbl2/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-skl8/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-snb7/igt@sysfs_clients@fair-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10258/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10258/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20423/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2828">i915#2828</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10258 -&gt; Patchwork_20423</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10258: 4789dfd564f8e115f56f3526d2354552597ebf85 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6115: 4ef420186b82f1a6d9c9b69d2f8de4fd100a2af3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20423: 30e271d88fd121d1322dca61b6d9849dcadeaa07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4390761615446654633==--

--===============0112638431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0112638431==--
