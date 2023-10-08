Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BCE7BD016
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Oct 2023 22:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3A410E04D;
	Sun,  8 Oct 2023 20:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FF7410E04D;
 Sun,  8 Oct 2023 20:34:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62DC9AADF2;
 Sun,  8 Oct 2023 20:34:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2523300063184765404=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Sun, 08 Oct 2023 20:34:05 -0000
Message-ID: <169679724536.31951.8123398856097493739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231008164824.919262-1-andi.shyti@linux.intel.com>
In-Reply-To: <20231008164824.919262-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Remove_the_=27force=5Fprobe=27_requirement_for_Met?=
 =?utf-8?q?eor_Lake_=28rev2=29?=
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

--===============2523300063184765404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake (rev2)
URL   : https://patchwork.freedesktop.org/series/124781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13725 -> Patchwork_124781v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): bat-dg2-8 fi-snb-2520m bat-jsl-3 

Known issues
------------

  Here are the changes found in Patchwork_124781v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-bsw-n3050/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [ABORT][4] ([i915#7911])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][5] ([i915#3546]) +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [DMESG-WARN][6] ([i915#1982] / [i915#8449]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-adlp-6/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/bat-adlp-6/igt@i915_module_load@load.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8449]: https://gitlab.freedesktop.org/drm/intel/issues/8449


Build changes
-------------

  * Linux: CI_DRM_13725 -> Patchwork_124781v2

  CI-20190529: 20190529
  CI_DRM_13725: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124781v2: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1d9c1b65dd2b drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/index.html

--===============2523300063184765404==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Remove the &#39;force_probe&#39; requirement for Meteor Lake (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124781/">https://patchwork.freedesktop.org/series/124781/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13725 -&gt; Patchwork_124781v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): bat-dg2-8 fi-snb-2520m bat-jsl-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124781v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13725/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8449">i915#8449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124781v2/bat-adlp-6/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13725 -&gt; Patchwork_124781v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13725: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7519: d1db7333d9c5fbbb05e50b0804123950d9dc1c46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124781v2: fe09b9f4c1435d9ce59b4729994b86a856db852f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1d9c1b65dd2b drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake</p>

</body>
</html>

--===============2523300063184765404==--
