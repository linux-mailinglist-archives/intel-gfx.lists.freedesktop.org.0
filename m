Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28838913EA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 07:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB4210F234;
	Fri, 29 Mar 2024 06:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2510A10F234;
 Fri, 29 Mar 2024 06:49:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5678909760602596202=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Bigjoiner_modes?=
 =?utf-8?q?et_sequence_redesign_and_MST_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Mar 2024 06:49:59 -0000
Message-ID: <171169499914.1066486.17144320498990123296@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

--===============5678909760602596202==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support
URL   : https://patchwork.freedesktop.org/series/131797/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14506 -> Patchwork_131797v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (3): fi-glk-j4005 fi-bsw-nick fi-kbl-8809g 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_131797v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-jsl-1/boot.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][3] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] +19 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg2-14:         [PASS][7] -> [ABORT][8] ([i915#10366])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] +10 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {bat-mtlp-9}:       [DMESG-WARN][10] ([i915#10435]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14506 -> Patchwork_131797v1

  CI-20190529: 20190529
  CI_DRM_14506: 98f893b726e1ba5db2680da3f9f53ab2af9780be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7790: 5ec1ff6da3535cf80fd4e1844867d75c481ef86a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131797v1: 98f893b726e1ba5db2680da3f9f53ab2af9780be @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

826720686063 drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"
fdd34986c7f6 drm/i915: Allow bigjoiner for MST
1970678e75f7 drm/i915/mst: Add bigjoiner handling to MST modeset sequence
1bfca223bdd6 drm/i915: Handle joined pipes inside hsw_crtc_enable()
112dba149e55 drm/i915: Handle joined pipes inside hsw_crtc_disable()
73ad3fd30033 drm/i915: Utilize intel_crtc_joined_pipe_mask() more
5fd383fce4ea drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
7130322303d1 drm/i915: Introduce intel_crtc_joined_pipe_mask()
df298b93508a drm/i915/mst: Reject FEC+MST on ICL
79924e64fd1f drm/i915/mst: Limit MST+DSC to TGL+
955744fe39b8 drm/i915: Pass connector to intel_dp_need_bigjoiner()
de8166aeda04 drm/i915/mst: Check intel_dp_joiner_needs_dsc()
9804e5e0f9d7 drm/i915: Extract intel_dp_joiner_needs_dsc()
bab384dd9014 drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
5d3a353ed8db drm/i915: Extract glk_need_scaler_clock_gating_wa()
0f8aa0474602 drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
10b46fa1c7b5 drm/i915: Shuffle DP .mode_valid() checks
9e9275654e60 drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks
c6f82096d42b drm/i915/vrr: Disable VRR when using bigjoiner
e211bbf35455 drm/i915: Disable live M/N updates when using bigjoiner
d2d996e53067 drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
bc0f1169d7b0 drm/i915: Disable port sync when bigjoiner is used

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/index.html

--===============5678909760602596202==
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
<tr><td><b>Series:</b></td><td>drm/i915: Bigjoiner modeset sequence redesign and MST support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131797/">https://patchwork.freedesktop.org/series/131797/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14506 -&gt; Patchwork_131797v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (3): fi-glk-j4005 fi-bsw-nick fi-kbl-8809g <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131797v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14506/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14506 -&gt; Patchwork_131797v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14506: 98f893b726e1ba5db2680da3f9f53ab2af9780be @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7790: 5ec1ff6da3535cf80fd4e1844867d75c481ef86a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131797v1: 98f893b726e1ba5db2680da3f9f53ab2af9780be @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>826720686063 drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"<br />
fdd34986c7f6 drm/i915: Allow bigjoiner for MST<br />
1970678e75f7 drm/i915/mst: Add bigjoiner handling to MST modeset sequence<br />
1bfca223bdd6 drm/i915: Handle joined pipes inside hsw_crtc_enable()<br />
112dba149e55 drm/i915: Handle joined pipes inside hsw_crtc_disable()<br />
73ad3fd30033 drm/i915: Utilize intel_crtc_joined_pipe_mask() more<br />
5fd383fce4ea drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()<br />
7130322303d1 drm/i915: Introduce intel_crtc_joined_pipe_mask()<br />
df298b93508a drm/i915/mst: Reject FEC+MST on ICL<br />
79924e64fd1f drm/i915/mst: Limit MST+DSC to TGL+<br />
955744fe39b8 drm/i915: Pass connector to intel_dp_need_bigjoiner()<br />
de8166aeda04 drm/i915/mst: Check intel_dp_joiner_needs_dsc()<br />
9804e5e0f9d7 drm/i915: Extract intel_dp_joiner_needs_dsc()<br />
bab384dd9014 drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/<br />
5d3a353ed8db drm/i915: Extract glk_need_scaler_clock_gating_wa()<br />
0f8aa0474602 drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()<br />
10b46fa1c7b5 drm/i915: Shuffle DP .mode_valid() checks<br />
9e9275654e60 drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks<br />
c6f82096d42b drm/i915/vrr: Disable VRR when using bigjoiner<br />
e211bbf35455 drm/i915: Disable live M/N updates when using bigjoiner<br />
d2d996e53067 drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner<br />
bc0f1169d7b0 drm/i915: Disable port sync when bigjoiner is used</p>

</body>
</html>

--===============5678909760602596202==--
