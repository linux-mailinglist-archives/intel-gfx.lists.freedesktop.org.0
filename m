Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675AC70676B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B7E10E40A;
	Wed, 17 May 2023 12:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E949910E410;
 Wed, 17 May 2023 12:01:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1B85AADD7;
 Wed, 17 May 2023 12:01:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8475679745530888805=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Wed, 17 May 2023 12:01:55 -0000
Message-ID: <168432491591.6591.11886763293111019303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_move_DSC_RC_tables_to_drm=5Fdsc=5Fhelper=2Ec_=28rev8?=
 =?utf-8?q?=29?=
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

--===============8475679745530888805==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: move DSC RC tables to drm_dsc_helper.c (rev8)
URL   : https://patchwork.freedesktop.org/series/114473/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13158 -> Patchwork_114473v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/index.html

Participating hosts (36 -> 34)
------------------------------

  Additional (1): bat-mtlp-6 
  Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114473v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-9:         [PASS][3] -> [INCOMPLETE][4] ([i915#7677] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-adlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][5] -> [FAIL][6] ([i915#7932])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         [PASS][7] -> [INCOMPLETE][8] ([i915#7908])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [DMESG-WARN][9] ([i915#8073]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][11] ([i915#7932]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
#### Warnings ####

  * igt@kms_psr@sprite_plane_onoff:
    - bat-adln-1:         [ABORT][13] ([i915#8442]) -> [ABORT][14] ([i915#8434] / [i915#8442])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7908]: https://gitlab.freedesktop.org/drm/intel/issues/7908
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442


Build changes
-------------

  * Linux: CI_DRM_13158 -> Patchwork_114473v8

  CI-20190529: 20190529
  CI_DRM_13158: b45eb9c3ab2393968cda9bb8eb12878be3df8ce6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7293: a19a081d1b8a8f902d7d8009a6ea6c471d5531ad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114473v8: b45eb9c3ab2393968cda9bb8eb12878be3df8ce6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c302ed573894 drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters
55325ee0236f drm/display/dsc: include the rest of pre-SCR parameters
ae6203a9db27 drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters
281abec34dde drm/display/dsc: use flat array for rc_parameters lookup
0c09310ab362 drm/i915/dsc: stop using interim structure for calculated params
fad985be9174 drm/i915/dsc: move DSC tables to DRM DSC helper
d058d59a986d drm/i915/dsc: move rc_buf_thresh values to common helper
050eb5569227 drm/i915/dsc: change DSC param tables to follow the DSC model

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/index.html

--===============8475679745530888805==
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
<tr><td><b>Series:</b></td><td>drm/i915: move DSC RC tables to drm_dsc_helper.c (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114473/">https://patchwork.freedesktop.org/series/114473/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13158 -&gt; Patchwork_114473v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Additional (1): bat-mtlp-6 <br />
  Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114473v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7677">i915#7677</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7908">i915#7908</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@sprite_plane_onoff:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13158/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114473v8/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13158 -&gt; Patchwork_114473v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13158: b45eb9c3ab2393968cda9bb8eb12878be3df8ce6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7293: a19a081d1b8a8f902d7d8009a6ea6c471d5531ad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114473v8: b45eb9c3ab2393968cda9bb8eb12878be3df8ce6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c302ed573894 drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters<br />
55325ee0236f drm/display/dsc: include the rest of pre-SCR parameters<br />
ae6203a9db27 drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters<br />
281abec34dde drm/display/dsc: use flat array for rc_parameters lookup<br />
0c09310ab362 drm/i915/dsc: stop using interim structure for calculated params<br />
fad985be9174 drm/i915/dsc: move DSC tables to DRM DSC helper<br />
d058d59a986d drm/i915/dsc: move rc_buf_thresh values to common helper<br />
050eb5569227 drm/i915/dsc: change DSC param tables to follow the DSC model</p>

</body>
</html>

--===============8475679745530888805==--
