Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71F064E5A5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 02:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6719010E027;
	Fri, 16 Dec 2022 01:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AE0810E027;
 Fri, 16 Dec 2022 01:31:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63880AADE4;
 Fri, 16 Dec 2022 01:31:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0804130346477268249=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Dec 2022 01:31:54 -0000
Message-ID: <167115431436.5855.358673412023515107@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_DSB_fixes/cleanups?=
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

--===============0804130346477268249==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: DSB fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/111997/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12511 -> Patchwork_111997v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html

Participating hosts (40 -> 40)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111997v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/bat-rpls-1/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_111997v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-adln-1}:       [INCOMPLETE][4] ([i915#4983] / [i915#7609]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609


Build changes
-------------

  * Linux: CI_DRM_12511 -> Patchwork_111997v1

  CI-20190529: 20190529
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111997v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9a5f2a529c40 drm/i915/dsb: Pimp debug/error prints
47578b6c19c9 drm/i915/dsb: Define more DSB registers
fc587cdfac56 drm/i915/dsb: Add mode DSB opcodes
c1b5e1314e49 drm/i915/dsb: Allow the caller to pass in the DSB buffer size
e775c35d82b7 drm/i915/dsb: Introduce intel_dsb_align_tail()
824aa765834d drm/i915/dsb: Handle the indexed vs. not inside the DSB code
a48f1a28eb1e drm/i915/dsb: Improve the indexed reg write checks
20696eca8297 drm/i915/dsb: Extract intel_dsb_emit()
81d01046983e drm/i915/dsb: Extract assert_dsb_has_room()
46dc7a90e7f9 drm/i915/dsb: Fix DSB command buffer size checks
75b4f4a33e04 drm/i915/dsb: Align DSB register writes to 8 bytes
b7671e3b3f22 drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()
0343d3b3a755 drm/i915/dsb: Stop with the RMW

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html

--===============0804130346477268249==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsb: DSB fixes/cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111997/">https://patchwork.freedesktop.org/series/111997/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12511 -&gt; Patchwork_111997v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111997v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111997v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111997v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12511 -&gt; Patchwork_111997v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111997v1: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9a5f2a529c40 drm/i915/dsb: Pimp debug/error prints<br />
47578b6c19c9 drm/i915/dsb: Define more DSB registers<br />
fc587cdfac56 drm/i915/dsb: Add mode DSB opcodes<br />
c1b5e1314e49 drm/i915/dsb: Allow the caller to pass in the DSB buffer size<br />
e775c35d82b7 drm/i915/dsb: Introduce intel_dsb_align_tail()<br />
824aa765834d drm/i915/dsb: Handle the indexed vs. not inside the DSB code<br />
a48f1a28eb1e drm/i915/dsb: Improve the indexed reg write checks<br />
20696eca8297 drm/i915/dsb: Extract intel_dsb_emit()<br />
81d01046983e drm/i915/dsb: Extract assert_dsb_has_room()<br />
46dc7a90e7f9 drm/i915/dsb: Fix DSB command buffer size checks<br />
75b4f4a33e04 drm/i915/dsb: Align DSB register writes to 8 bytes<br />
b7671e3b3f22 drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()<br />
0343d3b3a755 drm/i915/dsb: Stop with the RMW</p>

</body>
</html>

--===============0804130346477268249==--
