Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A88490D8FB
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 18:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B63310E71F;
	Tue, 18 Jun 2024 16:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA9610E715;
 Tue, 18 Jun 2024 16:21:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6065102284613581095=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_PREEMPT=5FRT_re?=
 =?utf-8?q?lated_fixups=2E_=28rev11=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2024 16:21:00 -0000
Message-ID: <171872766016.104453.1760128027667732156@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
In-Reply-To: <20240613102818.4056866-1-bigeasy@linutronix.de>
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

--===============6065102284613581095==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: PREEMPT_RT related fixups. (rev11)
URL   : https://patchwork.freedesktop.org/series/95463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14962 -> Patchwork_95463v11
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_95463v11:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {bat-apl-1}:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-apl-1/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-apl-1/igt@core_auth@basic-auth.html

  
Known issues
------------

  Here are the changes found in Patchwork_95463v11 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][3] -> [DMESG-WARN][4] ([i915#7507])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - bat-dg2-8:          [PASS][5] -> [FAIL][6] ([i915#11379])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][7] ([i915#10378]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
    - bat-atsm-1:         [FAIL][9] ([i915#10378]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][11] ([i915#6121]) -> [PASS][12] +6 other tests pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][13] ([i915#11009]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6:
    - {bat-mtlp-9}:       [FAIL][15] ([i915#10979]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html

  * igt@kms_pm_rpm@basic-rte:
    - {bat-mtlp-9}:       [DMESG-WARN][17] ([i915#11009]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10512]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10512
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
  [i915#11379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14962 -> Patchwork_95463v11

  CI-20190529: 20190529
  CI_DRM_14962: b3cee15446d95e97d9d663cdcbc611e698354165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_95463v11: b3cee15446d95e97d9d663cdcbc611e698354165 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/index.html

--===============6065102284613581095==
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
<tr><td><b>Series:</b></td><td>drm/i915: PREEMPT_RT related fixups. (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95463/">https://patchwork.freedesktop.org/series/95463/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14962 -&gt; Patchwork_95463v11</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_95463v11:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-apl-1/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-apl-1/igt@core_auth@basic-auth.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_95463v11 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379">i915#11379</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979">i915#10979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14962/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v11/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14962 -&gt; Patchwork_95463v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14962: b3cee15446d95e97d9d663cdcbc611e698354165 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_95463v11: b3cee15446d95e97d9d663cdcbc611e698354165 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6065102284613581095==--
