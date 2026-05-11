Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OczOZ89AmrmpAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 22:35:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B56F515EEF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 22:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F2010E89E;
	Mon, 11 May 2026 20:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5ab824fced77 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB41810E89E;
 Mon, 11 May 2026 20:35:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4219814092017137115=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/bw=3A_Split_band?=
 =?utf-8?q?width_params_into_platform-_and_display-IP-specific_structs_=28re?=
 =?utf-8?q?v2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2026 20:35:39 -0000
Message-ID: <177853173982.58691.12160505262328888469@5ab824fced77>
X-Patchwork-Hint: ignore
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
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
X-Rspamd-Queue-Id: 2B56F515EEF
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
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.923];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

--===============4219814092017137115==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bw: Split bandwidth params into platform- and display-IP-specific structs (rev2)
URL   : https://patchwork.freedesktop.org/series/164567/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18467 -> Patchwork_164567v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_164567v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_164567v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_164567v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-ilk-650/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-bsw-n3050/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-skl-6600u/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-pnv-d510/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-glk-j4005/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-7567u/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-8700k/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-8809g/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-apl-1/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-apl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-14/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-14/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-elk-e7500/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-bsw-nick/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-bsw-nick/igt@i915_module_load@load.html
    - bat-kbl-2:          [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-kbl-2/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-kbl-2/igt@i915_module_load@load.html
    - bat-atsm-1:         [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-atsm-1/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-atsm-1/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-guc/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-9/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-9/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-x1275/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-hsw-4770/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-8109u/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-ivb-3770/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-8/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-8/igt@i915_module_load@load.html

  


Build changes
-------------

  * Linux: CI_DRM_18467 -> Patchwork_164567v2

  CI-20190529: 20190529
  CI_DRM_18467: f8ee23694aa6be213355905a78f79bb1b0861565 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8902: d28bd0b9e0347c58ca9b012c02de7e2ad5ffe847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_164567v2: f8ee23694aa6be213355905a78f79bb1b0861565 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/index.html

--===============4219814092017137115==
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
<tr><td><b>Series:</b></td><td>drm/i915/bw: Split bandwidth params into platform- and display-IP-specific structs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/164567/">https://patchwork.freedesktop.org/series/164567/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18467 -&gt; Patchwork_164567v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_164567v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_164567v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_164567v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-8809g/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-kbl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-kbl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18467/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v2/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18467 -&gt; Patchwork_164567v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18467: f8ee23694aa6be213355905a78f79bb1b0861565 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8902: d28bd0b9e0347c58ca9b012c02de7e2ad5ffe847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_164567v2: f8ee23694aa6be213355905a78f79bb1b0861565 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4219814092017137115==--
