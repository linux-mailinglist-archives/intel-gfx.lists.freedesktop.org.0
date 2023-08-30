Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2738C78D4C5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 11:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6231E10E4DD;
	Wed, 30 Aug 2023 09:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADE5710E4DD;
 Wed, 30 Aug 2023 09:43:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5813AADDA;
 Wed, 30 Aug 2023 09:43:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5808150352585734814=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 30 Aug 2023 09:43:43 -0000
Message-ID: <169338862367.15232.2240051108032792681@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230828054300.560559-1-suraj.kandpal@intel.com>
In-Reply-To: <20230828054300.560559-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DSC_PPS_readout_=28rev12=29?=
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

--===============5808150352585734814==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DSC PPS readout (rev12)
URL   : https://patchwork.freedesktop.org/series/120456/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13569 -> Patchwork_120456v12
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): bat-rpls-2 bat-atsm-1 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_120456v12 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-kbl-2:          [PASS][1] -> [DMESG-FAIL][2] ([i915#8189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-kbl-2/igt@dmabuf@all-tests@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-kbl-2/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-kbl-2:          [PASS][3] -> [ABORT][4] ([i915#8189])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-kbl-2/igt@dmabuf@all-tests@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-kbl-2/igt@dmabuf@all-tests@sanitycheck.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][6] ([i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#5334] / [i915#7872])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][9] -> [DMESG-FAIL][10] ([i915#5334])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#6645])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][12] -> [ABORT][13] ([i915#8442] / [i915#8668])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][14] ([i915#3708] / [i915#4077]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#3708]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][16] ([i915#6311]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-mtlp-8:         [ABORT][18] ([i915#7077] / [i915#7977] / [i915#8668]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13569 -> Patchwork_120456v12

  CI-20190529: 20190529
  CI_DRM_13569: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7454: 7454
  Patchwork_120456v12: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

903b4d6ac5e2 drm/i915/display: Compare the readout dsc pps params
bcbbcbd045f7 drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
37042b074d7d drm/i915/vdsc: Remove unused dsc registers
15ca4a58b431 drm/i915/vdsc: Add function to write in PPS register
e27574b10724 drm/i915/vdsc: Add function to read any PPS register
51a5c4cd5171 drm/i915/vdsc: Add func to get no. of vdsc instances per pipe
1ebddc41af56 drm/i915/vdsc: Add a check for dsc split cases
9fff6411d48d drm/i915/vdsc: Refactor dsc register field macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/index.html

--===============5808150352585734814==
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
<tr><td><b>Series:</b></td><td>Add DSC PPS readout (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120456/">https://patchwork.freedesktop.org/series/120456/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13569 -&gt; Patchwork_120456v12</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): bat-rpls-2 bat-atsm-1 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120456v12 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-kbl-2/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-kbl-2/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-kbl-2/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-kbl-2/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13569/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v12/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13569 -&gt; Patchwork_120456v12</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13569: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7454: 7454<br />
  Patchwork_120456v12: eb0ba85982a1832f4a61954c3fb99ac3e3f2e076 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>903b4d6ac5e2 drm/i915/display: Compare the readout dsc pps params<br />
bcbbcbd045f7 drm/i915/vdsc: Fill the intel_dsc_get_pps_config function<br />
37042b074d7d drm/i915/vdsc: Remove unused dsc registers<br />
15ca4a58b431 drm/i915/vdsc: Add function to write in PPS register<br />
e27574b10724 drm/i915/vdsc: Add function to read any PPS register<br />
51a5c4cd5171 drm/i915/vdsc: Add func to get no. of vdsc instances per pipe<br />
1ebddc41af56 drm/i915/vdsc: Add a check for dsc split cases<br />
9fff6411d48d drm/i915/vdsc: Refactor dsc register field macro</p>

</body>
</html>

--===============5808150352585734814==--
