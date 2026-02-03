Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF9KF5YLgmmCOQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:52:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76C0DAD30
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238AB10E695;
	Tue,  3 Feb 2026 14:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0D010E694;
 Tue,  3 Feb 2026 14:52:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1007070178314427272=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_CMTG_enablement_=28rev2?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Feb 2026 14:52:03 -0000
Message-ID: <177013032335.219828.17960808457640295730@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260203134407.2823406-1-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url,lists.freedesktop.org:replyto,lists.freedesktop.org:email,basic:email,kms_hdmi_inject:email,modeset:email,basic-flip-vs-dpms:email,force-edid:email,b-edp1:email,b-hdmi-a2:email,kms_force_connector_basic:email,force-connector-state:email,inject-audio:email]
X-Rspamd-Queue-Id: B76C0DAD30
X-Rspamd-Action: no action

--===============1007070178314427272==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CMTG enablement (rev2)
URL   : https://patchwork.freedesktop.org/series/157664/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17925 -> Patchwork_157664v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_157664v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_157664v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_157664v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adlp-6/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adlp-6/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg1-7/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg1-7/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-glk-j4005/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-glk-j4005/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adlp-9/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adlp-9/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-twl-2/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-twl-2/igt@i915_module_load@load.html
    - bat-rpls-4:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rpls-4/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rpls-4/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-7567u/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-8700k/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-8700k/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-twl-1/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-twl-1/igt@i915_module_load@load.html
    - bat-jsl-5:          [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-jsl-5/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-jsl-5/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-apl-1/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-apl-1/igt@i915_module_load@load.html
    - bat-dg2-14:         [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-14/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-14/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-tgl-1115g4/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-guc/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-9/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-9/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-hsw-4770/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-8109u/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-8/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-8/igt@i915_module_load@load.html
    - bat-adls-6:         [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adls-6/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adls-6/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - bat-rplp-1:         [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rplp-1/igt@kms_busy@basic@flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rplp-1/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-rplp-1:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rplp-1/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-mtlp-9:         [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp3:
    - bat-arls-5:         [PASS][45] -> [ABORT][46] +1 other test abort
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-mtlp-8:         [PASS][47] -> [ABORT][48] +1 other test abort
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
    - bat-arlh-3:         [PASS][49] -> [ABORT][50] +1 other test abort
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - bat-arls-6:         [PASS][51] -> [ABORT][52] +1 other test abort
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-kbl-2:          [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html
    - fi-rkl-11600:       [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-x1275:       [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg1-6:          [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-jsl-1:          [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html
    - fi-skl-6600u:       [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-skl-6600u/igt@kms_hdmi_inject@inject-audio.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-skl-6600u/igt@kms_hdmi_inject@inject-audio.html

  


Build changes
-------------

  * Linux: CI_DRM_17925 -> Patchwork_157664v2

  CI-20190529: 20190529
  CI_DRM_17925: 9f5242e63f0bab74d47ae6792e0c25a324184a6b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8730: 8730
  Patchwork_157664v2: 9f5242e63f0bab74d47ae6792e0c25a324184a6b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/index.html

--===============1007070178314427272==
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
<tr><td><b>Series:</b></td><td>CMTG enablement (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157664/">https://patchwork.freedesktop.org/series/157664/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17925 -&gt; Patchwork_157664v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_157664v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_157664v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_157664v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rpls-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rpls-4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-jsl-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-jsl-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-adls-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-adls-6/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rplp-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rplp-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-rplp-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-kbl-2/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-rkl-11600/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-dg1-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/bat-jsl-1/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17925/fi-skl-6600u/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157664v2/fi-skl-6600u/igt@kms_hdmi_inject@inject-audio.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17925 -&gt; Patchwork_157664v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17925: 9f5242e63f0bab74d47ae6792e0c25a324184a6b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8730: 8730<br />
  Patchwork_157664v2: 9f5242e63f0bab74d47ae6792e0c25a324184a6b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1007070178314427272==--
