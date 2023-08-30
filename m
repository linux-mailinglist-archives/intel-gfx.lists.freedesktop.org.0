Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D63978D56E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 13:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321EF10E4F5;
	Wed, 30 Aug 2023 11:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E8BF10E4F5;
 Wed, 30 Aug 2023 11:09:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46FC9AADDA;
 Wed, 30 Aug 2023 11:09:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1456183106454983411=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Wed, 30 Aug 2023 11:09:50 -0000
Message-ID: <169339379025.15232.5972845601143783368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230830080219.2529281-1-jouni.hogander@intel.com>
In-Reply-To: <20230830080219.2529281-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_dma_fences_in_dirtyfb_ioctl_=28rev5=29?=
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

--===============1456183106454983411==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle dma fences in dirtyfb ioctl (rev5)
URL   : https://patchwork.freedesktop.org/series/116620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13575 -> Patchwork_116620v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116620v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-11:        [PASS][1] -> [DMESG-WARN][2] ([i915#6868])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-adlp-11/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-adlp-11/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-2:         [PASS][3] -> [ABORT][4] ([i915#7978] / [i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][5] ([i915#3546]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [SKIP][6] ([i915#1072]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [ABORT][7] ([i915#8260] / [i915#8668])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - {bat-dg2-13}:       [DMESG-WARN][8] ([i915#7952]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][10] ([i915#8442] / [i915#8668] / [i915#8860]) -> [SKIP][11] ([i915#1072])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-8:         [SKIP][12] ([i915#8809]) -> [SKIP][13] ([i915#3555] / [i915#8809])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-6:         [SKIP][14] ([i915#8809]) -> [SKIP][15] ([i915#3555] / [i915#8809])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13575 -> Patchwork_116620v5

  CI-20190529: 20190529
  CI_DRM_13575: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7459: 7459
  Patchwork_116620v5: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1a309cf481a6 drm/i915: Handle dma fences in dirtyfb callback
44b6eb184556 drm/i915: Add new frontbuffer tracking interface to queue flush
3964ff1bdb34 drm/i915/psr: Clear frontbuffer busy bits on flip
618db98680e9 drm/i915/fbc: Clear frontbuffer busy bits on flip

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/index.html

--===============1456183106454983411==
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
<tr><td><b>Series:</b></td><td>Handle dma fences in dirtyfb ioctl (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116620/">https://patchwork.freedesktop.org/series/116620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13575 -&gt; Patchwork_116620v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116620v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-adlp-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-adlp-11/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium_edid@hdmi-edid-read:<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7952">i915#7952</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13575/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116620v5/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13575 -&gt; Patchwork_116620v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13575: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7459: 7459<br />
  Patchwork_116620v5: 05be2315bcb0d65730be1bafd7ec047a994e4817 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1a309cf481a6 drm/i915: Handle dma fences in dirtyfb callback<br />
44b6eb184556 drm/i915: Add new frontbuffer tracking interface to queue flush<br />
3964ff1bdb34 drm/i915/psr: Clear frontbuffer busy bits on flip<br />
618db98680e9 drm/i915/fbc: Clear frontbuffer busy bits on flip</p>

</body>
</html>

--===============1456183106454983411==--
