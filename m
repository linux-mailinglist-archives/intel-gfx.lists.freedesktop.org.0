Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1C60E701
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 20:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092A910E554;
	Wed, 26 Oct 2022 18:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21D4A10E3F6;
 Wed, 26 Oct 2022 18:10:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00DE8A0BA8;
 Wed, 26 Oct 2022 18:10:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3401361807264136036=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Oct 2022 18:10:17 -0000
Message-ID: <166680781797.25381.10897152942192737890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Audio_stuff?=
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

--===============3401361807264136036==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Audio stuff
URL   : https://patchwork.freedesktop.org/series/110188/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12297 -> Patchwork_110188v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110188v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110188v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (2): fi-bdw-gvtdvm fi-bxt-dsi 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110188v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][2] ([i915#4817]) -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_110188v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][6] ([fdo#109271]) +37 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_blits@basic:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][8] ([fdo#109271]) +12 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-FAIL][10] ([i915#5334])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-apl-guc:         NOTRUN -> [SKIP][14] ([fdo#109271]) +11 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][15] ([i915#2867]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [INCOMPLETE][17] ([i915#7056]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][19] ([fdo#109271]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:
    - {bat-dg2-11}:       [FAIL][21] ([i915#6818]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056


Build changes
-------------

  * Linux: CI_DRM_12297 -> Patchwork_110188v1

  CI-20190529: 20190529
  CI_DRM_12297: 04810514e57a8a21242682ea8aae25a2ec164720 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110188v1: 04810514e57a8a21242682ea8aae25a2ec164720 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

20810ee4c45b drm/i915/sdvo: Extract intel_sdvo_has_audio()
e3e75391f1d1 drm/i915/audio: Do the vblank waits
b9f02b4a680e drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
9e147528a4a2 drm/i915/audio: Use intel_de_rmw() for most audio registers
736b0a774bf6 drm/i915/audio: Use u32* for ELD
b8fd5976364f drm/i915/audio: Make sure we write the whole ELD buffer
89453ea610fe drm/i915/audio: Read ELD buffer size from hardware
a0966d066a01 drm/i915/audio: Nuke intel_eld_uptodate()
92c7b6ff32cd drm/i915/audio: Protect singleton register with a lock
a44704008cf8 drm/i915/audio: Unify register bit naming
cdfebd15cd22 drm/i915/audio: Use REG_BIT() & co.
ff1468dbb9c7 drm/i915/audio: Extract struct ilk_audio_regs
bef9f87b7cac drm/i915/audio: Remove CL/BLC audio stuff
985c100bcb7a drm/i915/audio: Nuke leftover ROUNDING_FACTOR
89c68de83381 drm/i915/audio: s/dev_priv/i915/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/index.html

--===============3401361807264136036==
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
<tr><td><b>Series:</b></td><td>drm/i915: Audio stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110188/">https://patchwork.freedesktop.org/series/110188/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12297 -&gt; Patchwork_110188v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110188v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110188v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (2): fi-bdw-gvtdvm fi-bxt-dsi <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110188v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110188v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bxt-dsi/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12297/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110188v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12297 -&gt; Patchwork_110188v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12297: 04810514e57a8a21242682ea8aae25a2ec164720 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110188v1: 04810514e57a8a21242682ea8aae25a2ec164720 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>20810ee4c45b drm/i915/sdvo: Extract intel_sdvo_has_audio()<br />
e3e75391f1d1 drm/i915/audio: Do the vblank waits<br />
b9f02b4a680e drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+<br />
9e147528a4a2 drm/i915/audio: Use intel_de_rmw() for most audio registers<br />
736b0a774bf6 drm/i915/audio: Use u32* for ELD<br />
b8fd5976364f drm/i915/audio: Make sure we write the whole ELD buffer<br />
89453ea610fe drm/i915/audio: Read ELD buffer size from hardware<br />
a0966d066a01 drm/i915/audio: Nuke intel_eld_uptodate()<br />
92c7b6ff32cd drm/i915/audio: Protect singleton register with a lock<br />
a44704008cf8 drm/i915/audio: Unify register bit naming<br />
cdfebd15cd22 drm/i915/audio: Use REG_BIT() &amp; co.<br />
ff1468dbb9c7 drm/i915/audio: Extract struct ilk_audio_regs<br />
bef9f87b7cac drm/i915/audio: Remove CL/BLC audio stuff<br />
985c100bcb7a drm/i915/audio: Nuke leftover ROUNDING_FACTOR<br />
89c68de83381 drm/i915/audio: s/dev_priv/i915/</p>

</body>
</html>

--===============3401361807264136036==--
