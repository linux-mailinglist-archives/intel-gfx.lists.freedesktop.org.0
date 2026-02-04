Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0bW3M5vcg2lOvAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 00:56:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A2ED5C7
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 00:56:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D4A10E77D;
	Wed,  4 Feb 2026 23:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1959510E77D;
 Wed,  4 Feb 2026 23:56:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6789537656760435313=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gem=3A_Explicitl?=
 =?utf-8?q?y_return_error_value_from_eb=5Frelocate_helpers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Feb 2026 23:56:08 -0000
Message-ID: <177024936807.225549.10199405947580865266@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260204230307.81289-2-jonathan.cavitt@intel.com>
In-Reply-To: <20260204230307.81289-2-jonathan.cavitt@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reload:email,gem_exec_gttfill:email,live:email,01.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,load:email,gitlab.freedesktop.org:url,i915_selftest:email,basic:email]
X-Rspamd-Queue-Id: 250A2ED5C7
X-Rspamd-Action: no action

--===============6789537656760435313==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Explicitly return error value from eb_relocate helpers
URL   : https://patchwork.freedesktop.org/series/161167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17933 -> Patchwork_161167v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_161167v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_161167v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_161167v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - bat-apl-1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-apl-1/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-apl-1/igt@gem_exec_gttfill@basic.html
    - fi-bsw-nick:        [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-nick/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-nick/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@load:
    - bat-jsl-1:          [PASS][5] -> [FAIL][6] +1 other test fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-jsl-1/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-jsl-1/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][7] -> [FAIL][8] +1 other test fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-n3050/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][9] -> [FAIL][10] +1 other test fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-8809g/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-apl-1/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-apl-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][13] -> [FAIL][14] +1 other test fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-tgl-1115g4/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-nick/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-glk-j4005:       [PASS][17] -> [FAIL][18] +1 other test fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-glk-j4005/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-glk-j4005/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][19] -> [FAIL][20] +1 other test fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-7567u/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-7567u/igt@i915_module_load@reload.html
    - bat-jsl-5:          [PASS][21] -> [FAIL][22] +1 other test fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-jsl-5/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-jsl-5/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][23] -> [FAIL][24] +1 other test fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-guc/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][25] -> [FAIL][26] +1 other test fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-x1275/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][27] -> [FAIL][28] +1 other test fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-8109u/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][29] -> [FAIL][30] +1 other test fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-skl-6600u/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][31] -> [FAIL][32] +1 other test fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-8700k/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-8700k/igt@i915_module_load@reload.html
    - bat-kbl-2:          [PASS][33] -> [FAIL][34] +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-kbl-2/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-kbl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_161167v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][35] -> [INCOMPLETE][36] ([i915#15622])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@memory_region:
    - bat-arlh-3:         [PASS][37] -> [INCOMPLETE][38] ([i915#15630])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live@memory_region.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][39] -> [DMESG-FAIL][40] ([i915#12061])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#15622]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622
  [i915#15630]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15630


Build changes
-------------

  * Linux: CI_DRM_17933 -> Patchwork_161167v1

  CI-20190529: 20190529
  CI_DRM_17933: 55e3e3aeecf80d9fd2536acd8ed785282be5a7b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8736: 8736
  Patchwork_161167v1: 55e3e3aeecf80d9fd2536acd8ed785282be5a7b3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/index.html

--===============6789537656760435313==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Explicitly return error value from eb_relocate helpers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/161167/">https://patchwork.freedesktop.org/series/161167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17933 -&gt; Patchwork_161167v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_161167v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_161167v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_161167v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-apl-1/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-apl-1/igt@gem_exec_gttfill@basic.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-nick/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-nick/igt@gem_exec_gttfill@basic.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-jsl-1/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-n3050/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-8809g/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-apl-1/igt@i915_module_load@load.html">FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-tgl-1115g4/igt@i915_module_load@load.html">FAIL</a> +1 other test fail</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-bsw-nick/igt@i915_module_load@load.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-glk-j4005/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-glk-j4005/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-7567u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-jsl-5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-jsl-5/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-guc/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-kbl-x1275/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-8109u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-skl-6600u/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/fi-cfl-8700k/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-kbl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-kbl-2/igt@i915_module_load@reload.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161167v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622">i915#15622</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live@memory_region.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15630">i915#15630</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17933/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17933 -&gt; Patchwork_161167v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17933: 55e3e3aeecf80d9fd2536acd8ed785282be5a7b3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8736: 8736<br />
  Patchwork_161167v1: 55e3e3aeecf80d9fd2536acd8ed785282be5a7b3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6789537656760435313==--
