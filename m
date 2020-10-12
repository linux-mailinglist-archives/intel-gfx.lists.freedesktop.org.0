Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC8A28BF23
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 19:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456C86E118;
	Mon, 12 Oct 2020 17:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E0D96E0F7;
 Mon, 12 Oct 2020 17:41:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9566CA0019;
 Mon, 12 Oct 2020 17:41:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: rwright@hpe.com
Date: Mon, 12 Oct 2020 17:41:03 -0000
Message-ID: <160252446360.31909.1174301955737766520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201010201110.GA12600@rfwz62>
In-Reply-To: <20201010201110.GA12600@rfwz62>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_reduce_context_clear_batch_size_to_avoid_gpu_hang_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============1609417565=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1609417565==
Content-Type: multipart/alternative;
 boundary="===============0398123525930903395=="

--===============0398123525930903395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)
URL   : https://patchwork.freedesktop.org/series/82587/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9130 -> Patchwork_18678
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/index.html

Known issues
------------

  Here are the changes found in Patchwork_18678 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-u2:          [PASS][3] -> [INCOMPLETE][4] ([i915#2557])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][7] ([i915#2417]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][9] ([i915#1888]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [DMESG-FAIL][11] ([i915#1748]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2557]: https://gitlab.freedesktop.org/drm/intel/issues/2557


Participating hosts (45 -> 41)
------------------------------

  Additional (3): fi-kbl-soraka fi-tgl-y fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9130 -> Patchwork_18678

  CI-20190529: 20190529
  CI_DRM_9130: da13fb4f671901dbcf26437592f352579cc3b617 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5810: f78ce760920efb5015725c749f411c5724114bda @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18678: e87275d426b99c8056a7e819db34c625c8b62910 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e87275d426b9 drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/index.html

--===============0398123525930903395==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82587/">https://patchwork.freedesktop.org/series/82587/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9130 -&gt; Patchwork_18678</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18678 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2557">i915#2557</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9130/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18678/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (3): fi-kbl-soraka fi-tgl-y fi-kbl-r <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9130 -&gt; Patchwork_18678</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9130: da13fb4f671901dbcf26437592f352579cc3b617 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5810: f78ce760920efb5015725c749f411c5724114bda @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18678: e87275d426b99c8056a7e819db34c625c8b62910 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e87275d426b9 drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)</p>

</body>
</html>

--===============0398123525930903395==--

--===============1609417565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1609417565==--
