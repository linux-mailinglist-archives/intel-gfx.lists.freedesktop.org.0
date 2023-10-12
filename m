Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897A7C7333
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 18:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAA710E4F3;
	Thu, 12 Oct 2023 16:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B9BE10E194;
 Thu, 12 Oct 2023 16:39:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34472AADF2;
 Thu, 12 Oct 2023 16:39:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6260189518483296674=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 16:39:28 -0000
Message-ID: <169712876817.25005.2166033716692770808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_zero_initializers?=
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

--===============6260189518483296674==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Clean up zero initializers
URL   : https://patchwork.freedesktop.org/series/125050/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13746 -> Patchwork_125050v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (3): fi-kbl-soraka bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_125050v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][1] ([i915#6645])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#5190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp5:
    - bat-adlp-11:        [PASS][3] -> [DMESG-FAIL][4] ([i915#6868])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@a-dp5.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@a-dp5.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp6:
    - bat-adlp-11:        [PASS][5] -> [FAIL][6] ([i915#6121]) +6 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-adlp-11:        NOTRUN -> [SKIP][7] ([i915#3637])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271]) +12 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        NOTRUN -> [ABORT][9] ([i915#8668] / [i915#9451])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][10] -> [ABORT][11] ([i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-ivb-3770:        NOTRUN -> [SKIP][12] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][13] ([i915#8841]) +6 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][15] ([i915#9414]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][17] ([i915#9500]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][19] ([IGT#3]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5:
    - bat-adlp-11:        [DMESG-FAIL][21] ([i915#6868]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        [FAIL][23] ([i915#9047]) -> [PASS][24] +2 other tests pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3:
    - bat-dg2-11:         [INCOMPLETE][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9047]: https://gitlab.freedesktop.org/drm/intel/issues/9047
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9451]: https://gitlab.freedesktop.org/drm/intel/issues/9451
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500


Build changes
-------------

  * Linux: CI_DRM_13746 -> Patchwork_125050v1

  CI-20190529: 20190529
  CI_DRM_13746: a9b7e6821ff78edf00303dfb8d88353541fad3d0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7533: 7533
  Patchwork_125050v1: a9b7e6821ff78edf00303dfb8d88353541fad3d0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a50ddf38c378 drm/i915/gvt: Clean up zero initializers
e8df1b8689d9 drm/i915/pxp: Clean up zero initializers
b726a54eaa0e drm/i915/pci: Clean up zero initializers
38ea227b245f drm/i915/guc: Clean up zero initializers
522a5cde83c2 drm/i915/hdcp: Clean up zero initializers
218db4f49bb0 drm/i915/display: Clean up zero initializers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/index.html

--===============6260189518483296674==
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
<tr><td><b>Series:</b></td><td>drm/i915: Clean up zero initializers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125050/">https://patchwork.freedesktop.org/series/125050/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13746 -&gt; Patchwork_125050v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (3): fi-kbl-soraka bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125050v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@a-dp5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@a-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9451">i915#9451</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-a-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9047">i915#9047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-adlp-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-5.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125050v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13746 -&gt; Patchwork_125050v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13746: a9b7e6821ff78edf00303dfb8d88353541fad3d0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7533: 7533<br />
  Patchwork_125050v1: a9b7e6821ff78edf00303dfb8d88353541fad3d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a50ddf38c378 drm/i915/gvt: Clean up zero initializers<br />
e8df1b8689d9 drm/i915/pxp: Clean up zero initializers<br />
b726a54eaa0e drm/i915/pci: Clean up zero initializers<br />
38ea227b245f drm/i915/guc: Clean up zero initializers<br />
522a5cde83c2 drm/i915/hdcp: Clean up zero initializers<br />
218db4f49bb0 drm/i915/display: Clean up zero initializers</p>

</body>
</html>

--===============6260189518483296674==--
