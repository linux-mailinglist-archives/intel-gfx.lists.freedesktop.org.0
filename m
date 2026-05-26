Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKu9KZPmFWrdeAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 20:29:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F05DB59C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 20:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634A210E4C8;
	Tue, 26 May 2026 18:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3134510E4BD;
 Tue, 26 May 2026 18:29:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3935845552704723699=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_don=27t_allow_changes_to_?=
 =?utf-8?q?inactive_colorops?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melissa Wen" <mwen@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2026 18:29:36 -0000
Message-ID: <177982017619.11680.12816706877149176313@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260526142940.504911-1-mwen@igalia.com>
In-Reply-To: <20260526142940.504911-1-mwen@igalia.com>
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
	NEURAL_HAM(-0.00)[-0.814];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 104F05DB59C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3935845552704723699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: don't allow changes to inactive colorops
URL   : https://patchwork.freedesktop.org/series/167293/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18556 -> Patchwork_167293v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_167293v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_167293v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_167293v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18556/fi-bsw-n3050/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/fi-bsw-n3050/igt@i915_module_load@load.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18556 and Patchwork_167293v1:

### New IGT tests (36) ###

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.77, 1.44] s

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.77, 0.96] s

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.76, 1.65] s

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.71, 1.36] s

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.68, 0.83] s

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.67, 1.53] s

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:
    - Statuses : 6 pass(s)
    - Exec time: [0.73, 1.36] s

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.69, 3.02] s

  * igt@kms_flip@basic-flip-vs-dpms@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.91] s

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.75, 1.59] s

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.79, 0.99] s

  * igt@kms_flip@basic-flip-vs-modeset@a-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.86, 1.92] s

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.63, 1.45] s

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.71, 0.84] s

  * igt@kms_flip@basic-flip-vs-modeset@b-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.75, 1.67] s

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:
    - Statuses : 6 pass(s)
    - Exec time: [0.63, 1.44] s

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.72, 2.71] s

  * igt@kms_flip@basic-flip-vs-modeset@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.81, 0.95] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.84, 1.54] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [1.03, 1.16] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [1.09, 1.88] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.82, 1.45] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [1.02, 1.07] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.99, 1.78] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:
    - Statuses : 6 pass(s)
    - Exec time: [0.81, 1.45] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [1.02, 2.95] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [1.15] s

  * igt@kms_flip@basic-plain-flip@a-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.70, 1.24] s

  * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.77, 0.88] s

  * igt@kms_flip@basic-plain-flip@a-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.80, 1.60] s

  * igt@kms_flip@basic-plain-flip@b-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.70, 1.22] s

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - Statuses : 4 pass(s)
    - Exec time: [0.77, 0.79] s

  * igt@kms_flip@basic-plain-flip@b-vga1:
    - Statuses : 5 pass(s)
    - Exec time: [0.73, 1.52] s

  * igt@kms_flip@basic-plain-flip@c-hdmi-a1:
    - Statuses : 6 pass(s)
    - Exec time: [0.68, 1.17] s

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.76, 2.68] s

  * igt@kms_flip@basic-plain-flip@c-vga1:
    - Statuses : 2 pass(s)
    - Exec time: [0.86] s

  



Build changes
-------------

  * Linux: CI_DRM_18556 -> Patchwork_167293v1

  CI-20190529: 20190529
  CI_DRM_18556: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8937: 8937
  Patchwork_167293v1: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/index.html

--===============3935845552704723699==
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
<tr><td><b>Series:</b></td><td>don&#x27;t allow changes to inactive colorops</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167293/">https://patchwork.freedesktop.org/series/167293/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18556 -&gt; Patchwork_167293v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_167293v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_167293v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_167293v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18556/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167293v1/fi-bsw-n3050/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18556 and Patchwork_167293v1:</p>
<h3>New IGT tests (36)</h3>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.77, 1.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.77, 0.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.76, 1.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.71, 1.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.68, 0.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.67, 1.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.73, 1.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.69, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.75, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.79, 0.99] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.86, 1.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.63, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.71, 0.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.75, 1.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.63, 1.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.72, 2.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.81, 0.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.84, 1.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.03, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.09, 1.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.82, 1.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.02, 1.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.99, 1.78] s</li>
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
<li>Exec time: [1.02, 2.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.70, 1.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.77, 0.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.80, 1.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.70, 1.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.77, 0.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-vga1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.73, 1.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a1:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.68, 1.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.76, 2.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-vga1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.86] s</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18556 -&gt; Patchwork_167293v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18556: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8937: 8937<br />
  Patchwork_167293v1: 1e5fbf0d628cd02dced6cfb1ebe39717f121fb4c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3935845552704723699==--
