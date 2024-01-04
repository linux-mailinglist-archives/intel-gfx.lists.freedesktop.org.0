Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF108242B1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 14:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C68510E34D;
	Thu,  4 Jan 2024 13:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEC110E2CF;
 Thu,  4 Jan 2024 13:33:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5729685636901808188=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Panel_replay_selective_upda?=
 =?utf-8?q?te_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 04 Jan 2024 13:33:11 -0000
Message-ID: <170437519138.20654.7013286532933282567@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

--===============5729685636901808188==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel replay selective update support
URL   : https://patchwork.freedesktop.org/series/128193/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14078 -> Patchwork_128193v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/index.html

Participating hosts (38 -> 33)
------------------------------

  Missing    (5): bat-kbl-2 bat-dg2-8 bat-dg2-9 fi-snb-2520m bat-mtlp-8 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128193v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2:
    - {bat-rpls-3}:       [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-rpls-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rpls-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_128193v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlm-1:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][4] -> [INCOMPLETE][5] ([i915#8449])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-adlp-6/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlp-6/igt@i915_module_load@load.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][6] -> [ABORT][7] ([i915#7911])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#9197]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][9] ([i915#9875] / [i915#9900])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][10] ([i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][11] ([i915#8668]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8449]: https://gitlab.freedesktop.org/drm/intel/issues/8449
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * Linux: CI_DRM_14078 -> Patchwork_128193v1

  CI-20190529: 20190529
  CI_DRM_14078: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128193v1: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2a0e89b2656c drm/i915/psr: Add panel replay sel update support to debugfs interface
e4d1a28dea59 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
5663ef9c73a1 drm/panelreplay: dpcd register definition for panelreplay SU
62a6f542c564 drm/i915/psr: Split intel_psr2_config_valid for panel replay
7d6f5dea48bc drm/i915/psr: Detect panel replay selective update support
9dee44350fcd drm/i915/psr: Add sink_panel_replay_su_support to intel_psr
afbb0be398a4 drm/i915/psr: Add some documentation of variables used in psr code
7a5c87c8c16f drm/i915/psr: Rename psr2_enabled as sel_update_enabled
3cdd1aed5285 drm/i915/psr: Rename has_psr2 as has_sel_update
3c39c654e2c0 drm/i915/psr: Unify panel replay enable sink
2bd481a67513 drm/i915/psr: Do not check alpm on DP or capability change for panel replay
73c268dcb8c2 drm/i915/psr: Disable panel replay for now

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/index.html

--===============5729685636901808188==
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
<tr><td><b>Series:</b></td><td>Panel replay selective update support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128193/">https://patchwork.freedesktop.org/series/128193/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14078 -&gt; Patchwork_128193v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/index.html</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): bat-kbl-2 bat-dg2-8 bat-dg2-9 fi-snb-2520m bat-mtlp-8 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128193v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2:<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-rpls-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rpls-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-2.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128193v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlp-6/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8449">i915#8449</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9875">i915#9875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14078 -&gt; Patchwork_128193v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14078: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128193v1: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2a0e89b2656c drm/i915/psr: Add panel replay sel update support to debugfs interface<br />
e4d1a28dea59 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay<br />
5663ef9c73a1 drm/panelreplay: dpcd register definition for panelreplay SU<br />
62a6f542c564 drm/i915/psr: Split intel_psr2_config_valid for panel replay<br />
7d6f5dea48bc drm/i915/psr: Detect panel replay selective update support<br />
9dee44350fcd drm/i915/psr: Add sink_panel_replay_su_support to intel_psr<br />
afbb0be398a4 drm/i915/psr: Add some documentation of variables used in psr code<br />
7a5c87c8c16f drm/i915/psr: Rename psr2_enabled as sel_update_enabled<br />
3cdd1aed5285 drm/i915/psr: Rename has_psr2 as has_sel_update<br />
3c39c654e2c0 drm/i915/psr: Unify panel replay enable sink<br />
2bd481a67513 drm/i915/psr: Do not check alpm on DP or capability change for panel replay<br />
73c268dcb8c2 drm/i915/psr: Disable panel replay for now</p>

</body>
</html>

--===============5729685636901808188==--
