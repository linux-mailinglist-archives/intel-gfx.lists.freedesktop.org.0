Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A3C3D426D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 23:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6726FCFF;
	Fri, 23 Jul 2021 21:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 711E16FCF1;
 Fri, 23 Jul 2021 21:51:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A58EA47E1;
 Fri, 23 Jul 2021 21:51:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 23 Jul 2021 21:51:39 -0000
Message-ID: <162707709941.3043.4756712641817223855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQmVn?=
 =?utf-8?q?in_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0895624125=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0895624125==
Content-Type: multipart/alternative;
 boundary="===============2930292341560582588=="

--===============2930292341560582588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev6)
URL   : https://patchwork.freedesktop.org/series/92135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10382 -> Patchwork_20698
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/index.html

Known issues
------------

  Here are the changes found in Patchwork_20698 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-tgl-1115g4:      [PASS][1] -> [DMESG-WARN][2] ([i915#1887])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][3] ([i915#1602])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][4] ([i915#3303]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10382 -> Patchwork_20698

  CI-20190529: 20190529
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20698: bcdeb7e1edf0bcaf0131923ff8fec88d6da379d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bcdeb7e1edf0 drm/i915/dg2: Configure PCON in DP pre-enable path
76199f2888ef drm/i915/dg2: Update to bigjoiner path
aa3166a1e277 drm/i915/dg2: Update lane disable power state during PSR
e45963bba93a drm/i915/dg2: Wait for SNPS PHY calibration during display init
c17b50b62625 drm/i915/dg2: Update modeset sequences
b1efd88312b8 drm/i915/dg2: Add vswing programming for SNPS phys
ba80b83c84a9 drm/i915/dg2: Add MPLLB programming for HDMI
2f1319f28f47 drm/i915/dg2: Add MPLLB programming for SNPS PHY
a4f5ef996270 drm/i915/dg2: Define MOCS table for DG2
6a189a7ddf4d drm/i915/dg2: Report INSTDONE_GEOM values in error state
9542a06a5a35 drm/i915/dg2: Maintain backward-compatible nested batch behavior
e1706eba9559 drm/i915/dg2: Add new LRI reg offsets
f7b8d3a066bf drm/i915/dg2: Add SQIDI steering
134cfcfd9c84 drm/i915/dg2: Update LNCF steering ranges
1ace9a8d1b2a drm/i915/dg2: Add forcewake table
4057f5104c28 drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV
da9489e90eda drm/i915/xehpsdv: Read correct RP_STATE_CAP register
83b0be478cb4 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
3def48fb4238 drm/i915/xehpsdv: Define MOCS table for XeHP SDV
0a73f890d107 drm/i915/xehpsdv: Define steering tables
278d359e56da drm/i915/xehpsdv: Add compute DSS type
94a690b2b730 drm/i915/xehpsdv: Add maximum sseu limits
456e57370fcd drm/i915/xehp: Changes to ss/eu definitions
21933a40845a drm/i915/xehp: Loop over all gslices for INSTDONE processing
70b1a7998cf4 drm/i915/xehp: handle new steering options
2b3f9bef9095 drm/i915/xehp: Xe_HP forcewake support
25bc3daa002b drm/i915/xehp: Extra media engines - Part 3 (reset)
3f65d319057d drm/i915/xehp: Extra media engines - Part 2 (interrupts)
42a1f6157116 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
f90c0193e566 drm/i915/xehpsdv: Correct parameters for IS_XEHPSDV_GT_STEP()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/index.html

--===============2930292341560582588==
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
<tr><td><b>Series:</b></td><td>Begin enabling Xe_HP SDV and DG2 platforms (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92135/">https://patchwork.freedesktop.org/series/92135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10382 -&gt; Patchwork_20698</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20698 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20698/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10382 -&gt; Patchwork_20698</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20698: bcdeb7e1edf0bcaf0131923ff8fec88d6da379d2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bcdeb7e1edf0 drm/i915/dg2: Configure PCON in DP pre-enable path<br />
76199f2888ef drm/i915/dg2: Update to bigjoiner path<br />
aa3166a1e277 drm/i915/dg2: Update lane disable power state during PSR<br />
e45963bba93a drm/i915/dg2: Wait for SNPS PHY calibration during display init<br />
c17b50b62625 drm/i915/dg2: Update modeset sequences<br />
b1efd88312b8 drm/i915/dg2: Add vswing programming for SNPS phys<br />
ba80b83c84a9 drm/i915/dg2: Add MPLLB programming for HDMI<br />
2f1319f28f47 drm/i915/dg2: Add MPLLB programming for SNPS PHY<br />
a4f5ef996270 drm/i915/dg2: Define MOCS table for DG2<br />
6a189a7ddf4d drm/i915/dg2: Report INSTDONE_GEOM values in error state<br />
9542a06a5a35 drm/i915/dg2: Maintain backward-compatible nested batch behavior<br />
e1706eba9559 drm/i915/dg2: Add new LRI reg offsets<br />
f7b8d3a066bf drm/i915/dg2: Add SQIDI steering<br />
134cfcfd9c84 drm/i915/dg2: Update LNCF steering ranges<br />
1ace9a8d1b2a drm/i915/dg2: Add forcewake table<br />
4057f5104c28 drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV<br />
da9489e90eda drm/i915/xehpsdv: Read correct RP_STATE_CAP register<br />
83b0be478cb4 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP<br />
3def48fb4238 drm/i915/xehpsdv: Define MOCS table for XeHP SDV<br />
0a73f890d107 drm/i915/xehpsdv: Define steering tables<br />
278d359e56da drm/i915/xehpsdv: Add compute DSS type<br />
94a690b2b730 drm/i915/xehpsdv: Add maximum sseu limits<br />
456e57370fcd drm/i915/xehp: Changes to ss/eu definitions<br />
21933a40845a drm/i915/xehp: Loop over all gslices for INSTDONE processing<br />
70b1a7998cf4 drm/i915/xehp: handle new steering options<br />
2b3f9bef9095 drm/i915/xehp: Xe_HP forcewake support<br />
25bc3daa002b drm/i915/xehp: Extra media engines - Part 3 (reset)<br />
3f65d319057d drm/i915/xehp: Extra media engines - Part 2 (interrupts)<br />
42a1f6157116 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)<br />
f90c0193e566 drm/i915/xehpsdv: Correct parameters for IS_XEHPSDV_GT_STEP()</p>

</body>
</html>

--===============2930292341560582588==--

--===============0895624125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0895624125==--
