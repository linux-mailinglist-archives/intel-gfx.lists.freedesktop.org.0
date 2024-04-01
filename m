Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6E589450E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 20:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5F410F401;
	Mon,  1 Apr 2024 18:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93AFF10F401;
 Mon,  1 Apr 2024 18:58:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7024513223994097485=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/guc=3A_Fix_the_fix?=
 =?utf-8?q?_for_reset_lock_confusion_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 01 Apr 2024 18:58:14 -0000
Message-ID: <171199789460.1136018.9362749296912790716@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240329235306.1559639-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240329235306.1559639-1-John.C.Harrison@Intel.com>
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

--===============7024513223994097485==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Fix the fix for reset lock confusion (rev2)
URL   : https://patchwork.freedesktop.org/series/131833/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14511 -> Patchwork_131833v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131833v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131833v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/index.html

Participating hosts (33 -> 32)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131833v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-arls-1/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-arls-1/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_131833v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@guc_hang:
    - bat-dg2-9:          NOTRUN -> [ABORT][3] ([i915#10366])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-8:          [PASS][4] -> [ABORT][5] ([i915#10366])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-8/igt@i915_selftest@live@migrate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-8/igt@i915_selftest@live@migrate.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {bat-mtlp-9}:       [SKIP][6] ([i915#1849] / [i915#2582]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@fbdev@info.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - {bat-mtlp-9}:       [SKIP][8] ([i915#2582]) -> [PASS][9] +3 other tests pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@fbdev@nullptr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@fbdev@nullptr.html

  * igt@i915_module_load@load:
    - bat-dg2-9:          [DMESG-WARN][10] ([i915#10014]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@vma:
    - bat-dg2-9:          [ABORT][12] ([i915#10366]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_selftest@live@vma.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_selftest@live@vma.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-mtlp-9}:       [SKIP][14] ([i915#10580]) -> [PASS][15] +4 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-mtlp-9}:       [SKIP][16] ([i915#4342] / [i915#5354]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-mtlp-9}:       [SKIP][18] ([i915#3708]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10014]: https://gitlab.freedesktop.org/drm/intel/issues/10014
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#10580]: https://gitlab.freedesktop.org/drm/intel/issues/10580
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14511 -> Patchwork_131833v2

  CI-20190529: 20190529
  CI_DRM_14511: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7792: 80ee6c6247595a92389a56d26d4905ee74e33c7c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131833v2: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

866f7131b498 drm/i915/guc: Fix the fix for reset lock confusion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/index.html

--===============7024513223994097485==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Fix the fix for reset lock confusion (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131833/">https://patchwork.freedesktop.org/series/131833/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14511 -&gt; Patchwork_131833v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131833v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131833v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/index.html</p>
<h2>Participating hosts (33 -&gt; 32)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131833v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-arls-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-arls-1/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131833v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_selftest@live@guc_hang.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-8/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-8/igt@i915_selftest@live@migrate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@fbdev@nullptr.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-dg2-9/igt@i915_selftest@live@vma.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-dg2-9/igt@i915_selftest@live@vma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14511/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131833v2/bat-mtlp-9/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14511 -&gt; Patchwork_131833v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14511: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7792: 80ee6c6247595a92389a56d26d4905ee74e33c7c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131833v2: a585b19932157f2c96293bf00288968ada86d435 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>866f7131b498 drm/i915/guc: Fix the fix for reset lock confusion</p>

</body>
</html>

--===============7024513223994097485==--
