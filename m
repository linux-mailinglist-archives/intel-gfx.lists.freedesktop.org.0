Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOUsO/eYpGkPmAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 20:52:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EC61D1680
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 20:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9DB10E3F3;
	Sun,  1 Mar 2026 19:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A882710E3F2;
 Sun,  1 Mar 2026 19:52:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2685410040072298051=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Replace_the_dmabuf_custom?=
 =?utf-8?q?_test_framework_with_kunit?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 01 Mar 2026 19:52:19 -0000
Message-ID: <177239473964.301330.2782864717131838844@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
In-Reply-To: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
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
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 06EC61D1680
X-Rspamd-Action: no action

--===============2685410040072298051==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Replace the dmabuf custom test framework with kunit
URL   : https://patchwork.freedesktop.org/series/162387/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18066 -> Patchwork_162387v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162387v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162387v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162387v1:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests:
    - fi-rkl-11600:       [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-rkl-11600/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-rkl-11600/igt@dmabuf@all-tests.html
    - bat-arlh-3:         [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arlh-3/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arlh-3/igt@dmabuf@all-tests.html
    - bat-dg1-7:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg1-7/igt@dmabuf@all-tests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-7/igt@dmabuf@all-tests.html
    - bat-adlp-9:         [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-9/igt@dmabuf@all-tests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-9/igt@dmabuf@all-tests.html
    - bat-rpls-4:         [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-rpls-4/igt@dmabuf@all-tests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-rpls-4/igt@dmabuf@all-tests.html
    - bat-twl-1:          [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-twl-1/igt@dmabuf@all-tests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-twl-1/igt@dmabuf@all-tests.html
    - bat-jsl-5:          [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-jsl-5/igt@dmabuf@all-tests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-jsl-5/igt@dmabuf@all-tests.html
    - bat-rplp-1:         [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-rplp-1/igt@dmabuf@all-tests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-rplp-1/igt@dmabuf@all-tests.html
    - fi-tgl-1115g4:      [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-tgl-1115g4/igt@dmabuf@all-tests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-tgl-1115g4/igt@dmabuf@all-tests.html
    - bat-dg2-9:          [PASS][19] -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-9/igt@dmabuf@all-tests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-9/igt@dmabuf@all-tests.html
    - bat-adlp-11:        [PASS][21] -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-11/igt@dmabuf@all-tests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-11/igt@dmabuf@all-tests.html
    - bat-adlp-6:         [PASS][23] -> [SKIP][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-6/igt@dmabuf@all-tests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-6/igt@dmabuf@all-tests.html
    - bat-atsm-1:         NOTRUN -> [SKIP][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@dmabuf@all-tests.html
    - bat-twl-2:          [PASS][26] -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-twl-2/igt@dmabuf@all-tests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-twl-2/igt@dmabuf@all-tests.html
    - bat-dg2-14:         [PASS][28] -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-14/igt@dmabuf@all-tests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-14/igt@dmabuf@all-tests.html
    - bat-mtlp-9:         [PASS][30] -> [SKIP][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-9/igt@dmabuf@all-tests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-9/igt@dmabuf@all-tests.html
    - bat-arls-6:         [PASS][32] -> [SKIP][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-6/igt@dmabuf@all-tests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-6/igt@dmabuf@all-tests.html
    - bat-mtlp-8:         [PASS][34] -> [SKIP][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-8/igt@dmabuf@all-tests.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-8/igt@dmabuf@all-tests.html
    - bat-adls-6:         [PASS][36] -> [SKIP][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adls-6/igt@dmabuf@all-tests.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adls-6/igt@dmabuf@all-tests.html
    - bat-jsl-1:          [PASS][38] -> [SKIP][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-jsl-1/igt@dmabuf@all-tests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-jsl-1/igt@dmabuf@all-tests.html
    - bat-arls-5:         [PASS][40] -> [SKIP][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-5/igt@dmabuf@all-tests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-5/igt@dmabuf@all-tests.html

  
Known issues
------------

  Here are the changes found in Patchwork_162387v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-glk-j4005:       [PASS][42] -> [SKIP][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-glk-j4005/igt@dmabuf@all-tests.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-glk-j4005/igt@dmabuf@all-tests.html
    - fi-cfl-8109u:       [PASS][44] -> [SKIP][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-8109u/igt@dmabuf@all-tests.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-8109u/igt@dmabuf@all-tests.html
    - fi-kbl-7567u:       [PASS][46] -> [SKIP][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-7567u/igt@dmabuf@all-tests.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-7567u/igt@dmabuf@all-tests.html
    - fi-kbl-8809g:       [PASS][48] -> [SKIP][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-8809g/igt@dmabuf@all-tests.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-8809g/igt@dmabuf@all-tests.html
    - bat-apl-1:          [PASS][50] -> [SKIP][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-apl-1/igt@dmabuf@all-tests.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-apl-1/igt@dmabuf@all-tests.html
    - fi-ilk-650:         [PASS][52] -> [SKIP][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-ilk-650/igt@dmabuf@all-tests.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-ilk-650/igt@dmabuf@all-tests.html
    - fi-cfl-guc:         [PASS][54] -> [SKIP][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-guc/igt@dmabuf@all-tests.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-guc/igt@dmabuf@all-tests.html
    - fi-kbl-x1275:       [PASS][56] -> [SKIP][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-x1275/igt@dmabuf@all-tests.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-x1275/igt@dmabuf@all-tests.html
    - fi-cfl-8700k:       [PASS][58] -> [SKIP][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-8700k/igt@dmabuf@all-tests.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-8700k/igt@dmabuf@all-tests.html
    - bat-kbl-2:          [PASS][60] -> [SKIP][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-kbl-2/igt@dmabuf@all-tests.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-kbl-2/igt@dmabuf@all-tests.html
    - fi-skl-6600u:       [PASS][62] -> [SKIP][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-skl-6600u/igt@dmabuf@all-tests.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-skl-6600u/igt@dmabuf@all-tests.html
    - fi-ivb-3770:        [PASS][64] -> [SKIP][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-ivb-3770/igt@dmabuf@all-tests.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-ivb-3770/igt@dmabuf@all-tests.html
    - fi-elk-e7500:       [PASS][66] -> [SKIP][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-elk-e7500/igt@dmabuf@all-tests.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-elk-e7500/igt@dmabuf@all-tests.html
    - fi-bsw-nick:        [PASS][68] -> [SKIP][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-bsw-nick/igt@dmabuf@all-tests.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-bsw-nick/igt@dmabuf@all-tests.html
    - fi-bsw-n3050:       [PASS][70] -> [SKIP][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-bsw-n3050/igt@dmabuf@all-tests.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-bsw-n3050/igt@dmabuf@all-tests.html
    - fi-hsw-4770:        [PASS][72] -> [SKIP][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-hsw-4770/igt@dmabuf@all-tests.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-hsw-4770/igt@dmabuf@all-tests.html
    - bat-arlh-2:         [PASS][74] -> [SKIP][75] ([i915#11346])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arlh-2/igt@dmabuf@all-tests.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arlh-2/igt@dmabuf@all-tests.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-dg1-6:          NOTRUN -> [ABORT][76] ([i915#15759]) +1 other test abort
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][77] ([i915#4083])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][78] ([i915#4077]) +2 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][79] ([i915#4079])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][80] ([i915#15657])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_tiled_pread_basic@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          NOTRUN -> [SKIP][81] ([i915#11681] / [i915#6621])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][82] -> [DMESG-FAIL][83] ([i915#12061]) +1 other test dmesg-fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-8/igt@i915_selftest@live.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-atsm-1:         NOTRUN -> [DMESG-FAIL][84] ([i915#12061]) +1 other test dmesg-fail
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][85] -> [DMESG-FAIL][86] ([i915#12061]) +1 other test dmesg-fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][87] -> [DMESG-FAIL][88] ([i915#12061]) +1 other test dmesg-fail
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-dg1-6:          NOTRUN -> [SKIP][89] ([i915#12311] / [i915#4212]) +7 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-6:          NOTRUN -> [SKIP][90] ([i915#12311] / [i915#4215])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_busy@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][91] ([i915#11190] / [i915#12311] / [i915#4303])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - bat-dg1-6:          NOTRUN -> [SKIP][92] ([i915#11190] / [i915#12311]) +15 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-dg1-6:          NOTRUN -> [SKIP][93] ([i915#12311] / [i915#3637]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-plain-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][94] ([i915#12311]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][95] ([i915#12311] / [i915#4342])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][96] -> [ABORT][97] ([i915#15759]) +1 other test abort
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-6:          NOTRUN -> [SKIP][98] ([i915#12311] / [i915#5354])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][99] ([i915#1072] / [i915#12311] / [i915#9732]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-6:          NOTRUN -> [SKIP][100] ([i915#12311] / [i915#3555])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-6:          NOTRUN -> [SKIP][101] ([i915#3708] / [i915#4077]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-read:
    - bat-dg1-6:          NOTRUN -> [SKIP][102] ([i915#3708]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-dg1-6:          NOTRUN -> [SKIP][103] ([i915#11723] / [i915#3708])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_busy@busy:
    - bat-dg1-6:          [ABORT][104] ([i915#15759]) -> [PASS][105] +1 other test pass
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg1-6/igt@gem_busy@busy.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_busy@busy.html

  * igt@gem_lmem_swapping@basic:
    - bat-atsm-1:         [ABORT][106] ([i915#15759]) -> [PASS][107] +1 other test pass
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-atsm-1/igt@gem_lmem_swapping@basic.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#15657]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_18066 -> Patchwork_162387v1

  CI-20190529: 20190529
  CI_DRM_18066: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8775: 8775
  Patchwork_162387v1: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html

--===============2685410040072298051==
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
<tr><td><b>Series:</b></td><td>Replace the dmabuf custom test framework with kunit</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162387/">https://patchwork.freedesktop.org/series/162387/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18066 -&gt; Patchwork_162387v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162387v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_162387v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_162387v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-rkl-11600/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-rkl-11600/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arlh-3/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arlh-3/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg1-7/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-7/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-9/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-9/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-rpls-4/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-rpls-4/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-twl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-twl-1/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-jsl-5/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-jsl-5/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-rplp-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-rplp-1/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-tgl-1115g4/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-tgl-1115g4/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-9/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-9/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-11/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-11/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adlp-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adlp-6/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-twl-2/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-twl-2/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-14/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-14/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-9/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-9/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-6/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-8/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-8/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-adls-6/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-adls-6/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-jsl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-jsl-1/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-5/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-5/igt@dmabuf@all-tests.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162387v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-glk-j4005/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-glk-j4005/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-8109u/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-8109u/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-7567u/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-7567u/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-8809g/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-8809g/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-apl-1/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-ilk-650/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-ilk-650/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-guc/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-guc/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-kbl-x1275/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-kbl-x1275/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-cfl-8700k/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-cfl-8700k/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-kbl-2/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-kbl-2/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-skl-6600u/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-skl-6600u/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-ivb-3770/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-ivb-3770/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-elk-e7500/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-elk-e7500/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-bsw-nick/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-bsw-nick/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-bsw-n3050/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-bsw-n3050/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/fi-hsw-4770/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/fi-hsw-4770/igt@dmabuf@all-tests.html">SKIP</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arlh-2/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arlh-2/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346">i915#11346</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657">i915#15657</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg2-8/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-dg1-6/igt@gem_busy@busy.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-dg1-6/igt@gem_busy@busy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/bat-atsm-1/igt@gem_lmem_swapping@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18066 -&gt; Patchwork_162387v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18066: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8775: 8775<br />
  Patchwork_162387v1: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2685410040072298051==--
