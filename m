Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5EA82FDBC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 00:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C37710E0D6;
	Tue, 16 Jan 2024 23:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32C110E0D6;
 Tue, 16 Jan 2024 23:21:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6447625637454813938=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_Wa=5F14019159160_and?=
 =?utf-8?q?_Wa=5F16019325821_for_MTL_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 16 Jan 2024 23:21:46 -0000
Message-ID: <170544730666.519235.1956425612119637510@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
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

--===============6447625637454813938==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/123813/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14129 -> Patchwork_123813v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123813v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123813v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/index.html

Participating hosts (39 -> 37)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): bat-dg2-8 bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123813v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_123813v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][3] -> [INCOMPLETE][4] ([i915#9883])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +31 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][6] -> [FAIL][7] ([i915#10031])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
    - bat-adlp-6:         [PASS][8] -> [INCOMPLETE][9] ([i915#7443])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#9883]: https://gitlab.freedesktop.org/drm/intel/issues/9883


Build changes
-------------

  * Linux: CI_DRM_14129 -> Patchwork_123813v4

  CI-20190529: 20190529
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123813v4: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d339b6525559 drm/i915/guc: Enable Wa_14019159160
60f856f21afd drm/i915/guc: Add support for w/a KLVs
2c2f5a5ac0f3 drm/i915: Enable Wa_16019325821

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/index.html

--===============6447625637454813938==
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
<tr><td><b>Series:</b></td><td>Enable Wa_14019159160 and Wa_16019325821 for MTL (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123813/">https://patchwork.freedesktop.org/series/123813/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14129 -&gt; Patchwork_123813v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123813v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123813v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): bat-dg2-8 bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123813v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123813v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9883">i915#9883</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10031">i915#10031</a>)</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v4/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14129 -&gt; Patchwork_123813v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123813v4: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d339b6525559 drm/i915/guc: Enable Wa_14019159160<br />
60f856f21afd drm/i915/guc: Add support for w/a KLVs<br />
2c2f5a5ac0f3 drm/i915: Enable Wa_16019325821</p>

</body>
</html>

--===============6447625637454813938==--
