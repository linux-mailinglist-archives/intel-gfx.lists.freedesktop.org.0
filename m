Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38CC6E0D08
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 13:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2705410E138;
	Thu, 13 Apr 2023 11:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0A1010E138;
 Thu, 13 Apr 2023 11:49:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7EE9A006C;
 Thu, 13 Apr 2023 11:49:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5854010429170450451=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 13 Apr 2023 11:49:32 -0000
Message-ID: <168138657277.3697.15876038166965884056@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413092006.931861-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230413092006.931861-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_IRQ_reset_and_postinstall_multi-gt_aware_=28rev2?=
 =?utf-8?q?=29?=
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

--===============5854010429170450451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Make IRQ reset and postinstall multi-gt aware (rev2)
URL   : https://patchwork.freedesktop.org/series/115465/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13000 -> Patchwork_115465v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115465v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115465v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115465v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_115465v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][3] -> [FAIL][4] ([i915#8308])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][5] ([i915#6367])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-1:         NOTRUN -> [SKIP][6] ([i915#7828])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][7] -> [FAIL][8] ([i915#7932]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][9] ([i915#1845])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][10] ([i915#4983]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-rpls-1/igt@i915_selftest@live@reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][12] ([i915#6997] / [i915#7913]) -> [DMESG-FAIL][13] ([i915#6367] / [i915#7913])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13000 -> Patchwork_115465v2

  CI-20190529: 20190529
  CI_DRM_13000: 5d4d06561ff5328f2e8fa1608434360a1b6de471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7253: 1a619e8dbc6ca887f2ae24b2d7f1ac536342f58c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115465v2: 5d4d06561ff5328f2e8fa1608434360a1b6de471 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4cdb0bb094b8 drm/i915: Make IRQ reset and postinstall multi-gt aware

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/index.html

--===============5854010429170450451==
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
<tr><td><b>Series:</b></td><td>drm/i915: Make IRQ reset and postinstall multi-gt aware (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115465/">https://patchwork.freedesktop.org/series/115465/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13000 -&gt; Patchwork_115465v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115465v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115465v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115465v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115465v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13000/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115465v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13000 -&gt; Patchwork_115465v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13000: 5d4d06561ff5328f2e8fa1608434360a1b6de471 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7253: 1a619e8dbc6ca887f2ae24b2d7f1ac536342f58c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115465v2: 5d4d06561ff5328f2e8fa1608434360a1b6de471 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4cdb0bb094b8 drm/i915: Make IRQ reset and postinstall multi-gt aware</p>

</body>
</html>

--===============5854010429170450451==--
