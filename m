Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEiOCzbTsmnrPwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 15:52:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8777A273AB0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 15:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDCF10E08B;
	Thu, 12 Mar 2026 14:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9F010E08B;
 Thu, 12 Mar 2026 14:52:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6239081884843647943=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dmc=3A_Update_PI?=
 =?utf-8?q?PEDMC_interrupt_mask/?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2026 14:52:34 -0000
Message-ID: <177332715429.351130.15945454995251477833@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
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
	NEURAL_HAM(-0.00)[-0.891];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,inject-audio:email,patchwork.freedesktop.org:url,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 8777A273AB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6239081884843647943==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Update PIPEDMC interrupt mask/
URL   : https://patchwork.freedesktop.org/series/163114/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18136 -> Patchwork_163114v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): bat-dg2-13 fi-snb-2520m bat-twl-2 

Known issues
------------

  Here are the changes found in Patchwork_163114v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [FAIL][1] ([i915#14867]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18136/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867


Build changes
-------------

  * Linux: CI_DRM_18136 -> Patchwork_163114v1

  CI-20190529: 20190529
  CI_DRM_18136: 72190ebdd4c0e9a2b454b04ba382beeb6020e047 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8798: 8798
  Patchwork_163114v1: 72190ebdd4c0e9a2b454b04ba382beeb6020e047 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/index.html

--===============6239081884843647943==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Update PIPEDMC interrupt mask/</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/163114/">https://patchwork.freedesktop.org/series/163114/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18136 -&gt; Patchwork_163114v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): bat-dg2-13 fi-snb-2520m bat-twl-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_163114v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18136/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163114v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18136 -&gt; Patchwork_163114v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18136: 72190ebdd4c0e9a2b454b04ba382beeb6020e047 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8798: 8798<br />
  Patchwork_163114v1: 72190ebdd4c0e9a2b454b04ba382beeb6020e047 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6239081884843647943==--
