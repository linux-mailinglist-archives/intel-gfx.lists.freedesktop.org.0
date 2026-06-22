Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +A32NXaIOWqNuwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 21:09:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F7D6B2022
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 21:09:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B904110E7F4;
	Mon, 22 Jun 2026 19:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D0610E30F;
 Mon, 22 Jun 2026 19:09:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1364689624279072922=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev17=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2026 19:09:39 -0000
Message-ID: <178215537922.102902.5432414603444374048@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260622181044.39335-1-dev@lankhorst.se>
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24F7D6B2022

--===============1364689624279072922==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev17)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18707 -> Patchwork_159035v17
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159035v17 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v17, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): bat-dg2-13 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v17:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-bsw-n3050/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-6/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-6/igt@i915_module_load@load.html
    - bat-arlh-2:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arlh-2/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arlh-2/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-rkl-11600/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-skl-6600u/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-skl-6600u/igt@i915_module_load@load.html
    - bat-arlh-3:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arlh-3/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arlh-3/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg1-7/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg1-7/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-glk-j4005/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-9/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-twl-2/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-twl-2/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-rpls-4/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-rpls-4/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-8700k/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-twl-1/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-twl-1/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-8809g/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-jsl-5:          [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-jsl-5/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-jsl-5/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-apl-1/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-apl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-14/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-14/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-bsw-nick/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-bsw-nick/igt@i915_module_load@load.html
    - bat-kbl-2:          [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-kbl-2/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-kbl-2/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arls-5/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arls-5/igt@i915_module_load@load.html
    - bat-rplp-1:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-rplp-1/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-rplp-1/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-tgl-1115g4/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-tgl-1115g4/igt@i915_module_load@load.html
    - bat-atsm-1:         [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-atsm-1/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-atsm-1/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-guc/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-9:         [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-mtlp-9/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-mtlp-9/igt@i915_module_load@load.html
    - bat-arls-6:         [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arls-6/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arls-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-9/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-9/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-x1275/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-x1275/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-11/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-11/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-hsw-4770/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-8109u/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-ivb-3770/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-mtlp-8/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-mtlp-8/igt@i915_module_load@load.html
    - bat-dg1-6:          [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg1-6/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg1-6/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-8/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-8/igt@i915_module_load@load.html
    - bat-adls-6:         [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adls-6/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adls-6/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_159035v17 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - fi-kbl-7567u:       [DMESG-WARN][73] ([i915#13735] / [i915#15673] / [i915#180]) -> [ABORT][74] ([i915#180])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-7567u/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-7567u/igt@i915_module_load@load.html

  
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#15673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15673
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180


Build changes
-------------

  * Linux: CI_DRM_18707 -> Patchwork_159035v17

  CI-20190529: 20190529
  CI_DRM_18707: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8976: 8976
  Patchwork_159035v17: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/index.html

--===============1364689624279072922==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev17)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18707 -&gt; Patchwork_159035v17</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159035v17 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v17, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): bat-dg2-13 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v17:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arlh-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-8809g/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-jsl-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-jsl-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-kbl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-kbl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-arls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-arls-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg1-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg1-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v17 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18707/fi-kbl-7567u/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15673">i915#15673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v17/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18707 -&gt; Patchwork_159035v17</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18707: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8976: 8976<br />
  Patchwork_159035v17: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1364689624279072922==--
