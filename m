Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3419B52961A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 02:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4336D10E008;
	Tue, 17 May 2022 00:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DD9610E008;
 Tue, 17 May 2022 00:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52B42A00A0;
 Tue, 17 May 2022 00:37:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5494072625640805699=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Tue, 17 May 2022 00:37:27 -0000
Message-ID: <165274784731.31033.3127911483311928698@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220516225640.3102269-1-jim.cromie@gmail.com>
In-Reply-To: <20220516225640.3102269-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFJN?=
 =?utf-8?q?=2Edebug_on_DYNAMIC=5FDEBUG=2C_add_trace_events?=
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

--===============5494072625640805699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DRM.debug on DYNAMIC_DEBUG, add trace events
URL   : https://patchwork.freedesktop.org/series/104052/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11661 -> Patchwork_104052v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/index.html

Participating hosts (42 -> 43)
------------------------------

  Additional (2): bat-dg2-8 bat-adlm-1 
  Missing    (1): bat-dg2-9 

Known issues
------------

  Here are the changes found in Patchwork_104052v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][1] -> [DMESG-FAIL][2] ([i915#3987])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][3] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html
    - bat-dg1-6:          NOTRUN -> [SKIP][5] ([fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-dg1-6/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][8] ([i915#4418]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [INCOMPLETE][10] ([i915#5685]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][12] ([i915#4528]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][14] ([i915#3576]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-adlp-6/igt@kms_busy@basic@flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         [DMESG-WARN][16] ([i915#3576]) -> [PASS][17] +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-adlp-4/igt@kms_busy@basic@modeset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-adlp-4/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801
  [i915#5879]: https://gitlab.freedesktop.org/drm/intel/issues/5879
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885


Build changes
-------------

  * Linux: CI_DRM_11661 -> Patchwork_104052v1

  CI-20190529: 20190529
  CI_DRM_11661: f0d63dbb9c4ebcb646fd41c0e810d60ff7c7d11e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6473: 64723cd44c1cd2f8b8263e3b3681c99f05a1b499 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104052v1: f0d63dbb9c4ebcb646fd41c0e810d60ff7c7d11e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8b6d0399d99f dyndbg/drm: POC add tracebits sysfs-knob
39b62567ffd7 dyndbg: 4 new trace-events: pr_debug, dev_dbg, drm_{, dev}debug
d29e003c5bd0 dyndbg: add write-events-to-tracefs code
1ce22bfdc3d3 dyndbg: add _DPRINTK_FLAGS_TRACE
bdd1228bf40d dyndbg: add _DPRINTK_FLAGS_ENABLED
c41c1d35cd45 drm_print: add _ddebug desc to drm_*dbg prototypes
d07bc397ae96 drm_print: prefer bare printk KERN_DEBUG on generic fn
4e1dfab0aa21 drm_print: refine drm_debug_enabled for jump-label
c5c3f788ed01 drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
c81add96aef7 drm_print: interpose drm_*dbg with forwarding macros
77b7c8a163d7 drm_print: condense enum drm_debug_category
451972407ce3 drm/print: POC drm on dyndbg - use bitmap
6a72203b2856 drm: POC drm on dyndbg - map class-names to drm_debug_category's
9f6de83719fb dyndbg: add test_dynamic_debug module
b60310dbe0f0 dyndbg: add __pr_debug_cls(class, fmt, ...)
8ea9abcec80d dyndbg: change zero-or-one classes-map to maps list
46f0b5eaae3a dyndbg: support symbolic class-names in bitmap
0855101f32ae dyndbg: let query-modname override defaulting modname
0bdf97041b98 Doc/dyndbg: document new class class_name query support
a4972715ab78 dyndbg: add drm.debug style bitmap support
4b24bd57ae91 dyndbg: validate class FOO on module
d43324ae48d0 dyndbg: add dynamic_debug_(un)register_classes
8756d8e1dc31 dyndbg: add exclusive class_id to pr_debug callsites
27c4cda19231 dyndbg: drop EXPORTed dynamic_debug_exec_queries
b86966e95441 dyndbg: fix module.dyndbg handling
6c6e62c28eb6 dyndbg: show both old and new in change-info
88d7a0414164 dyndbg: fix static_branch manipulation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/index.html

--===============5494072625640805699==
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
<tr><td><b>Series:</b></td><td>DRM.debug on DYNAMIC_DEBUG, add trace events</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104052/">https://patchwork.freedesktop.org/series/104052/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11661 -&gt; Patchwork_104052v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/index.html</p>
<h2>Participating hosts (42 -&gt; 43)</h2>
<p>Additional (2): bat-dg2-8 bat-adlm-1 <br />
  Missing    (1): bat-dg2-9 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104052v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-dg1-6/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-kbl-soraka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5685">i915#5685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11661/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104052v1/bat-adlp-4/igt@kms_busy@basic@modeset.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11661 -&gt; Patchwork_104052v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11661: f0d63dbb9c4ebcb646fd41c0e810d60ff7c7d11e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6473: 64723cd44c1cd2f8b8263e3b3681c99f05a1b499 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104052v1: f0d63dbb9c4ebcb646fd41c0e810d60ff7c7d11e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8b6d0399d99f dyndbg/drm: POC add tracebits sysfs-knob<br />
39b62567ffd7 dyndbg: 4 new trace-events: pr_debug, dev_dbg, drm_{, dev}debug<br />
d29e003c5bd0 dyndbg: add write-events-to-tracefs code<br />
1ce22bfdc3d3 dyndbg: add <em>DPRINTK_FLAGS_TRACE<br />
bdd1228bf40d dyndbg: add _DPRINTK_FLAGS_ENABLED<br />
c41c1d35cd45 drm_print: add _ddebug desc to drm</em><em>dbg prototypes<br />
d07bc397ae96 drm_print: prefer bare printk KERN_DEBUG on generic fn<br />
4e1dfab0aa21 drm_print: refine drm_debug_enabled for jump-label<br />
c5c3f788ed01 drm_print: wrap drm_</em><em>dbg in dyndbg descriptor factory macro<br />
c81add96aef7 drm_print: interpose drm</em>*dbg with forwarding macros<br />
77b7c8a163d7 drm_print: condense enum drm_debug_category<br />
451972407ce3 drm/print: POC drm on dyndbg - use bitmap<br />
6a72203b2856 drm: POC drm on dyndbg - map class-names to drm_debug_category's<br />
9f6de83719fb dyndbg: add test_dynamic_debug module<br />
b60310dbe0f0 dyndbg: add __pr_debug_cls(class, fmt, ...)<br />
8ea9abcec80d dyndbg: change zero-or-one classes-map to maps list<br />
46f0b5eaae3a dyndbg: support symbolic class-names in bitmap<br />
0855101f32ae dyndbg: let query-modname override defaulting modname<br />
0bdf97041b98 Doc/dyndbg: document new class class_name query support<br />
a4972715ab78 dyndbg: add drm.debug style bitmap support<br />
4b24bd57ae91 dyndbg: validate class FOO on module<br />
d43324ae48d0 dyndbg: add dynamic_debug_(un)register_classes<br />
8756d8e1dc31 dyndbg: add exclusive class_id to pr_debug callsites<br />
27c4cda19231 dyndbg: drop EXPORTed dynamic_debug_exec_queries<br />
b86966e95441 dyndbg: fix module.dyndbg handling<br />
6c6e62c28eb6 dyndbg: show both old and new in change-info<br />
88d7a0414164 dyndbg: fix static_branch manipulation</p>

</body>
</html>

--===============5494072625640805699==--
