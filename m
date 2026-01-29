Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +I/gBTBte2mMEgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 15:22:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A11CFB0DFA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 15:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281E310E86F;
	Thu, 29 Jan 2026 14:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E462310E873;
 Thu, 29 Jan 2026 14:22:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6063805719343330058=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm=3A_unwind_drm_device_?=
 =?utf-8?q?registration_upon_error_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jan 2026 14:22:36 -0000
Message-ID: <176969655693.205866.1681220165166790975@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <svtvqbauaqamxyqc43s2lsj4cj7ql2dk45fzujh5sr5g7pi77a@vb2f5f7zixqr>
In-Reply-To: <svtvqbauaqamxyqc43s2lsj4cj7ql2dk45fzujh5sr5g7pi77a@vb2f5f7zixqr>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:replyto,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: A11CFB0DFA
X-Rspamd-Action: no action

--===============6063805719343330058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: unwind drm device registration upon error (rev4)
URL   : https://patchwork.freedesktop.org/series/158641/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17904 -> Patchwork_158641v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v4/index.html

Participating hosts (43 -> 39)
------------------------------

  Missing    (4): bat-dg2-13 bat-jsl-1 fi-snb-2520m bat-adls-6 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_17904 -> Patchwork_158641v4

  CI-20190529: 20190529
  CI_DRM_17904: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8724: 6a10d1136a4e856cc4ceb5b899c32b03ed8ddc5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158641v4: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v4/index.html

--===============6063805719343330058==
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
<tr><td><b>Series:</b></td><td>drm: unwind drm device registration upon error (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158641/">https://patchwork.freedesktop.org/series/158641/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17904 -&gt; Patchwork_158641v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158641v4/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): bat-dg2-13 bat-jsl-1 fi-snb-2520m bat-adls-6 </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17904 -&gt; Patchwork_158641v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17904: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8724: 6a10d1136a4e856cc4ceb5b899c32b03ed8ddc5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158641v4: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6063805719343330058==--
