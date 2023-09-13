Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D0779F359
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 22:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E64610E081;
	Wed, 13 Sep 2023 20:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21B5910E108;
 Wed, 13 Sep 2023 20:58:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 141FFAADDA;
 Wed, 13 Sep 2023 20:58:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0949644453302726764=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 13 Sep 2023 20:58:46 -0000
Message-ID: <169463872605.31251.3462251233848824959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913130935.27707-1-nirmoy.das@intel.com>
In-Reply-To: <20230913130935.27707-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXBk?=
 =?utf-8?q?ate_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev4=29?=
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

--===============0949644453302726764==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/123329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13626 -> Patchwork_123329v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): bat-dg2-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_123329v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][1] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@core_auth@basic-auth.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          NOTRUN -> [INCOMPLETE][2] ([i915#8797] / [i915#9275])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][4] ([i915#6621])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +11 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-9:          NOTRUN -> [SKIP][6] ([fdo#109285])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-9:          NOTRUN -> [SKIP][7] ([i915#5274])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [PASS][8] -> [FAIL][9] ([i915#9276])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][10] ([fdo#109271]) +15 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][11] ([i915#8841]) +6 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][12] ([fdo#109271]) +30 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg2-9:          NOTRUN -> [SKIP][13] ([i915#1072]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#3555])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#3708])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-9:          NOTRUN -> [SKIP][17] ([i915#3708] / [i915#4077]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][18] ([i915#3291] / [i915#3708]) +2 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][19] ([IGT#3] / [i915#6121]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8797]: https://gitlab.freedesktop.org/drm/intel/issues/8797
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276


Build changes
-------------

  * IGT: IGT_7486 -> IGTPW_9779
  * Linux: CI_DRM_13626 -> Patchwork_123329v4

  CI-20190529: 20190529
  CI_DRM_13626: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_9779: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9779/index.html
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123329v4: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4037b94f2a81 drm/i915: Enable GGTT updates with binder in MTL
eb718d207321 drm/i915: Toggle binder context ready status
7df2695c961f drm/i915: Implement GGTT update method with MI_UPDATE_GTT
a8008e203df8 drm/i915: Parameterize binder context creation
cd98fb856e32 drm/i915: Implement for_each_sgt_daddr_next
da8b63890ca1 drm/i915: Create a kernel context for GGTT updates
05ef90dce4ed drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/index.html

--===============0949644453302726764==
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
<tr><td><b>Series:</b></td><td>Update GGTT with MI_UPDATE_GTT on MTL (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123329/">https://patchwork.freedesktop.org/series/123329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13626 -&gt; Patchwork_123329v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): bat-dg2-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123329v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8797">i915#8797</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13626/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v4/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7486 -&gt; IGTPW_9779</li>
<li>Linux: CI_DRM_13626 -&gt; Patchwork_123329v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13626: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_9779: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9779/index.html<br />
  IGT_7486: afd9a940c8247291baadd1977fe881d4f2edf0c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123329v4: d5838c603de7b95ea299cbf7ff87228496bc86b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4037b94f2a81 drm/i915: Enable GGTT updates with binder in MTL<br />
eb718d207321 drm/i915: Toggle binder context ready status<br />
7df2695c961f drm/i915: Implement GGTT update method with MI_UPDATE_GTT<br />
a8008e203df8 drm/i915: Parameterize binder context creation<br />
cd98fb856e32 drm/i915: Implement for_each_sgt_daddr_next<br />
da8b63890ca1 drm/i915: Create a kernel context for GGTT updates<br />
05ef90dce4ed drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex</p>

</body>
</html>

--===============0949644453302726764==--
