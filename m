Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A4F51DF2B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 20:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B9210E1CB;
	Fri,  6 May 2022 18:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 837B610E11A;
 Fri,  6 May 2022 18:35:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FA19AA01E;
 Fri,  6 May 2022 18:35:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3889201492971365259=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Fri, 06 May 2022 18:35:11 -0000
Message-ID: <165186211148.18817.9497621596537744769@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220411095129.1652096-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220411095129.1652096-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRXhw?=
 =?utf-8?q?ose_max_and_current_bpc_via_debugfs_=28rev4=29?=
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

--===============3889201492971365259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose max and current bpc via debugfs (rev4)
URL   : https://patchwork.freedesktop.org/series/102502/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11617_full -> Patchwork_102502v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/index.html

Participating hosts (11 -> 7)
------------------------------

  Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu pig-glk-j5005 

Known issues
------------

  Here are the changes found in Patchwork_102502v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-snb:          [PASS][2] -> [SKIP][3] ([fdo#109271]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb4/igt@gem_exec_flush@basic-uc-prw-default.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@i915_hangman@engine-engine-hang:
    - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271]) +108 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@i915_hangman@engine-engine-hang.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-snb:          NOTRUN -> [DMESG-FAIL][6] ([i915#5098])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@syncobj_timeline@transfer-timeline-point.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-snb:          [SKIP][7] ([fdo#109271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb6/igt@gem_exec_flush@basic-wb-prw-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb7/igt@gem_exec_flush@basic-wb-prw-default.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098


Build changes
-------------

  * IGT: IGT_6468 -> IGTPW_7046
  * Linux: CI_DRM_11617 -> Patchwork_102502v4
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_7046: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7046/index.html
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102502v4: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/index.html

--===============3889201492971365259==
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
<tr><td><b>Series:</b></td><td>Expose max and current bpc via debugfs (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102502/">https://patchwork.freedesktop.org/series/102502/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11617_full -&gt; Patchwork_102502v4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/index.html</p>
<h2>Participating hosts (11 -&gt; 7)</h2>
<p>Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu pig-glk-j5005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102502v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@gem_ctx_persistence@engines-cleanup.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb4/igt@gem_exec_flush@basic-uc-prw-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@i915_hangman@engine-engine-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +108 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb4/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb2/igt@syncobj_timeline@transfer-timeline-point.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_flush@basic-wb-prw-default:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb6/igt@gem_exec_flush@basic-wb-prw-default.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102502v4/shard-snb7/igt@gem_exec_flush@basic-wb-prw-default.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6468 -&gt; IGTPW_7046</li>
<li>Linux: CI_DRM_11617 -&gt; Patchwork_102502v4</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_7046: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_7046/index.html<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102502v4: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3889201492971365259==--
