Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086C47D5EAE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 01:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FA710E502;
	Tue, 24 Oct 2023 23:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E227E10E502;
 Tue, 24 Oct 2023 23:29:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B42C7A0003;
 Tue, 24 Oct 2023 23:29:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5542728631783353727=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 24 Oct 2023 23:29:51 -0000
Message-ID: <169819019170.18362.6152961359292549922@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024124109.384973-1-jouni.hogander@intel.com>
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRnJh?=
 =?utf-8?q?mework_for_display_parameters_=28rev5=29?=
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

--===============5542728631783353727==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Framework for display parameters (rev5)
URL   : https://patchwork.freedesktop.org/series/124645/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13782 -> Patchwork_124645v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/index.html

Participating hosts (38 -> 33)
------------------------------

  Missing    (5): bat-adlp-11 bat-dg2-9 fi-snb-2520m fi-hsw-4770 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_124645v5 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][1] ([IGT#3]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952


Build changes
-------------

  * Linux: CI_DRM_13782 -> Patchwork_124645v5

  CI-20190529: 20190529
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124645v5: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

091857bbc15a drm/i915/display: Move enable_dp_mst under display
c7b7e462bec5 drm/i915/display: Move nuclear_pageflip under display
18f4fd5aca2c drm/i915/display: Move verbose_state_checks under display
ff44e7759bb4 drm/i915/display: Use device parameters instead of module in I915_STATE_WARN
4c58e18357ee drm/i915/display: Move disable_display parameter under display
22dfab18f30a drm/i915/display: Move force_reset_modeset_test parameter under display
8f999a032b63 drm/i915/display: Move load_detect_test parameter under display
d1b4c6967dcd drm/i915/display: Move enable_dpcd_backlight module parameter under display
775f5af821ea drm/i915/display: Move edp_vswing module parameter under display
bbc6ff223524 drm/i915/display: Move invert_brightness module parameter under display
7be3e50df7d6 drm/i915/display: Move enable_ips module parameter under display
0bd4081be5da drm/i915/display: Move disable_power_well module parameter under display
c7e551a5de6e drm/i915/display: Move enable_sagv module parameter under display
5482ca2f8dbd drm/i915/display: Move enable_dpt module parameter under display
be5c72cc44e0 drm/i915/display: Move enable_dc module parameter under display
d638ce5200c4 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display
545ed0dd7ef1 drm/i915/display: Move panel_use_ssc module parameter under display
6646f0e62010 drm/i915/display: Move lvds_channel_mode module parameter under display
481c1d9f2dab drm/i915/display: Move vbt_firmware module parameter under display
4598f41c689f drm/i915/display: Move psr related module parameters under display
81679764397a drm/i915/display: Move enable_fbc module parameter under display
3ac4fed08b77 drm/i915/display: Dump also display parameters
4ed7502f4aa9 drm/i915/display: Add framework to add parameters specific to display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/index.html

--===============5542728631783353727==
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
<tr><td><b>Series:</b></td><td>Framework for display parameters (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124645/">https://patchwork.freedesktop.org/series/124645/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13782 -&gt; Patchwork_124645v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/index.html</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): bat-adlp-11 bat-dg2-9 fi-snb-2520m fi-hsw-4770 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124645v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124645v5/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13782 -&gt; Patchwork_124645v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124645v5: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>091857bbc15a drm/i915/display: Move enable_dp_mst under display<br />
c7b7e462bec5 drm/i915/display: Move nuclear_pageflip under display<br />
18f4fd5aca2c drm/i915/display: Move verbose_state_checks under display<br />
ff44e7759bb4 drm/i915/display: Use device parameters instead of module in I915_STATE_WARN<br />
4c58e18357ee drm/i915/display: Move disable_display parameter under display<br />
22dfab18f30a drm/i915/display: Move force_reset_modeset_test parameter under display<br />
8f999a032b63 drm/i915/display: Move load_detect_test parameter under display<br />
d1b4c6967dcd drm/i915/display: Move enable_dpcd_backlight module parameter under display<br />
775f5af821ea drm/i915/display: Move edp_vswing module parameter under display<br />
bbc6ff223524 drm/i915/display: Move invert_brightness module parameter under display<br />
7be3e50df7d6 drm/i915/display: Move enable_ips module parameter under display<br />
0bd4081be5da drm/i915/display: Move disable_power_well module parameter under display<br />
c7e551a5de6e drm/i915/display: Move enable_sagv module parameter under display<br />
5482ca2f8dbd drm/i915/display: Move enable_dpt module parameter under display<br />
be5c72cc44e0 drm/i915/display: Move enable_dc module parameter under display<br />
d638ce5200c4 drm/i915/display: Move vbt_sdvo_panel_type module parameter under display<br />
545ed0dd7ef1 drm/i915/display: Move panel_use_ssc module parameter under display<br />
6646f0e62010 drm/i915/display: Move lvds_channel_mode module parameter under display<br />
481c1d9f2dab drm/i915/display: Move vbt_firmware module parameter under display<br />
4598f41c689f drm/i915/display: Move psr related module parameters under display<br />
81679764397a drm/i915/display: Move enable_fbc module parameter under display<br />
3ac4fed08b77 drm/i915/display: Dump also display parameters<br />
4ed7502f4aa9 drm/i915/display: Add framework to add parameters specific to display</p>

</body>
</html>

--===============5542728631783353727==--
