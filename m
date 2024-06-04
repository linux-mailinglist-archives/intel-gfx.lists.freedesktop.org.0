Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89F8FBB71
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 20:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B4B10E2BE;
	Tue,  4 Jun 2024 18:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0830A10E2BE;
 Tue,  4 Jun 2024 18:20:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8420168086475278706=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_finish_the_job_?=
 =?utf-8?q?of_removing_implicit_dev=5Fpriv?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Jun 2024 18:20:48 -0000
Message-ID: <171752524802.2265911.16123744155402742425@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1717514638.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
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

--===============8420168086475278706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: finish the job of removing implicit dev_priv
URL   : https://patchwork.freedesktop.org/series/134451/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14874 -> Patchwork_134451v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/index.html

Participating hosts (40 -> 31)
------------------------------

  Missing    (9): bat-dg1-7 bat-adlp-9 fi-snb-2520m bat-adlp-6 fi-kbl-8809g bat-dg2-14 bat-dg2-13 bat-dg2-11 bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_134451v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-atsm-1:         [FAIL][1] ([i915#10378]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][3] ([i915#10594]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rplp-1:         [ABORT][5] ([i915#10021]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/bat-rplp-1/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/bat-rplp-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#10021]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594


Build changes
-------------

  * Linux: CI_DRM_14874 -> Patchwork_134451v1

  CI-20190529: 20190529
  CI_DRM_14874: 77588a3e3e58917a9b1d992aeef6f02a6b85ded5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7877: 23b8b8a0168e1b5141e29346be1f83fdbed31037 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134451v1: 77588a3e3e58917a9b1d992aeef6f02a6b85ded5 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/index.html

--===============8420168086475278706==
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
<tr><td><b>Series:</b></td><td>drm/i915: finish the job of removing implicit dev_priv</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134451/">https://patchwork.freedesktop.org/series/134451/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14874 -&gt; Patchwork_134451v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/index.html</p>
<h2>Participating hosts (40 -&gt; 31)</h2>
<p>Missing    (9): bat-dg1-7 bat-adlp-9 fi-snb-2520m bat-adlp-6 fi-kbl-8809g bat-dg2-14 bat-dg2-13 bat-dg2-11 bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134451v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14874/bat-rplp-1/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134451v1/bat-rplp-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14874 -&gt; Patchwork_134451v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14874: 77588a3e3e58917a9b1d992aeef6f02a6b85ded5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7877: 23b8b8a0168e1b5141e29346be1f83fdbed31037 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134451v1: 77588a3e3e58917a9b1d992aeef6f02a6b85ded5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8420168086475278706==--
