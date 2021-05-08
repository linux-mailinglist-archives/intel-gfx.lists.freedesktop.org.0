Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA812376F48
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 05:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99766E84B;
	Sat,  8 May 2021 03:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D5146E84B;
 Sat,  8 May 2021 03:50:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E339A0169;
 Sat,  8 May 2021 03:50:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 08 May 2021 03:50:46 -0000
Message-ID: <162044584628.3596.891565117283596584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWxk?=
 =?utf-8?q?er_Lake-P_Support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0124585110=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0124585110==
Content-Type: multipart/alternative;
 boundary="===============8335367040309066415=="

--===============8335367040309066415==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Alder Lake-P Support (rev2)
URL   : https://patchwork.freedesktop.org/series/89899/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10060 -> Patchwork_20091
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20091:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-1115g4}:    NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/fi-tgl-1115g4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bdw-gvtdvm fi-ilk-m540 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10060 -> Patchwork_20091

  CI-20190529: 20190529
  CI_DRM_10060: ca1f02fd329bec1a62fc515647b1fd2ecc6b7aac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20091: 379e0be23f047890cdd58c4ca44f2ab9029eb00e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

379e0be23f04 drm/i915/perf: Enable OA formats for ADL_P
c6bebd2308a2 drm/i915/adl_p: Disable CCS on a-step (Wa_22011186057)
6c629895ef1a drm/i915/display/adl_p: Implement Wa_22011320316
706e22d8d64c drm/i915/adl_p: Implement Wa_22011091694
873e70b36f89 drm/i915/adl_p: Add IPs stepping mapping
50a252b4a002 drm/i915/adl_p: Update memory bandwidth parameters
339f29d0da3f drm/i915/adlp: Add PIPE_MISC2 programming
2859e7a26f76 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
c919653d488b drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
1f56c398ed97 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
8b77135caf2c drm/i915/adl_p: Program DP/HDMI link rate to DDI_BUF_CTL
f1a2e79c34cc drm/i915/adl_p: Add PLL Support
0b872982349a drm/i915/adl_p: Enable/disable loadgen sharing
38f0185bbe0e drm/i915/adl_p: Define and use ADL-P specific DP translation tables
34b2e80ee8c8 drm/i915/display: Introduce new intel_psr_pause/resume function
bca93cbf5918 drm/i915/display: Add PSR interrupt error check function
e3d2f3d8e800 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()
37e0eb134827 drm/i915/display: Replace dc3co_enabled with dc3co_exitline on intel_psr struct
a3bd392378ed drm/i915/adl_p: Tx escape clock with DSI
23743ef20e3e drm/i915/adl_p: MBUS programming
075f6d078c7f drm/i915: Move intel_modeset_all_pipes()
17add1f707f3 drm/i915: Introduce MBUS relative dbuf offsets
c400a5672183 drm/i915/adl_p: Add ddb allocation support
de648c5cfcdd drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
4c9202704607 drm/i915/adl_p: Enable modular fia
6a77eb96eadb drm/i915/adl_p: Implement TC sequences
bcbfac5840a5 drm/i915/adl_p: Handle TC cold
64297fea6102 drm/i915/display/tc: Rename safe_mode functions ownership
0a98c7eb58a4 drm/i915/adl_p: Add cdclk support for ADL-P
5608185661ae drm/i915/adl_p: Setup ports/phys
2beede9590f0 drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
62c7114fb15a drm/i915/adl_p: Add dedicated SAGV watermarks
172c8c97b24c drm/i915/adl_p: Add PCH support
01726de55f6e drm/i915/xelpd: Provide port/phy mapping for vbt
399cb3269226 drm/i915/xelpd: Add VRR guardband for VRR CTL
f6216e9e9950 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
a62c87014d6e drm/i915/xelpd: Calculate VDSC RC parameters
1733e1391418 drm/i915: Get slice height before computing rc params
a84964ed0f9d drm/i915/xelpd: Support DP1.4 compression BPPs
70c3509ba166 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
3a868413743b drm/i915/xelpd: Add Wa_14011503030
11ef5b059192 drm/i915/xelpd: Required bandwidth increases when VT-d is active
ec8e4ff3faf8 drm/i915/xelpd: Increase maximum watermark lines to 255
2737fb6d9b50 drm/i915/xelpd: Add XE_LPD power wells
abc805f00044 drm/i915/xelpd: Handle new location of outputs D and E
07183c19b8aa drm/i915/xelpd: Define plane capabilities
3ecdad37cbcd drm/i915/xelpd: Enhanced pipe underrun reporting
a5348dda9410 drm/i915/xelpd: Handle proper AUX interrupt bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/index.html

--===============8335367040309066415==
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
<tr><td><b>Series:</b></td><td>Alder Lake-P Support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89899/">https://patchwork.freedesktop.org/series/89899/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10060 -&gt; Patchwork_20091</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20091:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{fi-tgl-1115g4}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20091/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bdw-gvtdvm fi-ilk-m540 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10060 -&gt; Patchwork_20091</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10060: ca1f02fd329bec1a62fc515647b1fd2ecc6b7aac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6081: fdff4bba7abf9cb7c8ea21abf14e36d344ebb8c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20091: 379e0be23f047890cdd58c4ca44f2ab9029eb00e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>379e0be23f04 drm/i915/perf: Enable OA formats for ADL_P<br />
c6bebd2308a2 drm/i915/adl_p: Disable CCS on a-step (Wa_22011186057)<br />
6c629895ef1a drm/i915/display/adl_p: Implement Wa_22011320316<br />
706e22d8d64c drm/i915/adl_p: Implement Wa_22011091694<br />
873e70b36f89 drm/i915/adl_p: Add IPs stepping mapping<br />
50a252b4a002 drm/i915/adl_p: Update memory bandwidth parameters<br />
339f29d0da3f drm/i915/adlp: Add PIPE_MISC2 programming<br />
2859e7a26f76 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner<br />
c919653d488b drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner<br />
1f56c398ed97 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner<br />
8b77135caf2c drm/i915/adl_p: Program DP/HDMI link rate to DDI_BUF_CTL<br />
f1a2e79c34cc drm/i915/adl_p: Add PLL Support<br />
0b872982349a drm/i915/adl_p: Enable/disable loadgen sharing<br />
38f0185bbe0e drm/i915/adl_p: Define and use ADL-P specific DP translation tables<br />
34b2e80ee8c8 drm/i915/display: Introduce new intel_psr_pause/resume function<br />
bca93cbf5918 drm/i915/display: Add PSR interrupt error check function<br />
e3d2f3d8e800 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()<br />
37e0eb134827 drm/i915/display: Replace dc3co_enabled with dc3co_exitline on intel_psr struct<br />
a3bd392378ed drm/i915/adl_p: Tx escape clock with DSI<br />
23743ef20e3e drm/i915/adl_p: MBUS programming<br />
075f6d078c7f drm/i915: Move intel_modeset_all_pipes()<br />
17add1f707f3 drm/i915: Introduce MBUS relative dbuf offsets<br />
c400a5672183 drm/i915/adl_p: Add ddb allocation support<br />
de648c5cfcdd drm/i915/adl_p: Don't config MBUS and DBUF during display initialization<br />
4c9202704607 drm/i915/adl_p: Enable modular fia<br />
6a77eb96eadb drm/i915/adl_p: Implement TC sequences<br />
bcbfac5840a5 drm/i915/adl_p: Handle TC cold<br />
64297fea6102 drm/i915/display/tc: Rename safe_mode functions ownership<br />
0a98c7eb58a4 drm/i915/adl_p: Add cdclk support for ADL-P<br />
5608185661ae drm/i915/adl_p: Setup ports/phys<br />
2beede9590f0 drm/i915/adl_p: Extend PLANE_WM bits for blocks &amp; lines<br />
62c7114fb15a drm/i915/adl_p: Add dedicated SAGV watermarks<br />
172c8c97b24c drm/i915/adl_p: Add PCH support<br />
01726de55f6e drm/i915/xelpd: Provide port/phy mapping for vbt<br />
399cb3269226 drm/i915/xelpd: Add VRR guardband for VRR CTL<br />
f6216e9e9950 drm/i915/xelpd: Add rc_qp_table for rcparams calculation<br />
a62c87014d6e drm/i915/xelpd: Calculate VDSC RC parameters<br />
1733e1391418 drm/i915: Get slice height before computing rc params<br />
a84964ed0f9d drm/i915/xelpd: Support DP1.4 compression BPPs<br />
70c3509ba166 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp<br />
3a868413743b drm/i915/xelpd: Add Wa_14011503030<br />
11ef5b059192 drm/i915/xelpd: Required bandwidth increases when VT-d is active<br />
ec8e4ff3faf8 drm/i915/xelpd: Increase maximum watermark lines to 255<br />
2737fb6d9b50 drm/i915/xelpd: Add XE_LPD power wells<br />
abc805f00044 drm/i915/xelpd: Handle new location of outputs D and E<br />
07183c19b8aa drm/i915/xelpd: Define plane capabilities<br />
3ecdad37cbcd drm/i915/xelpd: Enhanced pipe underrun reporting<br />
a5348dda9410 drm/i915/xelpd: Handle proper AUX interrupt bits</p>

</body>
</html>

--===============8335367040309066415==--

--===============0124585110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0124585110==--
