Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9626F84DC74
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 10:10:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217C510E4D8;
	Thu,  8 Feb 2024 09:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF95E10E4B0;
 Thu,  8 Feb 2024 09:10:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6537176591757118098=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Add_GuC_submiss?=
 =?utf-8?q?ion_interface_version_query_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 Feb 2024 09:10:54 -0000
Message-ID: <170738345491.1106275.8513507222010259567@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240207115612.1322778-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20240207115612.1322778-1-tvrtko.ursulin@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6537176591757118098==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add GuC submission interface version query (rev2)
URL   : https://patchwork.freedesktop.org/series/129627/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14241 -> Patchwork_129627v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129627v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129627v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/index.html

Participating hosts (36 -> 33)
------------------------------

  Additional (1): bat-arls-2 
  Missing    (4): bat-dg2-14 fi-blb-e6850 fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129627v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14241/bat-mtlp-8/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/bat-mtlp-8/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_129627v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7567u:       [PASS][3] -> [ABORT][4] ([i915#8913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14241/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8913]: https://gitlab.freedesktop.org/drm/intel/issues/8913
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14241 -> Patchwork_129627v2

  CI-20190529: 20190529
  CI_DRM_14241: a942be9b4f39a05326a5fc3fd774fb143b4d9507 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129627v2: a942be9b4f39a05326a5fc3fd774fb143b4d9507 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

147cb0d1d3f1 drm/i915: Add GuC submission interface version query

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/index.html

--===============6537176591757118098==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add GuC submission interface version query (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129627/">https://patchwork.freedesktop.org/series/129627/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14241 -&gt; Patchwork_129627v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129627v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129627v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/index.html</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Additional (1): bat-arls-2 <br />
  Missing    (4): bat-dg2-14 fi-blb-e6850 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129627v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14241/bat-mtlp-8/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/bat-mtlp-8/igt@i915_selftest@live@perf.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129627v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14241/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129627v2/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8913">i915#8913</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14241 -&gt; Patchwork_129627v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14241: a942be9b4f39a05326a5fc3fd774fb143b4d9507 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7705: 45aef708b65772e54ee9a68b1f3885fa25140fdf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129627v2: a942be9b4f39a05326a5fc3fd774fb143b4d9507 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>147cb0d1d3f1 drm/i915: Add GuC submission interface version query</p>

</body>
</html>

--===============6537176591757118098==--
