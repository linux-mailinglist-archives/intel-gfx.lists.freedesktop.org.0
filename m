Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ6gGjz/FWoqgwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 22:14:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6A5DC40A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 22:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961A310E237;
	Tue, 26 May 2026 20:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E1010E211;
 Tue, 26 May 2026 20:14:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0526409249095367008=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Add_D?=
 =?utf-8?q?C3CO_support_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2026 20:14:49 -0000
Message-ID: <177982648935.11680.11073674729163508915@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
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
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.370];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Queue-Id: B2A6A5DC40A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============0526409249095367008==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add DC3CO support (rev4)
URL   : https://patchwork.freedesktop.org/series/163939/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18556 -> Patchwork_163939v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163939v4/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_18556 and Patchwork_163939v4:

### New IGT tests (15) ###

  * igt@kms_flip@basic-flip-vs-dpms@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.91] s

  * igt@kms_flip@basic-flip-vs-modeset@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.95] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.83, 1.59] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [1.05, 1.27] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [1.09, 1.89] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.80, 1.45] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [1.02, 1.20] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [1.00, 1.78] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:
    - Statuses : 6 pass(s)
    - Exec time: [0.81, 1.45] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [1.03, 2.83] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [1.15, 1.17] s

  * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.79, 0.87] s

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.74, 0.80] s

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.75, 2.71] s

  * igt@kms_flip@basic-plain-flip@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.86, 0.88] s

  


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_18556 -> Patchwork_163939v4

  CI-20190529: 20190529
  CI_DRM_18556: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8937: 8937
  Patchwork_163939v4: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163939v4/index.html

--===============0526409249095367008==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Add DC3CO support (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/163939/">https://patchwork.freedesktop.org/series/163939/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163939v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163939v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18556 -&gt; Patchwork_163939v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163939v4/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18556 and Patchwork_163939v4:</p>
<h3>New IGT tests (15)</h3>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.83, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.05, 1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.09, 1.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.80, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.02, 1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.00, 1.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.81, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.03, 2.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.15, 1.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.79, 0.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.74, 0.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.75, 2.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.86, 0.88] s</li>
</ul>
</li>
</ul>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18556 -&gt; Patchwork_163939v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18556: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8937: 8937<br />
  Patchwork_163939v4: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0526409249095367008==--
