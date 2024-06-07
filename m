Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92FE900532
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BA810EC50;
	Fri,  7 Jun 2024 13:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D99410EC4F;
 Fri,  7 Jun 2024 13:40:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4411869296909045151=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_gvt_register_ma?=
 =?utf-8?q?cro_cleanups=2C_unused_macro_removals?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Jun 2024 13:40:25 -0000
Message-ID: <171776762537.26305.17047790137573204670@a6498e030952>
X-Patchwork-Hint: ignore
References: <cover.1717757337.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717757337.git.jani.nikula@intel.com>
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

--===============4411869296909045151==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: gvt register macro cleanups, unused macro removals
URL   : https://patchwork.freedesktop.org/series/134600/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14898 -> Patchwork_134600v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/index.html

Participating hosts (41 -> 34)
------------------------------

  Missing    (7): bat-dg1-7 bat-adlp-9 bat-adlp-6 fi-snb-2520m fi-cfl-8109u bat-dg2-14 bat-dg2-11 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134600v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-8:
    - {bat-mtlp-9}:       NOTRUN -> [FAIL][1] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-8.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][2] ([i915#11009]) -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14898/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html

  
Known issues
------------

  Here are the changes found in Patchwork_134600v1 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159


Build changes
-------------

  * Linux: CI_DRM_14898 -> Patchwork_134600v1

  CI-20190529: 20190529
  CI_DRM_14898: d9550a18e990d5709c4bc33073842a3c0a8bcaea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134600v1: d9550a18e990d5709c4bc33073842a3c0a8bcaea @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/index.html

--===============4411869296909045151==
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
<tr><td><b>Series:</b></td><td>drm/i915: gvt register macro cleanups, unused macro removals</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134600/">https://patchwork.freedesktop.org/series/134600/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14898 -&gt; Patchwork_134600v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/index.html</p>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Missing    (7): bat-dg1-7 bat-adlp-9 bat-adlp-6 fi-snb-2520m fi-cfl-8109u bat-dg2-14 bat-dg2-11 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134600v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-8:</p>
<ul>
<li>{bat-mtlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-8.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14898/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134600v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134600v1 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14898 -&gt; Patchwork_134600v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14898: d9550a18e990d5709c4bc33073842a3c0a8bcaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134600v1: d9550a18e990d5709c4bc33073842a3c0a8bcaea @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4411869296909045151==--
