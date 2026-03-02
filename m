Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJQYJhoapmmeKQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 00:15:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E231E6739
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 00:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF2E10E5F2;
	Mon,  2 Mar 2026 23:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3E610E5E0;
 Mon,  2 Mar 2026 23:15:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1596258581272985625=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_series_starting_with_=5BP?=
 =?utf-8?q?ATCHv3=2C1/2=5D_drm/i915/dp=3A_Read_ALPM_caps_after_DPCD_init?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Mar 2026 23:15:34 -0000
Message-ID: <177249333494.305661.15240084618261013872@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260302132602.480408-1-arun.r.murthy@intel.com>
In-Reply-To: <20260302132602.480408-1-arun.r.murthy@intel.com>
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
X-Rspamd-Queue-Id: B2E231E6739
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.482];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

--===============1596258581272985625==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [PATCHv3,1/2] drm/i915/dp: Read ALPM caps after DPCD init
URL   : https://patchwork.freedesktop.org/series/162419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18073 -> Patchwork_162419v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-dg2-13 fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_162419v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@basic@lmem0:
    - bat-dg1-6:          [PASS][1] -> [ABORT][2] ([i915#15759]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-dg2-9:          [PASS][3] -> [ABORT][4] ([i915#15759]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@client:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-WARN][6] ([i915#13735]) +13 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/fi-kbl-7567u/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/fi-kbl-7567u/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@evict:
    - bat-arls-5:         [PASS][7] -> [DMESG-FAIL][8] ([i915#15738])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@evict.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-5:         [PASS][9] -> [TIMEOUT][10] ([i915#15738])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         [PASS][11] -> [DMESG-WARN][12] ([i915#15738]) +38 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         NOTRUN -> [DMESG-FAIL][13] ([i915#12061]) +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-atsm-1/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-atsm-1:         [ABORT][15] ([i915#15759]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-dg2-14:         [ABORT][17] ([i915#15782]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - bat-dg2-14:         [ABORT][19] ([i915#15759]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-FAIL][21] -> [TIMEOUT][22] ([i915#15738])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-arls-5:         [DMESG-FAIL][23] -> [DMESG-WARN][24] ([i915#15738])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@gt_pm.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#15738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
  [i915#15782]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15782


Build changes
-------------

  * Linux: CI_DRM_18073 -> Patchwork_162419v1

  CI-20190529: 20190529
  CI_DRM_18073: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8776: 8776
  Patchwork_162419v1: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html

--===============1596258581272985625==
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
<tr><td><b>Series:</b></td><td>series starting with [PATCHv3,1/2] drm/i915/dp: Read ALPM caps after DPCD init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162419/">https://patchwork.freedesktop.org/series/162419/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18073 -&gt; Patchwork_162419v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-dg2-13 fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162419v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@lmem0:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/fi-kbl-7567u/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/fi-kbl-7567u/igt@i915_selftest@live@client.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +13 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@evict.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@gem_contexts.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-atsm-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15782">i915#15782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines@lmem0:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-dg2-14/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/bat-arls-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/bat-arls-5/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18073 -&gt; Patchwork_162419v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18073: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8776: 8776<br />
  Patchwork_162419v1: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1596258581272985625==--
