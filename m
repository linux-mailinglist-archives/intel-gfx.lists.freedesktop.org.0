Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA1D53C059
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 23:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F3111382B;
	Thu,  2 Jun 2022 21:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F5E111382C;
 Thu,  2 Jun 2022 21:27:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99F0CA363D;
 Thu,  2 Jun 2022 21:27:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6445397891607602459=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 02 Jun 2022 21:27:01 -0000
Message-ID: <165420522162.17951.3666459318767422279@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220602201730.199418-1-jose.souza@intel.com>
In-Reply-To: <20220602201730.199418-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/fbc=3A_Do_not_apply_WA_22014263786_to_DG2?=
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

--===============6445397891607602459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/fbc: Do not apply WA 22014263786 to DG2
URL   : https://patchwork.freedesktop.org/series/104678/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11721 -> Patchwork_104678v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104678v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104678v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/index.html

Participating hosts (43 -> 44)
------------------------------

  Additional (1): bat-atsm-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104678v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {bat-atsm-1}:       NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@slpc:
    - {bat-atsm-1}:       NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@i915_selftest@live@slpc.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-atsm-1}:       NOTRUN -> [SKIP][5] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
Known issues
------------

  Here are the changes found in Patchwork_104678v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][6] ([i915#4528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][7] -> [INCOMPLETE][8] ([i915#4785])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][9] ([i915#3921])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][10] -> [DMESG-FAIL][11] ([i915#4528])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][12] ([fdo#109271] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-5557u:       [INCOMPLETE][13] ([i915#5502]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][15] ([i915#4494] / [i915#4957]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][17] ([i915#4528]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5502]: https://gitlab.freedesktop.org/drm/intel/issues/5502
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6092]: https://gitlab.freedesktop.org/drm/intel/issues/6092
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6133]: https://gitlab.freedesktop.org/drm/intel/issues/6133
  [i915#6134]: https://gitlab.freedesktop.org/drm/intel/issues/6134
  [i915#6135]: https://gitlab.freedesktop.org/drm/intel/issues/6135
  [i915#6136]: https://gitlab.freedesktop.org/drm/intel/issues/6136
  [i915#6137]: https://gitlab.freedesktop.org/drm/intel/issues/6137
  [i915#6138]: https://gitlab.freedesktop.org/drm/intel/issues/6138


Build changes
-------------

  * Linux: CI_DRM_11721 -> Patchwork_104678v1

  CI-20190529: 20190529
  CI_DRM_11721: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104678v1: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

950831d84d59 drm/i915/display/fbc: Do not apply WA 22014263786 to DG2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/index.html

--===============6445397891607602459==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/fbc: Do not apply WA 22014263786 to DG2</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104678/">https://patchwork.freedesktop.org/series/104678/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11721 -&gt; Patchwork_104678v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104678v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104678v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/index.html</p>
<h2>Participating hosts (43 -&gt; 44)</h2>
<p>Additional (1): bat-atsm-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104678v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@i915_selftest@live@slpc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-atsm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104678v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5502">i915#5502</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104678v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11721 -&gt; Patchwork_104678v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11721: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104678v1: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>950831d84d59 drm/i915/display/fbc: Do not apply WA 22014263786 to DG2</p>

</body>
</html>

--===============6445397891607602459==--
