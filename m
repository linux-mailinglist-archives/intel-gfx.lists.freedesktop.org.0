Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8605906C8C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 13:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CDA110EA4E;
	Thu, 13 Jun 2024 11:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3E510EA4E;
 Thu, 13 Jun 2024 11:51:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6545167483952024663=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_gvt_register_ma?=
 =?utf-8?q?cro_cleanups=2C_unused_macro_removals_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2024 11:51:26 -0000
Message-ID: <171827948623.72831.7569171513171497451@a6498e030952>
X-Patchwork-Hint: ignore
References: <cover.1717773890.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717773890.git.jani.nikula@intel.com>
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

--===============6545167483952024663==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: gvt register macro cleanups, unused macro removals (rev3)
URL   : https://patchwork.freedesktop.org/series/134600/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14932 -> Patchwork_134600v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/index.html

Participating hosts (43 -> 39)
------------------------------

  Additional (2): bat-arlh-2 fi-bsw-n3050 
  Missing    (6): bat-kbl-2 fi-snb-2520m fi-elk-e7500 fi-cfl-8109u bat-jsl-3 bat-arls-2 

Known issues
------------

  Here are the changes found in Patchwork_134600v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] +19 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@requests:
    - bat-atsm-1:         [PASS][2] -> [INCOMPLETE][3] ([i915#11262])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-atsm-1/igt@i915_selftest@live@requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-atsm-1/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][4] ([i915#11009]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6:
    - {bat-mtlp-9}:       [FAIL][6] ([i915#10979]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11262
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#8585]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8585
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9224]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9224
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318


Build changes
-------------

  * Linux: CI_DRM_14932 -> Patchwork_134600v3

  CI-20190529: 20190529
  CI_DRM_14932: dea4e8a3a0889d80afc874513cca0d7f7a25bbcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7884: 3c02edb64e6feef931f1df9898d129b0a92a39eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134600v3: dea4e8a3a0889d80afc874513cca0d7f7a25bbcd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/index.html

--===============6545167483952024663==
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
<tr><td><b>Series:</b></td><td>drm/i915: gvt register macro cleanups, unused macro removals (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134600/">https://patchwork.freedesktop.org/series/134600/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14932 -&gt; Patchwork_134600v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Additional (2): bat-arlh-2 fi-bsw-n3050 <br />
  Missing    (6): bat-kbl-2 fi-snb-2520m fi-elk-e7500 fi-cfl-8109u bat-jsl-3 bat-arls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134600v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-atsm-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-atsm-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11262">i915#11262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14932/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979">i915#10979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v3/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14932 -&gt; Patchwork_134600v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14932: dea4e8a3a0889d80afc874513cca0d7f7a25bbcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7884: 3c02edb64e6feef931f1df9898d129b0a92a39eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134600v3: dea4e8a3a0889d80afc874513cca0d7f7a25bbcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6545167483952024663==--
