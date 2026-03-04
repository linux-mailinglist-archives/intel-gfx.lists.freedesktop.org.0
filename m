Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mB4UNeaOqGmzvgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 20:58:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5D1207505
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 20:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D857010EA71;
	Wed,  4 Mar 2026 19:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F8910EA61;
 Wed,  4 Mar 2026 19:58:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1768611784133620721=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Refactor_LT_PHY_PLL_handl?=
 =?utf-8?q?ing_to_use_DPLL_framework_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Mar 2026 19:58:27 -0000
Message-ID: <177265430754.317253.18009254078630741737@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260304131423.1017821-1-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 3F5D1207505
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
	NEURAL_HAM(-0.00)[-0.190];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

--===============1768611784133620721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Refactor LT PHY PLL handling to use DPLL framework (rev2)
URL   : https://patchwork.freedesktop.org/series/161587/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18090 -> Patchwork_161587v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_161587v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_161587v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): bat-dg2-13 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_161587v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-guc:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-ivb-3770:        [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-arls-6:         [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-hsw-4770:        [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-glk-j4005:       [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-jsl-5:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-tgl-1115g4:      [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - bat-adlp-9:         [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
    - bat-apl-1:          [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
    - bat-rpls-4:         [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
    - fi-cfl-8109u:       [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
    - fi-kbl-7567u:       [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp2:
    - fi-cfl-8109u:       [PASS][25] -> [DMESG-WARN][26] +4 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp3:
    - bat-adlp-6:         [PASS][27] -> [DMESG-WARN][28] +6 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html
    - bat-arls-5:         [PASS][29] -> [ABORT][30] +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - bat-twl-2:          [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-adlp-6:         [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-mtlp-8:         [PASS][35] -> [ABORT][36] +1 other test abort
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-mtlp-9:         [PASS][37] -> [ABORT][38] +1 other test abort
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-twl-1:          [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-rplp-1:         [PASS][41] -> [ABORT][42] +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
    - bat-arlh-3:         [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:
    - fi-cfl-8700k:       [PASS][45] -> [ABORT][46] +1 other test abort
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html
    - bat-adls-6:         [PASS][47] -> [ABORT][48] +1 other test abort
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:
    - bat-dg1-7:          [PASS][49] -> [ABORT][50] +1 other test abort
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html
    - bat-rpls-4:         [PASS][51] -> [DMESG-WARN][52] +6 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-ilk-650:         [PASS][53] -> [ABORT][54] +1 other test abort
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp3:
    - bat-arls-5:         [PASS][55] -> [DMESG-WARN][56] +2 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - bat-mtlp-9:         [PASS][57] -> [DMESG-WARN][58] +10 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-mtlp-8:         [PASS][59] -> [DMESG-WARN][60] +2 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
    - bat-arlh-3:         [PASS][61] -> [DMESG-WARN][62] +2 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
    - bat-twl-1:          [PASS][63] -> [DMESG-WARN][64] +1 other test dmesg-warn
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
    - bat-rplp-1:         [PASS][65] -> [DMESG-WARN][66] +2 other tests dmesg-warn
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - bat-adls-6:         [PASS][67] -> [DMESG-WARN][68] +2 other tests dmesg-warn
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - bat-arls-6:         [PASS][69] -> [DMESG-WARN][70] +2 other tests dmesg-warn
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
    - bat-dg1-7:          [PASS][71] -> [DMESG-WARN][72] +2 other tests dmesg-warn
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
    - fi-glk-j4005:       [PASS][73] -> [DMESG-WARN][74] +1 other test dmesg-warn
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - fi-ilk-650:         [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - bat-adlp-9:         [PASS][77] -> [DMESG-WARN][78] +2 other tests dmesg-warn
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
    - bat-apl-1:          [PASS][79] -> [DMESG-WARN][80] +1 other test dmesg-warn
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
    - fi-kbl-7567u:       [PASS][81] -> [DMESG-WARN][82] +1 other test dmesg-warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - bat-twl-2:          [PASS][83] -> [DMESG-WARN][84] +1 other test dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:
    - bat-jsl-5:          [PASS][85] -> [DMESG-WARN][86] +1 other test dmesg-warn
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
    - fi-tgl-1115g4:      [PASS][87] -> [DMESG-WARN][88] +2 other tests dmesg-warn
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
    - fi-cfl-guc:         [PASS][89] -> [DMESG-WARN][90] +1 other test dmesg-warn
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
    - fi-cfl-8700k:       [PASS][91] -> [DMESG-WARN][92] +1 other test dmesg-warn
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-vga1:
    - fi-hsw-4770:        [PASS][93] -> [DMESG-WARN][94] +1 other test dmesg-warn
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html
    - fi-ivb-3770:        [PASS][95] -> [DMESG-WARN][96] +1 other test dmesg-warn
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html

  
Known issues
------------

  Here are the changes found in Patchwork_161587v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - bat-dg2-8:          [PASS][97] -> [ABORT][98] ([i915#15759]) +1 other test abort
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg2-8/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg2-8/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][99] ([i915#12061]) -> [PASS][100] +1 other test pass
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759


Build changes
-------------

  * Linux: CI_DRM_18090 -> Patchwork_161587v2

  CI-20190529: 20190529
  CI_DRM_18090: d6f74d61a95e54f21a4dc344b33d541f254a1325 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8777: a50285a68dbef0fe11140adef4016a756f57b324 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_161587v2: d6f74d61a95e54f21a4dc344b33d541f254a1325 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/index.html

--===============1768611784133620721==
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
<tr><td><b>Series:</b></td><td>Refactor LT PHY PLL handling to use DPLL framework (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/161587/">https://patchwork.freedesktop.org/series/161587/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18090 -&gt; Patchwork_161587v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_161587v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_161587v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): bat-dg2-13 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_161587v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp3:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@a-dp3.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-twl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-vga1:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@c-vga1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161587v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@parallel-random-engines@lmem0:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg2-8/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg2-8/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18090/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161587v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18090 -&gt; Patchwork_161587v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18090: d6f74d61a95e54f21a4dc344b33d541f254a1325 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8777: a50285a68dbef0fe11140adef4016a756f57b324 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_161587v2: d6f74d61a95e54f21a4dc344b33d541f254a1325 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1768611784133620721==--
