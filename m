Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE507B5C0C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 22:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582E510E246;
	Mon,  2 Oct 2023 20:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14F4210E195;
 Mon,  2 Oct 2023 20:28:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D4DEA7DFB;
 Mon,  2 Oct 2023 20:28:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6489004753653650260=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joel Granados via B4 Relay" <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 20:28:30 -0000
Message-ID: <169627851001.3205.14080030959747006873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com>
In-Reply-To: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc3lz?=
 =?utf-8?q?ctl=3A_Remove_sentinel_elements_from_drivers_=28rev2=29?=
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

--===============6489004753653650260==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: sysctl: Remove sentinel elements from drivers (rev2)
URL   : https://patchwork.freedesktop.org/series/124409/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13700 -> Patchwork_124409v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124409v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124409v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (2): fi-kbl-soraka fi-bsw-n3050 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124409v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_124409v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][2] ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-bsw-n3050/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-hsw-4770:        [FAIL][3] ([i915#8293]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/fi-hsw-4770/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-hsw-4770/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#6645])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271]) +9 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:
    - bat-adlp-11:        NOTRUN -> [ABORT][11] ([i915#8668])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][12] -> [ABORT][13] ([i915#8668])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][14] ([i915#9414]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6:
    - bat-adlp-11:        [DMESG-FAIL][16] ([i915#6868]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:
    - bat-adlp-11:        [FAIL][18] ([i915#9047]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - fi-rkl-11600:       [FAIL][20] ([fdo#103375]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9047]: https://gitlab.freedesktop.org/drm/intel/issues/9047
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13700 -> Patchwork_124409v2

  CI-20190529: 20190529
  CI_DRM_13700: bdf918ba3361e330917e7810cbbd38760c2a746b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7508: f366406b05ca6b3d16eaa734a91e0833bd159f54 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124409v2: bdf918ba3361e330917e7810cbbd38760c2a746b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f8394b9714e9 intel drm: Remove now superfluous sentinel element from ctl_table array
c565f70a640d Drivers: hv: Remove now superfluous sentinel element from ctl_table array
ca3467b10076 raid: Remove now superfluous sentinel element from ctl_table array
8eaf8be7f908 fw loader: Remove the now superfluous sentinel element from ctl_table array
33f7407446d8 sgi-xp: Remove the now superfluous sentinel element from ctl_table array
48319c2a1a26 vrf: Remove the now superfluous sentinel element from ctl_table array
9e8d5592c45e char-misc: Remove the now superfluous sentinel element from ctl_table array
9648dbb26139 infiniband: Remove the now superfluous sentinel element from ctl_table array
48570e650609 macintosh: Remove the now superfluous sentinel element from ctl_table array
a008d6086bd7 parport: Remove the now superfluous sentinel element from ctl_table array
1f315b522ed1 scsi: Remove now superfluous sentinel element from ctl_table array
a54156806033 tty: Remove now superfluous sentinel element from ctl_table array
4be86e30b77b xen: Remove now superfluous sentinel element from ctl_table array
a0d80f4ffcb2 hpet: Remove now superfluous sentinel element from ctl_table array
819dc5d5a5d4 cdrom: Remove now superfluous sentinel element from ctl_table array

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/index.html

--===============6489004753653650260==
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
<tr><td><b>Series:</b></td><td>sysctl: Remove sentinel elements from drivers (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124409/">https://patchwork.freedesktop.org/series/124409/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13700 -&gt; Patchwork_124409v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124409v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124409v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (2): fi-kbl-soraka fi-bsw-n3050 <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124409v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124409v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-hsw-4770/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-hsw-4770/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-dp-6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9047">i915#9047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-5.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13700/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124409v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13700 -&gt; Patchwork_124409v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13700: bdf918ba3361e330917e7810cbbd38760c2a746b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7508: f366406b05ca6b3d16eaa734a91e0833bd159f54 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124409v2: bdf918ba3361e330917e7810cbbd38760c2a746b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f8394b9714e9 intel drm: Remove now superfluous sentinel element from ctl_table array<br />
c565f70a640d Drivers: hv: Remove now superfluous sentinel element from ctl_table array<br />
ca3467b10076 raid: Remove now superfluous sentinel element from ctl_table array<br />
8eaf8be7f908 fw loader: Remove the now superfluous sentinel element from ctl_table array<br />
33f7407446d8 sgi-xp: Remove the now superfluous sentinel element from ctl_table array<br />
48319c2a1a26 vrf: Remove the now superfluous sentinel element from ctl_table array<br />
9e8d5592c45e char-misc: Remove the now superfluous sentinel element from ctl_table array<br />
9648dbb26139 infiniband: Remove the now superfluous sentinel element from ctl_table array<br />
48570e650609 macintosh: Remove the now superfluous sentinel element from ctl_table array<br />
a008d6086bd7 parport: Remove the now superfluous sentinel element from ctl_table array<br />
1f315b522ed1 scsi: Remove now superfluous sentinel element from ctl_table array<br />
a54156806033 tty: Remove now superfluous sentinel element from ctl_table array<br />
4be86e30b77b xen: Remove now superfluous sentinel element from ctl_table array<br />
a0d80f4ffcb2 hpet: Remove now superfluous sentinel element from ctl_table array<br />
819dc5d5a5d4 cdrom: Remove now superfluous sentinel element from ctl_table array</p>

</body>
</html>

--===============6489004753653650260==--
