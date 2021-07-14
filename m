Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7053C7DA1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 06:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559AD6E159;
	Wed, 14 Jul 2021 04:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8780F6E165;
 Wed, 14 Jul 2021 04:51:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 811B4A7DFC;
 Wed, 14 Jul 2021 04:51:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 14 Jul 2021 04:51:35 -0000
Message-ID: <162623829550.13706.9466930902698756750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQmVn?=
 =?utf-8?q?in_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1350549715=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1350549715==
Content-Type: multipart/alternative;
 boundary="===============1513591212640510553=="

--===============1513591212640510553==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev5)
URL   : https://patchwork.freedesktop.org/series/92135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10344 -> Patchwork_20594
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20594/index.html

Known issues
------------

  Here are the changes found in Patchwork_20594 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ilk-m540 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10344 -> Patchwork_20594

  CI-20190529: 20190529
  CI_DRM_10344: ea6974acd4fe82ca98cc1390b21af67d63c22471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6138: 92bf2c7865037e18946d4c3d705587c8e8c3d1b8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20594: f6a30552f5db556b888f087a8c82d96fed6345ad @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f6a30552f5db drm/i915/dg2: Configure PCON in DP pre-enable path
e55707db0df5 drm/i915/dg2: Update to bigjoiner path
d63a6e0c0ca0 drm/i915/dg2: Add DG2 to the PSR2 defeature list
e35083bdfa80 drm/i915/dg2: Update lane disable power state during PSR
182f9e301051 drm/i915/dg2: Wait for SNPS PHY calibration during display init
9982d7730067 drm/i915/dg2: Classify DG2 PHY types
b46c8d88fd33 drm/i915/dg2: Update modeset sequences
fd3f99d8c087 drm/i915/dg2: Add vswing programming for SNPS phys
89d6432d3673 drm/i915/dg2: Add MPLLB programming for HDMI
689792bb94d6 drm/i915/dg2: Add MPLLB programming for SNPS PHY
118fc85a94ad drm/i915/dg2: DG2 has fixed memory bandwidth
60aa12c033cf drm/i915/dg2: Don't read DRAM info
cc08e720e5ae drm/i915/dg2: Don't program BW_BUDDY registers
3a7526efaf70 drm/i915/dg2: Add dbuf programming
f3d519fa8374 drm/i915/dg2: Setup display outputs
8119ad7f31ee drm/i915/dg2: Don't wait for AUX power well enable ACKs
76524872d616 drm/i915/dg2: Skip shared DPLL handling
dfa122ad3f15 drm/i915/dg2: Add cdclk table and reference clock
dd67eb915449 drm/i915/dg2: Add fake PCH
1ae2606f06f9 drm/i915/dg2: Define MOCS table for DG2
c4f3a58eb9b9 drm/i915/dg2: Report INSTDONE_GEOM values in error state
c6bfb5cac52e drm/i915/dg2: Maintain backward-compatible nested batch behavior
56c13089d010 drm/i915/dg2: Add new LRI reg offsets
ed945621c3f2 drm/i915/dg2: Add SQIDI steering
1232841b09bc drm/i915/dg2: Update LNCF steering ranges
462ae54b609e drm/i915/dg2: Add forcewake table
8527f182dc41 drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV
8d231c0c99c3 drm/i915/dg2: add DG2 platform info
edd8638b9ce9 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
638ddf4e9d14 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
5cd632524fbb drm/i915/xehpsdv: Define MOCS table for XeHP SDV
70410e269067 drm/i915/xehpsdv: Define steering tables
9beeacbb8d15 drm/i915/xehpsdv: Add compute DSS type
381532783086 drm/i915/xehpsdv: Add maximum sseu limits
b359a5197220 drm/i915/xehp: Changes to ss/eu definitions
559ec30fa734 drm/i915/xehpsdv: add initial XeHP SDV definitions
f983b1241a0f drm/i915/xehp: Loop over all gslices for INSTDONE processing
733505aa0488 drm/i915/xehp: handle new steering options
e6c034ba7a58 drm/i915/xehp: New engine context offsets
f5a167391d70 drm/i915/xehp: Handle new device context ID format
12a2020fa1fc drm/i915/xehp: Define multicast register ranges
04721d135106 drm/i915/xehp: Xe_HP forcewake support
99c452861f03 drm/i915/xehp: Extra media engines - Part 3 (reset)
6f3c6efb8015 drm/i915/xehp: Extra media engines - Part 2 (interrupts)
75088f6dd8c2 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
25d8fcda069c drm/i915/selftests: Allow for larger engine counts
00fe5bfd2f5b drm/i915/gen12: Use fuse info to enable SFC
371d21e168c4 drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based
8bb98dab1d23 drm/i915: Fork DG1 interrupt handler
7a5fbcb1f150 drm/i915: Add XE_HP initial definitions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20594/index.html

--===============1513591212640510553==
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
<tr><td><b>Series:</b></td><td>Begin enabling Xe_HP SDV and DG2 platforms (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92135/">https://patchwork.freedesktop.org/series/92135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20594/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20594/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10344 -&gt; Patchwork_20594</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20594/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20594 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ilk-m540 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10344 -&gt; Patchwork_20594</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10344: ea6974acd4fe82ca98cc1390b21af67d63c22471 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6138: 92bf2c7865037e18946d4c3d705587c8e8c3d1b8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20594: f6a30552f5db556b888f087a8c82d96fed6345ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f6a30552f5db drm/i915/dg2: Configure PCON in DP pre-enable path<br />
e55707db0df5 drm/i915/dg2: Update to bigjoiner path<br />
d63a6e0c0ca0 drm/i915/dg2: Add DG2 to the PSR2 defeature list<br />
e35083bdfa80 drm/i915/dg2: Update lane disable power state during PSR<br />
182f9e301051 drm/i915/dg2: Wait for SNPS PHY calibration during display init<br />
9982d7730067 drm/i915/dg2: Classify DG2 PHY types<br />
b46c8d88fd33 drm/i915/dg2: Update modeset sequences<br />
fd3f99d8c087 drm/i915/dg2: Add vswing programming for SNPS phys<br />
89d6432d3673 drm/i915/dg2: Add MPLLB programming for HDMI<br />
689792bb94d6 drm/i915/dg2: Add MPLLB programming for SNPS PHY<br />
118fc85a94ad drm/i915/dg2: DG2 has fixed memory bandwidth<br />
60aa12c033cf drm/i915/dg2: Don't read DRAM info<br />
cc08e720e5ae drm/i915/dg2: Don't program BW_BUDDY registers<br />
3a7526efaf70 drm/i915/dg2: Add dbuf programming<br />
f3d519fa8374 drm/i915/dg2: Setup display outputs<br />
8119ad7f31ee drm/i915/dg2: Don't wait for AUX power well enable ACKs<br />
76524872d616 drm/i915/dg2: Skip shared DPLL handling<br />
dfa122ad3f15 drm/i915/dg2: Add cdclk table and reference clock<br />
dd67eb915449 drm/i915/dg2: Add fake PCH<br />
1ae2606f06f9 drm/i915/dg2: Define MOCS table for DG2<br />
c4f3a58eb9b9 drm/i915/dg2: Report INSTDONE_GEOM values in error state<br />
c6bfb5cac52e drm/i915/dg2: Maintain backward-compatible nested batch behavior<br />
56c13089d010 drm/i915/dg2: Add new LRI reg offsets<br />
ed945621c3f2 drm/i915/dg2: Add SQIDI steering<br />
1232841b09bc drm/i915/dg2: Update LNCF steering ranges<br />
462ae54b609e drm/i915/dg2: Add forcewake table<br />
8527f182dc41 drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV<br />
8d231c0c99c3 drm/i915/dg2: add DG2 platform info<br />
edd8638b9ce9 drm/i915/xehpsdv: Read correct RP_STATE_CAP register<br />
638ddf4e9d14 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP<br />
5cd632524fbb drm/i915/xehpsdv: Define MOCS table for XeHP SDV<br />
70410e269067 drm/i915/xehpsdv: Define steering tables<br />
9beeacbb8d15 drm/i915/xehpsdv: Add compute DSS type<br />
381532783086 drm/i915/xehpsdv: Add maximum sseu limits<br />
b359a5197220 drm/i915/xehp: Changes to ss/eu definitions<br />
559ec30fa734 drm/i915/xehpsdv: add initial XeHP SDV definitions<br />
f983b1241a0f drm/i915/xehp: Loop over all gslices for INSTDONE processing<br />
733505aa0488 drm/i915/xehp: handle new steering options<br />
e6c034ba7a58 drm/i915/xehp: New engine context offsets<br />
f5a167391d70 drm/i915/xehp: Handle new device context ID format<br />
12a2020fa1fc drm/i915/xehp: Define multicast register ranges<br />
04721d135106 drm/i915/xehp: Xe_HP forcewake support<br />
99c452861f03 drm/i915/xehp: Extra media engines - Part 3 (reset)<br />
6f3c6efb8015 drm/i915/xehp: Extra media engines - Part 2 (interrupts)<br />
75088f6dd8c2 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)<br />
25d8fcda069c drm/i915/selftests: Allow for larger engine counts<br />
00fe5bfd2f5b drm/i915/gen12: Use fuse info to enable SFC<br />
371d21e168c4 drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based<br />
8bb98dab1d23 drm/i915: Fork DG1 interrupt handler<br />
7a5fbcb1f150 drm/i915: Add XE_HP initial definitions</p>

</body>
</html>

--===============1513591212640510553==--

--===============1350549715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1350549715==--
