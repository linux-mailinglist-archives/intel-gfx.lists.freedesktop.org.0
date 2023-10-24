Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 286D07D5E40
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 00:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DE510E4EA;
	Tue, 24 Oct 2023 22:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5A9010E4EA;
 Tue, 24 Oct 2023 22:32:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADEADAA915;
 Tue, 24 Oct 2023 22:32:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2361841796292651865=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 24 Oct 2023 22:32:54 -0000
Message-ID: <169818677467.18359.17629850144525384912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024010925.3949910-1-imre.deak@intel.com>
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev5=29?=
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

--===============2361841796292651865==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on MST links (rev5)
URL   : https://patchwork.freedesktop.org/series/125490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13782 -> Patchwork_125490v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125490v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125490v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): bat-mtlp-8 fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125490v5:

### CI changes ###

#### Possible regressions ####

  * boot:
    - bat-adlp-11:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-adlp-11/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-adlp-11/boot.html

  

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_dsc@dsc-basic@pipe-d-dp-1}:
    - bat-dg2-9:          [PASS][3] -> [DMESG-WARN][4] +2 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_125490v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][5] -> [FAIL][6] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-jsl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][7] -> [INCOMPLETE][8] ([i915#9275])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][9] ([i915#1845] / [i915#9197])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13782 -> Patchwork_125490v5

  CI-20190529: 20190529
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125490v5: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1cec8cdf8a9a drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
79506a9ccdb1 drm/i915/dp_mst: Check BW limitations only after all streams are computed
768512cdf4be drm/i915/dp_mst: Improve BW sharing between MST streams
d79d377ed18a drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
ca330227bc09 drm/i915: Factor out function to clear pipe update flags
bc4561e52421 drm/i915/dp_mst: Enable MST DSC decompression for all streams
2d7919b3deed drm/i915/dp_mst: Enable DSC passthrough
78e04aae0f32 drm/i915/dp: Enable DSC via the connector decompression AUX
0da10371b072 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
298ff51574a7 drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
8bc0647c9eb4 drm/i915/dp: Disable FEC ready flag in the sink
e780652897cc drm/i915/dp: Wait for FEC detected status in the sink
9f6b7194895c drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
c364b8ac9fe8 drm/i915/dp_mst: Add missing DSC compression disabling
7e858a1432a6 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
fb1d44ec8c1e drm/i915/dp_mst: Program the DSC PPS SDP for each stream
b126b4308b28 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
683d6dfdb5c8 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
8060f3042b90 drm/i915/dp: Pass actual BW overhead to m_n calculation
8e6f697c142c drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
45226ad70c6b drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
15657ea1c42b drm/dp: Add helpers to calculate the link BW overhead
5c1eac4251d4 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
913f68ef0079 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
ca9924187c92 drm/dp_mst: Allow DSC in any Synaptics last branch device
227239cf9e88 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
b30665a743ef drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
582b6d7fec4e drm/dp_mst: Add helper to determine if an MST port is downstream of another port
8cf4050f0727 drm/dp_mst: Fix fractional DSC bpp handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/index.html

--===============2361841796292651865==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on MST links (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125490/">https://patchwork.freedesktop.org/series/125490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13782 -&gt; Patchwork_125490v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125490v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125490v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): bat-mtlp-8 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125490v5:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-adlp-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-adlp-11/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_dsc@dsc-basic@pipe-d-dp-1}:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125490v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v5/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13782 -&gt; Patchwork_125490v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125490v5: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1cec8cdf8a9a drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
79506a9ccdb1 drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
768512cdf4be drm/i915/dp_mst: Improve BW sharing between MST streams<br />
d79d377ed18a drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it<br />
ca330227bc09 drm/i915: Factor out function to clear pipe update flags<br />
bc4561e52421 drm/i915/dp_mst: Enable MST DSC decompression for all streams<br />
2d7919b3deed drm/i915/dp_mst: Enable DSC passthrough<br />
78e04aae0f32 drm/i915/dp: Enable DSC via the connector decompression AUX<br />
0da10371b072 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks<br />
298ff51574a7 drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk<br />
8bc0647c9eb4 drm/i915/dp: Disable FEC ready flag in the sink<br />
e780652897cc drm/i915/dp: Wait for FEC detected status in the sink<br />
9f6b7194895c drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()<br />
c364b8ac9fe8 drm/i915/dp_mst: Add missing DSC compression disabling<br />
7e858a1432a6 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
fb1d44ec8c1e drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
b126b4308b28 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
683d6dfdb5c8 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation<br />
8060f3042b90 drm/i915/dp: Pass actual BW overhead to m_n calculation<br />
8e6f697c142c drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder<br />
45226ad70c6b drm/i915/dp_mst: Enable FEC early once it's known DSC is needed<br />
15657ea1c42b drm/dp: Add helpers to calculate the link BW overhead<br />
5c1eac4251d4 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs<br />
913f68ef0079 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags<br />
ca9924187c92 drm/dp_mst: Allow DSC in any Synaptics last branch device<br />
227239cf9e88 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
b30665a743ef drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
582b6d7fec4e drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
8cf4050f0727 drm/dp_mst: Fix fractional DSC bpp handling</p>

</body>
</html>

--===============2361841796292651865==--
