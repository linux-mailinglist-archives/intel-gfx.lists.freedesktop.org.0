Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5751B51E18C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 00:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D3F10E43B;
	Fri,  6 May 2022 22:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 411A410E436;
 Fri,  6 May 2022 22:04:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 403AAAADD6;
 Fri,  6 May 2022 22:04:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5126981934912662247=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 06 May 2022 22:04:23 -0000
Message-ID: <165187466323.18818.10973660246332009068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220506173532.850661-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220506173532.850661-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Add_MMIO_range_restrictions?=
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

--===============5126981934912662247==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Add MMIO range restrictions
URL   : https://patchwork.freedesktop.org/series/103693/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11618_full -> Patchwork_103693v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/index.html

Participating hosts (10 -> 7)
------------------------------

  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 

Known issues
------------

  Here are the changes found in Patchwork_103693v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2] ([i915#5748])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb7/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb7/igt@gem_busy@close-race.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-snb:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb5/igt@gem_exec_flush@basic-uc-rw-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [SKIP][5] ([fdo#109271]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748


Build changes
-------------

  * Linux: CI_DRM_11618 -> Patchwork_103693v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_11618: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103693v1: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/index.html

--===============5126981934912662247==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Add MMIO range restrictions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103693/">https://patchwork.freedesktop.org/series/103693/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11618_full -&gt; Patchwork_103693v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/index.html</p>
<h2>Participating hosts (10 -&gt; 7)</h2>
<p>Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103693v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb7/igt@gem_busy@close-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb7/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5748">i915#5748</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb5/igt@gem_exec_flush@basic-uc-rw-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_flush@basic-batch-kernel-default-wb:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11618/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103693v1/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11618 -&gt; Patchwork_103693v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11618: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103693v1: 07c7d578e3b8a85c79e9a7f8dace075192d5fd91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5126981934912662247==--
