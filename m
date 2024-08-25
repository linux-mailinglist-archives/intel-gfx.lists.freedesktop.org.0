Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B418395E36F
	for <lists+intel-gfx@lfdr.de>; Sun, 25 Aug 2024 14:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3480710E093;
	Sun, 25 Aug 2024 12:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AD010E093;
 Sun, 25 Aug 2024 12:57:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5115362102454356867=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Disable_Redu?=
 =?utf-8?q?ndant_HZ_Plane_expansions_for_MTL/ARL_and_DG2_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 25 Aug 2024 12:57:50 -0000
Message-ID: <172459067035.765922.14496202337426264012@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
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

--===============5115362102454356867==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Disable Redundant HZ Plane expansions for MTL/ARL and DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/137701/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15288 -> Patchwork_137701v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): bat-kbl-2 bat-arlh-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_137701v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-9:         [PASS][1] -> [INCOMPLETE][2] ([i915#9413])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html
    - bat-dg2-9:          [PASS][3] -> [DMESG-FAIL][4] ([i915#9500])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][5] -> [DMESG-WARN][6] ([i915#11349])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#9197]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15288 -> Patchwork_137701v2

  CI-20190529: 20190529
  CI_DRM_15288: 5626fe5d6eeb0949727861375b27d67ee71feaa7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7990: 9ca5ff0afa3636478b6ba5a97e5ba440cfb2e55e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137701v2: 5626fe5d6eeb0949727861375b27d67ee71feaa7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/index.html

--===============5115362102454356867==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Disable Redundant HZ Plane expansions for MTL/ARL and DG2 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137701/">https://patchwork.freedesktop.org/series/137701/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15288 -&gt; Patchwork_137701v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): bat-kbl-2 bat-arlh-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137701v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-dg2-9/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15288/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137701v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15288 -&gt; Patchwork_137701v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15288: 5626fe5d6eeb0949727861375b27d67ee71feaa7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7990: 9ca5ff0afa3636478b6ba5a97e5ba440cfb2e55e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137701v2: 5626fe5d6eeb0949727861375b27d67ee71feaa7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5115362102454356867==--
