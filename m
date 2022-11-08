Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E849A621D5A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 21:00:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA5B10E2CB;
	Tue,  8 Nov 2022 20:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0E0810E2CB;
 Tue,  8 Nov 2022 20:00:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9FE6A8830;
 Tue,  8 Nov 2022 20:00:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9037161211209129378=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 08 Nov 2022 20:00:19 -0000
Message-ID: <166793761979.2235.5399990396004798017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/7=5D_drm/i915/huc=3A_only_load_HuC_?=
 =?utf-8?q?on_GTs_that_have_VCS_engines_=28rev2=29?=
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

--===============9037161211209129378==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/7] drm/i915/huc: only load HuC on GTs that have VCS engines (rev2)
URL   : https://patchwork.freedesktop.org/series/110646/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12356 -> Patchwork_110646v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/index.html

Participating hosts (42 -> 38)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (5): fi-ilk-m540 fi-ctg-p8600 fi-hsw-4770 fi-pnv-d510 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110646v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {bat-atsm-1}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/bat-atsm-1/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_110646v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-nick:        [DMESG-FAIL][4] ([i915#6217]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12356/fi-bsw-nick/igt@i915_selftest@live@hugepages.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@i915_selftest@live@hugepages.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7358]: https://gitlab.freedesktop.org/drm/intel/issues/7358


Build changes
-------------

  * Linux: CI_DRM_12356 -> Patchwork_110646v2

  CI-20190529: 20190529
  CI_DRM_12356: 1278975de8debde9eb1f5d86fd2fbe533361e456 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110646v2: 1278975de8debde9eb1f5d86fd2fbe533361e456 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5c2053064b1d drm/i915/guc: handle interrupts from media GuC
ffee3ba6f389 drm/i915/guc: define media GT GuC send regs
efeb8e6b1fbc drm/i915/mtl: Handle wopcm per-GT and limit calculations.
caed9b0a0c56 drm/i915/guc: Add GuC deprivilege feature to MTL
0da74eda6f16 drm/i915/uc: use different ggtt pin offsets for uc loads
9897b6259b28 drm/i915/uc: fetch uc firmwares for each GT
b5743d73560a drm/i915/huc: only load HuC on GTs that have VCS engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/index.html

--===============9037161211209129378==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/7] drm/i915/huc: only load HuC on GTs that have VCS engines (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110646/">https://patchwork.freedesktop.org/series/110646/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12356 -&gt; Patchwork_110646v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (5): fi-ilk-m540 fi-ctg-p8600 fi-hsw-4770 fi-pnv-d510 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110646v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/bat-atsm-1/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110646v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12356/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110646v2/fi-bsw-nick/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12356 -&gt; Patchwork_110646v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12356: 1278975de8debde9eb1f5d86fd2fbe533361e456 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110646v2: 1278975de8debde9eb1f5d86fd2fbe533361e456 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5c2053064b1d drm/i915/guc: handle interrupts from media GuC<br />
ffee3ba6f389 drm/i915/guc: define media GT GuC send regs<br />
efeb8e6b1fbc drm/i915/mtl: Handle wopcm per-GT and limit calculations.<br />
caed9b0a0c56 drm/i915/guc: Add GuC deprivilege feature to MTL<br />
0da74eda6f16 drm/i915/uc: use different ggtt pin offsets for uc loads<br />
9897b6259b28 drm/i915/uc: fetch uc firmwares for each GT<br />
b5743d73560a drm/i915/huc: only load HuC on GTs that have VCS engines</p>

</body>
</html>

--===============9037161211209129378==--
