Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T41eBvr9VWoSxgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:14:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 699D3752B6F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:14:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C04110E021;
	Tue, 14 Jul 2026 09:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B69610E021;
 Tue, 14 Jul 2026 09:14:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5817366065347184085=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display/xe3p=3A_?=
 =?utf-8?q?Interpret_0xF_populated-channel_count_as_16?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2026 09:14:30 -0000
Message-ID: <178402047055.187448.3428811362864778689@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260714082651.4104132-1-uma.shankar@intel.com>
In-Reply-To: <20260714082651.4104132-1-uma.shankar@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emeril.freedesktop.org:from_mime,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 699D3752B6F

--===============5817366065347184085==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/xe3p: Interpret 0xF populated-channel count as 16
URL   : https://patchwork.freedesktop.org/series/170389/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18816 -> Patchwork_170389v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): bat-dg2-13 fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_170389v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [DMESG-WARN][1] ([i915#16404]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18816/bat-arlh-2/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/bat-arlh-2/igt@i915_selftest@live.html

  
  [i915#16404]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16404


Build changes
-------------

  * Linux: CI_DRM_18816 -> Patchwork_170389v1

  CI-20190529: 20190529
  CI_DRM_18816: 4df02bb6acd1307de4de001699112cbdaf5afdfc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_9005: 5d0cdd6f2f5d3ad4992da1edf67f22622a8bb153 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_170389v1: 4df02bb6acd1307de4de001699112cbdaf5afdfc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/index.html

--===============5817366065347184085==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/xe3p: Interpret 0xF populated-channel count as 16</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/170389/">https://patchwork.freedesktop.org/series/170389/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18816 -&gt; Patchwork_170389v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): bat-dg2-13 fi-glk-j4005 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_170389v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18816/bat-arlh-2/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16404">i915#16404</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_170389v1/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18816 -&gt; Patchwork_170389v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18816: 4df02bb6acd1307de4de001699112cbdaf5afdfc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_9005: 5d0cdd6f2f5d3ad4992da1edf67f22622a8bb153 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_170389v1: 4df02bb6acd1307de4de001699112cbdaf5afdfc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5817366065347184085==--
