Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0043591531D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 18:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FD310E2AF;
	Mon, 24 Jun 2024 16:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99B310E2AF;
 Mon, 24 Jun 2024 16:06:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7717458546047237605=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Enable_CCS+10bp?=
 =?utf-8?q?c_and_CCS+async_flips?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2024 16:06:46 -0000
Message-ID: <171924520675.153041.7567241303656577173@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
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

--===============7717458546047237605==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Enable CCS+10bpc and CCS+async flips
URL   : https://patchwork.freedesktop.org/series/135306/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14995 -> Patchwork_135306v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): bat-kbl-2 bat-dg2-11 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_135306v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] +32 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-twl-1}:        [INCOMPLETE][2] ([i915#10886]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7:
    - {bat-mtlp-9}:       [DMESG-WARN][4] ([i915#11009]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-mtlp-9}:       [FAIL][6] ([i915#11375]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][8] ([i915#7507]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
    - bat-dg2-8:          [FAIL][10] ([i915#11379]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][12] ([i915#11009]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11375]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11375
  [i915#11379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159


Build changes
-------------

  * Linux: CI_DRM_14995 -> Patchwork_135306v1

  CI-20190529: 20190529
  CI_DRM_14995: 31d8e23bbf793469d597f3a17888fa55fffe7195 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7897: 9119f9c5dbbb969438b3424dc2f3b30f3b442aab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135306v1: 31d8e23bbf793469d597f3a17888fa55fffe7195 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html

--===============7717458546047237605==
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
<tr><td><b>Series:</b></td><td>drm/i915: Enable CCS+10bpc and CCS+async flips</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135306/">https://patchwork.freedesktop.org/series/135306/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14995 -&gt; Patchwork_135306v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): bat-kbl-2 bat-dg2-11 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135306v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-twl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp7.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11375">i915#11375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379">i915#11379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14995 -&gt; Patchwork_135306v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14995: 31d8e23bbf793469d597f3a17888fa55fffe7195 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7897: 9119f9c5dbbb969438b3424dc2f3b30f3b442aab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135306v1: 31d8e23bbf793469d597f3a17888fa55fffe7195 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7717458546047237605==--
