Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AECOLJClz2mZyQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 13:33:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB983393B86
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 13:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4878510E341;
	Fri,  3 Apr 2026 11:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E9E10E341;
 Fri,  3 Apr 2026 11:33:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5511773080806839783=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/selftests=3A_Use?=
 =?utf-8?q?_safe_userspace_memory_for_mappings?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Apr 2026 11:33:31 -0000
Message-ID: <177521601153.430833.8308414288872946496@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
In-Reply-To: <20260403090019.1933036-1-krzysztof.karas@intel.com>
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
	NEURAL_HAM(-0.00)[-0.972];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[live:email,01.org:url,i915_selftest:email,module-reload:email,lists.freedesktop.org:email,lists.freedesktop.org:replyto,patchwork.freedesktop.org:url,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: CB983393B86
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5511773080806839783==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Use safe userspace memory for mappings
URL   : https://patchwork.freedesktop.org/series/164344/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18275 -> Patchwork_164344v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_164344v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_164344v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/index.html

Participating hosts (41 -> 37)
------------------------------

  Missing    (4): bat-dg2-13 bat-apl-1 fi-tgl-1115g4 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_164344v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-x1275/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-x1275/igt@i915_selftest@live.html
    - bat-adlp-11:        [PASS][3] -> [INCOMPLETE][4] +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adlp-11/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adlp-11/igt@i915_selftest@live.html
    - fi-hsw-4770:        [PASS][5] -> [INCOMPLETE][6] +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-hsw-4770/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8] +1 other test incomplete
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-8109u/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-8109u/igt@i915_selftest@live.html
    - fi-kbl-8809g:       [PASS][9] -> [INCOMPLETE][10] +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-8809g/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-8809g/igt@i915_selftest@live.html
    - fi-ivb-3770:        [PASS][11] -> [INCOMPLETE][12] +1 other test incomplete
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-ivb-3770/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-ivb-3770/igt@i915_selftest@live.html
    - bat-dg1-6:          [PASS][13] -> [INCOMPLETE][14] +1 other test incomplete
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg1-6/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg1-6/igt@i915_selftest@live.html
    - fi-elk-e7500:       [PASS][15] -> [INCOMPLETE][16] +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-elk-e7500/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-elk-e7500/igt@i915_selftest@live.html
    - bat-dg2-8:          [PASS][17] -> [INCOMPLETE][18] +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][19] -> [INCOMPLETE][20] +1 other test incomplete
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adls-6/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adls-6/igt@i915_selftest@live.html
    - fi-ilk-650:         [PASS][21] -> [INCOMPLETE][22] +1 other test incomplete
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-ilk-650/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-ilk-650/igt@i915_selftest@live.html
    - fi-bsw-n3050:       [PASS][23] -> [INCOMPLETE][24] +1 other test incomplete
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-bsw-n3050/igt@i915_selftest@live.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-bsw-n3050/igt@i915_selftest@live.html
    - fi-pnv-d510:        [PASS][25] -> [INCOMPLETE][26] +1 other test incomplete
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-pnv-d510/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-pnv-d510/igt@i915_selftest@live.html
    - bat-dg1-7:          [PASS][27] -> [INCOMPLETE][28] +1 other test incomplete
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg1-7/igt@i915_selftest@live.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg1-7/igt@i915_selftest@live.html
    - fi-glk-j4005:       [PASS][29] -> [INCOMPLETE][30] +1 other test incomplete
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-glk-j4005/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-glk-j4005/igt@i915_selftest@live.html
    - bat-adlp-9:         [PASS][31] -> [INCOMPLETE][32] +1 other test incomplete
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adlp-9/igt@i915_selftest@live.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-twl-2:          [PASS][33] -> [INCOMPLETE][34] +1 other test incomplete
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-twl-2/igt@i915_selftest@live.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-twl-2/igt@i915_selftest@live.html
    - bat-rpls-4:         [PASS][35] -> [INCOMPLETE][36] +1 other test incomplete
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rpls-4/igt@i915_selftest@live.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rpls-4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][37] -> [INCOMPLETE][38] +1 other test incomplete
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][39] -> [INCOMPLETE][40] +1 other test incomplete
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
    - bat-twl-1:          [PASS][41] -> [INCOMPLETE][42] +1 other test incomplete
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html
    - bat-jsl-5:          [PASS][43] -> [INCOMPLETE][44] +1 other test incomplete
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-jsl-5/igt@i915_selftest@live@sanitycheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-jsl-5/igt@i915_selftest@live@sanitycheck.html
    - bat-dg2-14:         [PASS][45] -> [INCOMPLETE][46] +1 other test incomplete
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
    - fi-bsw-nick:        [PASS][47] -> [INCOMPLETE][48] +1 other test incomplete
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html
    - bat-kbl-2:          [PASS][49] -> [INCOMPLETE][50] +1 other test incomplete
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-kbl-2/igt@i915_selftest@live@sanitycheck.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-kbl-2/igt@i915_selftest@live@sanitycheck.html
    - bat-arls-5:         [PASS][51] -> [INCOMPLETE][52] +1 other test incomplete
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
    - bat-rplp-1:         [PASS][53] -> [INCOMPLETE][54] +1 other test incomplete
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html
    - bat-arlh-2:         [PASS][55] -> [INCOMPLETE][56] +1 other test incomplete
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html
    - fi-rkl-11600:       [PASS][57] -> [INCOMPLETE][58] +1 other test incomplete
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-guc:         [PASS][59] -> [INCOMPLETE][60] +1 other test incomplete
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-guc/igt@i915_selftest@live@sanitycheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-guc/igt@i915_selftest@live@sanitycheck.html
    - bat-mtlp-9:         [PASS][61] -> [INCOMPLETE][62] +1 other test incomplete
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-9/igt@i915_selftest@live@sanitycheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-9/igt@i915_selftest@live@sanitycheck.html
    - bat-arls-6:         [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-6/igt@i915_selftest@live@sanitycheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-6/igt@i915_selftest@live@sanitycheck.html
    - bat-dg2-9:          [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html
    - bat-mtlp-8:         [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-8/igt@i915_selftest@live@sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-8/igt@i915_selftest@live@sanitycheck.html
    - fi-skl-6600u:       [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html
    - bat-arlh-3:         [PASS][71] -> [INCOMPLETE][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][73] ([i915#12061]) -> [INCOMPLETE][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-8/igt@i915_selftest@live.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-arls-6:         [DMESG-FAIL][75] ([i915#12061]) -> [INCOMPLETE][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-6/igt@i915_selftest@live.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-6/igt@i915_selftest@live.html
    - bat-dg2-9:          [DMESG-FAIL][77] ([i915#12061]) -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-9/igt@i915_selftest@live.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-9/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_164344v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [PASS][79] -> [INCOMPLETE][80] ([i915#15859])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-skl-6600u/igt@i915_selftest@live.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-skl-6600u/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][81] -> [INCOMPLETE][82] ([i915#15622])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-3/igt@i915_selftest@live.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-3/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [DMESG-WARN][83] ([i915#13400]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#15622]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622
  [i915#15859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15859


Build changes
-------------

  * IGT: IGT_8846 -> IGTPW_14883
  * Linux: CI_DRM_18275 -> Patchwork_164344v1

  CI-20190529: 20190529
  CI_DRM_18275: d74bb859cb37fee1609027bc57b2a2961216ea91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_14883: 8e8a5056519241b7fc441bea1d39c5be054370d6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  IGT_8846: 8846
  Patchwork_164344v1: d74bb859cb37fee1609027bc57b2a2961216ea91 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/index.html

--===============5511773080806839783==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Use safe userspace memory for mappings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/164344/">https://patchwork.freedesktop.org/series/164344/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18275 -&gt; Patchwork_164344v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_164344v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_164344v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): bat-dg2-13 bat-apl-1 fi-tgl-1115g4 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_164344v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-x1275/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-x1275/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adlp-11/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-hsw-4770/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-8109u/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-8109u/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-8809g/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-8809g/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-ivb-3770/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg1-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg1-6/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-elk-e7500/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-elk-e7500/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-8/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adls-6/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-ilk-650/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-ilk-650/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-bsw-n3050/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-bsw-n3050/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-pnv-d510/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-pnv-d510/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg1-7/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg1-7/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-glk-j4005/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-adlp-9/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-twl-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rpls-4/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rpls-4/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-twl-1/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-jsl-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-jsl-5/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-kbl-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-kbl-2/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rplp-1/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-2/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-rkl-11600/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-cfl-guc/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-cfl-guc/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-9/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-9/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-6/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-6/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-9/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-8/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-8/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-skl-6600u/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-mtlp-8/igt@i915_selftest@live.html">INCOMPLETE</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arls-6/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arls-6/igt@i915_selftest@live.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-dg2-9/igt@i915_selftest@live.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164344v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/fi-skl-6600u/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/fi-skl-6600u/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15859">i915#15859</a>)</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622">i915#15622</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18275/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164344v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_8846 -&gt; IGTPW_14883</li>
<li>Linux: CI_DRM_18275 -&gt; Patchwork_164344v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18275: d74bb859cb37fee1609027bc57b2a2961216ea91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_14883: 8e8a5056519241b7fc441bea1d39c5be054370d6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  IGT_8846: 8846<br />
  Patchwork_164344v1: d74bb859cb37fee1609027bc57b2a2961216ea91 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5511773080806839783==--
