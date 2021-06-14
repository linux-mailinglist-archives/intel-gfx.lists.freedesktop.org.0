Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3FF3A6B52
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 18:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437F689D5B;
	Mon, 14 Jun 2021 16:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AA1C89D44;
 Mon, 14 Jun 2021 16:10:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43F5DAA3D8;
 Mon, 14 Jun 2021 16:10:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 14 Jun 2021 16:10:40 -0000
Message-ID: <162368704025.10185.11492677372080257944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614092227.97421-1-matthew.auld@intel.com>
In-Reply-To: <20210614092227.97421-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_allow_DG1_autoprobe_for_CONFIG=5FBROKEN?=
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
Content-Type: multipart/mixed; boundary="===============2009288966=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2009288966==
Content-Type: multipart/alternative;
 boundary="===============9114507119239750854=="

--===============9114507119239750854==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: allow DG1 autoprobe for CONFIG_BROKEN
URL   : https://patchwork.freedesktop.org/series/91440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10219 -> Patchwork_20355
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20355:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2} (NEW):
    - {fi-dg1-1}:         NOTRUN -> [FAIL][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-dg1-1}:         NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - {fi-dg1-1}:         NOTRUN -> [WARN][3] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][4] +61 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html

  * igt@prime_vgem@basic-fence-read:
    - {fi-dg1-1}:         NOTRUN -> [SKIP][5] +41 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@prime_vgem@basic-fence-read.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10219 and Patchwork_20355:

### New IGT tests (9) ###

  * igt@gem_exec_basic@basic@bcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_basic@basic@rcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@gem_exec_basic@basic@vcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_basic@basic@vcs1-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_basic@basic@vecs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.01] s

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.01] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-hdmi-a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.01] s

  * igt@kms_flip@basic-plain-flip@d-hdmi-a2:
    - Statuses : 1 fail(s)
    - Exec time: [0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_20355 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {fi-dg1-1}:         [FAIL][6] ([i915#2788]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10219/fi-dg1-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][8] -> [DMESG-FAIL][9] ([i915#165])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10219/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2788]: https://gitlab.freedesktop.org/drm/intel/issues/2788


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10219 -> Patchwork_20355

  CI-20190529: 20190529
  CI_DRM_10219: 75a3dafbc374d49f0762a19e3aa83cc321ae0e62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20355: 2de9cbda3daf82509ebcd6c5089fe7a4b7a93eec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2de9cbda3daf drm/i915: allow DG1 autoprobe for CONFIG_BROKEN

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/index.html

--===============9114507119239750854==
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
<tr><td><b>Series:</b></td><td>drm/i915: allow DG1 autoprobe for CONFIG_BROKEN</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91440/">https://patchwork.freedesktop.org/series/91440/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10219 -&gt; Patchwork_20355</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20355:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>{igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2} (NEW):<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_addfb_basic@invalid-get-prop-any.html">WARN</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2.html">FAIL</a> +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> +41 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10219 and Patchwork_20355:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@gem_exec_basic@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@rcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@vecs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-hdmi-a2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-hdmi-a2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20355 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10219/fi-dg1-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2788">i915#2788</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-dg1-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10219/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20355/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10219 -&gt; Patchwork_20355</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10219: 75a3dafbc374d49f0762a19e3aa83cc321ae0e62 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20355: 2de9cbda3daf82509ebcd6c5089fe7a4b7a93eec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2de9cbda3daf drm/i915: allow DG1 autoprobe for CONFIG_BROKEN</p>

</body>
</html>

--===============9114507119239750854==--

--===============2009288966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2009288966==--
