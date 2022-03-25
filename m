Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4964E7A75
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 20:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8F910E725;
	Fri, 25 Mar 2022 19:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26CAE10E72D;
 Fri, 25 Mar 2022 19:30:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22A75A3C0D;
 Fri, 25 Mar 2022 19:30:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4824302898668286281=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Fri, 25 Mar 2022 19:30:00 -0000
Message-ID: <164823660013.24037.17515854833557159065@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325161140.11906-1-animesh.manna@intel.com>
In-Reply-To: <20220325161140.11906-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_modified_to_drm=5Finfo_in_dsb=5Fprepare=28=29_=28r?=
 =?utf-8?q?ev3=29?=
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

--===============4824302898668286281==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: modified to drm_info in dsb_prepare() (rev3)
URL   : https://patchwork.freedesktop.org/series/101723/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11407 -> Patchwork_22688
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22688 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22688, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html

Participating hosts (46 -> 34)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (13): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22688:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-glk-dsi:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_render_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-8109u:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-kbl-7567u/igt@gem_tiled_blits@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-hsw-g3258}:     [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_22688 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][10] ([fdo#109271]) +9 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-bwr-2160:        NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#5341])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-bwr-2160:        NOTRUN -> [SKIP][12] ([fdo#109271]) +45 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][13] ([i915#2403] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][14] ([i915#4312] / [k.org#202321])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {fi-adl-ddr5}:      [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        [INCOMPLETE][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-bsw-kefka:       [FAIL][19] ([i915#2122]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][21] -> [INCOMPLETE][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-guc:         [INCOMPLETE][23] -> [INCOMPLETE][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-guc/igt@gem_tiled_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11407 -> Patchwork_22688

  CI-20190529: 20190529
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22688: 5aa1c98833312737630d6b922fc8613e0dce08cc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5aa1c9883331 drm/i915/dsb: modified to drm_info in dsb_prepare()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html

--===============4824302898668286281==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsb: modified to drm_info in dsb_prepare() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101723/">https://patchwork.freedesktop.org/series/101723/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11407 -&gt; Patchwork_22688</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22688 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22688, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html</p>
<h2>Participating hosts (46 -&gt; 34)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (13): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22688:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22688 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bwr-2160/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11407 -&gt; Patchwork_22688</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22688: 5aa1c98833312737630d6b922fc8613e0dce08cc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5aa1c9883331 drm/i915/dsb: modified to drm_info in dsb_prepare()</p>

</body>
</html>

--===============4824302898668286281==--
