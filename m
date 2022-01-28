Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A2349F8A1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A4C10E71A;
	Fri, 28 Jan 2022 11:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2FFD10E6BE;
 Fri, 28 Jan 2022 11:47:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E9CCA66C9;
 Fri, 28 Jan 2022 11:47:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9170596092140132855=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 28 Jan 2022 11:47:46 -0000
Message-ID: <164337046661.27321.1861886257156293325@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_M/N_cleanup_=28rev3=29?=
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

--===============9170596092140132855==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: M/N cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/99409/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11157 -> Patchwork_22136
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22136 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22136, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22136:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@requests:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-kbl-soraka/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_22136 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][3] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][4] -> [INCOMPLETE][5] ([i915#3303])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][6] ([i915#1436] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][8] ([i915#295]) -> [PASS][9] +12 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897


Build changes
-------------

  * Linux: CI_DRM_11157 -> Patchwork_22136

  CI-20190529: 20190529
  CI_DRM_11157: df832f248a682d4eb6a0b649da9e30b340bd718e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22136: 400357c683c76a7449f592145dced47de8b76710 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

400357c683c7 drm/i915: Document BDW+ DRRS M/N programming requirements
30075c15511c drm/i915: Always check dp_m2_n2 on pre-bdw
25dbb558a992 drm/i915: Dump dp_m2_n2 always
358b45363939 drm/i915: Program pch transcoder m2/n2
b1b54f14bfc7 drm/i915: Clear DP M2/N2 when not doing DRRS
c762f233edbd drm/i915: Fix intel_cpu_transcoder_has_m2_n2()
e24e2a4f1cbd drm/i915: Extract can_enable_drrs()
0dbe450c1034 drm/i915: Disable DRRS on IVB/HSW port != A
526f4a744b5e drm/i915: Extract {i9xx, ilk}_configure_cpu_transcoder()
03603a62432e drm/i915: Move M/N setup to a more logical place on ddi platforms
dadfec6b4a8d drm/i915: Move PCH transcoder M/N setup into the PCH code
b24bc557b481 drm/i915: Pass crtc+cpu_transcoder to intel_cpu_transcoder_set_m_n()
ac12a25cbe51 drm/i915: Split intel_cpu_transcoder_get_m_n() into M1/N1 vs. M2/N2 variants
869c03688556 drm/i915: Split intel_cpu_transcoder_set_m_n() into M1/N1 vs. M2/N2 variants
cd6fb83cc545 drm/i915: Nuke ilk_get_fdi_m_n_config()
486215cbea5c drm/i915: Nuke intel_dp_get_m_n()
59bfa1b269e1 drm/i915: Nuke intel_dp_set_m_n()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/index.html

--===============9170596092140132855==
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
<tr><td><b>Series:</b></td><td>drm/i915: M/N cleanup (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99409/">https://patchwork.freedesktop.org/series/99409/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11157 -&gt; Patchwork_22136</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22136 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22136, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22136:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-kbl-soraka/igt@i915_selftest@live@requests.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22136 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11157/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22136/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11157 -&gt; Patchwork_22136</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11157: df832f248a682d4eb6a0b649da9e30b340bd718e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22136: 400357c683c76a7449f592145dced47de8b76710 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>400357c683c7 drm/i915: Document BDW+ DRRS M/N programming requirements<br />
30075c15511c drm/i915: Always check dp_m2_n2 on pre-bdw<br />
25dbb558a992 drm/i915: Dump dp_m2_n2 always<br />
358b45363939 drm/i915: Program pch transcoder m2/n2<br />
b1b54f14bfc7 drm/i915: Clear DP M2/N2 when not doing DRRS<br />
c762f233edbd drm/i915: Fix intel_cpu_transcoder_has_m2_n2()<br />
e24e2a4f1cbd drm/i915: Extract can_enable_drrs()<br />
0dbe450c1034 drm/i915: Disable DRRS on IVB/HSW port != A<br />
526f4a744b5e drm/i915: Extract {i9xx, ilk}_configure_cpu_transcoder()<br />
03603a62432e drm/i915: Move M/N setup to a more logical place on ddi platforms<br />
dadfec6b4a8d drm/i915: Move PCH transcoder M/N setup into the PCH code<br />
b24bc557b481 drm/i915: Pass crtc+cpu_transcoder to intel_cpu_transcoder_set_m_n()<br />
ac12a25cbe51 drm/i915: Split intel_cpu_transcoder_get_m_n() into M1/N1 vs. M2/N2 variants<br />
869c03688556 drm/i915: Split intel_cpu_transcoder_set_m_n() into M1/N1 vs. M2/N2 variants<br />
cd6fb83cc545 drm/i915: Nuke ilk_get_fdi_m_n_config()<br />
486215cbea5c drm/i915: Nuke intel_dp_get_m_n()<br />
59bfa1b269e1 drm/i915: Nuke intel_dp_set_m_n()</p>

</body>
</html>

--===============9170596092140132855==--
