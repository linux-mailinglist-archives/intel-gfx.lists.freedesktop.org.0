Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D365AF3B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 11:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC9B10E2E7;
	Mon,  2 Jan 2023 10:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CF1B10E2E7;
 Mon,  2 Jan 2023 10:03:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6C46AADD4;
 Mon,  2 Jan 2023 10:03:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5324469356266553918=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Date: Mon, 02 Jan 2023 10:03:10 -0000
Message-ID: <167265379080.12728.11870845147886767854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_new_CDCLK_step_for_RPL-U_=28rev2=29?=
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

--===============5324469356266553918==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add new CDCLK step for RPL-U (rev2)
URL   : https://patchwork.freedesktop.org/series/111472/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12534 -> Patchwork_111472v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111472v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111472v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/index.html

Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-kbl-soraka fi-rkl-11600 fi-bsw-kefka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111472v2:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-dg1-7}:        [SKIP][3] ([i915#4078]) -> [SKIP][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
Known issues
------------

  Here are the changes found in Patchwork_111472v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][5] -> [DMESG-FAIL][6] ([i915#7699])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7654]: https://gitlab.freedesktop.org/drm/intel/issues/7654
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_12534 -> Patchwork_111472v2

  CI-20190529: 20190529
  CI_DRM_12534: 2eb7b99b8190efc92b708a51e41c5f7f86843e42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111472v2: 2eb7b99b8190efc92b708a51e41c5f7f86843e42 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

29768498ea74 drm/i915: Apply CDCLK quirk only on QS parts
a7821e51f61e drm/i915: Initialize intel quirks before CDCLK initialization
9d8bb24ebdf6 drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
87d7b9c95594 drm/i915/quirks: Add quirk for 480MHz CDCLK step

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/index.html

--===============5324469356266553918==
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
<tr><td><b>Series:</b></td><td>Add new CDCLK step for RPL-U (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111472/">https://patchwork.freedesktop.org/series/111472/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12534 -&gt; Patchwork_111472v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111472v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111472v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/index.html</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-kbl-soraka fi-rkl-11600 fi-bsw-kefka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111472v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/fi-icl-u2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/fi-icl-u2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank:<ul>
<li>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111472v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12534/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/bat-adlp-4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v2/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12534 -&gt; Patchwork_111472v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12534: 2eb7b99b8190efc92b708a51e41c5f7f86843e42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111472v2: 2eb7b99b8190efc92b708a51e41c5f7f86843e42 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>29768498ea74 drm/i915: Apply CDCLK quirk only on QS parts<br />
a7821e51f61e drm/i915: Initialize intel quirks before CDCLK initialization<br />
9d8bb24ebdf6 drm/i915/display: Add 480 MHz CDCLK steps for RPL-U<br />
87d7b9c95594 drm/i915/quirks: Add quirk for 480MHz CDCLK step</p>

</body>
</html>

--===============5324469356266553918==--
