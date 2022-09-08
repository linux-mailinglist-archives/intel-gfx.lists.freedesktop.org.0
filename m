Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D135B2A0B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 01:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EE910E7A4;
	Thu,  8 Sep 2022 23:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCDEA10E7A4;
 Thu,  8 Sep 2022 23:16:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3FE5A47DF;
 Thu,  8 Sep 2022 23:16:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7117153622183441970=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 08 Sep 2022 23:16:48 -0000
Message-ID: <166267900871.27236.2141574688171325334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Add_=22standalone_media=22_support_for_MTL_=28rev5=29?=
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

--===============7117153622183441970==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Add "standalone media" support for MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/107908/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12101 -> Patchwork_107908v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html

Participating hosts (42 -> 29)
------------------------------

  Missing    (13): fi-rkl-11600 fi-bdw-5557u bat-dg1-5 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107908v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][1] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][3] ([i915#4528]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-blb-e6850/igt@i915_selftest@live@requests.html
    - fi-pnv-d510:        [DMESG-FAIL][5] ([i915#4528]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][7] ([i915#6298]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12101 -> Patchwork_107908v5

  CI-20190529: 20190529
  CI_DRM_12101: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6649: 7d91a6952dadaa9001b662ed60c08ccb8364929d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107908v5: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5ebdb9d9bef8 drm/i915/mtl: Hook up interrupts for standalone media
c5634336af9a drm/i915/mtl: Use primary GT's irq lock for media GT
132192a3942f drm/i915/xelpmp: Expose media as another GT
c4bae87e5d9f drm/i915/mtl: Add gsi_offset when emitting aux table invalidation
9b6161c8632f drm/i915/uncore: Add GSI offset to uncore
fe607cccaa26 drm/i915: Handle each GT on init/release and suspend/resume
a86da8bb224e drm/i915: Initialize MMIO access for each GT
96015664d5d7 drm/i915: Use a DRM-managed action to release the PCI bridge device
c046ed8ed2de drm/i915: Rename and expose common GT early init routine
64b9f2cf52ea drm/i915: Prepare more multi-GT initialization
6c71c5973dda drm/i915: Drop intel_gt_tile_cleanup()
85deb0621c44 drm/i915: Use managed allocations for extra uncore objects
b43c85921f61 drm/i915: Only hook up uncore->debug for primary uncore
d33d6584c08d drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html

--===============7117153622183441970==
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
<tr><td><b>Series:</b></td><td>i915: Add &quot;standalone media&quot; support for MTL (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107908/">https://patchwork.freedesktop.org/series/107908/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12101 -&gt; Patchwork_107908v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html</p>
<h2>Participating hosts (42 -&gt; 29)</h2>
<p>Missing    (13): fi-rkl-11600 fi-bdw-5557u bat-dg1-5 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107908v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12101 -&gt; Patchwork_107908v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12101: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6649: 7d91a6952dadaa9001b662ed60c08ccb8364929d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107908v5: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5ebdb9d9bef8 drm/i915/mtl: Hook up interrupts for standalone media<br />
c5634336af9a drm/i915/mtl: Use primary GT's irq lock for media GT<br />
132192a3942f drm/i915/xelpmp: Expose media as another GT<br />
c4bae87e5d9f drm/i915/mtl: Add gsi_offset when emitting aux table invalidation<br />
9b6161c8632f drm/i915/uncore: Add GSI offset to uncore<br />
fe607cccaa26 drm/i915: Handle each GT on init/release and suspend/resume<br />
a86da8bb224e drm/i915: Initialize MMIO access for each GT<br />
96015664d5d7 drm/i915: Use a DRM-managed action to release the PCI bridge device<br />
c046ed8ed2de drm/i915: Rename and expose common GT early init routine<br />
64b9f2cf52ea drm/i915: Prepare more multi-GT initialization<br />
6c71c5973dda drm/i915: Drop intel_gt_tile_cleanup()<br />
85deb0621c44 drm/i915: Use managed allocations for extra uncore objects<br />
b43c85921f61 drm/i915: Only hook up uncore-&gt;debug for primary uncore<br />
d33d6584c08d drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}</p>

</body>
</html>

--===============7117153622183441970==--
